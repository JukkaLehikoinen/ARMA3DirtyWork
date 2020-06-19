_pelaaja = (_this select 0);

while {a < 1} do {

_ase = currentWeapon player;

{
if ((side _x) == civilian or (side _x) == west and _x inarea ekaalue) then {
if (_x knowsabout player > 2 && _x distance player < 50) then {
if (_ase != "" and a == 0) then {
_x say3d "panic";
_x say3d "panic2";
sleep 0.5;
a = 1;
publicvariable "a";
};
};
};
} forEach allunits;

};



