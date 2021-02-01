params ["_thisActionCfg", "_field", ["_wrap", false]];

private _thisActionCondition = [_thisActionCfg, _field, "true"] call BIS_fnc_returnConfigEntry;

if _wrap exitWith {
  private _hir = configHierarchy _thisActionCfg;
  private _thisConfig = _hir select (count _hir - 2);
  [_thisConfig, compile _thisActionCondition] call ZONT_fnc_wrapSkillConfig
};

call compile _thisActionCondition
