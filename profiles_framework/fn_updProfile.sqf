[{
  params ["_name", "_side", "_t"];
  [MPS_BDL_pres, "setChar", [_name, _side, _t select 0]] call ZONT_fnc_bd_customRequest;
  _t
},{
  params ["_id", "_name", "_side", "_role", "_equip", "_pos"];
  MPC_chrID = _id;
  [_equip, _pos] call ZONT_fnc_loadDone;
}, [name player, side player, _this]] call ZONT_fnc_remoteExecCallback;
