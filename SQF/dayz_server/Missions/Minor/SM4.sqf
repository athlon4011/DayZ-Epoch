//Bandit Heli Down! by lazyink (Full credit for code to TheSzerdi & TAW_Tonic)
private ["_coords","_wait","_MainMarker75"];

[] execVM "\z\addons\dayz_server\Missions\SMGoMinor.sqf";
WaitUntil {MissionGoMinor == 1};

_coords = [getMarkerPos "center",0,5500,250,0,20,0] call BIS_fnc_findSafePos;

[nil,nil,rTitleText,"A bandit helicopter has crashed! Check your map for the location!", "PLAIN",10] call RE;

MCoords = _coords;
publicVariable "MCoords";
[] execVM "\z\addons\dayz_server\debug\addmarkers75.sqf";

_chopcrash = createVehicle ["UH60Wreck_DZ",_coords,[], 0, "CAN_COLLIDE"];
_chopcrash setVariable ["Sarge",1,true];

_crate2 = createVehicle ["USLaunchersBox",[(_coords select 0) - 6, _coords select 1,0],[], 0, "CAN_COLLIDE"];
[_crate2] execVM "\z\addons\dayz_server\missions\misc\fillBoxesS.sqf";
_crate2 setVariable ["Sarge",1,true];

[_coords,40,4,3,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 1;
[_coords,40,4,3,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 1;

sleep 15;
[nil,nil,rTitleText,"Coords0:" && (_coords select 0) && "  Coords1:" && (_coords select 1), "PLAIN",6] call RE;

waitUntil{{isPlayer _x && _x distance _chopcrash < 5  } count playableunits > 0}; 

[nil,nil,rTitleText,"The crash site has been secured by survivors!", "PLAIN",6] call RE;

[] execVM "\z\addons\dayz_server\debug\remmarkers75.sqf";
MissionGoMinor = 0;
MCoords = 0;
publicVariable "MCoords";

SM1 = 5;
[0] execVM "\z\addons\dayz_server\missions\minor\SMfinder.sqf";