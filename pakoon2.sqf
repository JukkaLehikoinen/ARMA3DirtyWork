if ( isDedicated or isServer ) then { 

_solttu = (_this select 0);
_grp = (_this select 1);

waitUntil {vihut2i > 30};

waitUntil {vihut2i < 30};
terminate waypoint2;
terminate attack2;
pakoon2=true;
publicVariable "pakoon2";

_randomi = random 30;



dostop _solttu;
koordi = (getpos piste);
sleep 1;

_solttu domove koordi;

waituntil {_solttu distance koordi < _randomi};

_solttu setpos getpos siviiliturva;
sleep 1;
_solttu setdamage 1;
sleep 0.1;
deletevehicle _solttu;

}; // IF SERVER LOPPU