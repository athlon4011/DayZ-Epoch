_crate = _this select 0;

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
_ammoQuant = (ceil(random 5) + 2);

// Number of primary weapons allowed
_numPrim = 2;
_numPist = 2;
_numClothes = 2;
_numPack = 1;

// Primary Gun List ["ClassName",1-100(probability),"Ammo"]
_lootItems = [
	["G36A_camo",10,"30Rnd_556x45_G36","Primary"],
	["M4A1_AIM_SD_camo",10,"30Rnd_556x45_StanagSD","Primary"],
	["M14_EP1",10,"30Rnd_556x45_StanagSD","Primary"],
	["M16A4_ACG_GL",10,"30Rnd_556x45_StanagSD","Primary"],
	["M4A3_CCO_EP1",10,"30Rnd_556x45_StanagSD","Primary"],
	["Sa58P_EP1",10,"30Rnd_762x39_SA58","Primary"],
	["Sa58V_CCO_EP1",10,"30Rnd_762x39_SA58","Primary"],
	["Sa58V_EP1",10,"30Rnd_762x39_SA58","Primary"],
	["Sa58V_RCO_EP1",10,"30Rnd_762x39_SA58","Primary"],
	["AKS_74_kobra",10,"30Rnd_545x39_AK","Primary"],
	["AKS_74_U",10,"30Rnd_545x39_AK","Primary"],
	["AKS_GOLD",10,"30Rnd_545x39_AK","Primary"],
	["AK_47_M",10,"30Rnd_762x39_AK47","Primary"],
	["AK_74",10,"30Rnd_762x39_AK47","Primary"],
	["FN_FAL",10,"20Rnd_762x51_FNFAL","Primary"],
	["FN_FAL_ANPVS4",10,"20Rnd_762x51_FNFAL","Primary"],

	
	["MakarovSD",20,"8Rnd_9x18_MakarovSD","Secondary"],
	["Colt1911",20,"7Rnd_45ACP_1911","Secondary"],
	["glock17_EP1",20,"17Rnd_9x19_glock17","Secondary"],
	["M9",20,"15Rnd_9x19_M9","Secondary"],
	["M9SD",20,"15Rnd_9x19_M9SD","Secondary"],
	["Makarov",20,"8Rnd_9x18_Makarov","Secondary"],
	["revolver_EP1",20,"6Rnd_45ACP","Secondary"],
	["revolver_gold_EP1",20,"6Rnd_45ACP","Secondary"],
	["UZI_EP1",20,"30Rnd_9x19_UZI","Secondary"],
	
	
	["Skin_Functionary1_EP1_DZ",20,"none","Skin"],
	["Skin_Haris_Press_EP1_DZ",20,"none","Skin"],
	["Skin_Ins_Soldier_GL_DZ",20,"none","Skin"],
	["Skin_Priest_DZ",20,"none","Skin"],
	["Skin_Rocker2_DZ",20,"none","Skin"],
	["Skin_Sniper1_DZ",20,"none","Skin"],
	["Skin_Soldier_Bodyguard_AA12_PMC_DZ",20,"none","Skin"],
	["Skin_Survivor2_DZ",20,"none","Skin"],
	["Skin_TK_INS_Soldier_EP1_DZ",20,"none","Skin"],
	["Skin_TK_INS_Warlord_EP1_DZ",20,"none","Skin"],
	["Skin_Rocker1_DZ",20,"none","Skin"],
	["Skin_Rocker3_DZ",20,"none","Skin"],
	["Skin_Rocker4_DZ",20,"none","Skin"],
	["Skin_Bandit1_DZ",20,"none","Skin"],
	["Skin_Bandit2_DZ",20,"none","Skin"],
	["Skin_BanditW1_DZ",20,"none","Skin"],
	["Skin_BanditW2_DZ",20,"none","Skin"],
	["Skin_SurvivorW2_DZ",20,"none","Skin"],
	["Skin_SurvivorW3_DZ",20,"none","Skin"],
	["Skin_SurvivorWpink_DZ",20,"none","Skin"],
	["Skin_SurvivorWcombat_DZ",20,"none","Skin"],
	["Skin_SurvivorWdesert_DZ",20,"none","Skin"],
	["Skin_SurvivorWurban_DZ",20,"none","Skin"],
	["Skin_CZ_Special_Forces_GL_DES_EP1_DZ",20,"none","Skin"],
	["Skin_Drake_Light_DZ",20,"none","Skin"],
	["Skin_Pilot_EP1_DZ",20,"none","Skin"],
	["Skin_RU_Policeman_DZ",20,"none","Skin"],
	["Skin_Camo1_DZ",20,"none","Skin"],
	["Skin_Rocket_DZ",20,"none","Skin"],
	["Skin_Soldier1_DZ",20,"none","Skin"],
	["Skin_Soldier_Sniper_PMC_DZ",20,"none","Skin"],
	["Skin_Soldier_TL_PMC_DZ",20,"none","Skin"],
	["Skin_FR_OHara_DZ",20,"none","Skin"],
	["Skin_FR_Rodriguez_DZ",20,"none","Skin"],
	["Skin_CZ_Soldier_Sniper_EP1_DZ",20,"none","Skin"],
	["Skin_Graves_Light_DZ",20,"none","Skin"],
	["Skin_GUE_Commander_DZ",20,"none","Skin"],
	["Skin_GUE_Soldier_2_DZ",20,"none","Skin"],
	["Skin_GUE_Soldier_CO_DZ",20,"none","Skin"],
	["Skin_GUE_Soldier_Crew_DZ",20,"none","Skin"],
	["Skin_GUE_Soldier_Sniper_DZ",20,"none","Skin"],
	
	
	["CZ_VestPouch_EP1",10,"none","Backpack"],
	["DZ_ALICE_Pack_EP1",10,"none","Backpack"],
	["DZ_Assault_Pack_EP1",10,"none","Backpack"],
	["DZ_Backpack_EP1",5,"none","Backpack"],
	["DZ_British_ACU",10,"none","Backpack"],
	["DZ_CivilBackpack_EP1",10,"none","Backpack"],
	["DZ_Czech_Vest_Puch",10,"none","Backpack"],
	["DZ_Patrol_Pack_EP1",10,"none","Backpack"],
	["DZ_TK_Assault_Pack_EP1",10,"none","Backpack"],
	["DZ_LargeGunBag_EP1",1,"none","Backpack"],
	["DZ_GunBag_EP1",10,"none","Backpack"],
	["DZ_CompactPack_EP1",10,"none","Backpack"],
	["DZ_TerminalPack_EP1",10,"none","Backpack"]
	];
	
