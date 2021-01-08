/*
this addAction ["Перемещение на базу регулярных сил",{titleCut ["Перемещение...","BLACK IN",3]; player setposatl [getpos regularBase select 0, getpos regularBase select 1, getposatl regularBase select 2]},"",1,false,true,"","_this distance _target < 5"];

this addAction ["<t color='#ffffff'>Перемещение базу БСО/ОТО",{titleCut ["Перемещение...","BLACK IN",3]; player setposatl [getpos bso select 0, getpos bso select 1, getposatl bso select 2]},"",1,false,true,"","_this distance _target < 5"];

this addAction ["<t color='#ffffff'>Перемещение базу Гвардии",{titleCut ["Перемещение...","BLACK IN",3]; player setposatl [getpos aclamator select 0, getpos aclamator select 1, getposatl aclamator select 2]},"",1,false,true,"","_this distance _target < 5"];


this addAction ["<t color='#7cb342'>Перемещение в храм джедаев",{titleCut ["Перемещение...","BLACK IN",3]; player setposatl [getpos jedi select 0, getpos jedi select 1, getposatl jedi select 2]},"",1,false,true,"","_this distance _target < 5"];

this addAction ["<t color='#ffd600'>Перемещение в NonRP Зону",{titleCut ["Перемещение...","BLACK IN",3]; player setposatl [getpos noneRP select 0, getpos noneRP select 1, getposatl noneRP select 2]},"",1,false,true,"","_this distance _target < 5"];

this addAction ["Запросить снаряжение",{wRS setposatl [getpos aRS select 0, getpos aRS select 1, getposatl aRS select 2]},"",1,false,true,"","_this distance _target < 3"];

this addAction [""Получение мед. помощи"",""call ace_medical_treatment_fnc_fullHeal;"","""",1,false,true,"""",""_this distance _target < 3""];
*/

0 fadeRadio 0;
enableRadio false;
enableSentences false;
enableSaving [false, false];
