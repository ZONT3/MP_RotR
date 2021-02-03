private _group = units group player;
private _listStr = "";

private _randRadius = [_this, "ghr_rand_radius", 5] call BIS_fnc_returnConfigEntry;
private _randPeriod = [_this, "ghr_rand_period", 2] call BIS_fnc_returnConfigEntry;
private _entryStr   = [_this, "ghr_entry", "%1: <t color='%3'>%2</t>"] call BIS_fnc_returnConfigEntry;

private _fn_getRand = {
  if (time < _this getVariable ["ghr_nextRand", 0]) exitWith { _this getVariable ["ghr_rand", 0] };
  private _rand = (random (_randRadius * 2)) - _randRadius;
  _this setVariable ["ghr_rand", _rand];
  _this setVariable ["ghr_nextRand", time + _randPeriod];
  _rand
};

private _fn_getColor = {
  switch (true) do {
    case (_this >= 60 && _this <= 90 ): { "#12f012" };
    case (_this > 90);
    case (_this < 60 && _this > 30 ): { "#ffc400" };
    default { "#f01212" };
  };
};

{
    private _hr = _x getVariable ["ace_medical_heartRate", 80];
    _hr = _hr + ( _x call _fn_getRand );

    if (_forEachIndex > 0) then {_listStr = _listStr + "<br/>"};
    _listStr = _listStr + (format [_entryStr, name _x, floor _hr, _hr call _fn_getColor]);
} foreach _group;

hint parseText _listStr;
