
[{
  [MPS_BDL_pres, "addChar", _this] call ZONT_fnc_bd_customRequest;
  _this params ["_roles", "_name", "_side", "_uid"];
  private _res = [MPS_BDL_pres, "getChars", [_uid]] call ZONT_fnc_bd_customRequest;
  private _id = -1;
  private _lastId = -1;
  {
    _x params ["_xid", "_xname", "_xside", "_xroles", "_xequip", "_xpos"];
    if (_name == _xname and _xside == str _side) exitWith { _id = _xid };
    if (_lastId < _xid) then { _lastId = _xid };
  } foreach _res;

  private _corrupt = false;
  if (_id < 0) then {
    diag_log ("ZPR: ERROR cannot locate a new profile in here:\n" + str _res);
    _id = _lastId;
    _corrupt = true;
  };

  [_id, _roles, _corrupt]
},{
  params ["_id", "_roles", "_corrupt"];
  if not (assert (_id >= 0)) exitWith {
    if (!isServer) then {
      _corrupt = true;
    } else {
      systemChat "Looks like this is a local test";
      ZPR_roles = [0,228];
    }
  };
  if _corrupt then {
    hint parseText "<t color='#ff1010'>ОШИБКА В СОХРАНЕНИИ ПРОФИЛЯ</t><br/>Пожалуйста, скинь из %localappdata%\Arma 3 последний .rpt файл ZONT_#9164 в дискорде";
  };

  ZPR_ID = _id;
  ZPR_roles = _roles;
  MPC_canSave = true;
}, [[_this], name player, side player, getPlayerUID player]] call ZONT_fnc_remoteExecCallback;
