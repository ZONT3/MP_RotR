if (!isServer) exitWith {};
if (missionNamespace getVariable ["ZDB_INITED", false]) exitWith {};

if (("extDB3" callExtension "9:SYSTEM_TIME") == "") exitWith {
  diag_log "ZDB ERROR: extDB3 seems like not loaded";
};

diag_log "ZDB: Initializing";
"extDB3" callExtension "9:RESET";
private _res = call compile ("extDB3" callExtension "9:ADD_DATABASE:arma3sw");
if (_res select 0 != 1) exitWith {
  diag_log format ["Failed! %1", _res select 1];
};
diag_log "Success.";
missionNamespace setVariable ["ZDB_INITED", true];
