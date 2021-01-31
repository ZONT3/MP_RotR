if (!hasInterface) exitWith {};

if (isNil {player}) exitWith {diag_log "ZONT_PRS: PLAYER IS NIL"; []};
private _uid = getPlayerUID player;
if (!("765" in _uid)) exitWith {diag_log "ZONT_PRS: UID IS INVALID"; []};

MPF_splash = {
  /* titleText [
    "<t valign='bottom'><t size='2.0'><t color='#ffffff'>Добро Пожаловать на сервер</t></t>" +
      "<br/><t size='3.5'><t color='#5da4de'>Revenge of the Republic</t></t><br/>" +
      "<t size='2.2'><t color='#ffffff'>Thanks to <t color='#5da4de'>Sachelin, YARGYS, Stinger, Last Force Project</t></t></t>",
    "PLAIN DOWN", 1.5, false, true]; */
};

MPF_splash_newPlayer = {
  "Revenge of the Republic" hintC parseText (
    "<br/><t align='center'><t size='1' color='#09F009'>Приветствуем тебя, боец!</t><br/>" +
    "<t size='1.2'>Поскольку ты в первый раз зашел на наш сервер,<br/>" +
    "убедись, что ты ознакомился с правилами и уставом!</t><br/>" +
    "<a size='2.9' href='https://discord.gg/MYHY27DrSQ'><img image='pic\dis.paa'/></a><br/>" +
    "<a size='1.8' href='https://docs.google.com/document/d/16r7T-iu-q0XcEom3wJscB209_QQhxK3hwyK5Tzgbero/edit'>" +
    "<img image='pic\doc.paa'/><t color='#0788ff'> Устав</t></a><br/>"
  )
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
    (_this select 0) params ["_equip", "_loc", "_side"];
    if (_side != str side player) exitWith { MPC_canSave = true };
    if (typeName [] == typeName _equip and {count _equip > 0}) then { player setUnitLoadout _equip };
    if not (typeName [] == typeName _loc and {count _loc == 3}) exitWith { MPC_canSave = true };
    private _tp = ["Телепортироваться на последнее сохраненное место? Нужно, если у вас вылетела игра или т.п.", "Revenge of the Republic RP", "Да", "Нет"]
        call BIS_fnc_guiMessage;
    if (_tp) then { player setPosATL _loc };
  } else { call MPF_splash_newPlayer };
  call MPF_splash;
  MPC_canSave = true;
}, [_uid, name player]] call ZONT_fnc_remoteExecCallback;
