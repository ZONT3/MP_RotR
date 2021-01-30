params ["_thisConfig", "_thisFlag", "_mode"];

private _threshold = getNumber (_thisConfig >> "threshold");
private _maxEnergy = getNumber (_thisConfig >> "maxEnergy");
private _rateOff   = getNumber (_thisConfig >> "rateOff");
private _rateOn    = getNumber (_thisConfig >> "rateOn");
private _breakCost = getNumber (_thisConfig >> "breakCost");
private _condition = compile getText (_thisConfig >> 'generalCondition');

disableSerialization;
switch (_mode) do {
  case (1): {
    private _nowUsing = false;
    private _prevUsage = false;
    {
      private _cloakEnergyCtrl = (findDisplay 46) displayCtrl 9002;
      if (isNull(_cloakEnergyCtrl)) then {
        _cloakEnergyCtrl = (findDisplay 46) ctrlCreate ["RscText", 9002];
        _cloakEnergyCtrl ctrlSetPosition [SafeZoneXAbs + SafeZoneW * 0.85, SafeZoneY + (SafeZoneH - 0.05) / 2, 0.3, 0.03];
        _cloakEnergyCtrl ctrlSetFontHeight 0.04;
        _cloakEnergyCtrl ctrlCommit 0;
        _cloakEnergyCtrl ctrlShow false;
      };
      if (!call _condition) exitWith {
        _nowUsing = player getVariable ["s_clk_using", false];
        if (_prevUsage and _nowUsing) then {
          player setVariable ["s_clk_using", false];
          _prevUsage = false;
          _cloakEnergyCtrl ctrlShow false;
        };
      };
      _cloakEnergyCtrl ctrlShow true;

      player setVariable ["s_clk_using", true];
      _prevUsage = true;
      private _curEnergy = player getVariable ["s_clk_e", _maxEnergy];
      private _cloakOn = player getVariable ["s_clk_on", false];

      if(_cloakOn) then {
          if(_curEnergy <= 0) then
          { [_thisConfig, 3] execVM "skills\cloak.sqf" }
          else { _curEnergy = _curEnergy + _rateOn };
      } else {
          _curEnergy = _curEnergy + _rateOff;
      };
      _cb = player getVariable["s_clk_dmg", 0];
      if(_cb > 0) then {
          _curEnergy = _curEnergy - _breakCost * sqrt(_cb);
          player setVariable["s_clk_dmg", 0];
      };
      _curEnergy = (_curEnergy max 0) min _maxEnergy;
      player setVariable ["s_clk_e", _curEnergy];

      _cloakEnergyCtrl ctrlSetText format ["Запас энергии: %1 / %2", _curEnergy, _maxEnergy];
	    _cloakEnergyCtrl ctrlCommit 0;

    } call {
      // нет, я не додик, просто perFrameHandler напрочь отказывался передавать переменные
      while {true} do {
        sleep 1;
        call _this;
      };
    };
  };
  case (2): {
    private _curEnergy = player getVariable ["s_clk_e", _maxEnergy];
    if (_curEnergy <= _threshold) exitWith {
  		hint parseText format ["<t color='#FF0000'>Недостаточно энергии</t>"];
  		sleep 5;
  		hintSilent "";
    };
    sleep 1;
		player setVariable ['s_clk_on', true];
		[player, true] remoteExec ["hideObjectGlobal", 0];
		hint parseText format ["<t color='#00FF00'>Маскировка активирована</t>"];
		player setCaptive true;
		player allowDamage true;
		sleep 4;
		hintSilent "";
    MPC_cloak_currConfig = _thisConfig;
		player addEventHandler ["hit",
		{
			params ["_unit", "_source", "_damage", "_instigator"];
			if (player getVariable ['s_clk_on', false]) then {
				[MPC_cloak_currConfig, 3] execVM 'skills\cloak.sqf';
				player setVariable ['s_clk_dmg', _damage + (player getVariable['CloakBroke', 0])];
			};
		}];
  };
  case (3): {
    sleep 0.1;
    player setVariable ['s_clk_on', false];
    [player, false] remoteExec ["hideObjectGlobal", 0];
    player setCaptive false;
    player AllowDamage true;
  };
};
