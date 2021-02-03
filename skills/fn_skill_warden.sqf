params ["_cfg", "_mode", "_arg"];

private _str_w1_bound = "<t color='#db6300'>Вы привязали %2</t><br/>Он не сможет отойти от вас дальше, чем на %1 метров";
private _str_w1_unk = "<t color='#db6300'>%1 потерял сознание из-за боли</t>";

if (_mode == 0) exitWith { // INIT
  [_cfg, missionNamespace, "list", []] call ZONT_fnc_setSkillVar;
  private _fn_addAction = {
    private _arr = _this getVariable ["warden_actions", []];
    private _addEH = count _arr <= 0;
    { _arr pushBack ( [_cfg, _this, _x] call ZONT_fnc_addSkillAction )
    } foreach ["action1", "action2", "action3", "action4"];
    _x setVariable ["warden_actions", _arr];
    if _addEH then {
      _this addEventHandler ["Killed", {
        params ["_unit", "_killer", "_instigator", "_useEffects"];
        { _unit removeAction _x
        } foreach (_unit getVariable ["warden_actions", []]);
      }];
    }
  };
  private _handl = [{
    (_this select 0) params ["_cfg", "_fn_addAction", "_flag"];
    if not ([_flag] call ZONT_fnc_checkFlag) exitWith {};
    private _prep = [_cfg, missionNamespace, "preparedUnits", []] call ZONT_fnc_getSkillVar;
    {
      if (_x != player and alive _x and not (_x in _prep)) then {
        _x call _fn_addAction;
        _prep pushBack _x;
      };
    } foreach (player nearObjects ["CAManBase", 50]);
    [_cfg, missionNamespace, "preparedUnits", _prep] call ZONT_fnc_setSkillVar;
  }, 1.15, [_cfg, _fn_addAction, _arg]] call CBA_fnc_addPerFrameHandler;
  [_cfg, missionNamespace, "initHandler", _handl] call ZONT_fnc_setSkillVar;
};


if (_mode < 0) exitWith { // UNLINK
  private _mode = - _mode;
  private _list = [_cfg, missionNamespace, "list", []] call ZONT_fnc_getSkillVar;
  {
    _x params ["_unit", "_xmode"];
    if ((_unit == _arg) and {_xmode == _mode}) exitWith {
      _list deleteAt _forEachIndex;
    };
  } foreach _list;
  [_cfg, missionNamespace, "list", _list] call ZONT_fnc_setSkillVar;

  [_cfg, _arg, "warden_" + str _mode, objNull] call ZONT_fnc_setSkillVar;

  private _link = switch (_mode) do {
    case (1): {"болью"};
    case (2): {"уроном"};
  };
  hint parseText format ["<t color='#f01010'>Связь <t color='#F0F0F0'>[%2]</t> c %1 разорвана</t>", name _arg, _link];
};


private _maxDist          = [_cfg, "maxDist", 50]          call BIS_fnc_returnConfigEntry;
private _minDist          = [_cfg, "minDist", 10]          call BIS_fnc_returnConfigEntry;
private _secondDistOffset = [_cfg, "secondDistOffset", 10] call BIS_fnc_returnConfigEntry;
private _maxLinks         = [_cfg, "maxLinks", 5]          call BIS_fnc_returnConfigEntry;


private _list = [_cfg, missionNamespace, "list", []] call ZONT_fnc_getSkillVar;
_list = _list apply {_x select 0};
_list = _list arrayIntersect _list;
if (count _list >= _maxLinks) exitWith {
  hint parseText format ["<t color='#f01010'>Достигнуто максимальное число связей (%1)</t>", _maxLinks];
};


private _fn_list_loop = {
  while { count ([_this, missionNamespace, "list", []] call ZONT_fnc_getSkillVar) > 0} do {
    private _text = "";
    private _list = [_this, missionNamespace, "list", []] call ZONT_fnc_getSkillVar;

    {
      private _str = _x;
      private _first = true;
      private _mode = _forEachIndex + 1;
      {
        _x params ["_target", "_mode"];
        if _first then {
          _text = _text + _str;
          _first = false;
        };
        _text = _text + format ["<br/>[ %2 m ] %1", name _target, player distance _target toFixed 2];
      } foreach (_list select {(_x select 1) == _mode});
    } forEach ["<t color='#db6300'>Привязанные болью:</t>", "<br/><br/><t color='#db6300'>Связанные уроном:</t>"];

    [findDisplay 46, _text, 0.251] call ZONT_fnc_showStructuredTextLC;
    uisleep 0.25;
  };
  [_this, missionNamespace, "list_loop", false] call ZONT_fnc_setSkillVar
};


private _fn_loop = {
  private _var = "warden_" + str _mode;

  private _list = [_cfg, missionNamespace, "list", []] call ZONT_fnc_getSkillVar;
  [_cfg, missionNamespace, "list", _list + [[_arg, _mode]]] call ZONT_fnc_setSkillVar;

  if not ([_cfg, missionNamespace, "list_loop", false] call ZONT_fnc_getSkillVar) then {
    [_cfg, missionNamespace, "list_loop", true] call ZONT_fnc_setSkillVar;
    _cfg spawn _fn_list_loop;
  };

  [_cfg, _arg, _var, player, true] call ZONT_fnc_setSkillVar;
  while { [_cfg, _arg, _var, objNull] call ZONT_fnc_getSkillVar == player }
  do { call _this; sleep 0.2 };
};


switch (_mode) do {
  case (1): {
    hint parseText format [_str_w1_bound, _maxDist, name _arg];

    private _lastUnk = false;
    private _lastPain = 0;
    {
      private _dist = _arg distance player;
      private _nPain = (((_dist - _minDist) / (_maxDist - _minDist)) min 1) max 0;
      private _cPain = _arg getVariable ["ace_medical_pain", 0];

      if (_nPain > _cPain or {_lastPain == _cPain}) then {
        _arg setVariable ["ace_medical_pain", _nPain, true];
        _lastPain = _nPain;
      };

      if (lifeState _arg == "HEALTHY" || lifeState _arg == "INJURED") then {
        if (_dist > _maxDist) then {
          if (not _lastUnk) then {
            _lastUnk = true;
            hint parseText format [_str_w1_unk, name _arg];
          };
          [_arg, true, 10] call ace_medical_fnc_setUnconscious;
        } else { _lastUnk = false };
      };
    } call _fn_loop;
  };
  case (2): {
    hint "Пока не реализовано";
  };
};
