[{
  (_this select 0) params ["_cfg", "_flag"];
  if (lifeState player == "INCAPACITATED"
    && {[_flag] call ZONT_fnc_checkFlag
    && {player getVariable [[_cfg, "tnu"] call ZONT_fnc_skillVar, 0] <= time}}) then {
      _cfg spawn ZONT_fnc_skill_bacta;
  }
}, 0.1, _this] call CBA_fnc_addPerFrameHandler;
