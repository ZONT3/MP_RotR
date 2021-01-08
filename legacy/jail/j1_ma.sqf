h = [] spawn {
	waitUntil {!isNull findDisplay 46}; //Ждём определения основного дисплея
	disableSerialization;
	_display = (findDisplay 46) createDisplay "RscDisplayEmpty"; //Создаём пустой дисплей
	_ctrlEdit = _display ctrlCreate ["RscEdit", 19998]; //создаём поле ввода
	private _width = 30 / 108*safeZoneH /(4/3);// Определение положения и размера поля ввода
	private _height = 4/ 108*safeZoneH;//
	private _bufferY = 15 / 108*safeZoneH;//
	private _bufferX = ((safeZoneW / 2) - (_width / 2));//
	_ctrlEdit ctrlSetPosition [safeZoneX + _bufferX, safeZoneY + safeZoneH - _bufferY, _width, _height];//
	_ctrlEdit ctrlSetBackgroundColor [0,0,0,1];//
	_ctrlEdit ctrlCommit 0;//
	_ctrlEdit ctrlAddEventHandler ["KeyUp", {					//Создаём событие для нажатия цифровых кнопок, да и вообще кнопок
		params ["_ctrl", "_key"];
		_text = (ctrlText _ctrl);//создаём переменную для вводимого текста
		_isValid = !(parseNumber _text isEqualTo 0) || (count (_text splitString "0123456789.-") isEqualTo 0); 
		//определение, что срабатывать будут только цифры
		//сравниваем значения из поля ввода
		if (_isValid) then {
			//задаём пременную, в которой будет текст конвертироваться в число
			_number = parseNumber _text;
			//условие, по которому происходит открытие карцера
			if (_number isEqualTo 8520) then {
			[[_this select 0], "scripts\jail\j1_un.sqf"] remoteExec ["execVM", 0, true];hint "Доступ предоставлен, карцер разблокирован"} else {
			hint "В доступе отказано."};
			};
	}];
	ctrlSetFocus _ctrlEdit;
	sleep 15;
	hintSilent "";
};
	