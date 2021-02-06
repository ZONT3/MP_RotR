params ["_prefix", "_scripts", "_privates", ["_namespace", missionNamespace]];

private _fn_replaceAll = {
  params["_str", "_find", "_replace"];
  private _return = "";
  private _len = count _find;
  private _pos = _str find _find;
  while {(_pos != -1) && (count _str > 0)} do {
      _return = _return + (_str select [0, _pos]) + _replace;
      _str = (_str select [_pos+_len]);
      _pos = _str find _find;
  };
  _return + _str;
};


{
  private _script = _x;
  private _ind = _forEachIndex;
  {
    _script = [_script, _x, _prefix + _x] call _fn_replaceAll;
    _scripts set [_ind, _script];
  } forEach _privates;
} foreach _scripts;

{ _namespace setVariable [_prefix + _x, call compile _x]
} foreach _privates;
