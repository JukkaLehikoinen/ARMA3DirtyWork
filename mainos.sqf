if (isDedicated or isServer) then {
_tv = (_this select 0);

_i = round(random 2);

switch _i do {
case 0: {_tv setObjectTexture [0, "gfx\ranta1.jpeg"]; _tv attachTo [_tv, [0,1,0]];};
case 1: {_tv setObjectTexture [0, "gfx\ranta2.jpeg"]; _tv attachTo [_tv, [0,1,0]];};
case 2: {_tv setObjectTexture [0, "gfx\ranta3.jpeg"]; _tv attachTo [_tv, [0,1,0]];};
};
sleep 2;
[respatv] execvm "mainos.sqf";


};