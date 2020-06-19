_a = (_this select 0);

_i = list _a;
_lista = count _i;
_lista = _lista -1;

for "_f" from 0 to _lista do {
_c = _i select _f;


_ase = currentWeapon _c;

if (_ase != "" and a == 0) then {
a= a + 1;
publicvariable "a";
systemchat "Is that a gun?";
kassa say3d "gun";
}; // if loppu


}; // For loppu

