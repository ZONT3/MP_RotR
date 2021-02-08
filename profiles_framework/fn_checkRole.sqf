params [["_wl", [], [[]]], ["_bl", [], [[]]], ["_rl", [], [[]]]];

if not assert (!isNil "ZPR_roles") exitWith { };

private _roles = call ZONT_fnc_getRoles;
private _fn_toID = {
  private _id = 0;
  {
      _x params ["_xid", "_name", "_classname"];
      if (_classname == _this) exitWith {
        _id = _xid
      };
  } foreach _roles;
  _id
};

{
  call compile format [
      "%1 = %1 apply {_x call _fn_toID}; " +
      "%1 = (%1 arrayIntersect %1) - [0]",
       _x ];
} foreach ["_wl", "_bl", "_rl"];

private _b = true;

{
  if not (_x in ZPR_roles) exitWith {_b = false};
} foreach _rl;

if not _b exitWith {false};

{
  if (_x in _bl) exitWith {_b = false};
} foreach ZPR_roles;

if not _b exitWith {false};

_b = count _wl == 0;
{
  if (_x in ZPR_roles) exitWith {_b = true};
} foreach _wl;
_b
