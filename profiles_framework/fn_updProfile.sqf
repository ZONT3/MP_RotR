[{
  params ["_name", "_side", "_t"];
  _t params ["_id", "_name", "_side", "_roles", "_equip", "_pos"];
  [MPS_BDL_pres, "setChar", [_name, _side, _roles, _id]] call ZONT_fnc_bd_customRequest;
  _t
},{
  params ["_id", "_name", "_side", "_roles", "_equip", "_pos"];
  ZPR_ID = _id;
  ZPR_roles = _roles;
  [_equip, _pos] call ZONT_fnc_loadDone;
}, [name player, side player, _this]] call ZONT_fnc_remoteExecCallback;
