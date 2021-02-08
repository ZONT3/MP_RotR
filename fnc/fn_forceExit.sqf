params [["_end", "force"]];

if (!hasInterface or {!local player}) exitWith {};

failMission _end;
forceEnd;
