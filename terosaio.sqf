if ( isDedicated or isServer ) then { 


scopeName "main";
while {terot != teroindexi} do {
// PAIKAN VALINTA
_pm1 = round(random 1);
_pm2 = round(random 1);
_pos1= random 80;
if (_pm1 == 1) then {_pos1 = _pos1 - (_pos1 * 2);};
if (_pm1 == 0) then {_pos1 = _pos1;};
_pos2= random 80;
if (_pm2 == 1) then {_pos2 = _pos2 - (_pos2 * 2);};
if (_pm2 == 0) then {_pos2 = _pos2;};

_paikka = [(getpos rosvo2spawn select 0) + _pos1, (getpos rosvo2spawn select 1) + _pos2];
_vesi = surfaceIsWater _paikka;
	scopeName "loop1";
	while {true} do {

// PAIKKA VALITTU
scopeName "loop2";
	while {terot != teroindexi} do {	
	if (_vesi) then {

	breakTo "loop1";
	} else {	
	teroindexi = teroindexi + 1;

	
_i = round(random 6) + 1;
switch _i do {
    case 1: { _i = "I_C_Soldier_Bandit_1_F"};
    case 2: { _i = "I_C_Soldier_Bandit_2_F"};
    case 3: { _i = "I_C_Soldier_Bandit_3_F"};
    case 4: { _i = "I_C_Soldier_Bandit_4_F"};
    case 5: { _i = "I_C_Soldier_Bandit_5_F"};
    case 6: { _i = "I_C_Soldier_Bandit_6_F"};
    case 7: { _i = "I_C_Soldier_Bandit_7_F"};

};

_grp = createGroup independent;
_tero = _grp createUnit [ _i, _paikka, [], 0, "FORM"];
[_tero] execvm "200.sqf";
[_tero, _grp] execvm "waypointtero.sqf";
	[_tero] execvm "panokset.sqf";

_tero setUnitLoadout getUnitLoadout _tero;
	breakto "loop1";
	};
	};
	};
};


};