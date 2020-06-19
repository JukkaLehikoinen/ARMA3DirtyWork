if ( isDedicated or isServer ) then { 

_tero = (_this select 0);
_grp = (_this select 1);

koordi = (getpos _tero);

sleep 10;

//// Siviilille waypointteja 

_luku = 0;
talot = nearestObjects [_tero, ["house"], 100];
_luku = count talot;
if (_luku > 7) then {_luku = 5;};

for "_a" from 0 to _luku do {

_wp = _grp addWaypoint [(talot select _a), _a];
_wp setwaypointspeed "LIMITED";
_wp setwaypointbehaviour "SAFE";
_wp setwaypointtype "MOVE";
if (_a == 5) then { _wp setwaypointtype "CYCLE";};
};
//// Waypointit loppuu 5 jälkeen

waitUntil {terotnakee > 0};

for "_a" from 5 to 0 step -1 do {

deleteWaypoint [_grp, _a];
};
sleep 0.01;
dostop _tero;
sleep 0.01;
attack = [_tero, _grp,teronakee, koordi] execvm "teroattack.sqf";


}; // IF SERVER LOPPU