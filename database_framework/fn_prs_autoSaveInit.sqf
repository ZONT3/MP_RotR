waitUntil { MPC_canSave };

MPF_AS_launchTimer = {[] spawn { sleep 15; MPC_AUTOSAVE_PREV = false }};
MPF_AS_notice = { [findDisplay _this, "Позиция и лут сохранены", 3] call ZONT_fnc_showTextLC };
MPC_AUTOSAVE_PREV = false;
MPC_AUTOSAVE_TIMER = scriptNull;
MPC_ausvHandler_esc = [{
  if (isNull findDisplay 49) exitWith
    { if (MPC_AUTOSAVE_PREV and {isNull MPC_AUTOSAVE_TIMER}) then
      { MPC_AUTOSAVE_TIMER = call MPF_AS_launchTimer } };
  if (MPC_AUTOSAVE_PREV) exitWith { };

  player call ZONT_fnc_prs_saveProfile;
  MPC_AUTOSAVE_PREV = true;
  49 call MPF_AS_notice;
}] call CBA_fnc_addPerFrameHandler;

MPC_ausvHandler_period = [{
  if (!isNull findDisplay 49) exitWith {};
  if (MPC_AUTOSAVE_PREV) exitWith {};

  player call ZONT_fnc_prs_saveProfile;
  MPC_AUTOSAVE_PREV = true;
  MPC_AUTOSAVE_TIMER = call MPF_AS_launchTimer;
  46 call MPF_AS_notice;
}, 90] call CBA_fnc_addPerFrameHandler;
