if ( isDedicated or isServer ) then { 

_siviili = (_this select 0);
_grp = (_this select 1);

sleep 10;

//// Siviilille waypointteja 

_luku = 0;
talot = nearestObjects [_siviili, ["house"], 300];
_luku = count talot;
if (_luku > 10) then {_luku = 10;};

for "_a" from 0 to _luku do {

_wp = _grp addWaypoint [(talot select _a), _a];
_wp setwaypointspeed "LIMITED";
_wp setwaypointbehaviour "SAFE";
_wp setwaypointtype "MOVE";
if (_a == 10) then { _wp setwaypointtype "CYCLE";};
};
//// Waypointit loppuu 10 jälkeen

waitUntil {pakosalle2 > 0};

for "_a" from 10 to 0 step -1 do {

deleteWaypoint [_grp, _a];
};
sleep 0.01;
dostop _siviili;
sleep 0.01;
[_siviili] execvm "siviiliturva2.sqf";


}; // IF SERVER LOPPU