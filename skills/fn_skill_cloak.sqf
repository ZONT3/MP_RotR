params ["_thisConfig", "_thisFlag", "_mode", ["_force", false]];

private _threshold = getNumber (_thisConfig >> "threshold");
private _maxEnergy = getNumber (_thisConfig >> "maxEnergy");
private _rateOff   = getNumber (_thisConfig >> "rateOff");
private _rateOn    = getNumber (_thisConfig >> "rateOn");
private _breakCost = getNumber (_thisConfig >> "breakCost");
private _condition = compile getText (_thisConfig >> 'generalCondition');

disableSerialization;
switch (_mode) do {
  case (1): {
    {
      private _curEnergy = [_thisConfig, player, "clk_e", _maxEnergy] call ZONT_fnc_getSkillVar;
      private _cloakOn = [_thisConfig, player, "clk_on", false] call ZONT_fnc_getSkillVar;
      private _cloakEnergyCtrl = (findDisplay 46) displayCtrl 9002;
      if (isNull _cloakEnergyCtrl) then {
        _cloakEnergyCtrl = (findDisplay 46) ctrlCreate ["RscText", 9002];
        _cloakEnergyCtrl ctrlSetPosition [SafeZoneXAbs + SafeZoneW * 0.85, SafeZoneY + (SafeZoneH - 0.05) / 2, 0.3, 0.03];
        _cloakEnergyCtrl ctrlSetFontHeight 0.04;
        _cloakEnergyCtrl ctrlCommit 0;
      };
      _cloakEnergyCtrl ctrlShow _curEnergy < (_maxEnergy - 0.5);
      if (!call _condition) exitWith {  };

      if _cloakOn then {
          if (_curEnergy <= 0)
          then { [_thisConfig, 3] spawn ZONT_fnc_skill_cloak }
          else {
            _curEnergy = _curEnergy + _rateOn;

            private _cb = [_thisConfig, player, "clk_dmg", 0] call ZONT_fnc_getSkillVar;
            if(_cb > 0) then {
              _curEnergy = _curEnergy - (_breakCost * sqrt _cb);
              [_thisConfig, player, "clk_dmg", 0] call ZONT_fnc_setSkillVar;
            };
          };
      } else {
          _curEnergy = _curEnergy + _rateOff;
      };

      _curEnergy = (_curEnergy max 0) min _maxEnergy;
      [_thisConfig, player, "clk_e", _curEnergy] call ZONT_fnc_setSkillVar;

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
    private _curEnergy = [_thisConfig, player, "clk_e", _maxEnergy] call ZONT_fnc_getSkillVar;
    if (_curEnergy <= _threshold) exitWith {
  		hint parseText format ["<t color='#FF0000'>Недостаточно энергии</t>"];
  		sleep 5;
  		hintSilent "";
    };
    sleep 1;
    [_thisConfig, player, "clk_on", true] call ZONT_fnc_setSkillVar;
		[player, true] remoteExec ["hideObject", -2];
		hint parseText format ["<t color='#00FF00'>Маскировка активирована</t>"];
		player setCaptive true;
		player allowDamage true;

    private _var_on  = [_thisConfig, "clk_on" ] call ZONT_fnc_skillVar;
    private _var_dmg = [_thisConfig, "clk_dmg"] call ZONT_fnc_skillVar;
		call compile format ["player addEventHandler [""hit"",
		{
			params [""_unit"", ""_source"", ""_damage"", ""_instigator""];
			if (player getVariable ['%1', false]) then {
				player setVariable ['%2', _damage];
			} else { player removeEventHandler ['hit', _thisEventHandler] };
		}]", _var_on, _var_dmg];

		sleep 4;
		hintSilent "";
  };
  case (3): {
    if not _force then { sleep 0.1 };
    [_thisConfig, player, "clk_on", false] call ZONT_fnc_setSkillVar;

    [player, false] remoteExec ["hideObject", -2];
    player setCaptive false;
    player AllowDamage true;
  };
};
