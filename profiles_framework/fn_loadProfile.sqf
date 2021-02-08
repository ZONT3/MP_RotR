if (!hasInterface) exitWith {};

if (isNil {player}) exitWith {diag_log "ZONT_PRS: PLAYER IS NIL"; []};
private _uid = getPlayerUID player;
if (!("7656" in _uid)) exitWith {diag_log "ZONT_PRS: UID IS INVALID"; []};

waitUntil {sleep 0.1; !dialog};

[{
  params ["_uid"];
  [MPS_BDL_pres, "getChars", [_uid]] call ZONT_fnc_bd_customRequest;
},{
  MPC_chrID = nil;

  {
    _x params ["_id", "_name", "_side", "_roles", "_equip", "_pos"];
    if (_name == name player and _side == str side player) exitWith {
      MPC_chrID = _id;
      [_equip, _pos] spawn ZONT_fnc_loadDone;
    };
  } foreach _this;

  if (not isNil "MPC_chrID") exitWith { };

  [_this] call ZONT_fnc_profilesGUI;

}, _uid] call ZONT_fnc_remoteExecCallback;
