if (isDedicated or isServer) then {

_i = 0;
{
if ((side _x) == civilian and _x inArea ekaalue) then {
_i = _i + 1;
};
} forEach allunits;

_random1 = round(random _i);
_random2 = round(random _i);
_random3 = round(random _i);
_i = 0;
[] execvm "a2.sqf";
waitUntil { a != 0 };

{
if ((side _x) == civilian and _x inArea ekaalue) then {
_i = _i + 1;
if (_i == _random1 || _i == _random2 || _i == _random3) then {
[_x] join vartija6;
[_x] execvm "100.sqf"; //kolmesta siviilistä saa 100 rahaa 3x100

_x addWeapon "hgun_p07_F";
_x addMagazines ["16Rnd_9x21_Mag",3];



};
};
} forEach allunits;





};






