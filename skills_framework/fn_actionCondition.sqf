params ["_thisActionCfg", "_field"];

private _hir = configHierarchy _thisActionCfg;

private _thisConfig = _hir select (count _hir - 2);
private _thisConditionLocal = [_thisActionCfg, _field, "true"]   call BIS_fnc_returnConfigEntry;
private _thisCondition      = [_thisConfig, "condition", "true"] call BIS_fnc_returnConfigEntry;
private _thisRoles          = [_thisConfig, "roles", []]         call BIS_fnc_returnConfigEntry;
private _thisFlag           = [_thisConfig, "flagItems", []]     call BIS_fnc_returnConfigEntry;

private _arr = [_thisCondition, _thisConditionLocal];
private _prefix = format ["%1_%2_%3_", configName _thisConfig, configName _thisActionCfg, _field];
[
  _prefix, _arr,
  ["_thisConfig", "_thisCondition", "_thisRoles", "_thisFlag", "_thisActionCfg"]
] call ZONT_fnc_replacePrivates;
_arr params ["_thisCondition", "_thisConditionLocal"];

call compile _thisConditionLocal
