params ["_thisConfig", "_target", "_action", ["_onRespawn", false]];

private _thisCondition = [_thisConfig, "condition", "true"] call BIS_fnc_returnConfigEntry;
private _thisRoles     = [_thisConfig, "roles", []]         call BIS_fnc_returnConfigEntry;
private _thisFlag      = [_thisConfig, "flagItems", []]     call BIS_fnc_returnConfigEntry;

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

if _onRespawn then {
  _onRespawn = [_thisConfig, "onRespawn", ""] call BIS_fnc_returnConfigEntry;
  isNil { call compile _onRespawn };
};

if (typeName _action != typeName []) then { _action = [_action] };

{
  private _params = _x call ZONT_fnc_actionFromConfig;
  if (isNil '_params' or { typeName _params != typeName [] }) exitWith {}

  _params params [
  "_tooltip", "_script", "_params", "_priority", "_showWindow",
  "_hideOnUse", "_shortcut", "_condition", "_radius",
  "_unconscious", "_selection", "_memoryPoint" ];
  private _prefix = format ["%1_%2_", configName _thisConfig, configName _x];
  {
    missionNamespace setVariable [_prefix + _x, call compile _x];
    _condition = [_condition, _x, _prefix + _x] call _fn_replaceAll;
    _script = [_script, _x, _prefix + _x] call _fn_replaceAll;
  } forEach ["_thisConfig", "_thisCondition", "_thisRoles", "_thisFlag"];

  _target addAction [
  	_tooltip,
  	_script,
  	call compile _params,
  	_priority,
  	_showWindow,
  	_hideOnUse,
  	_shortcut,
  	_condition,
  	_radius,
  	_unconscious,
  	_selection,
  	_memoryPoint
  ];
} foreach _action
