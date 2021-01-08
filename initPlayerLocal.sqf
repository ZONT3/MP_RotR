waitUntil {vehicle player == player};

MPC_canSave = false;
[] spawn ZONT_fnc_prs_loadProfile;
[] spawn ZONT_fnc_prs_autoSaveInit;

[] execVM "chatCommands.sqf";
