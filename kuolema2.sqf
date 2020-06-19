
uhri = (_this select 0);
ampu = (_this select 1);

_veloitus = 500;


call {raha = raha - _veloitus; publicVariable "raha";};
call {systemchat format ["Respawn price %1", _veloitus];};



if (raha < _veloitus) then {
setPlayerRespawnTime 600;
call {systemchat format ["You have less than 500 bucks, so respawntime is 10 minutes or wait until you have more than %1 bucks", _veloitus];};
while {(!alive player)} do {

sleep 3;
if (raha > _veloitus) then {setplayerrespawntime 2;};
};

};