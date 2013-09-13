/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance =	1735;					//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio false;
DZE_DeathMsgGlobal = true;

// DayZ Epoch config
spawnShoremode = 1; // Default = 1 (on shore)
spawnArea= 1500; // Default = 1500
MaxHeliCrashes= 5; // Default = 5
MaxVehicleLimit = 350; // Default = 50
MaxDynamicDebris = 500; // Default = 100
dayz_MapArea = 14000; // Default = 10000
dayz_maxLocalZombies = 30; // Default = 30 

EpochEvents = [["any","any","any","any",30,"crash_spawner"],["any","any","any","any",0,"crash_spawner"]];
dayz_fullMoonNights = true;

DefaultMagazines = ["ItemBandage","ItemBandage","7Rnd_45ACP_1911","ItemPainkiller","ItemMorphine"]; 
DefaultWeapons = ["Colt1911","ItemFlashlightRed","Binocular","ItemKnife","ItemMap","ItemHatchet"]; 
DefaultBackpack = "DZ_Assault_Pack_EP1"; 
DefaultBackpackWeapon = "";

//Load in compiled functions
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";				//Compile regular functions

progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "server_traders.sqf";				//Compile trader configs
call compile preprocessFileLineNumbers "dayz_code\init\compiles.sqf";				//Compile regular functions
//call compile preprocessFileLineNumbers "debug\compiles.sqf"; //Compile regular functions
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";
playerstats = compile preprocessFileLineNumbers "dayz_code\compile\playerstats.sqf";
/* BIS_Effects_* fixes from Dwarden */
BIS_Effects_EH_Killed = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\BIS_Effects\killed.sqf";
BIS_Effects_AirDestruction = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\BIS_Effects\AirDestruction.sqf";
BIS_Effects_AirDestructionStage2 = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\BIS_Effects\AirDestructionStage2.sqf";

BIS_Effects_globalEvent = {
	BIS_effects_gepv = _this;
	publicVariable "BIS_effects_gepv";
	_this call BIS_Effects_startEvent;
};

BIS_Effects_startEvent = {
	switch (_this select 0) do {
		case "AirDestruction": {
				[_this select 1] spawn BIS_Effects_AirDestruction;
		};
		case "AirDestructionStage2": {
				[_this select 1, _this select 2, _this select 3] spawn BIS_Effects_AirDestructionStage2;
		};
		case "Burn": {
				[_this select 1, _this select 2, _this select 3, false, true] spawn BIS_Effects_Burn;
		};
	};
};

"BIS_effects_gepv" addPublicVariableEventHandler {
	(_this select 1) call BIS_Effects_startEvent;
};

if ((!isServer) && (isNull player) ) then
{
waitUntil {!isNull player};
waitUntil {time > 3};
};

if ((!isServer) && (player != player)) then
{
  waitUntil {player == player}; 
  waitUntil {time > 3};
};

if (isServer) then {
	call compile preprocessFileLineNumbers "dynamic_vehicle.sqf";				//Compile vehicle configs
	
	// Add trader citys
	_nil = [] execVM "mission.sqf";
	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
	//Bus Route
	//[true] execVM "Plugins\busroute\init_bus.sqf";
};

if (!isDedicated) then {
	[] execVM "Plugins\welcome\Server_WelcomeCredits.sqf";
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	//_void = [] execVM "Plugins\traders\init.sqf";
	[] execVM "Plugins\repair\repairactions.sqf";
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";	
	_void = [] execVM "R3F_Realism\R3F_Realism_Init.sqf";
	//Bus Route
	//[] execVM "Plugins\busroute\player_axeBus.sqf";
};
#include "\z\addons\dayz_code\system\REsec.sqf"


sleep 5;
// Load Bases
   [] ExecVM "Maps\Sobor_Hospital.sqf"; // Activation
   [] execVM "Maps\villages.sqf"; //Epoch Villages - By Bungle (ON)
   [] execVM "Maps\raceday.sqf"; //Coastal Race Day - By Bungle (ON)
   [] ExecVM "Maps\Airtrip_Camp.sqf"; // Activation
   [] ExecVM "Maps\Barrage_Dan.sqf"; // Activation
   [] ExecVM "Maps\BlackLac_Dan.sqf"; // Activation
   [] ExecVM "Maps\Bois1_Dan.sqf"; // Activation
   [] ExecVM "Maps\DeadCastle_Dan.sqf"; // Activation
   [] ExecVM "Maps\Dubrovka_Detruit.sqf"; // Activation
   [] ExecVM "Maps\LieuxditPenduAto.sqf"; // Activation
   [] ExecVM "Maps\oilfieldsbase.sqf"; // Activation
   [] ExecVM "Maps\balota.sqf"; // Activation
   [] ExecVM "Maps\berezino.sqf"; // Activation
   [] ExecVM "Maps\cherno_base.sqf"; // Activation
   [] ExecVM "Maps\dichina.sqf"; // Activation
   [] ExecVM "Maps\last_stand.sqf"; // Activation
   [] ExecVM "Maps\ne_airstrip.sqf"; // Activation
   [] ExecVM "Maps\nw_airstrip.sqf"; // Activation
   [] ExecVM "Maps\NovyLugBase.sqf"; // Activation
   [] ExecVM "Maps\lopatino.sqf"; // Activation
   [] ExecVM "Maps\excelsior.sqf"; // Activation
   [] ExecVM "Maps\train_wreck.sqf"; // Activation
   [] ExecVM "Maps\kamenka_v2.sqf"; // Activation
   [] ExecVM "Maps\devils_castle_outpot.sqf"; // Activation
   [] ExecVM "Maps\chenaid.sqf"; // Activation
   [] ExecVM "Maps\skacast.sqf"; // Activation
   [] ExecVM "Maps\novylugmedcheck.sqf"; // Activation
   [] execVM "Maps\sectorfng\sectorfng_init.sqf";

//////////BUILDINGS//////////
[] execVM "Maps\buildings\lopatino.sqf";
[] execVM "Maps\buildings\NovyLugBase.sqf";
[] execVM "Maps\buildings\wtf_base.sqf";
[] execVM "Maps\buildings\bandits.sqf";
[] ExecVM "Maps\buildings\devfish_camptents.sqf";

// UPSMON
call compile preprocessFileLineNumbers "Plugins\sarge\UPSMON\scripts\Init_UPSMON.sqf";
// SHK 
call compile preprocessfile "Plugins\sarge\SHK_pos\shk_pos_init.sqf";
// run SAR_AI
[] execVM "Plugins\sarge\SARGE\SAR_AI_init.sqf";

// CPC Nametags
[] execVM "Plugins\nametags\cpcnametags.sqf";