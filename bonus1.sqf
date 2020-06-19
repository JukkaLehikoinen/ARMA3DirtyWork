if (isDedicated or isServer) then {

// rerekikiertovartion waypointtien poisto

for "_a" from 4 to 0 step -1 do {
deleteWaypoint [rerekikierto, _a];
};
{
_x domove (getpos bonus);
_x setbehaviour "AWARE";
} forEach units rerekikierto;

sleep 1;


_i = rerekistrider addwaypoint [strider, 0];
_i setwaypointtype "move";
_i = rerekistrider addwaypoint [(getpos strider), 0];
leader rerekistrider assignasgunner strider;
_i setwaypointtype "GETIN";

};