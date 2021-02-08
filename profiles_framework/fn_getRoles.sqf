private _res = [];
{
  private _id = [_x, "id", 0] call BIS_fnc_returnConfigEntry;
  private _hide = [_x, "hide", "false"] call BIS_fnc_returnConfigEntry == "true";
  if (_id != 0 and not _hide) then {
    _res pushBack [
      _id,
      [_x, "name", configName _x] call BIS_fnc_returnConfigEntry,
      configName _x,
      [_x, "tags", []] call BIS_fnc_returnConfigEntry
    ];
  };
} foreach ("true" configClasses (missionConfigFile >> "CfgRoles"));
_res
