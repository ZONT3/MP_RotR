// consumableSkillBase
params ["_cfg", "_msgCooldown", "_msgConsumed", "_msgLeft", "_code", ["_preInit", {true}]];

private _maxUses = getNumber (_cfg >> "maxUses");
private _flag = getArray (_cfg >> "flagItems");
private _cd = getNumber (_cfg >> "cd");

private _var_used = [_cfg, "used"] call ZONT_fnc_skillVar;
private _var_tnu = [_cfg, "tnu"] call ZONT_fnc_skillVar;

private _used = player getVariable [_var_used, 0];
private _timeNextUse = player getVariable [_var_tnu, 0];

if (!call _preInit) exitWith {};

if (time < _timeNextUse) exitWith {
  private _secs = floor (_timeNextUse - time);
  hint parseText format [_msgCooldown, floor (_secs / 60), _secs % 60];
};

if (_used >= _maxUses - 1) then {
  hint parseText _msgConsumed;
  player setVariable [_var_used, 0];
  {
    if (_x in items player)
    exitWith { player removeItem _x };
  } forEach _flag;
} else {
  _used = _used + 1;
  hint parseText format [_msgLeft, _maxUses - _used];
  player setVariable [_var_tnu, time + _cd];
  player setVariable [_var_used, _used];
};

call _code;
