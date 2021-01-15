private _arr = [];
private _headlessClients = entities "HeadlessClient_F";
private _humanPlayers = allPlayers - _headlessClients;

{
    _arr pushBack getPlayerUID _x;
} foreach _humanPlayers;

[MPS_BDL_status, "commitStatus", [_arr, time]] call ZONT_fnc_bd_customRequest;
