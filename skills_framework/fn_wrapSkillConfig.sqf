params ["_thisConfig", "_code"];
private _thisCondition      = [_thisConfig, "condition", "true"] call BIS_fnc_returnConfigEntry;
private _thisRoles          = [_thisConfig, "roles", []]         call BIS_fnc_returnConfigEntry;
private _thisFlag           = [_thisConfig, "flagItems", []]     call BIS_fnc_returnConfigEntry;

call _code;
