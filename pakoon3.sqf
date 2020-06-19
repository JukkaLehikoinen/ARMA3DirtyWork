if ( isDedicated or isServer) then { 

_solttu = (_this select 0);
_grp = (_this select 1);
_index = (_this select 2);

waitUntil {vihut3i > 10};

waitUntil {vihut3i < 10};
terminate waypoint3;
terminate attack3;
pakoon3=true;
publicVariable "pakoon3";

_randomi = random 30;

systemchat format ["%1", _grp];
dostop _solttu;
koordi = (getpos piste2);
sleep 1;

_solttu domove koordi;

waituntil {_solttu distance koordi < _randomi};


_solttu setpos getpos siviiliturva;
sleep 1;
_solttu setdamage 1;
sleep 0.1;
deletevehicle _solttu;



}; // IF SERVER LOPPU