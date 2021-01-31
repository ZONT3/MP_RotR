params ["_cfg", "_mode", "_arg"];

switch (_mode) do {
  case (0): {
    private _fn_addAction = {
      private _arr = _this getVariable ["warden_actions", []];
      private _addEH = count _arr <= 0;
      { _arr pushBack ( [_cfg, _this, _x] call ZONT_fnc_addSkillAction )
      } foreach ["action1", "action2"];
      _x setVariable ["warden_actions", _arr];
      if _addEH then {
        _this addEventHandler ["Killed", {
        	params ["_unit", "_killer", "_instigator", "_useEffects"];
          { _unit removeAction _x
          } foreach (_unit getVariable ["warden_actions", []]);
        }];
      }
    };
    private _handl = [{
      (_this select 0) params ["_cfg", "_fn_addAction", "_flag"];
      if not ([_flag] call ZONT_fnc_checkFlag) exitWith {};
      private _prep = [_cfg, missionNamespace, "preparedUnits", []] call ZONT_fnc_getSkillVar;
      {
        if (_x != player and alive _x and not (_x in _prep)) then {
          _x call _fn_addAction;
          _prep pushBack _x;
        };
      } foreach (player nearObjects ["CAManBase", 50]);
      [_cfg, missionNamespace, "preparedUnits", _prep] call ZONT_fnc_setSkillVar;
    }, 1.15, [_cfg, _fn_addAction, _arg]] call CBA_fnc_addPerFrameHandler;
    [_cfg, missionNamespace, "initHandler", _handl] call ZONT_fnc_setSkillVar;
  };
  case (1): {
    hint "TODO #1";
  };
  case (2): {
    hint "TODO #2";
  };
};
