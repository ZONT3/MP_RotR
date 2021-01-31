if (!hasInterface) exitWith { };

private _fn_isAbstract = {
  ([_this, "abstract", "false"] call BIS_fnc_returnConfigEntry) == "true"
};

private _cfg = missionConfigFile >> "CfgSkills";
private _cls = ("true" configClasses (_cfg));
diag_log format ["ZSkills INIT: %1 skills", str count _cls];
waitUntil {sleep 1; vehicle player == player};
MPC_skills_actions = [];
{
  private _thisConfig = _x;
  private _init = (_thisConfig >> "init");
  private _thisFlagC = (_thisConfig >> "flagItems");
  private _roleRequiredC = (_thisConfig >> "roleRequired");
  private _rolesC = (_thisConfig >> "roles");
  private _conditionC = (_thisConfig >> "condition");

  diag_log ("ZSkills INIT skill: " + configName _thisConfig);

  private _thisFlag = [];
  if (isArray _thisFlagC)
  then { _thisFlag = getArray _thisFlagC };
  private _roleRequired = false;
  if (isNumber _roleRequiredC)
  then { _roleRequired = (getNumber _roleRequiredC) != 0 };
  private _thisRoles = [];
  if (isArray _rolesC)
  then { _thisRoles = getArray _rolesC };
  private _thisCondition = "true";
  if (isText _conditionC)
  then {_thisCondition = getText _conditionC};

  // TODO role check
  private _actions = 0;
  if (call compile _thisCondition) then {
    if (isText _init)
    then { call compile getText _init };
    private _toAdd = [];
    {
      if ((configName _x) find "action" == 0 && {!(_x call _fn_isAbstract)}) then {
        _toAdd pushBack _x;
      }
    } foreach ("true" configClasses _thisConfig);

    _actions = count _toAdd;
    private _params = [_thisConfig, _thisCondition, _thisRoles, _thisFlag, _toAdd];
    _params spawn ZONT_fnc_addSkillActions;
    MPC_skills_actions pushBack _params;
  };
  diag_log format ["ZSkills: Registred %1 action(s)", _actions];
} foreach _cls;
