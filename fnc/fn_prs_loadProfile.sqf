if (!hasInterface) exitWith {};

if (isNil {player}) exitWith {diag_log "ZONT_PRS: PLAYER IS NIL"; []};
private _uid = getPlayerUID player;
if (!("765" in _uid)) exitWith {diag_log "ZONT_PRS: UID IS INVALID"; []};

MPF_splash = {
  titleText [
    "<t valign='top'><t size='2.0'><t color='#10F810'>Добро Пожаловать на сервер</t></t>" +
      "<br/><t size='3.5'><t color='#fc9803'></t><t color='#050505'>ArmA</t><t color='#f5f5f5'>III " +
      "</t><t color='#ffe401'>Clone Wars </t><t color='#AA0000'>RP</t></t></t>",
    "PLAIN", 3, false, true];
};

[{
  params ["_uid", "_name"];
  private _res = [MPS_BDL_pres, "loadPlayer", [_uid]] call ZONT_fnc_bd_customRequest;
  if (count _res < 1) then {
    [MPS_BDL_pres, "newPlayer", [_uid, _name]] call ZONT_fnc_bd_customRequest
  };
  _res
},{
  if (count _this < 1) exitWith {
    hint "TODO: Написать новичку важную инфу";
    call MPF_splash;
  };
  (_this select 0) params ["_equip", "_loc"];
  player setUnitLoadout _equip;
  _loc spawn {
    private _tp = ["Телепортироваться на последнее сохраненное место? Экипировка восстановлена в любом случае", "Union ArmA 3 SW RP", "Да", "Нет"]
        call BIS_fnc_guiMessage;
    if (_tp) then { player setPosATL _this };
    call MPF_splash
  }
}, [_uid, name player]] call ZONT_fnc_remoteExecCallback;
