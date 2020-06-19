if (isDedicated or isServer) then {

_kohta = round(random 3) + 1;

switch _kohta do {
    case 1: { paikka = getpos poliisipaikka1};
    case 2: { paikka = getpos poliisipaikka2};
    case 3: { paikka = getpos poliisipaikka3};
    case 4: { paikka = getpos poliisipaikka4};
};



	_veh = "B_GEN_Offroad_01_gen_F" createVehicle paikka; 
	sleep 1;
	
	_ryhma = createGroup west;
	_unit1 = _ryhma createUnit ["B_GEN_Soldier_F", paikka, [], 5, "FORM"] ;   
	[_unit1] join _ryhma;
	
	_unit2 = _ryhma createUnit ["B_GEN_Soldier_F", paikka, [], 5, "FORM"] ;   
	[_unit2] join _ryhma;

	_unit3 = _ryhma createUnit ["B_GEN_Soldier_F", paikka, [], 5, "FORM"] ;   
	[_unit3] join _ryhma;

	_unit4 = _ryhma createUnit ["B_GEN_Soldier_F", paikka, [], 5, "FORM"] ;   
	[_unit4] join _ryhma;

	_unit5 = _ryhma createUnit ["B_GEN_Soldier_F", paikka, [], 5, "FORM"] ;   
	[_unit5] join _ryhma;

	_unit6 = _ryhma createUnit ["B_GEN_Soldier_F", paikka, [], 5, "FORM"] ;   
	[_unit6] join _ryhma;

	_unit1 assignasdriver _veh;
	_unit2 assignascargo _veh;
	_unit3 assignascargo _veh;
	_unit4 assignascargo _veh;
	_unit5 assignascargo _veh;
	_unit6 assignascargo _veh;

	[_unit1] execvm "100.sqf";
	[_unit2] execvm "100.sqf";
	[_unit3] execvm "100.sqf";
	[_unit4] execvm "100.sqf";
	[_unit5] execvm "100.sqf";
	[_unit6] execvm "100.sqf";

	_unit1 setUnitLoadout getUnitLoadout _unit1;
	_unit2 setUnitLoadout getUnitLoadout _unit2;
	_unit3 setUnitLoadout getUnitLoadout _unit3;
	_unit4 setUnitLoadout getUnitLoadout _unit4;
	_unit5 setUnitLoadout getUnitLoadout _unit5;
	_unit6 setUnitLoadout getUnitLoadout _unit6;
	
	_wp =_ryhma addWaypoint [_veh, 0];
	[_ryhma, 0] setWaypointType "GETIN";
	_wp =_ryhma addWaypoint [ekaalue, 1];
	[_ryhma, 1] setWaypointType "MOVE";
	[_ryhma, 1] setWaypointBehaviour "AWARE";
	_wp =_ryhma addWaypoint [ekaalue, 2];
	[_ryhma, 2] setWaypointType "GETOUT";
	_wp =_ryhma addWaypoint [ekaalue, 3];
	[_ryhma, 3] setWaypointType "GUARD";

	waitUntil { _unit1 in _veh };
	
	

sleep 15;

	_veh setPilotLight true; 
	_veh animate ["BeaconsStart", 1];




	waitUntil { (!(_unit1 in _veh)) };
	if (_unit1 distance paikka < 50) then {
	deletevehicle _veh;
	};

	

};