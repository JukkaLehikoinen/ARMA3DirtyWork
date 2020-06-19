if (isDedicated or isServer) then {
while {alive rosvo and rosvohuuto < 1} do {
_i = round(random 2);

switch _i do {
    case 0: {rosvohuuto=1; publicVariable "rosvohuuto";};
    case 1: {rosvohuuto=2; publicVariable "rosvohuuto";};
    case 2: {rosvohuuto=3; publicVariable "rosvohuuto";};
};
sleep 15;

};

};