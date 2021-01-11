[{
  if (lifeState player == "INCAPACITATED"
    && {[_this select 0, 0] call ZONT_fnc_checkFlag
    && {player getVariable ["s_b_tnu", 0] <= time}}) then {
      [] execVM 'skills\bacta.sqf';
  }
}, 0.1, _this] call CBA_fnc_addPerFrameHandler;
