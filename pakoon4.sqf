if ( isDedicated or isServer ) then { 

_solttu = (_this select 0);
_grp = (_this select 1);

waitUntil {vihut4i > 20};

waitUntil {vihut4i < 15};
terminate waypoint4;
terminate attack4;
pakoon4=true;
publicVariable "pakoon4";


dostop _solttu;
koordi = (getpos piste);
sleep 1;

_solttu domove koordi;

waituntil {_solttu distance koordi < 4};

_solttu setdamage 1;
sleep 0.1;
deletevehicle _solttu;


}; // IF SERVER LOPPU