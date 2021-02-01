params ["_cfg", "_target", "_var", ["_val", nil], ["_public", false]];
_var = [_cfg, _var] call ZONT_fnc_skillVar;
_target setVariable [_var, _val];
if _public then {publicVariable _var};
