params ["_thisConfig", "_thisCondition", "_thisRoles", "_thisFlag", "_toAdd"];

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

private _onrs = _thisConfig >> "onRespawn";
if (isText _onrs) then {call compile getText _onrs};

{
  private _tooltip = "";
  private _script = "";
  private _priority = 6;
  private _condition = "true";
  private _params = "[]";

  if (isText (_x >> "tooltip")) then {
    _tooltip = getText (_x >> "tooltip");
    if (isText (_x >> "script")) then {_script = getText (_x >> "script")};
    if (isNumber (_x >> "priority")) then {_priority = getNumber (_x >> "priority")};
    if (isText (_x >> "condition")) then {_condition = getText (_x >> "condition")};
    if (isText (_x >> "params")) then {_params = getText (_x >> "params")};

    private _prefix = format ["%1_%2_", configName _thisConfig, configName _x];
    {
      missionNamespace setVariable [_prefix + _x, call compile _x];
      _condition = [_condition, _x, _prefix + _x] call _fn_replaceAll;
      _script = [_script, _x, _prefix + _x] call _fn_replaceAll;
    } forEach ["_thisConfig", "_thisCondition", "_thisRoles", "_thisFlag"];

    player addAction [
    	_tooltip,
    	_script,
    	call compile _params,
    	_priority,
    	false,
    	true,
    	"",
    	_condition
    ];
  };
} foreach _toAdd;
