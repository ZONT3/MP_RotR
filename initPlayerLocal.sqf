waitUntil {vehicle player == player};

MPC_canSave = false;
[] spawn ZONT_fnc_prs_loadProfile;
[] spawn ZONT_fnc_prs_autoSaveInit;

[] spawn ZONT_fnc_initSkills;

[] spawn ZONT_fnc_initTeleportTerminals;

[] execVM "chatCommands.sqf";

/******                            Zeus list                             ******/
[{
  if (isnull (finddisplay 312)) exitWith {};
  private mpc_cc_name = format ["%1 (%2)", name player, getPlayerUID player];
  if (isNil 'mpv_current_curators') {mpv_current_curators = []};

  if (!(mpc_cc_name in mpv_current_curators)) then {
      mpv_current_curators pushBack mpc_cc_name;
      publicVariable 'mpv_current_curators';
      (finddisplay 312) displayAddEventHandler ["Unload", {
          mpv_current_curators deleteAt (mpv_current_curators find mpc_cc_name);
          publicVariable 'mpv_current_curators';
          hintSilent "";
      }];
  };
  private _str = "<t color='#00FF00'>Активные зевсы:</t>";
  { _str = format ["%1<br/>%2", _str, _x]; } forEach mpv_current_curators;
  hintSilent parseText _str;
}, 1] call CBA_fnc_addPerFrameHandler;
