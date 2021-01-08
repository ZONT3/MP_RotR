if (!hasInterface) exitWith {};

if (isNil {player}) exitWith {diag_log "ZONT_PRS: PLAYER IS NIL"; []};
private _uid = getPlayerUID player;
if (!("765" in _uid)) exitWith {diag_log "ZONT_PRS: UID IS INVALID"; []};

MPF_splash = {
  titleText [
    "<t valign='bottom'><t size='2.0'><t color='#10F810'>Добро Пожаловать на сервер</t></t>" +
      "<br/><t size='3.5'><t color='#fc9803'></t><t color='#050505'>ArmA</t><t color='#f5f5f5'>III " +
      "</t><t color='#ffe401'>Clone Wars </t><t color='#AA0000'>RP</t></t></t>",
    "PLAIN DOWN", 1.5, false, true];
};

[{
  params ["_uid", "_name"];
  private _res = [MPS_BDL_pres, "loadPlayer", [_uid]] call ZONT_fnc_bd_customRequest;
  if (count _res < 1) then {
    [MPS_BDL_pres, "newPlayer", [_uid, _name]] call ZONT_fnc_bd_customRequest
  };
  _res
},{
  if (count _this >= 1) then {
    (_this select 0) params ["_equip", "_loc"];
    if (typeName [] == typeName _equip and {count _equip > 0}) then { player setUnitLoadout _equip };
    if not (typeName [] == typeName _loc and {count _loc == 3}) exitWith { };
    private _tp = ["Телепортироваться на последнее сохраненное место? Экипировка восстановлена в любом случае", "Union ArmA 3 SW RP", "Да", "Нет"]
        call BIS_fnc_guiMessage;
    if (_tp) then { player setPosATL _loc };
  } else { hint "TODO: Написать новичку важную инфу" };
  call MPF_splash;
  MPC_canSave = true;
}, [_uid, name player]] call ZONT_fnc_remoteExecCallback;
