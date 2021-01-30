params [["_config", configNull, [configNull]], ["_name", "", [""]], ["_default", nil]];
if (isNil '_config' or {isNull _config}) exitWith {};

private _conf = _config >> _name;
private _res = _default;
switch (true) do {
  case (isArray _conf):  {_res = getArray _conf};
  case (isNumber _conf): {_res = getNumber _conf};
  case (isText _conf):   {_res = getText _conf};
  case (isClass _conf):  {_res = _conf};
};

_res
