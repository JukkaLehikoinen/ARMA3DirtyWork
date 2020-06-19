if ( isDedicated or isServer ) then { 
_turva = (getpos siviiliturva);

{
_pelaaja = _x;

{
if (_x != _pelaaja) then {
if ((side _x) == civilian and _x inArea ekaalue) then {
sleep 0.1;
_x switchmove "";
if (_x != mies1 or _x != mies2 or _x != mies3) then {
_x domove _turva;
[_x] execvm "siviilinpoisto.sqf";	
};
};
};
} forEach allunits;
} forEach allplayers;


_i = autokarkuri addwaypoint [suv, 0];
_i setwaypointtype "move";
_i = autokarkuri addwaypoint [(getpos suv), 0];
leader autokarkuri assignasdriver suv;
_i setwaypointtype "GETIN";
_i = autokarkuri addwaypoint [(getpos siviiliturva), 20];
_i setwaypointtype "move";
_i setWaypointBehaviour "careless";

_y = autokarkuri2 addwaypoint [hatchback, 0];
_y setwaypointtype "move";
_y = autokarkuri2 addwaypoint [(getpos hatchback), 0];
leader autokarkuri2 assignasdriver hatchback;
_y setwaypointtype "GETIN";
_y = autokarkuri2 addwaypoint [(getpos siviiliturva), 30];
_y setwaypointtype "move";
_y setWaypointBehaviour "careless";

_x = autokarkuri3 addwaypoint [offroad, 0];
_x setwaypointtype "move";
_x = autokarkuri3 addwaypoint [(getpos offroad), 0];
leader autokarkuri3 assignasdriver offroad;
_x setwaypointtype "GETIN";
_x = autokarkuri3 addwaypoint [(getpos siviiliturva), 3];
_x setwaypointtype "move";
_x setWaypointBehaviour "careless";

_z = autokarkuri4 addwaypoint [truck, 0];
_z setwaypointtype "move";
_z = autokarkuri4 addwaypoint [(getpos truck), 0];
leader autokarkuri4 assignasdriver truck;
_z setwaypointtype "GETIN";
_z = autokarkuri4 addwaypoint [(getpos siviiliturva), 40];
_z setwaypointtype "move";
_z setWaypointBehaviour "careless";

};