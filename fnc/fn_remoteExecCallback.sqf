params [["_exec", {}], ["_callback", {}], ["_params", []], ["_nid", 2]];

[[_params, _exec, _callback, player], {
    params ["_params", "_exec", "_callback", "_nid"];
    [_params call _exec, _callback] remoteExec ["bis_fnc_call", _nid];
}] remoteExec ["bis_fnc_call", _nid];
