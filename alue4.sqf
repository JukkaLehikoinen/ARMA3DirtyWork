if (isDedicated or isServer) then {

scopeName "main";
while {si4 != index4si} do {
// PAIKAN VALINTA
_pm1 = round(random 1);
_pm2 = round(random 1);
_pos1= random 100;
if (_pm1 == 1) then {_pos1 = _pos1 - (_pos1 * 2);};
if (_pm1 == 0) then {_pos1 = _pos1;};
_pos2= random 100;
if (_pm2 == 1) then {_pos2 = _pos2 - (_pos2 * 2);};
if (_pm2 == 0) then {_pos2 = _pos2;};

_paikka = [(getpos nelalue select 0) + _pos1, (getpos nelalue select 1) + _pos2];
_vesi = surfaceIsWater _paikka;
	scopeName "loop1";
	while {true} do {

// PAIKKA VALITTU
scopeName "loop2";
	while {si4 != index4si} do {	
	if (_vesi || !isonroad _paikka) then {

	breakTo "loop1";
	} else {	
	index4si = index4si + 1;

	
_i = round(random 15) + 1;
switch _i do {
    case 1: { _i = "C_man_1"};
    case 2: { _i = "C_man_1_1_f"};
    case 3: { _i = "C_man_1_2_f"};
    case 4: { _i = "C_man_1_3_f"};
    case 5: { _i = "C_man_casual_1_f"};
    case 6: { _i = "C_man_casual_2_f"};
    case 7: { _i = "C_man_casual_3_f"};
    case 8: { _i = "C_man_casual_4_f"};
    case 9: { _i = "C_man_casual_5_f"};
    case 10: { _i = "C_man_casual_6_f"};
    case 11: { _i = "C_man_polo_1_f"};
    case 12: { _i = "C_man_polo_2_f"};
    case 13: { _i = "C_man_polo_3_f"};
    case 14: { _i = "C_man_polo_4_f"};
    case 15: { _i = "C_man_polo_5_f"};
    case 16: { _i = "C_man_polo_6_f"};

};

_grp = createGroup civilian;
siviili = _grp createUnit [ _i, _paikka, [], 0, "FORM"];
[siviili, _grp] execvm "waypointalue4.sqf";

	breakto "loop1";
	};
	};
	};
};


}; // IF SERVER LOPPU