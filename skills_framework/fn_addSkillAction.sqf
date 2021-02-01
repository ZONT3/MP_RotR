params [["_thisConfig", configNull, [configNull]], "_target", "_action", ["_onRespawn", false]];

if (typeName _action == typeName "") then { _action = _thisConfig >> _action };
if not (assert (
  typeName _action == typeName configNull or
  typeName _action == typeName []
)) exitWith {};

private _thisCondition = [_thisConfig, "condition", "true"] call BIS_fnc_returnConfigEntry;
private _thisRoles     = [_thisConfig, "roles", []]         call BIS_fnc_returnConfigEntry;
private _thisFlag      = [_thisConfig, "flagItems", []]     call BIS_fnc_returnConfigEntry;

if _onRespawn then {
  _onRespawn = [_thisConfig, "onRespawn", ""] call BIS_fnc_returnConfigEntry;
  isNil { call compile _onRespawn };
};

if (typeName _action != typeName []) then { _action = [_action] };

{
  private _thisActionCfg = _x;
  private _params = _x call ZONT_fnc_actionFromConfig;
  if not (assert (typeName _params == typeName [])) exitWith {};

  _params params [
  "_tooltip", "_script", "_params", "_priority", "_showWindow",
  "_hideOnUse", "_shortcut", "_condition", "_radius",
  "_unconscious", "_selection", "_memoryPoint" ];

  private _arr = [_script, _condition];
  private _prefix = format ["%1_%2_", configName _thisConfig, configName _x];
  [_prefix, _arr, ["_thisConfig", "_thisCondition", "_thisRoles", "_thisFlag", "_thisActionCfg"]]
  call ZONT_fnc_replacePrivates;
  _arr params ["_script", "_condition"];

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
