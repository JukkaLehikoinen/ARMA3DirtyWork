if ( isDedicated or isServer ) then { 

_solttu = (_this select 0);
_grp = (_this select 1);
_i = (_this select 2);
koordi = (getpos _solttu);

sleep 10;

//// Waypointteja 

_luku = 0;
talot = nearestObjects [_solttu, ["house"], 300];
_luku = count talot;
if (_luku > 10) then {_luku = 10;};
for "_a" from 0 to _luku do {

_wp = _grp addWaypoint [(talot select _a), _a];
_wp setwaypointspeed "LIMITED";
_wp setwaypointbehaviour "SAFE";
_wp setwaypointtype "MOVE";

if (_a == 10) then { 
_wp setwaypointtype "CYCLE";

};
};

//// Waypointit loppuu 10 jälkeen



waitUntil {pakosalle4 > 0};

for "_a" from 10 to 0 step -1 do {

deleteWaypoint [_grp, _a];
};

sleep 0.01;
dostop _solttu;
sleep 0.1;
_solttu setbehaviour "COMBAT";

if (pakosalle4 > 1) then {
attack4 = [_solttu, _grp, spot20, koordi] execvm "alue4attack.sqf";
}; 
if (pakosalle4 > 0 and pakosalle4 < 2) then {
attack4 = [_solttu, _grp, spot10, koordi] execvm "alue4attack.sqf";
};


}; // IF SERVER LOPPU