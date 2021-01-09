private _veh = vehicle player;
private _Impulse = player getVariable["Corp99_Impulse", false];

if(!_Impulse) then {
	player setVariable["Corp99_Impulse", true];
	while {player getVariable["Corp99_Impulse", false] && (driver _veh == player)} do {
		_vel = velocityModelSpace _veh;
		_speed = vectorMagnitude _vel;
		_diff = ((299 / 3.6 - _speed) min 10 / 3.6);// max 0;
		_veh setVelocityModelSpace [_vel select 0, (_vel select 1) + _diff, _vel select 2];
		sleep 1;
	};
	player setVariable["Corp99_Impulse", false];
} else {
	player setVariable["Corp99_Impulse", false];
};
