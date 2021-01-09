if (!hasInterface) exitWith { };

MPC_skills_actions = [];
waitUntil {sleep 1; vehicle player == player};
{
  private _thisConfig = _x;
  private _init = (_thisConfig >> "init");
  private _thisFlagC = (_thisConfig >> "flagItems");
  private _roleRequiredC = (_thisConfig >> "roleRequired");
  private _rolesC = (_thisConfig >> "roles");
  private _conditionC = (_thisConfig >> "condition");

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
  if (call compile _thisCondition) then {
    if (isText _init)
    then { call compile getText _init };
    private _toAdd = [];
    {
      if ((configName _x) find "action" == 0) then {
        _toAdd pushBack _x;
      }
    } foreach ("true" configClasses _thisConfig);

    private _params = [_thisConfig, _thisCondition, _thisRoles, _thisFlag, _toAdd];
    _params spawn ZONT_fnc_addSkillActions;
    MPC_skills_actions pushBack _params;
  }
} foreach ("true" configClasses (missionConfigFile >> "CfgSkills"));
