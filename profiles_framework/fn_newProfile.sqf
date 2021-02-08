
[{
  [MPS_BDL_pres, "addChar", _this] call ZONT_fnc_bd_customRequest;
  _this params ["_role", "_name", "_side", "_uid"];
  private _res = [MPS_BDL_pres, "getChars", [_uid]] call ZONT_fnc_bd_customRequest;
  private _id = -1;
  {
    _x params ["_xid", "_xname", "_xside", "_xrole", "_xequip", "_xpos"];
    if (_name == _xname and _xside == str _side) exitWith { _id = _xid };
  } foreach _res;
  assert (_id >= 0);
  _id
},{
  MPC_chrID = _this;
  MPC_canSave = true;
}, [[_this], name player, side player, getPlayerUID player]] call ZONT_fnc_remoteExecCallback;
