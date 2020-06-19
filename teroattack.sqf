if ( isDedicated or isServer ) then { 

_solttu = (_this select 0);
_grp = (_this select 1);
_hoksaus = (_this select 2);
koordi = (_this select 3);

terminate waypoint;
//// Trikkerin laukausijat
_arra = [];
_lista = list _hoksaus;
_luku = count _lista;
if (_luku == 0) then {
_lista = list hoksaus2;
_luku = count _lista;
};
_luku = _luku - 1;

for "_b" from 0 to _luku do {
_c = _lista select _b;

_arra set [_b, name _c];

};

_tiedot = [];
_index =0;

{
_ero = _x distance _solttu;
_tiedot set [_index,_ero];
_index = _index +1;

_tiedot sort true;
} forEach allplayers;


{
if(_x distance _solttu  == _tiedot select 0 and _x distance rosvo2spawn < 800 and name _x in _arra) then {

_solttu domove getpos _x;
sleep 30;
attack = [_solttu, _grp, _hoksaus, koordi] execvm "teroattack.sqf";
} else {
_solttu domove koordi; 
_solttu setbehaviour "SAFE";
_solttu setspeedmode "FULL";
waituntil {_solttu distance koordi < 5};

waypoint = [_solttu, _grp, _hoksaus] execvm "waypointtero.sqf"

};
} forEach allplayers;




};