// These items are always included
_toolsAlways = ["ItemToolbox","ItemMap"]; 




////// Don't Edit Below!!! ////////


_primecount = 0;
_seconcount = 0;
_skincount = 0;
_packcount = 0;
while{(_primecount < _numPrim) && (_seconcount < _numPist) && (_packcount < _numPack) && (_skincount < _numClothes)} do
{
	for [{_i=0}, {_i < count _lootItems}, {_i=_i+1}] do
	{
		_item = (_lootItems select _i) select 0;
		_probability = (_lootItems select _i) select 1;
		_ammo = (_lootItems select _i) select 2;
		_type = (_lootItems select _i) select 3;
		_chance = floor(random 100);
		if((_chance < _probability)) then {
			if((_type == "Skin") && (_skincount < _numClothes)) then {
				_crate addMagazineCargoGlobal [_item, 1];
				_skincount = _skincount + 1;
			};
			if((_type == "Backpack") && (_packcount < _numPack)) then {
				_crate addBackpackCargoGlobal [_item, 1];
				_packcount = _packcount + 1;
			};
			if((_type == "Primary") && (_primecount < _numPrim)) then{
				_crate addWeaponCargoGlobal [_item, 1];
				_crate addMagazineCargoGlobal [_ammo, _ammoQuant];
				_primecount = _primecount + 1;
			};
			if((_type == "Secondary") && (_seconcount < _numPist)) then{
				_crate addWeaponCargoGlobal [_item, 1];
				_crate addMagazineCargoGlobal [_ammo, _ammoQuant];
				_seconcount = _seconcount + 1;
			};
		};
	};
};


/*
for [{_i=0}, {_i < count _toolsAlways}, {_i=_i+1}] do
{
		_item = (_toolsAlways select _i) select 0;
		_crate addWeaponCargoGlobal [_item, 1];
};*/