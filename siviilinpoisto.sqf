if ( isDedicated or isServer ) then { 
_s = (_this select 0);

while {alive _s} do {
_m = count allplayers;
_i = 1;
_eta = 0;
_lyhyin = 0;
{

if (_i == 1) then {
_lyhyin = _s distance _x;

};
if (_i > 1 and _i < _m) then {
_eta = _s distance _x;
	if (_eta < _lyhyin) then {
_lyhyin = _eta;
};
};
if (_i == _m) then {
_eta = _s distance _x;
	if (_eta < _lyhyin) then {
	_lyhyin = _eta;
				};
	if (_lyhyin > 800) then {

if !(_s == vehicle _s) then {

	_a = vehicle _s;
	
deleteVehicle _a;
	_s setdammage 1;
	deletevehicle _s;
	};
	
				};
};
_i = _i + 1;
} forEach allplayers;
sleep 10;
};

};