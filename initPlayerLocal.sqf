waitUntil {vehicle player == player};

MPC_canSave = false;
[] spawn ZONT_fnc_prs_loadProfile;
[] spawn ZONT_fnc_prs_autoSaveInit;

[] spawn ZONT_fnc_initSkills;

[] execVM "chatCommands.sqf";
