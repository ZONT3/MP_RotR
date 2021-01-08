/*
	File: fn_checkBox.sqf
	
	Description:
	Short macro for clearing vehicle cargo, will change in the future and be
	expanded into actual checkboxes, etc.
*/
disableSerialization;
private["_control"];
_control = ((findDisplay 38100) displayCtrl 38103);

if(VVS_Checkbox) then {VVS_Checkbox = false;} else {VVS_Checkbox = true;};

if(VVS_Checkbox) then
{
	hint "Вы отмечаете что в инвентаре (Оружие,Патроны,Вещи) могут быть удалены при спавне.";
	_control ctrlSetText "Да";
	_control ctrlSetTextColor [0,1,0,1];
}
	else
{
	_control ctrlSetText "Нет";
	_control ctrlSetTextColor [1,0,0,1];
};