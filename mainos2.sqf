if (isDedicated or isServer) then {
_tv = (_this select 0);

_i = round(random 2);

switch _i do {
case 0: {_tv setObjectTexture [0, "gfx\ranta1.jpeg"]; };
case 1: {_tv setObjectTexture [0, "gfx\ranta2.jpeg"]; };
case 2: {_tv setObjectTexture [0, "gfx\ranta3.jpeg"]; };
};
sleep 2;
[ekakyltti] execvm "mainos2.sqf";

};
