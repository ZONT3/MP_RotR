if (isNil 'MPV_teleportTerms') exitWith { };

{
  _thisTermX = _x select 0;
  removeAllActions _thisTermX;
  {
    _x params ["_thisTerm", "_tooltip", "_color", "_posATL", "_cond"];
    _cond = (_thisTermX getVariable ["ZTT_masterTerm", false]) or {([_thisTermX] call _cond) && {
      (_thisTerm getVariable ["ZTT_sideSpec", sideEmpty])
        in [sideEmpty, _thisTermX getVariable ["ZTT_sideSpec", sideEmpty]] }};
    if ((_thisTermX != _thisTerm) && _cond) then {
      _thisTermX addAction [
      format ["<t color='%1'>%2</t>", _color, _tooltip],
      {
        params ["_target", "_caller", "_actionId", "_arguments"];
        _arguments spawn {
          titleText ["Перемещение...","BLACK OUT",0.5];
          sleep 1;
          player setPosATL _this;
          sleep 1;
          titleText ["Перемещение...","BLACK IN",3];
        }
      },
      _posATL,6,false,true,"","true",3];
    }
  } forEach MPV_teleportTerms;
} forEach MPV_teleportTerms;
