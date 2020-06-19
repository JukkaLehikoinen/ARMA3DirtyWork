_solttu = (_this select 0);
_i = (_this select 1);


_id=format ["%1", getpos _solttu];
_debug=createMarker [_id,GETPOS _solttu];
_debug setMarkerShape "ICON";
_debug setMarkerType "hd_dot";
_debug setMarkerColor "ColorRed";



sleep 1;

while {alive _solttu} do {
_debug setMarkerPos getpos _solttu;
sleep 0.5;
};
deleteMarker _debug;