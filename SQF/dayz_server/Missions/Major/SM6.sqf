//Medical Crate by lazyink (Full credit for original code to TheSzerdi & TAW_Tonic)

private ["_coords","_MainMarker","_wait"];
[] execVM "\z\addons\dayz_server\Missions\SMGoMajor.sqf";
WaitUntil {MissionGo == 1};

_coords = [getMarkerPos "center",0,5500,250,0,20,0] call BIS_fnc_findSafePos;

[nil,nil,rTitleText,"A medical supply crate has been secured by bandits! Check your map for the location!", "PLAIN",10] call RE;


Ccoords = _coords;
publicVariable "Ccoords";
[] execVM "\z\addons\dayz_server\debug\addmarkers.sqf";

_hummer = createVehicle ["HMMWV_DZ",[(_coords select 0) + 10, (_coords select 1) - 10,0],[], 0, "CAN_COLLIDE"];
_hummer1 = createVehicle ["UAZ_Unarmed_UN_EP1",[(_coords select 0) + 20, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];

_hummer setVariable ["Sarge",1,true];
_hummer1 setVariable ["Sarge",1,true];

_crate = createVehicle ["USVehicleBox",[(_coords select 0) - 1, _coords select 1,0],[], 0, "CAN_COLLIDE"];
[_crate] execVM "\z\addons\dayz_server\missions\misc\fillBoxesM.sqf";
_crate setVariable ["Sarge",1,true];

_crate2 = createVehicle ["USLaunchersBox",[(_coords select 0) - 3, _coords select 1,0],[], 0, "CAN_COLLIDE"];
[_crate2] execVM "\z\addons\dayz_server\missions\misc\fillBoxesS.sqf";
_crate2 setVariable ["Sarge",1,true];

_aispawn = [_coords,80,6,6,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 5;
_aispawn = [_coords,80,6,6,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 5;
_aispawn = [_coords,40,4,4,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards

sleep 15;
[nil,nil,rTitleText,"Coords0:" && (_coords select 0) && "  Coords1:" && (_coords select 1), "PLAIN",6] call RE;

waitUntil{{isPlayer _x && _x distance _hummer < 10  } count playableunits > 0}; 

[nil,nil,rTitleText,"The medical crate is under survivor control!", "PLAIN",6] call RE;


[] execVM "\z\addons\dayz_server\debug\remmarkers.sqf";
MissionGo = 0;
Ccoords = 0;
publicVariable "Ccoords";



SM1 = 5;
[0] execVM "\z\addons\dayz_server\missions\major\SMfinder.sqf";
