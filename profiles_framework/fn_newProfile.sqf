
[{
  [MPS_BDL_pres, "addChar", _this] call ZONT_fnc_bd_customRequest;
  _this params ["_roles", "_name", "_side", "_uid"];
  private _res = [MPS_BDL_pres, "getChars", [_uid]] call ZONT_fnc_bd_customRequest;
  private _id = -1;
  {
    _x params ["_xid", "_xname", "_xside", "_xroles", "_xequip", "_xpos"];
    if (_name == _xname and _xside == str _side) exitWith { _id = _xid };
  } foreach _res;
  [_id, _roles]
},{
  params ["_id", "_roles"];
  if not (assert (_id >= 0)) exitWith {
    if (!isServer) then {
      "profileErr" call ZONT_fnc_forceExit
    } else {
      systemChat "Looks like this is a local test";
      ZPR_roles = [0,228];
    }
  };
  ZPR_ID = _id;
  ZPR_roles = _roles;
  MPC_canSave = true;
}, [[_this], name player, side player, getPlayerUID player]] call ZONT_fnc_remoteExecCallback;
