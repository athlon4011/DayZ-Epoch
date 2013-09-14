_crate = _this select 0;

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
_ammoQuant = (ceil(random 5) + 2);

// Number of primary weapons allowed
_numPrim = 2;
_numPist = 2;
_numClothes = 2;
_numPack = 1;

// Item List ["ClassName",1-100(probability),"Ammo","Type"]
_lootItems = [
	["AKS_74_kobra",10,"30Rnd_545x39_AK","Rifle"],
	["AKS_74_U",10,"30Rnd_545x39_AK","Rifle"],
	["AKS_GOLD",10,"30Rnd_545x39_AK","Rifle"],
	["AK_47_M",10,"30Rnd_762x39_AK47","Rifle"],
	["AK_74",10,"30Rnd_762x39_AK47","Rifle"],
	["FN_FAL",10,"20Rnd_762x51_FNFAL","Rifle"],
	["FN_FAL_ANPVS4",10,"20Rnd_762x51_FNFAL","Rifle"],
	["G36A_camo",10,"30Rnd_556x45_G36","Rifle"],
	["G36C",10,"30Rnd_556x45_G36","Rifle"],
	["G36C_camo",10,"30Rnd_556x45_G36","Rifle"],
	["G36K_camo",10,"30Rnd_556x45_G36","Rifle"],
	["G36_C_SD_camo",10,"30Rnd_556x45_G36","Rifle"],
	["LeeEnfield",10,"10x_303","Rifle"],
	["M16A2",10,"ammo","Rifle"],
	["M16A2GL",10,"ammo","Rifle"],
	["M16A4_ACG",10,"ammo","Rifle"],
	["M4A1",10,"ammo","Rifle"],
	["M4A1_Aim",10,"30Rnd_556x45_Stanag","Rifle"],
	["M4A1_AIM_SD_camo",10,"30Rnd_556x45_StanagSD","Rifle"],
	["M4A1_HWS_GL_camo",10,"30Rnd_556x45_Stanag","Rifle"],
	["M4A3_CCO_EP1",10,"30Rnd_556x45_Stanag","Rifle"],
	["Sa58P_EP1",10,"30Rnd_762x39_SA58","Rifle"],
	["Sa58V_CCO_EP1",10,"30Rnd_762x39_SA58","Rifle"],
	["Sa58V_EP1",10,"30Rnd_762x39_SA58","Rifle"],
	["Sa58V_RCO_EP1",10,"30Rnd_762x39_SA58","Rifle"],
	["m8_compact",10,"ammo","Rifle"],
	["m8_sharpshooter",10,"ammo","Rifle"],
	["m8_holo_sd",10,"ammo","Rifle"],
	["m8_carbine",10,"ammo","Rifle"],
	
	["SVD_des_EP1",10,"10Rnd_762x54_SVD","Sniper"],
	["DMR",10,"20Rnd_762x51_DMR","Sniper"],
	["huntingrifle",10,"5x_22_LR_17_HMR","Sniper"],
	["BAF_LRR_scoped",10,"ammo","Sniper"],
	["M14_EP1",10,"20Rnd_762x51_DMR","Sniper"],
	["M24",10,"5Rnd_762x51_M24","Sniper"],
	["M40A3",10,"ammo","Sniper"],
	["SVD_CAMO",10,"10Rnd_762x54_SVD","Sniper"],
	["SCAR_H_LNG_Sniper_SD",10,"20Rnd_762x51_SB_SCAR","Sniper"],
	["SVD",10,"10Rnd_762x54_SVD","Sniper"],
	["VSS_vintorez",10,"20Rnd_9x39_SP5_VSS","Sniper"],
	["M24_des_EP1",10,"ammo","Sniper"],
	
	["M240_DZ",10,"100Rnd_762x51_M240","Machine"],
	["M249_DZ",10,"200Rnd_556x45_M249","Machine"],
	["Mk_48_DZ",10,"ammo","Machine"],
	["Pecheneg_DZ",10,"ammo","Machine"],
	
	["bizon_silenced",10,"64Rnd_9x19_SD_Bizon","SMG"],
	["MP5A5",10,"30rnd_9x19_MP5","SMG"],
	["MP5SD",10,"30Rnd_9x19_MP5SD","SMG"],
	["UZI_EP1",10,"30Rnd_9x19_UZI","SMG"],
	["Sa61_EP1",10,"20Rnd_B_765x17_Ball","SMG"],
	["UZI_SD_EP1",10,"30Rnd_9x19_UZI_SD","SMG"],
	
	["M1014",10,"8Rnd_B_Beneli_74Slug","Shotgun"],
	["MR43",10,"ammo","Shotgun"],
	["Remington870_lamp",10,"8Rnd_B_Beneli_74Slug","Shotgun"],
	["Winchester1866",10,"15Rnd_W1866_Slug","Shotgun"],
	["Saiga12K",10,"8Rnd_B_Saiga12_74Slug","Shotgun"],
	
	["Colt1911",20,"7Rnd_45ACP_1911","Pistol"],
	["glock17_EP1",20,"17Rnd_9x19_glock17","Pistol"],
	["M9",20,"15Rnd_9x19_M9","Pistol"],
	["M9SD",20,"15Rnd_9x19_M9SD","Pistol"],
	["Makarov",20,"8Rnd_9x18_Makarov","Pistol"],
	["MakarovSD",20,"8Rnd_9x18_MakarovSD","Pistol"],
	["revolver_EP1",20,"6Rnd_45ACP","Pistol"],
	["revolver_gold_EP1",20,"6Rnd_45ACP","Pistol"],
	["UZI_EP1",20,"30Rnd_9x19_UZI","Pistol"],
	
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
			if(((_type == "Rifle") || (_type == "Sniper") || (_type == "Machine") || (_type == "SMG") || (_type == "Shotgun")) && (_primecount < _numPrim)) then{
				_crate addWeaponCargoGlobal [_item, 1];
				_crate addMagazineCargoGlobal [_ammo, _ammoQuant];
				_primecount = _primecount + 1;
			};
			if((_type == "Pistol") && (_seconcount < _numPist)) then{
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