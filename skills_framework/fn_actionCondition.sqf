params ["_thisActionCfg", "_field", ["_wrap", true]];

private _thisActionCondition = [_thisActionCfg, _field, "false"] call BIS_fnc_returnConfigEntry;

if _wrap exitWith {
  private _hir = configHierarchy _thisActionCfg;
  private _thisConfig = _hir select (count _hir - 2);
  [_thisConfig, compile _thisActionCondition] call ZONT_fnc_wrapSkillConfig
};

call compile _thisActionCondition;
