params [["_label", ""], ["_request", ""], ["_args", []]];
if (  !isServer   ) exitWith {[]};
if (_label   == "") exitWith {[]};
if (_request == "") exitWith {[]};

diag_log format ["ZDB: Request for DB %1: %2, argс: %3", _label, _request, count _args];

private _argsArr = _args;
_args = "";
{
    private _strx = if (typeName _x == typeName "ass") then {_x} else {str _x};
    _args = _args + ":" + _strx;
} forEach _argsArr;

private _res = call compile ("extDB3" callExtension format ["0:%1:%2%3", _label, _request, _args]);
if (isNil {_res}) exitWith {
  diag_log "Failed! Cannot compile output."; []
};
if (_res select 0 != 1) exitWith {
  diag_log format ["Failed! %1", _res select 1]; []
};

diag_log "Success.";
_res = _res select 1;
if (typeName _res != typeName []) exitWith {[]};
_res;
