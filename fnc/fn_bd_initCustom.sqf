params [["_ini", ""], ["_label", str floor random 9999]];
if (!isServer) exitWith {};
if (_ini == "") exitWith {};
if (("extDB3" callExtension "9:SYSTEM_TIME") == "") exitWith {
  diag_log "ZDB ERROR: extDB3 seems like not loaded";
  "";
};

_ini = format ["%1.ini", _ini];
diag_log format ["ZDB: Initializing DB ini:%1 label:%2", _ini, _label];

private _res = call compile ("extDB3" callExtension
  format ["9:ADD_DATABASE_PROTOCOL:arma3sw:SQL_CUSTOM:%1:%2", _label, _ini]);
if ((_res select 0) != 1) exitWith {
  diag_log format ["Failed! %1", _res select 1];
  "";
};

diag_log "Success.";
_label
