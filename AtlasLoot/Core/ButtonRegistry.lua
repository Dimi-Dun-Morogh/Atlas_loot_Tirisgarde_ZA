local BabbleFaction = LibStub("LibBabble-Faction-3.0"):GetLookupTable();
local BabbleClass = LibStub("LibBabble-Class-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();
local BabbleInventory = LibStub("LibBabble-Inventory-3.0"):GetLookupTable();
local AL = AceLibrary("AceLocale-2.2"):new("AtlasLoot");

-- Colours stored for code readability
local GREY = "|cff999999";
local RED = "|cffff0000";
local WHITE = "|cffFFFFFF";
local GREEN = "|cff1eff00";
local PURPLE = "|cff9F3FFF";
local BLUE = "|cff0070dd";
local ORANGE = "|cffFF8400";

-- Using alchemy skill to get localized rank
local ALCHEMY, APPRENTICE = GetSpellInfo(2259);
local JOURNEYMAN = select(2, GetSpellInfo(3101));
local EXPERT = select(2, GetSpellInfo(3464));
local ARTISAN = select(2, GetSpellInfo(11611));
local MASTER = select(2, GetSpellInfo(28596));
local BLACKSMITHING = GetSpellInfo(2018);
local ARMORSMITH = GetSpellInfo(9788);
local WEAPONSMITH = GetSpellInfo(9787);
local AXESMITH = GetSpellInfo(17041);
local HAMMERSMITH = GetSpellInfo(17040);
local SWORDSMITH = GetSpellInfo(17039);
local ENCHANTING = GetSpellInfo(7411);
local ENGINEERING = GetSpellInfo(4036);
local GNOMISH = GetSpellInfo(20220);
local GOBLIN = GetSpellInfo(20221);
local JEWELCRAFTING = GetSpellInfo(25229);
local LEATHERWORKING = GetSpellInfo(2108);
local DRAGONSCALE = GetSpellInfo(10656);
local ELEMENTAL = GetSpellInfo(10658);
local TRIBAL = GetSpellInfo(10660);
local MINING = GetSpellInfo(2575);
local TAILORING = GetSpellInfo(3908);
local MOONCLOTH = GetSpellInfo(26798);
local SHADOWEAVE = GetSpellInfo(26801);
local SPELLFIRE = GetSpellInfo(26797);
local COOKING = GetSpellInfo(2550);
local FIRSTAID = GetSpellInfo(3273);
local FISHING = GetSpellInfo(7620);

AtlasLoot_ButtonRegistry = {
  --WoW Factions
	["Argent1"] = {
		Title = BabbleFaction["Argent Dawn"]..": "..AL["Token Hand-Ins"];
		Next_Page = "Argent2";
		Next_Title = BabbleFaction["Argent Dawn"]..": "..BabbleFaction["Friendly"].."-"..BabbleFaction["Exalted"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Argent2"] = {
		Title = BabbleFaction["Argent Dawn"]..": "..BabbleFaction["Friendly"].."-"..BabbleFaction["Exalted"];
		Prev_Page = "Argent1";
		Prev_Title = BabbleFaction["Argent Dawn"]..": "..AL["Token Hand-Ins"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Bloodsail1"] = {
		Title = BabbleFaction["Bloodsail Buccaneers"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["AQBroodRings"] = {
		Title = BabbleFaction["Brood of Nozdormu"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Cenarion1"] = {
		Title = BabbleFaction["Cenarion Circle"]..": "..BabbleFaction["Friendly"];
		Next_Page = "Cenarion2";
		Next_Title = BabbleFaction["Cenarion Circle"]..": "..BabbleFaction["Honored"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Cenarion2"] = {
		Title = BabbleFaction["Cenarion Circle"]..": "..BabbleFaction["Honored"];
		Next_Page = "Cenarion3";
		Next_Title = BabbleFaction["Cenarion Circle"]..": "..BabbleFaction["Revered"];
		Prev_Page = "Cenarion1";
		Prev_Title = BabbleFaction["Cenarion Circle"]..": "..BabbleFaction["Friendly"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Cenarion3"] = {
		Title = BabbleFaction["Cenarion Circle"]..": "..BabbleFaction["Revered"];
		Next_Page = "Cenarion4";
		Next_Title = BabbleFaction["Cenarion Circle"]..": "..BabbleFaction["Exalted"];
		Prev_Page = "Cenarion2";
		Prev_Title = BabbleFaction["Cenarion Circle"]..": "..BabbleFaction["Honored"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Cenarion4"] = {
		Title = BabbleFaction["Cenarion Circle"]..": "..BabbleFaction["Exalted"];
		Prev_Page = "Cenarion3";
		Prev_Title = BabbleFaction["Cenarion Circle"]..": "..BabbleFaction["Revered"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Darkmoon1"] = {
		Title = BabbleFaction["Darkmoon Faire"];
		Next_Page = "Darkmoon2";
		Next_Title = AtlasLoot_TableNames["Darkmoon2"][1];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Darkmoon2"] = {
		Title = AtlasLoot_TableNames["Darkmoon2"][1];
		Prev_Page = "Darkmoon1";
		Prev_Title = BabbleFaction["Darkmoon Faire"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Defilers"] = {
		Title = BabbleFaction["The Defilers"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Frostwolf1"] = {
		Title = BabbleFaction["Frostwolf Clan"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["GelkisClan1"] = {
		Title = BabbleFaction["Gelkis Clan Centaur"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["WaterLords1"] = {
		Title = BabbleFaction["Hydraxian Waterlords"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["LeagueofArathor"] = {
		Title = BabbleFaction["The League of Arathor"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["MagramClan1"] = {
		Title = BabbleFaction["Magram Clan Centaur"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Stormpike1"] = {
		Title = BabbleFaction["Stormpike Guard"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Thorium1"] = {
		Title = BabbleFaction["Thorium Brotherhood"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Next_Page = "Thorium2";
		Next_Title = BabbleFaction["Thorium Brotherhood"]..": "..BabbleFaction["Revered"].."/"..BabbleFaction["Exalted"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Thorium2"] = {
		Title = BabbleFaction["Thorium Brotherhood"]..": "..BabbleFaction["Revered"].."/"..BabbleFaction["Exalted"];
		Prev_Page = "Thorium1";
		Prev_Title = BabbleFaction["Thorium Brotherhood"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Timbermaw"] = {
		Title = BabbleFaction["Timbermaw Hold"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Wintersaber1"] = {
		Title = BabbleFaction["Wintersaber Trainers"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Zandalar1"] = {
		Title = BabbleFaction["Zandalar Tribe"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Next_Page = "Zandalar2";
		Next_Title = BabbleFaction["Zandalar Tribe"]..": "..BabbleFaction["Revered"].."/"..BabbleFaction["Exalted"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
	["Zandalar2"] = {
		Title = BabbleFaction["Zandalar Tribe"]..": "..BabbleFaction["Revered"].."/"..BabbleFaction["Exalted"];
		Prev_Page = "Zandalar1";
		Prev_Title = BabbleFaction["Zandalar Tribe"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Back_Page = "REPMENU_AZEROTHPREBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Pre-Burning Crusade"];
		};
  --Burning Crusade Factions
	["Aldor1"] = {
		Title = BabbleFaction["The Aldor"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Next_Page = "Aldor2";
		Next_Title = BabbleFaction["The Aldor"]..": "..BabbleFaction["Revered"].."/"..BabbleFaction["Exalted"];
		Back_Page = "REPMENU_SHATTRATH";
		Back_Title = AL["Factions - Shattrath City"];
		};
	["Aldor2"] = {
		Title = BabbleFaction["The Aldor"]..": "..BabbleFaction["Revered"].."/"..BabbleFaction["Exalted"];
		Prev_Page = "Aldor1";
		Prev_Title = BabbleFaction["The Aldor"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Back_Page = "REPMENU_SHATTRATH";
		Back_Title = AL["Factions - Shattrath City"];
		};
	["Ashtongue1"] = {
		Title = BabbleFaction["Ashtongue Deathsworn"];
		Next_Page = "Ashtongue2";
		Next_Title = BabbleFaction["Ashtongue Deathsworn"];
		Back_Page = "REPMENU_OUTLAND";
		Back_Title = AL["Factions - Outland"];
		};
	["Ashtongue2"] = {
		Title = BabbleFaction["Ashtongue Deathsworn"];
		Prev_Page = "Ashtongue1";
		Prev_Title = BabbleFaction["Ashtongue Deathsworn"];
		Back_Page = "REPMENU_OUTLAND";
		Back_Title = AL["Factions - Outland"];
		};
	["CExpedition1"] = {
		Title = BabbleFaction["Cenarion Expedition"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Next_Page = "CExpedition2";
		Next_Title = BabbleFaction["Cenarion Expedition"]..": "..BabbleFaction["Revered"].."/"..BabbleFaction["Exalted"];
		Back_Page = "REPMENU_OUTLAND";
		Back_Title = AL["Factions - Outland"];
		};
	["CExpedition2"] = {
		Title = BabbleFaction["Cenarion Expedition"]..": "..BabbleFaction["Revered"].."/"..BabbleFaction["Exalted"];
		Prev_Page = "CExpedition1";
		Prev_Title = BabbleFaction["Cenarion Expedition"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Back_Page = "REPMENU_OUTLAND";
		Back_Title = AL["Factions - Outland"];
		};
	["Consortium1"] = {
		Title = BabbleFaction["The Consortium"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Next_Page = "Consortium2";
		Next_Title = BabbleFaction["The Consortium"]..": "..BabbleFaction["Revered"].."/"..BabbleFaction["Exalted"];
		Back_Page = "REPMENU_OUTLAND";
		Back_Title = AL["Factions - Outland"];
		};
	["Consortium2"] = {
		Title = BabbleFaction["The Consortium"]..": "..BabbleFaction["Revered"].."/"..BabbleFaction["Exalted"];
		Prev_Page = "Consortium1";
		Prev_Title = BabbleFaction["The Consortium"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Back_Page = "REPMENU_OUTLAND";
		Back_Title = AL["Factions - Outland"];
		};
	["HonorHold1"] = {
		Title = BabbleFaction["Honor Hold"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Next_Page = "HonorHold2";
		Next_Title = BabbleFaction["Honor Hold"]..": "..BabbleFaction["Revered"].."/"..BabbleFaction["Exalted"];
		Back_Page = "REPMENU_OUTLAND";
		Back_Title = AL["Factions - Outland"];
		};
	["HonorHold2"] = {
		Title = BabbleFaction["Honor Hold"]..": "..BabbleFaction["Revered"].."/"..BabbleFaction["Exalted"];
		Prev_Page = "HonorHold1";
		Prev_Title = BabbleFaction["Honor Hold"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Back_Page = "REPMENU_OUTLAND";
		Back_Title = AL["Factions - Outland"];
		};
	["KeepersofTime1"] = {
		Title = BabbleFaction["Keepers of Time"];
		Back_Page = "REPMENU_AZEROTHPOSTBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Post-Burning Crusade"];
		};
	["Kurenai1"] = {
		Title = BabbleFaction["Kurenai"];
		Back_Page = "REPMENU_OUTLAND";
		Back_Title = AL["Factions - Outland"];
		};
	["LowerCity1"] = {
		Title = BabbleFaction["Lower City"];
		Back_Page = "REPMENU_SHATTRATH";
		Back_Title = AL["Factions - Shattrath City"];
		};
	["Maghar1"] = {
		Title = BabbleFaction["The Mag'har"];
		Back_Page = "REPMENU_OUTLAND";
		Back_Title = AL["Factions - Outland"];
		};
	["Netherwing1"] = {
		Title = BabbleFaction["Netherwing"];
		Back_Page = "REPMENU_OUTLAND";
		Back_Title = AL["Factions - Outland"];
		};
	["Ogrila1"] = {
		Title = BabbleFaction["Ogri'la"];
		Back_Page = "REPMENU_OUTLAND";
		Back_Title = AL["Factions - Outland"];
		};
	["ScaleSands1"] = {
		Title = BabbleFaction["The Scale of the Sands"];
		Next_Page = "ScaleSands2";
		Next_Title = BabbleFaction["The Scale of the Sands"]..": "..BabbleFaction["Friendly"].."-"..BabbleFaction["Exalted"];
		Back_Page = "REPMENU_AZEROTHPOSTBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Post-Burning Crusade"];
		};
	["ScaleSands2"] = {
		Title = BabbleFaction["The Scale of the Sands"]..": "..BabbleFaction["Friendly"].."-"..BabbleFaction["Honored"];
		Prev_Page = "ScaleSands1";
		Prev_Title = BabbleFaction["The Scale of the Sands"];
		Back_Page = "REPMENU_AZEROTHPOSTBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Post-Burning Crusade"];
		Next_Page = "ScaleSands3";
		Next_Title = BabbleFaction["The Scale of the Sands"]..": "..BabbleFaction["Revered"].."-"..BabbleFaction["Exalted"];
		};
	["ScaleSands3"] = {
		Title = BabbleFaction["The Scale of the Sands"]..": "..BabbleFaction["Revered"].."-"..BabbleFaction["Exalted"];
		Prev_Page = "ScaleSands2";
		Prev_Title = BabbleFaction["The Scale of the Sands"]..": "..BabbleFaction["Friendly"].."-"..BabbleFaction["Honored"];
		Back_Page = "REPMENU_AZEROTHPOSTBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Post-Burning Crusade"];
		};
	["Scryer1"] = {
		Title = BabbleFaction["The Scryers"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Next_Page = "Scryer2";
		Next_Title = BabbleFaction["The Scryers"]..": "..BabbleFaction["Revered"].."/"..BabbleFaction["Exalted"];
		Back_Page = "REPMENU_SHATTRATH";
		Back_Title = AL["Factions - Shattrath City"];
		};
	["Scryer2"] = {
		Title = BabbleFaction["The Scryers"]..": "..BabbleFaction["Revered"].."/"..BabbleFaction["Exalted"];
		Prev_Page = "Scryer1";
		Prev_Title = BabbleFaction["The Scryers"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Back_Page = "REPMENU_SHATTRATH";
		Back_Title = AL["Factions - Shattrath City"];
		};
	["Shatar1"] = {
		Title = BabbleFaction["The Sha'tar"];
		Back_Page = "REPMENU_SHATTRATH";
		Back_Title = AL["Factions - Shattrath City"];
		};
	["Skyguard1"] = {
		Title = BabbleFaction["Sha'tari Skyguard"];
		Back_Page = "REPMENU_SHATTRATH";
		Back_Title = AL["Factions - Shattrath City"];
		};
	["SunOffensive1"] = {
		Title = BabbleFaction["Shattered Sun Offensive"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Next_Page = "SunOffensive2";
		Next_Title = BabbleFaction["Shattered Sun Offensive"]..": "..BabbleFaction["Revered"];
		Back_Page = "REPMENU_SHATTRATH";
		Back_Title = AL["Factions - Shattrath City"];
		};
	["SunOffensive2"] = {
		Title = BabbleFaction["Shattered Sun Offensive"]..": "..BabbleFaction["Revered"];
		Next_Page = "SunOffensive3";
		Next_Title = BabbleFaction["Shattered Sun Offensive"]..": "..BabbleFaction["Exalted"];
		Back_Page = "REPMENU_SHATTRATH";
		Back_Title = AL["Factions - Shattrath City"];
		Prev_Page = "SunOffensive1";
		Prev_Title = BabbleFaction["Shattered Sun Offensive"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		};
	["SunOffensive3"] = {
		Title = BabbleFaction["Shattered Sun Offensive"]..": "..BabbleFaction["Exalted"];
		Back_Page = "REPMENU_SHATTRATH";
		Back_Title = AL["Factions - Shattrath City"];
		Prev_Page = "SunOffensive2";
		Prev_Title = BabbleFaction["Shattered Sun Offensive"]..": "..BabbleFaction["Revered"];
		};
	["Sporeggar1"] = {
		Title = BabbleFaction["Sporeggar"];
		Back_Page = "REPMENU_OUTLAND";
		Back_Title = AL["Factions - Outland"];
		};
	["Thrallmar1"] = {
		Title = BabbleFaction["Thrallmar"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Next_Page = "Thrallmar2";
		Next_Title = BabbleFaction["Thrallmar"]..": "..BabbleFaction["Revered"].."/"..BabbleFaction["Exalted"];
		Back_Page = "REPMENU_OUTLAND";
		Back_Title = AL["Factions - Outland"];
		};
	["Thrallmar2"] = {
		Title = BabbleFaction["Thrallmar"]..": "..BabbleFaction["Revered"].."/"..BabbleFaction["Exalted"];
		Prev_Page = "Thrallmar1";
		Prev_Title = BabbleFaction["Thrallmar"]..": "..BabbleFaction["Friendly"].."/"..BabbleFaction["Honored"];
		Back_Page = "REPMENU_OUTLAND";
		Back_Title = AL["Factions - Outland"];
		};
	["Tranquillien1"] = {
		Title = BabbleFaction["Tranquillien"];
		Back_Page = "REPMENU_AZEROTHPOSTBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Post-Burning Crusade"];
		};
	["VioletEye1"] = {
		Title = BabbleFaction["The Violet Eye"];
		Next_Page = "VioletEye2";
		Next_Title = BabbleFaction["The Violet Eye"];
		Back_Page = "REPMENU_AZEROTHPOSTBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Post-Burning Crusade"];
		};
	["VioletEye2"] = {
		Title = BabbleFaction["The Violet Eye"];
		Prev_Page = "VioletEye1";
		Prev_Title = BabbleFaction["The Violet Eye"];
		Back_Page = "REPMENU_AZEROTHPOSTBC";
		Back_Title = AL["Factions - Azeroth"].." : "..AL["Post-Burning Crusade"];
		};
  --PvP
	["AVMisc"] = {
		Title = BabbleZone["Alterac Valley"]..": "..AL["Misc. Rewards"];
		Next_Page = "AVBlue";
		Next_Title = BabbleZone["Alterac Valley"]..": "..AL["Superior Rewards"];
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["AVBlue"] = {
		Title = BabbleZone["Alterac Valley"]..": "..AL["Superior Rewards"];
		Next_Page = "AVPurple";
		Next_Title = BabbleZone["Alterac Valley"]..": "..AL["Epic Rewards"];
		Prev_Page = "AVMisc";
		Prev_Title = BabbleZone["Alterac Valley"]..": "..AL["Misc. Rewards"];
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["AVPurple"] = {
		Title = BabbleZone["Alterac Valley"]..": "..AL["Epic Rewards"];
		Prev_Page = "AVBlue";
		Prev_Title = BabbleZone["Alterac Valley"]..": "..AL["Superior Rewards"];
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["AVGreywind"] = {
		Title = "Grey Wind";
		Next_Page = "AVFiznik";
		Next_Title = "Fiznik the Chopper";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["AVFiznik"] = {
		Title = "Fiznik the Chopper";
		Prev_Page = "AVGreywind";
		Prev_Title = "Grey Wind";
		Next_Page = "AVFrostskull";
		Next_Title = "Frostskull";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["AVFrostskull"] = {
		Title = "Frostskull";
		Prev_Page = "AVFiznik";
		Prev_Title = "Fiznik the Chopper";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVArchmage"] = {
		Title = "Archmage Vargus";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVBlademaster"] = {
		Title = "Blademaster Tor'grak";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVIvusCloth1"] = {
		Title = "Ivus the Forest Lord (Cloth 1)";
		Next_Page = "AVIvusCloth2";
		Next_Title = "Ivus the Forest Lord (cloth) 2";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["AVIvusCloth2"] = {
		Title = "Ivus the Forest Lord (Cloth 2)";
		Prev_Page = "AVIvusCloth1";
		Prev_Title = "Ivus the Forest Lord (Cloth 1)";
		Next_Page = "AVIvusLeather";
		Next_Title = "Ivus the Forest Lord (Leather)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["AVIvusLeather"] = {
		Title = "Ivus the Forest Lord (Leather)";
		Prev_Page = "AVIvusCloth2";
		Prev_Title = "Ivus the Forest Lord (Cloth 2)";
		Next_Page = "AVIvusMail";
		Next_Title = "Ivus the Forest Lord (Mail)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["AVIvusMail"] = {
		Title = "Ivus the Forest Lord (Mail)";
		Prev_Page = "AVIvusLeather";
		Prev_Title = "Ivus the Forest Lord (Leather)";
		Next_Page = "AVIvusPlate";
		Next_Title = "Ivus the Forest Lord (Plate)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["AVIvusPlate"] = {
		Title = "Ivus the Forest Lord (Plate)";
		Prev_Page = "AVIvusMail";
		Prev_Title = "Ivus the Forest Lord (Mail)";
		Next_Page = "AVIvusWeapons";
		Next_Title = "Ivus the Forest Lord (Weapons)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["AVIvusWeapons"] = {
		Title = "Ivus the Forest Lord (Weapons)";
		Prev_Page = "AVIvusPlate";
		Prev_Title = "Ivus the Forest Lord (Plate)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVLokhCloth1"] = {
		Title = "Lokholar the Ice Lord (Cloth 1)";
		Next_Page = "AVLokhCloth2";
		Next_Title = "Lokholar the Ice Lord (Cloth 2)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["AVLokhCloth2"] = {
		Title = "Lokholar the Ice Lord (Cloth 2)";
		Prev_Page = "AVLokhCloth1";
		Prev_Title = "Lokholar the Ice Lord (Cloth 1)";
		Next_Page = "AVLokhLeather";
		Next_Title = "Lokholar the Ice Lord (Leather)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["AVLokhLeather"] = {
		Title = "Lokholar the Ice Lord (Leather)";
		Prev_Page = "AVLokhCloth2";
		Prev_Title = "Lokholar the Ice Lord (Cloth 2)";
		Next_Page = "AVLokhMail";
		Next_Title = "Lokholar the Ice Lord (Mail)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["AVLokhMail"] = {
		Title = "Lokholar the Ice Lord (Mail)";
		Prev_Page = "AVLokhLeather";
		Prev_Title = "Lokholar the Ice Lord (Leather)";
		Next_Page = "AVLokhPlate";
		Next_Title = "Lokholar the Ice Lord (Plate)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["AVLokhPlate"] = {
		Title = "Lokholar the Ice Lord (Plate)";
		Prev_Page = "AVLokhMail";
		Prev_Title = "Lokholar the Ice Lord (Mail)";
		Next_Page = "AVLokhWeapons";
		Next_Title = "Lokholar the Ice Lord (Weapons)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["AVLokhWeapons"] = {
		Title = "Lokholar the Ice Lord (Weapons)";
		Prev_Page = "AVLokhPlate";
		Prev_Title = "Lokholar the Ice Lord (Plate)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};


		-- AV Set buttons
	["AVAlliancePriest"] = {
		Title = "AV 2 Sets (Priest)";
		Next_Page = "AVAllianceMage";
		Next_Title = "AV 2 Sets (Mage)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVAllianceMage"] = {
		Title = "AV 2 Sets (Mage)";
		Prev_Page = "AVAlliancePriest";
		Prev_Title = "AV 2 Sets (Priest)";
		Next_Page = "AVAllianceWarlock";
		Next_Title = "AV 2 Sets (Warlock)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVAllianceWarlock"] = {
		Title = "AV 2 Sets (Warlock)";
		Prev_Page = "AVAllianceMage";
		Prev_Title = "AV 2 Sets (Mage)";
		Next_Page = "AVAllianceDruid";
		Next_Title = "AV 2 Sets (Druid)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVAllianceDruid"] = {
		Title = "AV 2 Sets (Druid)";
		Prev_Page = "AVAllianceWarlock";
		Prev_Title = "AV 2 Sets (Warlock)";
		Next_Page = "AVAllianceRogue";
		Next_Title = "AV 2 Sets (Rogue)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVAllianceRogue"] = {
		Title = "AV 2 Sets (Rogue)";
		Prev_Page = "AVAllianceDruid";
		Prev_Title = "AV 2 Sets (Druid)";
		Next_Page = "AVAllianceShaman";
		Next_Title = "AV 2 Sets (Shaman)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVAllianceShaman"] = {
		Title = "AV 2 Sets (Shaman)";
		Prev_Page = "AVAllianceRogue";
		Prev_Title = "AV 2 Sets (Rogue)";
		Next_Page = "AVAllianceHunter";
		Next_Title = "AV 2 Sets (Hunter)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVAllianceHunter"] = {
		Title = "AV 2 Sets (Hunter)";
		Prev_Page = "AVAllianceShaman";
		Prev_Title = "AV 2 Sets (Shaman)";
		Next_Page = "AVAlliancePaladin";
		Next_Title = "AV 2 Sets (Paladin)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVAlliancePaladin"] = {
		Title = "AV 2 Sets (Paladin)";
		Prev_Page = "AVAllianceHunter";
		Prev_Title = "AV 2 Sets (Hunter)";
		Next_Page = "AVAllianceWarrior";
		Next_Title = "AV 2 Sets (Warrior)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVAllianceWarrior"] = {
		Title = "AV 2 Sets (Warrior)";
		Prev_Page = "AVAlliancePaladin";
		Prev_Title = "AV 2 Sets (Paladin)";
		Next_Page = "AVAllianceWeapons";
		Next_Title = "AV 2 Sets (Weapons)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVAllianceWeapons"] = {
		Title = "AV 2 Sets (Weapons)";
		Prev_Page = "AVAllianceWarrior";
		Prev_Title = "AV 2 Sets (Warrior)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};


	["AVHordePriest"] = {
		Title = "AV 2 Sets (Priest)";
		Next_Page = "AVHordeMage";
		Next_Title = "AV 2 Sets (Mage)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVHordeMage"] = {
		Title = "AV 2 Sets (Mage)";
		Prev_Page = "AVHordePriest";
		Prev_Title = "AV 2 Sets (Priest)";
		Next_Page = "AVHordeWarlock";
		Next_Title = "AV 2 Sets (Warlock)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVHordeWarlock"] = {
		Title = "AV 2 Sets (Warlock)";
		Prev_Page = "AVHordeMage";
		Prev_Title = "AV 2 Sets (Mage)";
		Next_Page = "AVHordeDruid";
		Next_Title = "AV 2 Sets (Druid)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVHordeDruid"] = {
		Title = "AV 2 Sets (Druid)";
		Prev_Page = "AVHordeWarlock";
		Prev_Title = "AV 2 Sets (Warlock)";
		Next_Page = "AVHordeRogue";
		Next_Title = "AV 2 Sets (Rogue)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVHordeRogue"] = {
		Title = "AV 2 Sets (Rogue)";
		Prev_Page = "AVHordeDruid";
		Prev_Title = "AV 2 Sets (Druid)";
		Next_Page = "AVHordeShaman";
		Next_Title = "AV 2 Sets (Shaman)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVHordeShaman"] = {
		Title = "AV 2 Sets (Shaman)";
		Prev_Page = "AVHordeRogue";
		Prev_Title = "AV 2 Sets (Rogue)";
		Next_Page = "AVHordeHunter";
		Next_Title = "AV 2 Sets (Hunter)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVHordeHunter"] = {
		Title = "AV 2 Sets (Hunter)";
		Prev_Page = "AVHordeShaman";
		Prev_Title = "AV 2 Sets (Shaman)";
		Next_Page = "AVHordePaladin";
		Next_Title = "AV 2 Sets (Paladin)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVHordePaladin"] = {
		Title = "AV 2 Sets (Paladin)";
		Prev_Page = "AVHordeHunter";
		Prev_Title = "AV 2 Sets (Hunter)";
		Next_Page = "AVHordeWarrior";
		Next_Title = "AV 2 Sets (Warrior)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVHordeWarrior"] = {
		Title = "AV 2 Sets (Warrior)";
		Prev_Page = "AVHordePaladin";
		Prev_Title = "AV 2 Sets (Paladin)";
		Next_Page = "AVHordeWeapons";
		Next_Title = "AV 2 Sets (Weapons)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVHordeWeapons"] = {
		Title = "AV 2 Sets (Weapons)";
		Prev_Page = "AVHordeWarrior";
		Prev_Title = "AV 2 Sets (Warrior)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};


	["AVNonSet1"] = {
		Title = "AV 2 Sets (Non Set 1)";
		Next_Page = "AVNonSet2";
		Next_Title = "AV 2 Sets (Non Set 2)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};

	["AVNonSet2"] = {
		Title = "AV 2 Sets (Non Set 2)";
		Prev_Page = "AVNonSet1";
		Prev_Title = "AV 2 Sets (Non Set 1)";
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["ABMisc"] = {
		Title = BabbleZone["Arathi Basin"]..": "..AL["Misc. Rewards"];
		Back_Page = "ABMENU";
		Back_Title = BabbleZone["Arathi Basin"];
		Next_Page = "AB20291";
		Next_Title = AtlasLoot_TableNames["AB20291"][1];
		};
	["AB20291"] = {
		Title = AtlasLoot_TableNames["AB20291"][1];
		Back_Page = "ABMENU";
		Back_Title = BabbleZone["Arathi Basin"];
		Next_Page = "AB20292";
		Next_Title = AtlasLoot_TableNames["AB20292"][1];
		Prev_Page = "ABMisc";
		Prev_Title = BabbleZone["Arathi Basin"]..": "..AL["Misc. Rewards"];
		};
	["AB20292"] = {
		Title = AtlasLoot_TableNames["AB20292"][1];
		Back_Page = "ABMENU";
		Back_Title = BabbleZone["Arathi Basin"];
		Next_Page = "AB3039";
		Next_Title = AtlasLoot_TableNames["AB3039"][1];
		Prev_Page = "AB20291";
		Prev_Title = AtlasLoot_TableNames["AB20291"][1];
		};
	["AB3039"] = {
		Title = AtlasLoot_TableNames["AB3039"][1];
		Back_Page = "ABMENU";
		Back_Title = BabbleZone["Arathi Basin"];
		Next_Page = "AB40491";
		Next_Title = AtlasLoot_TableNames["AB40491"][1];
		Prev_Page = "AB20292";
		Prev_Title = AtlasLoot_TableNames["AB20292"][1];
		};
	["AB40491"] = {
		Title = AtlasLoot_TableNames["AB40491"][1];
		Back_Page = "ABMENU";
		Back_Title = BabbleZone["Arathi Basin"];
		Next_Page = "AB40492";
		Next_Title = AtlasLoot_TableNames["AB40492"][1];
		Prev_Page = "AB3039";
		Prev_Title = AtlasLoot_TableNames["AB3039"][1];
		};
	["AB40492"] = {
		Title = AtlasLoot_TableNames["AB40492"][1];
		Back_Page = "ABMENU";
		Back_Title = BabbleZone["Arathi Basin"];
		Next_Page = "AB5059";
		Next_Title = AtlasLoot_TableNames["AB5059"][1];
		Prev_Page = "AB40491";
		Prev_Title = AtlasLoot_TableNames["AB40491"][1];
		};
	["AB5059"] = {
		Title = AtlasLoot_TableNames["AB5059"][1];
		Back_Page = "ABMENU";
		Back_Title = BabbleZone["Arathi Basin"];
		Next_Page = "AB60";
		Next_Title = AtlasLoot_TableNames["AB60"][1];
		Prev_Page = "AB40492";
		Prev_Title = AtlasLoot_TableNames["AB40492"][1];
		};
	["AB60"] = {
		Title = AtlasLoot_TableNames["AB60"][1];
		Back_Page = "ABMENU";
		Back_Title = BabbleZone["Arathi Basin"];
		Prev_Page = "AB5059";
		Prev_Title = AtlasLoot_TableNames["AB5059"][1];
		};
	["ABSets1"] = {
		Title = AtlasLoot_TableNames["ABSets1"][1];
		Next_Page = "ABSets2";
		Next_Title = AtlasLoot_TableNames["ABSets2"][1];
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["ABSets2"] = {
		Title = AtlasLoot_TableNames["ABSets2"][1];
		Next_Page = "ABSets3";
		Next_Title = AtlasLoot_TableNames["ABSets3"][1];
		Prev_Page = "ABSets1";
		Prev_Title = AtlasLoot_TableNames["ABSets1"][1];
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["ABSets3"] = {
		Title = AtlasLoot_TableNames["ABSets3"][1];
		Prev_Page = "ABSets2";
		Prev_Title = AtlasLoot_TableNames["ABSets2"][1];
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["WSGMisc"] = {
		Title = BabbleZone["Warsong Gulch"]..": "..AL["Misc. Rewards"];
		Next_Page = "WSG1019";
		Next_Title = AtlasLoot_TableNames["WSG1019"][1];
		Back_Page = "WSGMENU";
		Back_Title = BabbleZone["Warsong Gulch"];
		};
	["WSG1019"] = {
		Title = AtlasLoot_TableNames["WSG1019"][1];
		Next_Page = "WSG2029";
		Next_Title = AtlasLoot_TableNames["WSG2029"][1];
		Prev_Page = "WSGMisc";
		Prev_Title = BabbleZone["Warsong Gulch"]..": "..AL["Misc. Rewards"];
		Back_Page = "WSGMENU";
		Back_Title = BabbleZone["Warsong Gulch"];
		};
	["WSG2029"] = {
		Title = AtlasLoot_TableNames["WSG2029"][1];
		Next_Page = "WSG3039";
		Next_Title = AtlasLoot_TableNames["WSG3039"][1];
		Prev_Page = "WSG1019";
		Prev_Title = AtlasLoot_TableNames["WSG1019"][1];
		Back_Page = "WSGMENU";
		Back_Title = BabbleZone["Warsong Gulch"];
		};
	["WSG3039"] = {
		Title = AtlasLoot_TableNames["WSG3039"][1];
		Next_Page = "WSG4049";
		Next_Title = AtlasLoot_TableNames["WSG4049"][1];
		Prev_Page = "WSG2029";
		Prev_Title = AtlasLoot_TableNames["WSG2029"][1];
		Back_Page = "WSGMENU";
		Back_Title = BabbleZone["Warsong Gulch"];
		};
	["WSG4049"] = {
		Title = AtlasLoot_TableNames["WSG4049"][1];
		Next_Page = "WSG5059";
		Next_Title = AtlasLoot_TableNames["WSG5059"][1];
		Prev_Page = "WSG3039";
		Prev_Title = AtlasLoot_TableNames["WSG3039"][1];
		Back_Page = "WSGMENU";
		Back_Title = BabbleZone["Warsong Gulch"];
		};
	["WSG5059"] = {
		Title = AtlasLoot_TableNames["WSG5059"][1];
		Next_Page = "WSG60";
		Next_Title = AtlasLoot_TableNames["WSG60"][1];
		Prev_Page = "WSG4049";
		Prev_Title = AtlasLoot_TableNames["WSG4049"][1];
		Back_Page = "WSGMENU";
		Back_Title = BabbleZone["Warsong Gulch"];
		};
	["WSG60"] = {
		Title = AtlasLoot_TableNames["WSG60"][1];
		Prev_Page = "WSG5059";
		Prev_Title = AtlasLoot_TableNames["WSG5059"][1];
		Back_Page = "WSGMENU";
		Back_Title = BabbleZone["Warsong Gulch"];
		};
	["PvP60Accessories1"] = {
		Title = AL["PvP Accessories"]..": "..AL["Level 60"];
		Next_Page = "PvP60Accessories2";
		Next_Title = AtlasLoot_TableNames["PvP60Accessories2"][1];
		Back_Page = "HONORMENU";
		Back_Title = AL["PvP Honor System"];
		};
	["PvP60Accessories2"] = {
		Title = AtlasLoot_TableNames["PvP60Accessories2"][1];
		Next_Page = "PvP60Accessories3";
		Next_Title = AtlasLoot_TableNames["PvP60Accessories3"][1];
		Prev_Page = "PvP60Accessories1";
		Prev_Title = AL["PvP Accessories"]..": "..AL["Level 60"];
		Back_Page = "HONORMENU";
		Back_Title = AL["PvP Honor System"];
		};
	["PvP60Accessories3"] = {
		Title = AtlasLoot_TableNames["PvP60Accessories3"][1];
		Prev_Page = "PvP60Accessories2";
		Prev_Title = AtlasLoot_TableNames["PvP60Accessories2"][1];
		Back_Page = "HONORMENU";
		Back_Title = AL["PvP Honor System"];
		};
	["PvP70Accessories1"] = {
		Title = AL["PvP Accessories"]..": "..AL["Level 70"];
		Next_Page = "PvP70Accessories2";
		Next_Title = AL["PvP Accessories"]..": "..AL["Level 70"];
		Back_Page = "HONORMENU";
		Back_Title = AL["PvP Honor System"];
		};
	["PvP70Accessories2"] = {
		Title = AL["PvP Accessories"]..": "..AL["Level 70"];
		Prev_Page = "PvP70Accessories1";
		Prev_Title = AL["PvP Accessories"]..": "..AL["Level 70"];
		Back_Page = "HONORMENU";
		Back_Title = AL["PvP Honor System"];
		};
	["PVPWeapons1"] = {
		Title = AL["PvP Weapons"]..": "..AL["Level 60"];
		Next_Page = "PVPWeapons2";
		Next_Title = AL["PvP Weapons"]..": "..AL["Level 60"];
		Back_Page = "HONORMENU";
		Back_Title = AL["PvP Honor System"];
		};
	["PVPWeapons2"] = {
		Title = AL["PvP Weapons"]..": "..AL["Level 60"];
		Prev_Page = "PVPWeapons1";
		Prev_Title = AL["PvP Weapons"]..": "..AL["Level 60"];
		Back_Page = "HONORMENU";
		Back_Title = AL["PvP Honor System"];
		};
	["Arena1Weapons1"] = {
		Title = AL["Arena PvP Weapons"]..": "..AL["Season 1"];
		Next_Page = "Arena1Weapons2";
		Next_Title = AL["Arena PvP Weapons"]..": "..AL["Season 1"];
		Back_Page = "ARENAMENU";
		Back_Title = AL["Arena PvP System"];
		};
	["Arena1Weapons2"] = {
		Title = AL["Arena PvP Weapons"]..": "..AL["Season 1"];
		Prev_Page = "Arena1Weapons1";
		Prev_Title = AL["Arena PvP Weapons"]..": "..AL["Season 1"];
		Back_Page = "ARENAMENU";
		Back_Title = AL["Arena PvP System"];
		};
	["Arena2Weapons1"] = {
		Title = AL["Arena PvP Weapons"]..": "..AL["Season 2"];
		Next_Page = "Arena2Weapons2";
		Next_Title = AL["Arena PvP Weapons"]..": "..AL["Season 2"];
		Back_Page = "ARENAMENU";
		Back_Title = AL["Arena PvP System"];
		};
	["Arena2Weapons2"] = {
		Title = AL["Arena PvP Weapons"]..": "..AL["Season 2"];
		Prev_Page = "Arena2Weapons1";
		Prev_Title = AL["Arena PvP Weapons"]..": "..AL["Season 2"];
		Back_Page = "ARENAMENU";
		Back_Title = AL["Arena PvP System"];
		};
	["Arena3Weapons1"] = {
		Title = AL["Arena PvP Weapons"]..": "..AL["Season 3"];
		Next_Page = "Arena3Weapons2";
		Next_Title = AL["Arena PvP Weapons"]..": "..AL["Season 3"];
		Back_Page = "ARENAMENU";
		Back_Title = AL["Arena PvP System"];
		};
	["Arena3Weapons2"] = {
		Title = AL["Arena PvP Weapons"]..": "..AL["Season 3"];
		Prev_Page = "Arena3Weapons1";
		Prev_Title = AL["Arena PvP Weapons"]..": "..AL["Season 3"];
		Back_Page = "ARENAMENU";
		Back_Title = AL["Arena PvP System"];
		};
	["Arena4Weapons1"] = {
		Title = AL["Arena PvP Weapons"]..": "..AL["Season 4"];
		Next_Page = "Arena4Weapons2";
		Next_Title = AL["Arena PvP Weapons"]..": "..AL["Season 4"];
		Back_Page = "ARENAMENU";
		Back_Title = AL["Arena PvP System"];
		};
	["Arena4Weapons2"] = {
		Title = AL["Arena PvP Weapons"]..": "..AL["Season 4"];
		Prev_Page = "Arena4Weapons1";
		Prev_Title = AL["Arena PvP Weapons"]..": "..AL["Season 4"];
		Back_Page = "ARENAMENU";
		Back_Title = AL["Arena PvP System"];
		};
	["PvP70NonSet1"] = {
		Title = AtlasLoot_TableNames["PvP70NonSet1"][1];
		Next_Page = "PvP70NonSet2";
		Next_Title = AtlasLoot_TableNames["PvP70NonSet2"][1];
		Back_Page = "PVP70NONSETEPICS";
		Back_Title = AL["PvP Non-Set Epics"];
		};
	["PvP70NonSet2"] = {
		Title = AtlasLoot_TableNames["PvP70NonSet2"][1];
		Next_Page = "PvP70NonSet3";
		Next_Title = AtlasLoot_TableNames["PvP70NonSet3"][1];
		Prev_Page = "PvP70NonSet1";
		Prev_Title = AtlasLoot_TableNames["PvP70NonSet1"][1];
		Back_Page = "PVP70NONSETEPICS";
		Back_Title = AL["PvP Non-Set Epics"];
		};
	["PvP70NonSet3"] = {
		Title = AtlasLoot_TableNames["PvP70NonSet3"][1];
		Prev_Page = "PvP70NonSet2";
		Prev_Title = AtlasLoot_TableNames["PvP70NonSet2"][1];
		Back_Page = "PVP70NONSETEPICS";
		Back_Title = AL["PvP Non-Set Epics"];
		};
  --WorldPvP
	["Hellfire"] = {
		Title = BabbleZone["Hellfire Peninsula"];
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["Zangarmarsh"] = {
		Title = BabbleZone["Zangarmarsh"];
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["Nagrand1"] = {
		Title = BabbleZone["Nagrand"]..": "..AL["Halaa"];
		Next_Page = "Nagrand2";
		Next_Title = BabbleZone["Nagrand"]..": "..AL["Halaa"];
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["Nagrand2"] = {
		Title = BabbleZone["Nagrand"]..": "..AL["Halaa"];
		Prev_Page = "Nagrand1";
		Prev_Title = BabbleZone["Nagrand"]..": "..AL["Halaa"];
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
	["Terokkar"] = {
		Title = BabbleZone["Terokkar Forest"];
		Back_Page = "PVPMENU";
		Back_Title = AL["PvP Rewards"];
		};
  --PvP Armor Sets
	["PVPDruid"] = {
		Title = BabbleClass["Druid"];
		Back_Page = "PVPSET";
		Back_Title = AL["PvP Armor Sets"];
		};
	["PVPHunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "PVPSET";
		Back_Title = AL["PvP Armor Sets"];
		};
	["PVPMage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "PVPSET";
		Back_Title = AL["PvP Armor Sets"];
		};
	["PVPPaladin"] = {
		Title = BabbleClass["Paladin"];
		Back_Page = "PVPSET";
		Back_Title = AL["PvP Armor Sets"];
		};
	["PVPPriest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "PVPSET";
		Back_Title = AL["PvP Armor Sets"];
		};
	["PVPRogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "PVPSET";
		Back_Title = AL["PvP Armor Sets"];
		};
	["PVPShaman"] = {
		Title = BabbleClass["Shaman"];
		Back_Page = "PVPSET";
		Back_Title = AL["PvP Armor Sets"];
		};
	["PVPWarlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "PVPSET";
		Back_Title = AL["PvP Armor Sets"];
		};
	["PVPWarrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "PVPSET";
		Back_Title = AL["PvP Armor Sets"];
		};
	["PVP70RepDruid"] = {
		Title = BabbleClass["Druid"];
		Back_Page = "PVP70RepSET";
		Back_Title = AL["PvP Reputation Sets"];
		};
	["PVP70RepHunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "PVP70RepSET";
		Back_Title = AL["PvP Reputation Sets"];
		};
	["PVP70RepMage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "PVP70RepSET";
		Back_Title = AL["PvP Reputation Sets"];
		};
	["PVP70RepPaladin"] = {
		Title = BabbleClass["Paladin"];
		Back_Page = "PVP70RepSET";
		Back_Title = AL["PvP Reputation Sets"];
		};
	["PVP70RepPriest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "PVP70RepSET";
		Back_Title = AL["PvP Reputation Sets"];
		};
	["PVP70RepRogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "PVP70RepSET";
		Back_Title = AL["PvP Reputation Sets"];
		};
	["PVP70RepShaman"] = {
		Title = BabbleClass["Shaman"];
		Back_Page = "PVP70RepSET";
		Back_Title = AL["PvP Reputation Sets"];
		};
	["PVP70RepWarlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "PVP70RepSET";
		Back_Title = AL["PvP Reputation Sets"];
		};
	["PVP70RepWarrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "PVP70RepSET";
		Back_Title = AL["PvP Reputation Sets"];
		};
	["ArenaDruid"] = {
		Title = BabbleClass["Druid"];
		Back_Page = "ARENASET";
		Back_Title = AL["Arena PvP Sets"];
		};
	["ArenaHunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "ARENASET";
		Back_Title = AL["Arena PvP Sets"];
		};
	["ArenaMage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "ARENASET";
		Back_Title = AL["Arena PvP Sets"];
		};
	["ArenaPaladin"] = {
		Title = BabbleClass["Paladin"];
		Back_Page = "ARENASET";
		Back_Title = AL["Arena PvP Sets"];
		};
	["ArenaPriest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "ARENASET";
		Back_Title = AL["Arena PvP Sets"];
		};
	["ArenaRogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "ARENASET";
		Back_Title = AL["Arena PvP Sets"];
		};
	["ArenaShaman"] = {
		Title = BabbleClass["Shaman"];
		Back_Page = "ARENASET";
		Back_Title = AL["Arena PvP Sets"];
		};
	["ArenaWarlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "ARENASET";
		Back_Title = AL["Arena PvP Sets"];
		};
	["ArenaWarrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "ARENASET";
		Back_Title = AL["Arena PvP Sets"];
		};
	["Arena2Druid"] = {
		Title = BabbleClass["Druid"];
		Back_Page = "ARENA2SET";
		Back_Title = AL["Arena 2 PvP Sets"];
		};
	["Arena2Hunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "ARENA2SET";
		Back_Title = AL["Arena 2 PvP Sets"];
		};
	["Arena2Mage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "ARENA2SET";
		Back_Title = AL["Arena 2 PvP Sets"];
		};
	["Arena2Paladin"] = {
		Title = BabbleClass["Paladin"];
		Back_Page = "ARENA2SET";
		Back_Title = AL["Arena 2 PvP Sets"];
		};
	["Arena2Priest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "ARENA2SET";
		Back_Title = AL["Arena 2 PvP Sets"];
		};
	["Arena2Rogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "ARENA2SET";
		Back_Title = AL["Arena 2 PvP Sets"];
		};
	["Arena2Shaman"] = {
		Title = BabbleClass["Shaman"];
		Back_Page = "ARENA2SET";
		Back_Title = AL["Arena 2 PvP Sets"];
		};
	["Arena2Warlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "ARENA2SET";
		Back_Title = AL["Arena 2 PvP Sets"];
		};
	["Arena2Warrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "ARENA2SET";
		Back_Title = AL["Arena 2 PvP Sets"];
		};
	["Arena3Druid"] = {
		Title = BabbleClass["Druid"];
		Back_Page = "ARENA3SET";
		Back_Title = AL["Arena 3 PvP Sets"];
		};
	["Arena3Hunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "ARENA3SET";
		Back_Title = AL["Arena 3 PvP Sets"];
		};
	["Arena3Mage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "ARENA3SET";
		Back_Title = AL["Arena 3 PvP Sets"];
		};
	["Arena3Paladin"] = {
		Title = BabbleClass["Paladin"];
		Back_Page = "ARENA3SET";
		Back_Title = AL["Arena 3 PvP Sets"];
		};
	["Arena3Priest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "ARENA3SET";
		Back_Title = AL["Arena 3 PvP Sets"];
		};
	["Arena3Rogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "ARENA3SET";
		Back_Title = AL["Arena 3 PvP Sets"];
		};
	["Arena3Shaman"] = {
		Title = BabbleClass["Shaman"];
		Back_Page = "ARENA3SET";
		Back_Title = AL["Arena 3 PvP Sets"];
		};
	["Arena3Warlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "ARENA3SET";
		Back_Title = AL["Arena 3 PvP Sets"];
		};
	["Arena3Warrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "ARENA3SET";
		Back_Title = AL["Arena 3 PvP Sets"];
		};
	["Arena4Druid"] = {
		Title = BabbleClass["Druid"];
		Back_Page = "ARENA4SET";
		Back_Title = AL["Arena 4 PvP Sets"];
		};
	["Arena4Hunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "ARENA4SET";
		Back_Title = AL["Arena 4 PvP Sets"];
		};
	["Arena4Mage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "ARENA4SET";
		Back_Title = AL["Arena 4 PvP Sets"];
		};
	["Arena4Paladin"] = {
		Title = BabbleClass["Paladin"];
		Back_Page = "ARENA4SET";
		Back_Title = AL["Arena 4 PvP Sets"];
		};
	["Arena4Priest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "ARENA4SET";
		Back_Title = AL["Arena 4 PvP Sets"];
		};
	["Arena4Rogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "ARENA4SET";
		Back_Title = AL["Arena 4 PvP Sets"];
		};
	["Arena4Shaman"] = {
		Title = BabbleClass["Shaman"];
		Back_Page = "ARENA4SET";
		Back_Title = AL["Arena 4 PvP Sets"];
		};
	["Arena4Warlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "ARENA4SET";
		Back_Title = AL["Arena 4 PvP Sets"];
		};
	["Arena4Warrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "ARENA4SET";
		Back_Title = AL["Arena 4 PvP Sets"];
		};
  --Dungeon Armor Sets
	["T0Druid"] = {
		Title = BabbleClass["Druid"];
		Back_Page = "T0SET";
		Back_Title = AL["Dungeon 1/2 Sets"];
		};
	["T0Hunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "T0SET";
		Back_Title = AL["Dungeon 1/2 Sets"];
		};
	["T0Mage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "T0SET";
		Back_Title = AL["Dungeon 1/2 Sets"];
		};
	["T0Paladin"] = {
		Title = BabbleClass["Paladin"];
		Back_Page = "T0SET";
		Back_Title = AL["Dungeon 1/2 Sets"];
		};
	["T0Priest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "T0SET";
		Back_Title = AL["Dungeon 1/2 Sets"];
		};
	["T0Rogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "T0SET";
		Back_Title = AL["Dungeon 1/2 Sets"];
		};
	["T0Shaman"] = {
		Title = BabbleClass["Shaman"];
		Back_Page = "T0SET";
		Back_Title = AL["Dungeon 1/2 Sets"];
		};
	["T0Warlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "T0SET";
		Back_Title = AL["Dungeon 1/2 Sets"];
		};
	["T0Warrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "T0SET";
		Back_Title = AL["Dungeon 1/2 Sets"];
		};
	["DS3Hallowed"] = {
		Title = AL["Hallowed Raiment"];
		Back_Page = "DS3SET";
		Back_Title = AL["Dungeon 3 Sets"];
		};
	["DS3Incanter"] = {
		Title = AL["Incanter's Regalia"];
		Back_Page = "DS3SET";
		Back_Title = AL["Dungeon 3 Sets"];
		};
	["DS3Mana"] = {
		Title = AL["Mana-Etched Regalia"];
		Back_Page = "DS3SET";
		Back_Title = AL["Dungeon 3 Sets"];
		};
	["DS3Oblivion"] = {
		Title = AL["Oblivion Raiment"];
		Back_Page = "DS3SET";
		Back_Title = AL["Dungeon 3 Sets"];
		};
	["DS3Assassin"] = {
		Title = AL["Assassination Armor"];
		Back_Page = "DS3SET";
		Back_Title = AL["Dungeon 3 Sets"];
		};
	["DS3Moonglade"] = {
		Title = AL["Moonglade Raiment"];
		Back_Page = "DS3SET";
		Back_Title = AL["Dungeon 3 Sets"];
		};
	["DS3Wastewalker"] = {
		Title = AL["Wastewalker Armor"];
		Back_Page = "DS3SET";
		Back_Title = AL["Dungeon 3 Sets"];
		};
	["DS3Beast"] = {
		Title = AL["Beast Lord Armor"];
		Back_Page = "DS3SET";
		Back_Title = AL["Dungeon 3 Sets"];
		};
	["DS3Desolation"] = {
		Title = AL["Desolation Battlegear"];
		Back_Page = "DS3SET";
		Back_Title = AL["Dungeon 3 Sets"];
		};
	["DS3Tidefury"] = {
		Title = AL["Tidefury Raiment"];
		Back_Page = "DS3SET";
		Back_Title = AL["Dungeon 3 Sets"];
		};
	["DS3Bold"] = {
		Title = AL["Bold Armor"];
		Back_Page = "DS3SET";
		Back_Title = AL["Dungeon 3 Sets"];
		};
	["DS3Doom"] = {
		Title = AL["Doomplate Battlegear"];
		Back_Page = "DS3SET";
		Back_Title = AL["Dungeon 3 Sets"];
		};
	["DS3Right"] = {
		Title = AL["Righteous Armor"];
		Back_Page = "DS3SET";
		Back_Title = AL["Dungeon 3 Sets"];
		};
  --Tier Armor Sets
	["T1Druid"] = {
		Title = BabbleClass["Druid"];
		Back_Page = "T1SET";
		Back_Title = AL["Tier 1 Sets"];
		};
	["T1Hunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "T1SET";
		Back_Title = AL["Tier 1 Sets"];
		};
	["T1Mage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "T1SET";
		Back_Title = AL["Tier 1 Sets"];
		};
	["T1Paladin"] = {
		Title = BabbleClass["Paladin"];
		Back_Page = "T1SET";
		Back_Title = AL["Tier 1 Sets"];
		};
	["T1Priest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "T1SET";
		Back_Title = AL["Tier 1 Sets"];
		};
	["T1Rogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "T1SET";
		Back_Title = AL["Tier 1 Sets"];
		};
	["T1Shaman"] = {
		Title = BabbleClass["Shaman"];
		Back_Page = "T1SET";
		Back_Title = AL["Tier 1 Sets"];
		};
	["T1Warlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "T1SET";
		Back_Title = AL["Tier 1 Sets"];
		};
	["T1Warrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "T1SET";
		Back_Title = AL["Tier 1 Sets"];
		};
	["T2Druid"] = {
		Title = BabbleClass["Druid"];
		Back_Page = "T2SET";
		Back_Title = AL["Tier 2 Sets"];
		};
	["T2Hunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "T2SET";
		Back_Title = AL["Tier 2 Sets"];
		};
	["T2Mage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "T2SET";
		Back_Title = AL["Tier 2 Sets"];
		};
	["T2Paladin"] = {
		Title = BabbleClass["Paladin"];
		Back_Page = "T2SET";
		Back_Title = AL["Tier 2 Sets"];
		};
	["T2Priest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "T2SET";
		Back_Title = AL["Tier 2 Sets"];
		};
	["T2Rogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "T2SET";
		Back_Title = AL["Tier 2 Sets"];
		};
	["T2Shaman"] = {
		Title = BabbleClass["Shaman"];
		Back_Page = "T2SET";
		Back_Title = AL["Tier 2 Sets"];
		};
	["T2Warlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "T2SET";
		Back_Title = AL["Tier 2 Sets"];
		};
	["T2Warrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "T2SET";
		Back_Title = AL["Tier 2 Sets"];
		};
	["T3Druid"] = {
		Title = BabbleClass["Druid"];
		Back_Page = "T3SET";
		Back_Title = AL["Tier 3 Sets"];
		};
	["T3Hunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "T3SET";
		Back_Title = AL["Tier 3 Sets"];
		};
	["T3Mage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "T3SET";
		Back_Title = AL["Tier 3 Sets"];
		};
	["T3Paladin"] = {
		Title = BabbleClass["Paladin"];
		Back_Page = "T3SET";
		Back_Title = AL["Tier 3 Sets"];
		};
	["T3Priest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "T3SET";
		Back_Title = AL["Tier 3 Sets"];
		};
	["T3Rogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "T3SET";
		Back_Title = AL["Tier 3 Sets"];
		};
	["T3Shaman"] = {
		Title = BabbleClass["Shaman"];
		Back_Page = "T3SET";
		Back_Title = AL["Tier 3 Sets"];
		};
	["T3Warlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "T3SET";
		Back_Title = AL["Tier 3 Sets"];
		};
	["T3Warrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "T3SET";
		Back_Title = AL["Tier 3 Sets"];
		};
	["T4Druid"] = {
		Title = BabbleClass["Druid"];
		Back_Page = "T4SET";
		Back_Title = AL["Tier 4 Sets"];
		};
	["T4Hunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "T4SET";
		Back_Title = AL["Tier 4 Sets"];
		};
	["T4Mage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "T4SET";
		Back_Title = AL["Tier 4 Sets"];
		};
	["T4Paladin"] = {
		Title = BabbleClass["Paladin"];
		Back_Page = "T4SET";
		Back_Title = AL["Tier 4 Sets"];
		};
	["T4Priest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "T4SET";
		Back_Title = AL["Tier 4 Sets"];
		};
	["T4Rogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "T4SET";
		Back_Title = AL["Tier 4 Sets"];
		};
	["T4Shaman"] = {
		Title = BabbleClass["Shaman"];
		Back_Page = "T4SET";
		Back_Title = AL["Tier 4 Sets"];
		};
	["T4Warlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "T4SET";
		Back_Title = AL["Tier 4 Sets"];
		};
	["T4Warrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "T4SET";
		Back_Title = AL["Tier 4 Sets"];
		};
	["T5Druid"] = {
		Title = BabbleClass["Druid"];
		Back_Page = "T5SET";
		Back_Title = AL["Tier 5 Sets"];
		};
	["T5Hunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "T5SET";
		Back_Title = AL["Tier 5 Sets"];
		};
	["T5Mage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "T5SET";
		Back_Title = AL["Tier 5 Sets"];
		};
	["T5Paladin"] = {
		Title = BabbleClass["Paladin"];
		Back_Page = "T5SET";
		Back_Title = AL["Tier 5 Sets"];
		};
	["T5Priest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "T5SET";
		Back_Title = AL["Tier 5 Sets"];
		};
	["T5Rogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "T5SET";
		Back_Title = AL["Tier 5 Sets"];
		};
	["T5Shaman"] = {
		Title = BabbleClass["Shaman"];
		Back_Page = "T5SET";
		Back_Title = AL["Tier 5 Sets"];
		};
	["T5Warlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "T5SET";
		Back_Title = AL["Tier 5 Sets"];
		};
	["T5Warrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "T5SET";
		Back_Title = AL["Tier 5 Sets"];
		};
	["T6Druid"] = {
		Title = BabbleClass["Druid"];
		Next_Page = "T6Druid2";
		Next_Title = BabbleClass["Druid"];
		Back_Page = "T6SET";
		Back_Title = AL["Tier 6 Sets"];
		};
	["T6Druid2"] = {
		Title = BabbleClass["Druid"];
		Prev_Page = "T6Druid";
		Prev_Title = BabbleClass["Druid"];
		Back_Page = "T6SET";
		Back_Title = AL["Tier 6 Sets"];
		};
	["T6Hunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "T6SET";
		Back_Title = AL["Tier 6 Sets"];
		};
	["T6Mage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "T6SET";
		Back_Title = AL["Tier 6 Sets"];
		};
	["T6Paladin"] = {
		Title = BabbleClass["Paladin"];
		Next_Page = "T6Paladin2";
		Next_Title = BabbleClass["Paladin"];
		Back_Page = "T6SET";
		Back_Title = AL["Tier 6 Sets"];
		};
	["T6Paladin2"] = {
		Title = BabbleClass["Paladin"];
		Prev_Page = "T6Paladin";
		Prev_Title = BabbleClass["Paladin"];
		Back_Page = "T6SET";
		Back_Title = AL["Tier 6 Sets"];
		};
	["T6Priest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "T6SET";
		Back_Title = AL["Tier 6 Sets"];
		};
	["T6Rogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "T6SET";
		Back_Title = AL["Tier 6 Sets"];
		};
	["T6Shaman"] = {
		Title = BabbleClass["Shaman"];
		Next_Page = "T6Shaman2";
		Next_Title = BabbleClass["Shaman"];
		Back_Page = "T6SET";
		Back_Title = AL["Tier 6 Sets"];
		};
	["T6Shaman2"] = {
		Title = BabbleClass["Shaman"];
		Prev_Page = "T6Shaman";
		Prev_Title = BabbleClass["Shaman"];
		Back_Page = "T6SET";
		Back_Title = AL["Tier 6 Sets"];
		};
	["T6Warlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "T6SET";
		Back_Title = AL["Tier 6 Sets"];
		};
	["T6Warrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "T6SET";
		Back_Title = AL["Tier 6 Sets"];
		};
	["TXDruid"] = {
		Title = BabbleClass["Druid"];
		Next_Page = "TXDruid2";
		Next_Title = BabbleClass["Druid"];
		Back_Page = "TXSET";
		Back_Title = AL["Tier X Sets"];
		};
	["TXDruid2"] = {
		Title = BabbleClass["Druid"];
		Prev_Page = "TXDruid";
		Prev_Title = BabbleClass["Druid"];
		Back_Page = "TXSET";
		Back_Title = AL["Tier X Sets"];
		};
	["TXHunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "TXSET";
		Back_Title = AL["Tier X Sets"];
		};
	["TXMage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "TXSET";
		Back_Title = AL["Tier X Sets"];
		};
	["TXPaladin"] = {
		Title = BabbleClass["Paladin"];
		Next_Page = "TXPaladin2";
		Next_Title = BabbleClass["Paladin"];
		Back_Page = "TXSET";
		Back_Title = AL["Tier X Sets"];
		};
	["TXPaladin2"] = {
		Title = BabbleClass["Paladin"];
		Prev_Page = "TXPaladin";
		Prev_Title = BabbleClass["Paladin"];
		Back_Page = "TXSET";
		Back_Title = AL["Tier X Sets"];
		};
	["TXPriest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "TXSET";
		Back_Title = AL["Tier X Sets"];
		};
	["TXRogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "TXSET";
		Back_Title = AL["Tier X Sets"];
		};
	["TXShaman"] = {
		Title = BabbleClass["Shaman"];
		Next_Page = "TXShaman2";
		Next_Title = BabbleClass["Shaman"];
		Back_Page = "TXSET";
		Back_Title = AL["Tier X Sets"];
		};
	["TXShaman2"] = {
		Title = BabbleClass["Shaman"];
		Prev_Page = "TXShaman";
		Prev_Title = BabbleClass["Paladin"];
		Back_Page = "TXSET";
		Back_Title = AL["Tier X Sets"];
		};
	["TXWarlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "TXSET";
		Back_Title = AL["Tier X Sets"];
		};
	["TXWarrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "TXSET";
		Back_Title = AL["Tier X Sets"];
		};

	["T8Druid"] = {
		Title = BabbleClass["Druid"];
		Next_Page = "T8Druid2";
		Next_Title = BabbleClass["Druid"];
		Back_Page = "T8SET";
		Back_Title = AL["Tier 8 Sets"];
		};
	["T8Druid2"] = {
		Title = BabbleClass["Druid"];
		Prev_Page = "T8Druid";
		Prev_Title = BabbleClass["Druid"];
		Back_Page = "T8SET";
		Back_Title = AL["Tier 8 Sets"];
		};
	["T8Hunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "T8SET";
		Back_Title = AL["Tier 8 Sets"];
		};
	["T8Mage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "T8SET";
		Back_Title = AL["Tier 8 Sets"];
		};
	["T8Paladin"] = {
		Title = BabbleClass["Paladin"];
		Next_Page = "T8Paladin2";
		Next_Title = BabbleClass["Paladin"];
		Back_Page = "T8SET";
		Back_Title = AL["Tier 8 Sets"];
		};
	["T8Paladin2"] = {
		Title = BabbleClass["Paladin"];
		Prev_Page = "T8Paladin";
		Prev_Title = BabbleClass["Paladin"];
		Back_Page = "T8SET";
		Back_Title = AL["Tier 8 Sets"];
		};
	["T8Priest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "T8SET";
		Back_Title = AL["Tier 8 Sets"];
		};
	["T8Rogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "T8SET";
		Back_Title = AL["Tier 8 Sets"];
		};
	["T8Shaman"] = {
		Title = BabbleClass["Shaman"];
		Next_Page = "T8Shaman2";
		Next_Title = BabbleClass["Shaman"];
		Back_Page = "T8SET";
		Back_Title = AL["Tier 8 Sets"];
		};
	["T8Shaman2"] = {
		Title = BabbleClass["Shaman"];
		Prev_Page = "T8Shaman";
		Prev_Title = BabbleClass["Paladin"];
		Back_Page = "T8SET";
		Back_Title = AL["Tier 8 Sets"];
		};
	["T8Warlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "T8SET";
		Back_Title = AL["Tier 8 Sets"];
		};
	["T8Warrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "T8SET";
		Back_Title = AL["Tier 8 Sets"];
		};
  --AQ40 Armor Sets
	["AQ40Druid"] = {
		Title = BabbleClass["Druid"];
		Back_Page = "AQ40SET";
		Back_Title = AL["Temple of Ahn'Qiraj Sets"];
		};
	["AQ40Hunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "AQ40SET";
		Back_Title = AL["Temple of Ahn'Qiraj Sets"];
		};
	["AQ40Mage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "AQ40SET";
		Back_Title = AL["Temple of Ahn'Qiraj Sets"];
		};
	["AQ40Paladin"] = {
		Title = BabbleClass["Paladin"];
		Back_Page = "AQ40SET";
		Back_Title = AL["Temple of Ahn'Qiraj Sets"];
		};
	["AQ40Priest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "AQ40SET";
		Back_Title = AL["Temple of Ahn'Qiraj Sets"];
		};
	["AQ40Rogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "AQ40SET";
		Back_Title = AL["Temple of Ahn'Qiraj Sets"];
		};
	["AQ40Shaman"] = {
		Title = BabbleClass["Shaman"];
		Back_Page = "AQ40SET";
		Back_Title = AL["Temple of Ahn'Qiraj Sets"];
		};
	["AQ40Warlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "AQ40SET";
		Back_Title = AL["Temple of Ahn'Qiraj Sets"];
		};
	["AQ40Warrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "AQ40SET";
		Back_Title = AL["Temple of Ahn'Qiraj Sets"];
		};
  --AQ20 Armor Sets
	["AQ20Druid"] = {
		Title = BabbleClass["Druid"];
		Back_Page = "AQ20SET";
		Back_Title = AL["Ruins of Ahn'Qiraj Sets"];
		};
	["AQ20Hunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "AQ20SET";
		Back_Title = AL["Ruins of Ahn'Qiraj Sets"];
		};
	["AQ20Mage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "AQ20SET";
		Back_Title = AL["Ruins of Ahn'Qiraj Sets"];
		};
	["AQ20Paladin"] = {
		Title = BabbleClass["Paladin"];
		Back_Page = "AQ20SET";
		Back_Title = AL["Ruins of Ahn'Qiraj Sets"];
		};
	["AQ20Priest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "AQ20SET";
		Back_Title = AL["Ruins of Ahn'Qiraj Sets"];
		};
	["AQ20Rogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "AQ20SET";
		Back_Title = AL["Ruins of Ahn'Qiraj Sets"];
		};
	["AQ20Shaman"] = {
		Title = BabbleClass["Shaman"];
		Back_Page = "AQ20SET";
		Back_Title = AL["Ruins of Ahn'Qiraj Sets"];
		};
	["AQ20Warlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "AQ20SET";
		Back_Title = AL["Ruins of Ahn'Qiraj Sets"];
		};
	["AQ20Warrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "AQ20SET";
		Back_Title = AL["Ruins of Ahn'Qiraj Sets"];
		};
  --ZG Armor Sets
	["ZGDruid"] = {
		Title = BabbleClass["Druid"];
		Back_Page = "ZGSET";
		Back_Title = AL["Zul'Gurub Sets"];
		};
	["ZGHunter"] = {
		Title = BabbleClass["Hunter"];
		Back_Page = "ZGSET";
		Back_Title = AL["Zul'Gurub Sets"];
		};
	["ZGMage"] = {
		Title = BabbleClass["Mage"];
		Back_Page = "ZGSET";
		Back_Title = AL["Zul'Gurub Sets"];
		};
	["ZGPaladin"] = {
		Title = BabbleClass["Paladin"];
		Back_Page = "ZGSET";
		Back_Title = AL["Zul'Gurub Sets"];
		};
	["ZGPriest"] = {
		Title = BabbleClass["Priest"];
		Back_Page = "ZGSET";
		Back_Title = AL["Zul'Gurub Sets"];
		};
	["ZGRogue"] = {
		Title = BabbleClass["Rogue"];
		Back_Page = "ZGSET";
		Back_Title = AL["Zul'Gurub Sets"];
		};
	["ZGShaman"] = {
		Title = BabbleClass["Shaman"];
		Back_Page = "ZGSET";
		Back_Title = AL["Zul'Gurub Sets"];
		};
	["ZGWarlock"] = {
		Title = BabbleClass["Warlock"];
		Back_Page = "ZGSET";
		Back_Title = AL["Zul'Gurub Sets"];
		};
	["ZGWarrior"] = {
		Title = BabbleClass["Warrior"];
		Back_Page = "ZGSET";
		Back_Title = AL["Zul'Gurub Sets"];
		};
  --Vanilla WoW Armor Sets
	["VWOWDeadmines"] = {
		Title = AL["Defias Leather"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWWailingC"] = {
		Title = AL["Embrace of the Viper"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWScarletM"] = {
		Title = AL["Chain of the Scarlet Crusade"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWBlackrockD"] = {
		Title = AL["The Gladiator"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWIronweave"] = {
		Title = AL["Ironweave Battlesuit"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWScholoCloth"] = {
		Title = AL["Necropile Raiment"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWScholoLeather"] = {
		Title = AL["Cadaverous Garb"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWScholoMail"] = {
		Title = AL["Bloodmail Regalia"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWScholoPlate"] = {
		Title = AL["Deathbone Guardian"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWStrat"] = {
		Title = AL["The Postmaster"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWScourgeInvasion"] = {
		Title = AL["Scourge Invasion"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWShardOfGods"] = {
		Title = AL["Shard of the Gods"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWZGRings"] = {
		Title = AL["Zul'Gurub Rings"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWSpiritofEskhandar"] = {
		Title = AL["Spirit of Eskhandar"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWHakkariBlades"] = {
		Title = AL["The Twin Blades of Hakkari"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWPrimalBlessing"] = {
		Title = AL["Primal Blessing"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWDalRend"] = {
		Title = AL["Dal'Rend's Arms"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["VWOWSpiderKiss"] = {
		Title = AL["Spider's Kiss"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
  --The Burning Crusade WoW Armor Sets
	["TBCLatrosFlurry"] = {
		Title = AL["Latro's Flurry"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["TBCTwinStars"] = {
		Title = AL["The Twin Stars"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
	["TBCAzzinothBlades"] = {
		Title = AL["The Twin Blades of Azzinoth"];
		Back_Page = "PRE60SET";
		Back_Title = AL["Pre 60 Sets"];
		};
  --Blacksmithing Plate Sets
	["ImperialPlate"] = {
		Title = AL["Imperial Plate"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["TheDarksoul"] = {
		Title = AL["The Darksoul"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["FelIronPlate"] = {
		Title = AL["Fel Iron Plate"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["AdamantiteB"] = {
		Title = AL["Adamantite Battlegear"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["FlameG"] = {
		Title = AL["Flame Guard"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["EnchantedAdaman"] = {
		Title = AL["Enchanted Adamantite Armor"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["KhoriumWard"] = {
		Title = AL["Khorium Ward"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["FaithFelsteel"] = {
		Title = AL["Faith in Felsteel"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["BurningRage"] = {
		Title = AL["Burning Rage"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
  --Blacksmithing Mail Sets
	["BloodsoulEmbrace"] = {
		Title = AL["Bloodsoul Embrace"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["FelIronChain"] = {
		Title = AL["Fel Iron Chain"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
  --Tailoring Sets
	["BloodvineG"] = {
		Title = AL["Bloodvine Garb"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["NeatherVest"] = {
		Title = AL["Netherweave Vestments"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["ImbuedNeather"] = {
		Title = AL["Imbued Netherweave"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["ArcanoVest"] = {
		Title = AL["Arcanoweave Vestments"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["TheUnyielding"] = {
		Title = AL["The Unyielding"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["WhitemendWis"] = {
		Title = AL["Whitemend Wisdom"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["SpellstrikeInfu"] = {
		Title = AL["Spellstrike Infusion"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["BattlecastG"] = {
		Title = AL["Battlecast Garb"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["SoulclothEm"] = {
		Title = AL["Soulcloth Embrace"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["PrimalMoon"] = {
		Title = AL["Primal Mooncloth"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["ShadowEmbrace"] = {
		Title = AL["Shadow's Embrace"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
	["SpellfireWrath"] = {
		Title = AL["Wrath of Spellfire"];
		Back_Page = "CRAFTSET";
		Back_Title = AL["Crafted Sets"];
		};
  --Leatherworking Sets
	["VolcanicArmor"] = {
		Title = AL["Volcanic Armor"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["IronfeatherArmor"] = {
		Title = AL["Ironfeather Armor"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["StormshroudArmor"] = {
		Title = AL["Stormshroud Armor"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["DevilsaurArmor"] = {
		Title = AL["Devilsaur Armor"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["BloodTigerH"] = {
		Title = AL["Blood Tiger Harness"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["PrimalBatskin"] = {
		Title = AL["Primal Batskin"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["WildDraenishA"] = {
		Title = AL["Wild Draenish Armor"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["ThickDraenicA"] = {
		Title = AL["Thick Draenic Armor"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["FelSkin"] = {
		Title = AL["Fel Skin"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["SClefthoof"] = {
		Title = AL["Strength of the Clefthoof"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["GreenDragonM"] = {
		Title = AL["Green Dragon Mail"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["BlueDragonM"] = {
		Title = AL["Blue Dragon Mail"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["BlackDragonM"] = {
		Title = AL["Black Dragon Mail"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["ScaledDraenicA"] = {
		Title = AL["Scaled Draenic Armor"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["FelscaleArmor"] = {
		Title = AL["Felscale Armor"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["FelstalkerArmor"] = {
		Title = AL["Felstalker Armor"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["NetherFury"] = {
		Title = AL["Fury of the Nether"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["PrimalIntent"] = {
		Title = AL["Primal Intent"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["WindhawkArmor"] = {
		Title = AL["Windhawk Armor"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["NetherscaleArmor"] = {
		Title = AL["Netherscale Armor"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
	["NetherstrikeArmor"] = {
		Title = AL["Netherstrike Armor"];
		Back_Page = "CRAFTSET2";
		Back_Title = AL["Crafted Sets"];
		};
  --Lvl 70 Instance Token Rewards
	["HardModeCloth"] = {
		Title = AtlasLoot_TableNames["HardModeCloth"][1];
		Back_Page = "70TOKENMENU";
		Back_Title = AL["Lvl 70 Instance Token Rewards"];
		};
	["HardModeLeather"] = {
		Title = AtlasLoot_TableNames["HardModeLeather"][1];
		Next_Page = "HardModeLeather2";
		Next_Title = AL["Lvl 70 Instance Rewards"].." - "..BabbleInventory["Leather"];
		Back_Page = "70TOKENMENU";
		Back_Title = AL["Lvl 70 Instance Token Rewards"];
		};
	["HardModeLeather2"] = {
		Title = AtlasLoot_TableNames["HardModeLeather2"][1];
		Prev_Page = "HardModeLeather";
		Prev_Title = AL["Lvl 70 Instance Rewards"].." - "..BabbleInventory["Leather"];
		Back_Page = "70TOKENMENU";
		Back_Title = AL["Lvl 70 Instance Token Rewards"];
		};
	["HardModeMail"] = {
		Title = AtlasLoot_TableNames["HardModeMail"][1];
		Back_Page = "70TOKENMENU";
		Back_Title = AL["Lvl 70 Instance Token Rewards"];
		};
	["HardModePlate"] = {
		Title = AtlasLoot_TableNames["HardModePlate"][1];
		Next_Page = "HardModePlate2";
		Next_Title = AL["Lvl 70 Instance Rewards"].." - "..BabbleInventory["Plate"];
		Back_Page = "70TOKENMENU";
		Back_Title = AL["Lvl 70 Instance Token Rewards"];
		};
	["HardModePlate2"] = {
		Title = AtlasLoot_TableNames["HardModePlate2"][1];
		Prev_Page = "HardModePlate";
		Prev_Title = AL["Lvl 70 Instance Rewards"].." - "..BabbleInventory["Plate"];
		Back_Page = "70TOKENMENU";
		Back_Title = AL["Lvl 70 Instance Token Rewards"];
		};
	["HardModeCloaks"] = {
		Title = AtlasLoot_TableNames["HardModeCloaks"][1];
		Back_Page = "70TOKENMENU";
		Back_Title = AL["Lvl 70 Instance Token Rewards"];
		};
	["HardModeResist"] = {
		Title = AtlasLoot_TableNames["HardModeResist"][1];
		Back_Page = "70TOKENMENU";
		Back_Title = AL["Lvl 70 Instance Token Rewards"];
		};
	["HardModeAccessories"] = {
		Title = AtlasLoot_TableNames["HardModeAccessories"][1];
		Next_Page = "HardModeAccessories2";
		Next_Title = AL["Lvl 70 Instance Rewards"].." - "..AL["Accessories"];
		Back_Page = "70TOKENMENU";
		Back_Title = AL["Lvl 70 Instance Token Rewards"];
		};
	["HardModeAccessories2"] = {
		Title = AtlasLoot_TableNames["HardModeAccessories2"][1];
		Prev_Page = "HardModeAccessories";
		Prev_Title = AL["Lvl 70 Instance Rewards"].." - "..AL["Accessories"];
		Back_Page = "70TOKENMENU";
		Back_Title = AL["Lvl 70 Instance Token Rewards"];
		};
	["HardModeRelic"] = {
		Title = AtlasLoot_TableNames["HardModeRelic"][1];
		Back_Page = "70TOKENMENU";
		Back_Title = AL["Lvl 70 Instance Token Rewards"];
		};
	["HardModeWeapons"] = {
		Title = AtlasLoot_TableNames["HardModeWeapons"][1];
		Back_Page = "70TOKENMENU";
		Back_Title = AL["Lvl 70 Instance Token Rewards"];
		};
	["HardModeArena"] = {
		Title = AtlasLoot_TableNames["HardModeAccessories"][1];
		Next_Page = "HardModeArena2";
		Next_Title = AL["Lvl 70 Instance Rewards"].." - "..AL["Arena Reward"];
		Back_Page = "70TOKENMENU";
		Back_Title = AL["Lvl 70 Instance Token Rewards"];
		};
	["HardModeArena2"] = {
		Title = AtlasLoot_TableNames["HardModeAccessories"][1];
		Prev_Page = "HardModeArena";
		Prev_Title = AL["Lvl 70 Instance Rewards"].." - "..AL["Arena Reward"];
		Back_Page = "70TOKENMENU";
		Back_Title = AL["Lvl 70 Instance Token Rewards"];
		};
  --Misc Collections
	["Artifacts"] = {
		Title = AL["Artifact Items"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["BlizzardCollectables1"] = {
		Title = AL["Blizzard Collectables"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["WOCCustoms1"] = {
		Title = AL["World of Chris Customs 1"];
		Next_Page = "WOCCustoms2";
		Next_Title = AL["World of Chris Customs 2"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["WOCCustoms2"] = {
		Title = AL["World of Chris Customs 2"];
		Next_Page = "WOCCustoms3";
		Next_Title = AL["World of Chris Customs 3"];
		Prev_Page = "WOCCustoms1";
		Prev_Title = AL["World of Chris Customs 1"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["WOCCustoms3"] = {
		Title = AL["World of Chris Customs 3"];
		Next_Page = "WOCCustoms4";
		Next_Title = AL["World of Chris Customs 4"];
		Prev_Page = "WOCCustoms2";
		Prev_Title = AL["World of Chris Customs 2"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["WOCCustoms4"] = {
		Title = AL["World of Chris Customs 4"];
		Next_Page = "WOCCustoms5";
		Next_Title = AL["World of Chris Customs 5"];
		Prev_Page = "WOCCustoms3";
		Prev_Title = AL["World of Chris Customs 3"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["WOCCustoms5"] = {
		Title = AL["World of Chris Customs 5"];
		Prev_Page = "WOCCustoms4";
		Prev_Title = AL["World of Chris Customs 4"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["ItemEnhancements1"] = {
		Title = AL["Item Enhancements 1"];
		Next_Page = "ItemEnhancements2";
		Next_Title = AL["Item Enhancements 2"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["ItemEnhancements2"] = {
		Title = AL["Item Enhancements 2"];
		Prev_Page = "ItemEnhancements1";
		Prev_Title = AL["Item Enhancements 1"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};

	["NewCustomsSearch1"] = {
		Title = AL["New Customs Search 1"];
		Next_Page = "NewCustomsSearch2";
		Next_Title = AL["New Customs Search 2"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["NewCustomsSearch2"] = {
		Title = AL["New Customs Search 2"];
		Next_Page = "NewCustomsSearch3";
		Next_Title = AL["New Customs Search 1"];
		Prev_Page = "NewCustomsSearch1";
		Prev_Title = AL["New Customs Search 3"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["NewCustomsSearch3"] = {
		Title = AL["New Customs Search 3"];
		Next_Page = "NewCustomsSearch4";
		Next_Title = AL["New Customs Search 2"];
		Prev_Page = "NewCustomsSearch2";
		Prev_Title = AL["New Customs Search 4"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["NewCustomsSearch4"] = {
		Title = AL["New Customs Search 4"];
		Next_Page = "NewCustomsSearch5";
		Next_Title = AL["New Customs Search 3"];
		Prev_Page = "NewCustomsSearch3";
		Prev_Title = AL["New Customs Search 5"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["NewCustomsSearch5"] = {
		Title = AL["New Customs Search 5"];
		Next_Page = "NewCustomsSearch6";
		Next_Title = AL["New Customs Search 4"];
		Prev_Page = "NewCustomsSearch4";
		Prev_Title = AL["New Customs Search 6"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["NewCustomsSearch6"] = {
		Title = AL["New Customs Search 6"];
		Next_Page = "NewCustomsSearch7";
		Next_Title = AL["New Customs Search 5"];
		Prev_Page = "NewCustomsSearch5";
		Prev_Title = AL["New Customs Search 7"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["NewCustomsSearch7"] = {
		Title = AL["New Customs Search 7"];
		Next_Page = "NewCustomsSearch8";
		Next_Title = AL["New Customs Search 6"];
		Prev_Page = "NewCustomsSearch6";
		Prev_Title = AL["New Customs Search 8"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["NewCustomsSearch8"] = {
		Title = AL["New Customs Search 8"];
		Next_Page = "NewCustomsSearch9";
		Next_Title = AL["New Customs Search 7"];
		Prev_Page = "NewCustomsSearch7";
		Prev_Title = AL["New Customs Search 9"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["NewCustomsSearch9"] = {
		Title = AL["New Customs Search 9"];
		Next_Page = "NewCustomsSearch10";
		Next_Title = AL["New Customs Search 8"];
		Prev_Page = "NewCustomsSearch8";
		Prev_Title = AL["New Customs Search 10"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["NewCustomsSearch10"] = {
		Title = AL["New Customs Search 10"];
		Next_Page = "NewCustomsSearch11";
		Next_Title = AL["New Customs Search 9"];
		Prev_Page = "NewCustomsSearch9";
		Prev_Title = AL["New Customs Search 11"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["NewCustomsSearch11"] = {
		Title = AL["New Customs Search 11"];
		Next_Page = "NewCustomsSearch12";
		Next_Title = AL["New Customs Search 10"];
		Prev_Page = "NewCustomsSearch10";
		Prev_Title = AL["New Customs Search 12"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["NewCustomsSearch12"] = {
		Title = AL["New Customs Search 12"];
		Next_Page = "NewCustomsSearch13";
		Next_Title = AL["New Customs Search 11"];
		Prev_Page = "NewCustomsSearch11";
		Prev_Title = AL["New Customs Search 13"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["NewCustomsSearch13"] = {
		Title = AL["New Customs Search 13"];
		Next_Page = "NewCustomsSearch14";
		Next_Title = AL["New Customs Search 12"];
		Prev_Page = "NewCustomsSearch12";
		Prev_Title = AL["New Customs Search 14"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["NewCustomsSearch14"] = {
		Title = AL["New Customs Search 14"];
		Prev_Page = "NewCustomsSearch13";
		Prev_Title = AL["New Customs Search 13"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};

	["FMCustoms1"] = {
		Title = AL["Frostmourne Customs"];
		Next_Page = "FMCustoms2";
		Next_Title = AL["Frostmourne Customs"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["FMCustoms2"] = {
		Title = AL["Frostmourne Customs"];
		Next_Page = "FMCustoms3";
		Next_Title = AL["Frostmourne Customs"];
		Prev_Page = "FMCustoms1";
		Prev_Title = AL["Frostmourne Customs"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["FMCustoms3"] = {
		Title = AL["Frostmourne Customs"];
		Next_Page = "FMCustoms4";
		Next_Title = AL["Frostmourne Customs"];
		Prev_Page = "FMCustoms2";
		Prev_Title = AL["Frostmourne Customs"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["FMCustoms4"] = {
		Title = AL["Frostmourne Customs"];
		Prev_Page = "FMCustoms3";
		Prev_Title = AL["Frostmourne Customs"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["SM2Loot1"] = {
		Title = AL["Scarlet Monastery 2 Loot"];
		Next_Page = "SM2Loot2";
		Next_Title = AL["Scarlet Monastery 2 Loot"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["SM2Loot2"] = {
		Title = AL["Scarlet Monastery 2 Loot"];
		Prev_Page = "SM2Loot1";
		Prev_Title = AL["Scarlet Monastery 2 Loot"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};


	["CardGame1"] = {
		Title = AL["Upper Deck Card Game Items"];
		Next_Page = "CardGame2";
		Next_Title = AL["Upper Deck Card Game Items"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["CardGame2"] = {
		Title = AL["Upper Deck Card Game Items"];
		Prev_Page = "CardGame1";
		Prev_Title = AL["Upper Deck Card Game Items"];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["CraftedWeapons1"] = {
		Title = AL["Crafted Epic Weapons"];
		Next_Page = "CraftedWeapons2";
		Next_Title = AL["Crafted Epic Weapons"];
		Back_Page = "CRAFTINGMENU";
		Back_Title = AL["Collections"];
		};
	["CraftedWeapons2"] = {
		Title = AL["Crafted Epic Weapons"];
		Prev_Page = "CraftedWeapons1";
		Prev_Title = AL["Crafted Epic Weapons"];
		Back_Page = "CRAFTINGMENU";
		Back_Title = AL["Collections"];
		};
	["Artifacts"] = {
		Title = AL["Artifact Items"];
		Next_Page = "Artifacts2";
		Next_Title = AtlasLoot_TableNames["Artifacts2"][1];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["Artifacts2"] = {
		Title = AL["Artifact Items"];
		Prev_Page = "Artifacts";
		Prev_Title = AtlasLoot_TableNames["Artifacts"][1];
		Next_Page = "Artifacts3";
		Next_Title = AtlasLoot_TableNames["Artifacts3"][1];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["Artifacts3"] = {
		Title = AL["Artifact Items"];
		Prev_Page = "Artifacts2";
		Prev_Title = AtlasLoot_TableNames["Artifacts2"][1];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["Legendaries"] = {
		Title = AL["Legendary Items"];
		Next_Page = "Legendaries2";
		Next_Title = AtlasLoot_TableNames["Legendaries2"][1];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["Legendaries2"] = {
		Title = AL["Legendary Items"];
		Prev_Page = "Legendaries";
		Prev_Title = AtlasLoot_TableNames["Legendaries"][1];
		Next_Page = "Legendaries3";
		Next_Title = AtlasLoot_TableNames["Legendaries3"][1];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["Legendaries3"] = {
		Title = AL["Legendary Items"];
		Prev_Page = "Legendaries2";
		Prev_Title = AtlasLoot_TableNames["Legendaries2"][1];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["RareMounts1"] = {
		Title = AtlasLoot_TableNames["RareMounts1"][1];
		Next_Page = "RareMounts2";
		Next_Title = AtlasLoot_TableNames["RareMounts2"][1];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["RareMounts2"] = {
		Title = AtlasLoot_TableNames["RareMounts2"][1];
		Prev_Page = "RareMounts1";
		Prev_Title = AtlasLoot_TableNames["RareMounts1"][1];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["Tabards1"] = {
		Title = AtlasLoot_TableNames["Tabards1"][1];
		Next_Page = "Tabards2";
		Next_Title = AtlasLoot_TableNames["Tabards2"][1];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["Tabards2"] = {
		Title = AtlasLoot_TableNames["Tabards2"][1];
		Prev_Page = "Tabards1";
		Prev_Title = AtlasLoot_TableNames["Tabards1"][1];
		Back_Page = "SETMENU";
		Back_Title = AL["Collections"];
		};
	["WorldEpics1"] = {
		Title = AtlasLoot_TableNames["WorldEpics1"][1];
		Next_Page = "WorldEpics2";
		Next_Title = AtlasLoot_TableNames["WorldEpics2"][1];
		Back_Page = "WORLDEPICS";
		Back_Title = AL["BoE World Epics"];
		};
	["WorldEpics2"] = {
		Title = AtlasLoot_TableNames["WorldEpics2"][1];
		Next_Page = "WorldEpics3";
		Next_Title = AtlasLoot_TableNames["WorldEpics3"][1];
		Prev_Page = "WorldEpics1";
		Prev_Title = AtlasLoot_TableNames["WorldEpics1"][1];
		Back_Page = "WORLDEPICS";
		Back_Title = AL["BoE World Epics"];
		};
	["WorldEpics3"] = {
		Title = AtlasLoot_TableNames["WorldEpics3"][1];
		Next_Page = "WorldEpics4";
		Next_Title = AtlasLoot_TableNames["WorldEpics4"][1];
		Prev_Page = "WorldEpics2";
		Prev_Title = AtlasLoot_TableNames["WorldEpics2"][1];
		Back_Page = "WORLDEPICS";
		Back_Title = AL["BoE World Epics"];
		};
	["WorldEpics4"] = {
		Title = AtlasLoot_TableNames["WorldEpics4"][1];
		Prev_Page = "WorldEpics3";
		Prev_Title = AtlasLoot_TableNames["WorldEpics3"][1];
		Back_Page = "WORLDEPICS";
		Back_Title = AL["BoE World Epics"];
		};
  --Misc
	["ZGTrash1"] = {
		Title = AtlasLoot_TableNames["ZGTrash1"][1];
		Next_Page = "ZGTrash2";
		Next_Title = AtlasLoot_TableNames["ZGTrash2"][1];
		};
	["ZGTrash2"] = {
		Title = AtlasLoot_TableNames["ZGTrash2"][1];
		Prev_Page = "ZGTrash1";
		Prev_Title = AtlasLoot_TableNames["ZGTrash1"][1];
		};

	["AQ40Trash1"] = {
		Title = AtlasLoot_TableNames["AQ40Trash1"][1];
		Next_Page = "AQ40Trash2";
		Next_Title = AtlasLoot_TableNames["AQ40Trash2"][1];
		};
	["AQ40Trash2"] = {
		Title = AtlasLoot_TableNames["AQ40Trash2"][1];
		Prev_Page = "AQ40Trash1";
		Prev_Title = AtlasLoot_TableNames["AQ40Trash1"][1];
		};

	["WEAventine"] = {
		Title = AtlasLoot_TableNames["WEAventine"][1];
		Next_Page = "WEAventine2";
		Next_Title = AtlasLoot_TableNames["WEAventine2"][1];
		};
	["WEAventine2"] = {
		Title = AtlasLoot_TableNames["WEAventine2"][1];
		Prev_Page = "WEAventine";
		Prev_Title = AtlasLoot_TableNames["WEAventine"][1];
		Next_Page = "WEMicrah";
		Next_Title = AtlasLoot_TableNames["WEMicrah"][1];
		};
	["WEMicrah"] = {
		Title = AtlasLoot_TableNames["WEMicrah"][1];
		Prev_Page = "WEAventine";
		Prev_Title = AtlasLoot_TableNames["WEAventine"][1];
		Next_Page = "WEMicrah2";
		Next_Title = AtlasLoot_TableNames["WEMicrah2"][1];
		};
	["WEMicrah2"] = {
		Title = AtlasLoot_TableNames["WEMicrah2"][1];
		Prev_Page = "WEMicrah";
		Prev_Title = AtlasLoot_TableNames["WEMicrah"][1];
		Next_Page = "WEMaximus";
		Next_Title = AtlasLoot_TableNames["WEMaximus"][1];
		};
	["WEMaximus"] = {
		Title = AtlasLoot_TableNames["WEMaximus"][1];
		Prev_Page = "WEMicrah";
		Prev_Title = AtlasLoot_TableNames["WEMicrah"][1];
		Next_Page = "WEMaximus2";
		Next_Title = AtlasLoot_TableNames["WEMaximus2"][1];
		};
	["WEMaximus2"] = {
		Title = AtlasLoot_TableNames["WEMaximus2"][1];
		Prev_Page = "WEMaximus";
		Prev_Title = AtlasLoot_TableNames["WEMaximus"][1];
		Next_Page = "WEAkaldor";
		Next_Title = AtlasLoot_TableNames["WEAkaldor"][1];
		};
	["WEAkaldor"] = {
		Title = AtlasLoot_TableNames["WEAkaldor"][1];
		Prev_Page = "WEMaximus";
		Prev_Title = AtlasLoot_TableNames["WEMaximus"][1];
		Next_Page = "WEAkaldor2";
		Next_Title = AtlasLoot_TableNames["WEAkaldor2"][1];
		};
	["WEAkaldor2"] = {
		Title = AtlasLoot_TableNames["WEAkaldor2"][1];
		Prev_Page = "WEAkaldor";
		Prev_Title = AtlasLoot_TableNames["WEAkaldor"][1];
		Next_Page = "WESeris";
		Next_Title = AtlasLoot_TableNames["WESeris"][1];
		};
	["WESeris"] = {
		Title = AtlasLoot_TableNames["WESeris"][1];
		Prev_Page = "WEAkaldor";
		Prev_Title = AtlasLoot_TableNames["WEAkaldor"][1];
		Next_Page = "WESeris2";
		Next_Title = AtlasLoot_TableNames["WESeris2"][1];
		};
	["WESeris2"] = {
		Title = AtlasLoot_TableNames["WESeris2"][1];
		Prev_Page = "WESeris";
		Prev_Title = AtlasLoot_TableNames["WESeris"][1];
		Next_Page = "WETrash";
		Next_Title = AtlasLoot_TableNames["WETrash"][1];
		};
	["WETrash"] = {
		Title = AtlasLoot_TableNames["WETrash"][1];
		Prev_Page = "WESeris";
		Prev_Title = AtlasLoot_TableNames["WESeris"][1];
		Next_Page = "WETrash2";
		Next_Title = AtlasLoot_TableNames["WETrash2"][1];
		};
	["WETrash2"] = {
		Title = AtlasLoot_TableNames["WETrash2"][1];
		Prev_Page = "WETrash";
		Prev_Title = AtlasLoot_TableNames["WETrash"][1];
		};

	--	SM
	["SMCathLarsh"] = {
		Title = AtlasLoot_TableNames["SMCathLarsh"][1];
		Next_Page = "SMCathDracien";
		Next_Title = AtlasLoot_TableNames["SMCathDracien"][1];
		};
	["SMCathDracien"] = {
		Title = AtlasLoot_TableNames["SMCathDracien"][1];
		Next_Page = "SMCathBerean";
		Next_Title = AtlasLoot_TableNames["SMCathBerean"][1];
		Prev_Page = "SMCathLarsh";
		Prev_Title = AtlasLoot_TableNames["SMCathLarsh"][1];
		};
	["SMCathBerean"] = {
		Title = AtlasLoot_TableNames["SMCathBerean"][1];
		Prev_Page = "SMCathDracien";
		Prev_Title = AtlasLoot_TableNames["SMCathDracien"][1];
		Next_Page = "SMCathMidas";
		Next_Title = AtlasLoot_TableNames["SMCathMidas"][1];
		};
	["SMCathMidas"] = {
		Title = AtlasLoot_TableNames["SMCathMidas"][1];
		Next_Page = "SMCathMidas2";
		Next_Title = AtlasLoot_TableNames["SMCathMidas2"][1];
		Prev_Page = "SMCathBerean";
		Prev_Title = AtlasLoot_TableNames["SMCathBerean"][1];
		};
	["SMCathMidas2"] = {
		Title = AtlasLoot_TableNames["SMCathMidas2"][1];
		Prev_Page = "SMCathMidas";
		Prev_Title = AtlasLoot_TableNames["SMCathMidas"][1];
		Next_Page = "SMCathMidasHC";
		Next_Title = AtlasLoot_TableNames["SMCathMidas2"][1];
		};
	["SMCathMidasHC"] = {
		-- Title = AtlasLoot_TableNames["SMCathMidasHC"][1];
		Title = "King Midas Heroic";
		Prev_Page = "SMCathMidas2";
		-- Prev_Title = AtlasLoot_TableNames["SSMCathMidas2"][1];
		};
	["BRDValroth"] = {
		Title = 'Valroth (page 1)';
		Next_Page = "BRDValroth2";
		-- Next_Title = AtlasLoot_TableNames["BRDCratoriun"][1];
		Next_Title = AtlasLoot_TableNames["BRDValroth2"][1];
		};
	["BRDValroth2"] = {
			Title = 'Valroth (page 2)';
			Prev_Page = "BRDValroth";
			Prev_Title = AtlasLoot_TableNames["BRDValroth"][1];
			Next_Page = "BRDCratoriun";
			Next_Title = AtlasLoot_TableNames["BRDCratoriun"][1];
	  };
	["BRDCratoriun"] = {
		Title = 'Cratoriun (page 1)';
		Next_Page = "BRDCratoriun2";
		Next_Title = AtlasLoot_TableNames["BRDCratoriun2"][1];
		Prev_Page = "BRDValroth";
		Prev_Title = AtlasLoot_TableNames["BRDValroth"][1];
		};
	["BRDCratoriun2"] = {
		Title = 'Cratoriun (page 2)';
		Next_Page = "BRDNerothar";
		Next_Title = AtlasLoot_TableNames["BRDNerothar"][1];
		Prev_Page = "BRDCratoriun";
		Prev_Title = AtlasLoot_TableNames["BRDCratoriun"][1];
		};
	["BRDNerothar"] = {
		Title = AtlasLoot_TableNames["BRDNerothar"][1] .. " (page 1)";
		Next_Page = "BRDNerothar2";
		Next_Title = AtlasLoot_TableNames["BRDNerothar2"][1];
		Prev_Page = "BRDCratoriun";
		Prev_Title = AtlasLoot_TableNames["BRDCratoriun"][1];
		};
	["BRDNerothar2"] = {
		Title = AtlasLoot_TableNames["BRDNerothar"][1] .. " (page 2)";
		Next_Page = "BRDGungo";
		Next_Title = AtlasLoot_TableNames["BRDGungo"][1];
		Prev_Page = "BRDNerothar";
		Prev_Title = AtlasLoot_TableNames["BRDNerothar"][1];
		};
	["BRDGungo"] = {
		Title = AtlasLoot_TableNames["BRDGungo"][1];
		Next_Page = "BRDVolcanus";
		Next_Title = AtlasLoot_TableNames["BRDVolcanus"][1];
		Prev_Page = "BRDNerothar";
		Prev_Title = AtlasLoot_TableNames["BRDNerothar"][1];
		};
	["BRDVolcanus"] = {
		Title = AtlasLoot_TableNames["BRDVolcanus"][1];
		Next_Page = "BRDEllcrys";
		Next_Title = AtlasLoot_TableNames["BRDEllcrys"][1];
		Prev_Page = "BRDGungo";
		Prev_Title = AtlasLoot_TableNames["BRDGungo"][1];
		};
	["BRDEllcrys"] = {
		Title = AtlasLoot_TableNames["BRDEllcrys"][1];
		Next_Page = "BRDBalgannon";
		Next_Title = AtlasLoot_TableNames["BRDBalgannon"][1];
		Prev_Page = "BRDVolcanus";
		Prev_Title = AtlasLoot_TableNames["BRDVolcanus"][1];
		};
	["BRDBalgannon"] = {
		Title = AtlasLoot_TableNames["BRDBalgannon"][1];
		Next_Page = "BRDWeezuz";
		Next_Title = AtlasLoot_TableNames["BRDWeezuz"][1];
		Prev_Page = "BRDEllcrys";
		Prev_Title = AtlasLoot_TableNames["BRDEllcrys"][1];
		};
	["BRDWeezuz"] = {
		Title = AtlasLoot_TableNames["BRDWeezuz"][1] .. " (page 1)";
		Next_Page = "BRDWeezuz2";
		Next_Title = AtlasLoot_TableNames["BRDWeezuz2"][1];
		Prev_Page = "BRDBalgannon";
		Prev_Title = AtlasLoot_TableNames["BRDBalgannon"][1];
		};
	["BRDWeezuz2"] = {
		Title = AtlasLoot_TableNames["BRDWeezuz2"][1] .. " (page 2)";
		Prev_Page = "BRDWeezuz";
		Prev_Title = AtlasLoot_TableNames["BRDWeezuz"][1];
		};
	["OnysLairDreadscale"] = {
		Title = AtlasLoot_TableNames["OnysLairDreadscale"][1];
		-- Next_Page = "OnysLairIllidan";
		-- Next_Title = AtlasLoot_TableNames["OnysLairIllidan"][1];
		Next_Page = "OnysLairDreadscaleHC";
		};
	["OnysLairDreadscaleHC"] = {
		Title = "Dreadscale Heroic" .. " (page 1)";
		Prev_Page = "OnysLairDreadscale";
		Next_Page = "OnysLairDreadscaleHC2";
		Next_Title = AtlasLoot_TableNames["OnysLairIllidan"][1];
		};
	["OnysLairDreadscaleHC2"] = {
		Title = "Dreadscale Heroic" .. " (page 2)";
		Prev_Page = "OnysLairDreadscaleHC";
		Next_Page = "OnysLairIllidan";
		Next_Title = AtlasLoot_TableNames["OnysLairIllidan"][1];
	};
	["OnysLairIllidan"] = {
		Title = AtlasLoot_TableNames["OnysLairIllidan"][1];
		Prev_Page = "OnysLairDreadscaleHC";
		Prev_Title = AtlasLoot_TableNames["OnysLairDreadscale"][1];
		};

	["VoidHoldDefender"] = {
		Title = AtlasLoot_TableNames["VoidHoldDefender"][1];
		Next_Page = "VoidHoldXaos";
		Next_Title = AtlasLoot_TableNames["VoidHoldXaos"][1];
		};
	["VoidHoldXaos"] = {
		Title = AtlasLoot_TableNames["VoidHoldXaos"][1];
		Prev_Page = "VoidHoldDefender";
		Prev_Title = AtlasLoot_TableNames["VoidHoldDefender"][1];
		};

	["ZFKastyon"] = {
		Title = AtlasLoot_TableNames["ZFKastyon"][1];
		};

	["NewRagnaros"] = {
		Title = AtlasLoot_TableNames["NewRagnaros"][1];
		};

	["Derpenstein"] = {
		Title = AtlasLoot_TableNames["Derpenstein"][1];
		Next_Page = "Guthrot";
		Next_Title = AtlasLoot_TableNames["Guthrot"][1];
		};
	["Guthrot"] = {
		Title = AtlasLoot_TableNames["Guthrot"][1];
		Prev_Page = "Derpenstein";
		Prev_Title = AtlasLoot_TableNames["Derpenstein"][1];
		};


	-- Grinchmas Grotto

	["GUnun"] = {
		Title = AtlasLoot_TableNames["GUnun"][1];
		Next_Page = "GGerald";
		Next_Title = AtlasLoot_TableNames["GGerald"][1];
		};

	["GGerald"] = {
		Title = AtlasLoot_TableNames["GGerald"][1];
		Next_Page = "GAdvisor";
		Next_Title = AtlasLoot_TableNames["GAdvisor"][1];
		Prev_Page = "GUnun";
		Prev_Title = AtlasLoot_TableNames["GUnun"][1];
		};

	["GAdvisor"] = {
		Title = AtlasLoot_TableNames["GAdvisor"][1];
		Next_Page = "GPalinho";
		Next_Title = AtlasLoot_TableNames["GPalinho"][1];
		Prev_Page = "GGerald";
		Prev_Title = AtlasLoot_TableNames["GGerald"][1];
		};

	["GPalinho"] = {
		Title = AtlasLoot_TableNames["GPalinho"][1];
		Next_Page = "GTelarion";
		Next_Title = AtlasLoot_TableNames["GTelarion"][1];
		Prev_Page = "GAdvisor";
		Prev_Title = AtlasLoot_TableNames["GAdvisor"][1];
		};

	["GTelarion"] = {
		Title = AtlasLoot_TableNames["GTelarion"][1];
		Next_Page = "GShadeOfNaal";
		Next_Title = AtlasLoot_TableNames["GShadeOfNaal"][1];
		Prev_Page = "GPalinho";
		Prev_Title = AtlasLoot_TableNames["GPalinho"][1];
		};

	["GShadeOfNaal"] = {
		Title = AtlasLoot_TableNames["GShadeOfNaal"][1];
		Next_Page = "GGrinchmas";
		Next_Title = AtlasLoot_TableNames["GGrinchmas"][1];
		Prev_Page = "GTelarion";
		Prev_Title = AtlasLoot_TableNames["GTelarion"][1];
		};

	["GGrinchmas"] = {
		Title = AtlasLoot_TableNames["GGrinchmas"][1];
		Prev_Page = "GShadeOfNaal";
		Prev_Title = AtlasLoot_TableNames["GShadeOfNaal"][1];
	};


	["BTNajentus"] = {
		Title = AtlasLoot_TableNames["BTNajentus"][1];
		Next_Page = "BTSupremus";
		Next_Title = AtlasLoot_TableNames["BTSupremus"][1];
		};
	["BTSupremus"] = {
		Title = AtlasLoot_TableNames["BTSupremus"][1];
		Next_Page = "BTGorefiend";
		Next_Title = AtlasLoot_TableNames["BTGorefiend"][1];
		Prev_Page = "BTNajentus";
		Prev_Title = AtlasLoot_TableNames["BTNajentus"][1];
		};
	["BTGorefiend"] = {
		Title = AtlasLoot_TableNames["BTGorefiend"][1];
		Next_Page = "BTBloodboil";
		Next_Title = AtlasLoot_TableNames["BTBloodboil"][1];
		Prev_Page = "BTSupremus";
		Prev_Title = AtlasLoot_TableNames["BTSupremus"][1];
		};
	["BTBloodboil"] = {
		Title = AtlasLoot_TableNames["BTBloodboil"][1];
		Next_Page = "BTAkama";
		Next_Title = AtlasLoot_TableNames["BTAkama"][1];
		Prev_Page = "BTGorefiend";
		Prev_Title = AtlasLoot_TableNames["BTGorefiend"][1];
		};
	["BTAkama"] = {
		Title = AtlasLoot_TableNames["BTAkama"][1];
		Next_Page = "BTEssencofSouls";
		Next_Title = AtlasLoot_TableNames["BTEssencofSouls"][1];
		Prev_Page = "BTBloodboil";
		Prev_Title = AtlasLoot_TableNames["BTBloodboil"][1];
		};
	["BTEssencofSouls"] = {
		Title = AtlasLoot_TableNames["BTEssencofSouls"][1];
		Next_Page = "BTShahraz";
		Next_Title = AtlasLoot_TableNames["BTShahraz"][1];
		Prev_Page = "BTAkama";
		Prev_Title = AtlasLoot_TableNames["BTAkama"][1];
		};
	["BTShahraz"] = {
		Title = AtlasLoot_TableNames["BTShahraz"][1];
		Next_Page = "BTCouncil";
		Next_Title = AtlasLoot_TableNames["BTCouncil"][1];
		Prev_Page = "BTEssencofSouls";
		Prev_Title = AtlasLoot_TableNames["BTEssencofSouls"][1];
		};
	["BTCouncil"] = {
		Title = AtlasLoot_TableNames["BTCouncil"][1];
		Next_Page = "BTIllidanStormrage";
		Next_Title = AtlasLoot_TableNames["BTIllidanStormrage"][1];
		Prev_Page = "BTShahraz";
		Prev_Title = AtlasLoot_TableNames["BTShahraz"][1];
		};
	["BTIllidanStormrage"] = {
		Title = AtlasLoot_TableNames["BTIllidanStormrage"][1];
		Prev_Page = "BTCouncil";
		Prev_Title = AtlasLoot_TableNames["BTCouncil"][1];
		};


	["ZANalorakk"] = {
		Title = AtlasLoot_TableNames["ZANalorakk"][1];
		Next_Page = "ZAAkilZon";
		Next_Title = AtlasLoot_TableNames["ZAAkilZon"][1];
		};
	["ZAAkilZon"] = {
		Title = AtlasLoot_TableNames["ZAAkilZon"][1];
		Next_Page = "ZAJanAlai";
		Next_Title = AtlasLoot_TableNames["ZAJanAlai"][1];
		Prev_Page = "ZANalorakk";
		Prev_Title = AtlasLoot_TableNames["ZANalorakk"][1];
		};
	["ZAJanAlai"] = {
		Title = AtlasLoot_TableNames["ZAJanAlai"][1];
		Next_Page = "ZAHalazzi";
		Next_Title = AtlasLoot_TableNames["ZAHalazzi"][1];
		Prev_Page = "ZAAkilZon";
		Prev_Title = AtlasLoot_TableNames["ZAAkilZon"][1];
		};
	["ZAHalazzi"] = {
		Title = AtlasLoot_TableNames["ZAHalazzi"][1];
		Next_Page = "ZAMalacrass";
		Next_Title = AtlasLoot_TableNames["ZAMalacrass"][1];
		Prev_Page = "ZAJanAlai";
		Prev_Title = AtlasLoot_TableNames["ZAJanAlai"][1];
		};
	["ZAMalacrass"] = {
		Title = AtlasLoot_TableNames["ZAMalacrass"][1];
		Next_Page = "ZAZuljin";
		Next_Title = AtlasLoot_TableNames["ZAZuljin"][1];
		Prev_Page = "ZAHalazzi";
		Prev_Title = AtlasLoot_TableNames["ZAHalazzi"][1];
		};
	["ZAZuljin"] = {
		Title = AtlasLoot_TableNames["ZAZuljin"][1];
		Prev_Page = "ZAMalacrass";
		Prev_Title = AtlasLoot_TableNames["ZAMalacrass"][1];
		};


	["TKEyeAlar"] = {
		Title = AtlasLoot_TableNames["TKEyeAlar"][1];
		Next_Page = "TKEyeVoidReaver";
		Next_Title = AtlasLoot_TableNames["TKEyeVoidReaver"][1];
		};
	["TKEyeVoidReaver"] = {
		Title = AtlasLoot_TableNames["TKEyeVoidReaver"][1];
		Next_Page = "TKEyeSolarian";
		Next_Title = AtlasLoot_TableNames["TKEyeSolarian"][1];
		Prev_Page = "TKEyeAlar";
		Prev_Title = AtlasLoot_TableNames["TKEyeAlar"][1];
		};
	["TKEyeSolarian"] = {
		Title = AtlasLoot_TableNames["TKEyeSolarian"][1];
		Next_Page = "TKEyeKaelthas";
		Next_Title = AtlasLoot_TableNames["TKEyeKaelthas"][1];
		Prev_Page = "TKEyeVoidReaver";
		Prev_Title = AtlasLoot_TableNames["TKEyeVoidReaver"][1];
		};
	["TKEyeKaelthas"] = {
		Title = AtlasLoot_TableNames["TKEyeKaelthas"][1];
		Prev_Page = "TKEyeSolarian";
		Prev_Title = AtlasLoot_TableNames["TKEyeSolarian"][1];
		};


	["CFRSerpentHydross"] = {
		Title = AtlasLoot_TableNames["CFRSerpentHydross"][1];
		Next_Page = "CFRSerpentLurker";
		Next_Title = AtlasLoot_TableNames["CFRSerpentLurker"][1];
		};
	["CFRSerpentLurker"] = {
		Title = AtlasLoot_TableNames["CFRSerpentLurker"][1];
		Next_Page = "CFRSerpentLeotheras";
		Next_Title = AtlasLoot_TableNames["CFRSerpentLeotheras"][1];
		Prev_Page = "CFRSerpentHydross";
		Prev_Title = AtlasLoot_TableNames["CFRSerpentHydross"][1];
		};
	["CFRSerpentLeotheras"] = {
		Title = AtlasLoot_TableNames["CFRSerpentLeotheras"][1];
		Next_Page = "CFRSerpentKarathress";
		Next_Title = AtlasLoot_TableNames["CFRSerpentKarathress"][1];
		Prev_Page = "CFRSerpentLurker";
		Prev_Title = AtlasLoot_TableNames["CFRSerpentLurker"][1];
		};
	["CFRSerpentKarathress"] = {
		Title = AtlasLoot_TableNames["CFRSerpentKarathress"][1];
		Next_Page = "CFRSerpentMorogrim";
		Next_Title = AtlasLoot_TableNames["CFRSerpentMorogrim"][1];
		Prev_Page = "CFRSerpentLeotheras";
		Prev_Title = AtlasLoot_TableNames["CFRSerpentLeotheras"][1];
		};
	["CFRSerpentMorogrim"] = {
		Title = AtlasLoot_TableNames["CFRSerpentMorogrim"][1];
		Next_Page = "CFRSerpentVashj";
		Next_Title = AtlasLoot_TableNames["CFRSerpentVashj"][1];
		Prev_Page = "CFRSerpentKarathress";
		Prev_Title = AtlasLoot_TableNames["CFRSerpentKarathress"][1];
		};
	["CFRSerpentVashj"] = {
		Title = AtlasLoot_TableNames["CFRSerpentVashj"][1];
		Prev_Page = "CFRSerpentMorogrim";
		Prev_Title = AtlasLoot_TableNames["CFRSerpentMorogrim"][1];
		};


	["GruulsLairHighKingMaulgar"] = {
		Title = AtlasLoot_TableNames["GruulsLairHighKingMaulgar"][1];
		Next_Page = "GruulGruul";
		Next_Title = AtlasLoot_TableNames["GruulGruul"][1];
		};
	["GruulGruul"] = {
		Title = AtlasLoot_TableNames["GruulGruul"][1];
		Prev_Page = "GruulsLairHighKingMaulgar";
		Prev_Title = AtlasLoot_TableNames["GruulsLairHighKingMaulgar"][1];
		};


	["KaraNamed"] = {
		Title = AtlasLoot_TableNames["KaraNamed"][1];
		Next_Page = "KaraAttumen";
		Next_Title = AtlasLoot_TableNames["KaraAttumen"][1];
		};
	["KaraAttumen"] = {
		Title = AtlasLoot_TableNames["KaraAttumen"][1];
		Next_Page = "KaraMoroes";
		Next_Title = AtlasLoot_TableNames["KaraMoroes"][1];
		Prev_Page = "KaraNamed";
		Prev_Title = AtlasLoot_TableNames["KaraNamed"][1];
		};
	["KaraMoroes"] = {
		Title = AtlasLoot_TableNames["KaraMoroes"][1];
		Next_Page = "KaraMaiden";
		Next_Title = AtlasLoot_TableNames["KaraMaiden"][1];
		Prev_Page = "KaraAttumen";
		Prev_Title = AtlasLoot_TableNames["KaraAttumen"][1];
		};
	["KaraMaiden"] = {
		Title = AtlasLoot_TableNames["KaraMaiden"][1];
		Next_Page = "KaraOperaEvent";
		Next_Title = AtlasLoot_TableNames["KaraOperaEvent"][1];
		Prev_Page = "KaraMoroes";
		Prev_Title = AtlasLoot_TableNames["KaraMoroes"][1];
		};
	["KaraOperaEvent"] = {
		Title = AtlasLoot_TableNames["KaraOperaEvent"][1];
		Next_Page = "KaraCurator";
		Next_Title = AtlasLoot_TableNames["KaraCurator"][1];
		Prev_Page = "KaraMaiden";
		Prev_Title = AtlasLoot_TableNames["KaraMaiden"][1];
		};
	["KaraCurator"] = {
		Title = AtlasLoot_TableNames["KaraCurator"][1];
		Next_Page = "KaraIllhoof";
		Next_Title = AtlasLoot_TableNames["KaraIllhoof"][1];
		Prev_Page = "KaraOperaEvent";
		Prev_Title = AtlasLoot_TableNames["KaraOperaEvent"][1];
		};
	["KaraIllhoof"] = {
		Title = AtlasLoot_TableNames["KaraIllhoof"][1];
		Next_Page = "KaraAran";
		Next_Title = AtlasLoot_TableNames["KaraAran"][1];
		Prev_Page = "KaraCurator";
		Prev_Title = AtlasLoot_TableNames["KaraCurator"][1];
		};
	["KaraAran"] = {
		Title = AtlasLoot_TableNames["KaraAran"][1];
		Next_Page = "KaraNetherspite";
		Next_Title = AtlasLoot_TableNames["KaraNetherspite"][1];
		Prev_Page = "KaraIllhoof";
		Prev_Title = AtlasLoot_TableNames["KaraIllhoof"][1];
		};
	["KaraNetherspite"] = {
		Title = AtlasLoot_TableNames["KaraNetherspite"][1];
		Next_Page = "KaraChess";
		Next_Title = AtlasLoot_TableNames["KaraChess"][1];
		Prev_Page = "KaraAran";
		Prev_Title = AtlasLoot_TableNames["KaraAran"][1];
		};
	["KaraChess"] = {
		Title = AtlasLoot_TableNames["KaraChess"][1];
		Next_Page = "KaraNightbane";
		Next_Title = AtlasLoot_TableNames["KaraNightbane"][1];
		Prev_Page = "KaraNetherspite";
		Prev_Title = AtlasLoot_TableNames["KaraNetherspite"][1];
		};
	["KaraNightbane"] = {
		Title = AtlasLoot_TableNames["KaraNightbane"][1];
		Next_Page = "KaraPrince";
		Next_Title = AtlasLoot_TableNames["KaraPrince"][1];
		Prev_Page = "KaraChess";
		Prev_Title = AtlasLoot_TableNames["KaraChess"][1];
		};
	["KaraPrince"] = {
		Title = AtlasLoot_TableNames["KaraPrince"][1];
		Prev_Page = "KaraNightbane";
		Prev_Title = AtlasLoot_TableNames["KaraNightbane"][1];
		};


	["SPKalecgos"] = {
		Title = AtlasLoot_TableNames["SPKalecgos"][1];
		Next_Page = "SPBrutallus";
		Next_Title = AtlasLoot_TableNames["SPBrutallus"][1];
		};
	["SPBrutallus"] = {
		Title = AtlasLoot_TableNames["SPBrutallus"][1];
		Next_Page = "SPFelmyst";
		Next_Title = AtlasLoot_TableNames["SPFelmyst"][1];
		Prev_Page = "SPKalecgos";
		Prev_Title = AtlasLoot_TableNames["SPKalecgos"][1];
		};
	["SPFelmyst"] = {
		Title = AtlasLoot_TableNames["SPFelmyst"][1];
		Next_Page = "SPEredarTwins";
		Next_Title = AtlasLoot_TableNames["SPEredarTwins"][1];
		Prev_Page = "SPBrutallus";
		Prev_Title = AtlasLoot_TableNames["SPBrutallus"][1];
		};
	["SPEredarTwins"] = {
		Title = AtlasLoot_TableNames["SPEredarTwins"][1];
		Next_Page = "SPMuru";
		Next_Title = AtlasLoot_TableNames["SPMuru"][1];
		Prev_Page = "SPFelmyst";
		Prev_Title = AtlasLoot_TableNames["SPFelmyst"][1];
		};
	["SPMuru"] = {
		Title = AtlasLoot_TableNames["SPMuru"][1];
		Next_Page = "SPKiljaeden";
		Next_Title = AtlasLoot_TableNames["SPKiljaeden"][1];
		Prev_Page = "SPEredarTwins";
		Prev_Title = AtlasLoot_TableNames["SPEredarTwins"][1];
		};
	["SPKiljaeden"] = {
		Title = AtlasLoot_TableNames["SPKiljaeden"][1];
		Prev_Page = "SPMuru";
		Prev_Title = AtlasLoot_TableNames["SPMuru"][1];
		};
	["SPPatterns1"] = {
		Title = AL["SP Patterns/Plans"];
		Next_Page = "SPPatterns2";
		Next_Title = AL["SP Patterns/Plans"];
		};
	["SPPatterns2"] = {
		Title = AL["SP Patterns/Plans"];
		Prev_Page = "SPPatterns1";
		Prev_Title = AL["SP Patterns/Plans"];
		};


	["MountHyjalWinterchill"] = {
		Title = AtlasLoot_TableNames["MountHyjalWinterchill"][1];
		Next_Page = "MountHyjalAnetheron";
		Next_Title = AtlasLoot_TableNames["MountHyjalAnetheron"][1];
		};
	["MountHyjalAnetheron"] = {
		Title = AtlasLoot_TableNames["MountHyjalAnetheron"][1];
		Next_Page = "MountHyjalKazrogal";
		Next_Title = AtlasLoot_TableNames["MountHyjalKazrogal"][1];
		Prev_Page = "MountHyjalWinterchill";
		Prev_Title = AtlasLoot_TableNames["MountHyjalWinterchill"][1];
		};
	["MountHyjalKazrogal"] = {
		Title = AtlasLoot_TableNames["MountHyjalKazrogal"][1];
		Next_Page = "MountHyjalAzgalor";
		Next_Title = AtlasLoot_TableNames["MountHyjalAzgalor"][1];
		Prev_Page = "MountHyjalAnetheron";
		Prev_Title = AtlasLoot_TableNames["MountHyjalAnetheron"][1];
		};
	["MountHyjalAzgalor"] = {
		Title = AtlasLoot_TableNames["MountHyjalAzgalor"][1];
		Next_Page = "MountHyjalArchimonde";
		Next_Title = AtlasLoot_TableNames["MountHyjalArchimonde"][1];
		Prev_Page = "MountHyjalKazrogal";
		Prev_Title = AtlasLoot_TableNames["MountHyjalKazrogal"][1];
		};
	["MountHyjalArchimonde"] = {
		Title = AtlasLoot_TableNames["MountHyjalArchimonde"][1];
		Prev_Page = "MountHyjalAzgalor";
		Prev_Title = AtlasLoot_TableNames["MountHyjalAzgalor"][1];
		};

	["AuchCryptsShirrak"] = {
		Title = AtlasLoot_TableNames["AuchCryptsShirrak"][1];
		Next_Page = "AuchCryptsExarch";
		Next_Title = AtlasLoot_TableNames["AuchCryptsExarch"][1];
		};
	["AuchCryptsExarch"] = {
		Title = AtlasLoot_TableNames["AuchCryptsExarch"][1];
		Next_Page = "AuchCryptsAvatar";
		Next_Title = AtlasLoot_TableNames["AuchCryptsAvatar"][1];
		Prev_Page = "AuchCryptsShirrak";
		Prev_Title = AtlasLoot_TableNames["AuchCryptsShirrak"][1];
		};
	["AuchCryptsAvatar"] = {
		Title = AtlasLoot_TableNames["AuchCryptsAvatar"][1];
		Prev_Page = "AuchCryptsExarch";
		Prev_Title = AtlasLoot_TableNames["AuchCryptsExarch"][1];
		};

	["AuchManaPandemonius"] = {
		Title = AtlasLoot_TableNames["AuchManaPandemonius"][1];
		Next_Page = "AuchManaTavarok";
		Next_Title = AtlasLoot_TableNames["AuchManaTavarok"][1];
		};
	["AuchManaTavarok"] = {
		Title = AtlasLoot_TableNames["AuchManaTavarok"][1];
		Next_Page = "AuchManaNexusPrince";
		Next_Title = AtlasLoot_TableNames["AuchManaNexusPrince"][1];
		Prev_Page = "AuchManaPandemonius";
		Prev_Title = AtlasLoot_TableNames["AuchManaPandemonius"][1];
		};
	["AuchManaNexusPrince"] = {
		Title = AtlasLoot_TableNames["AuchManaNexusPrince"][1];
		Next_Page = "AuchManaYor";
		Next_Title = AtlasLoot_TableNames["AuchManaYor"][1];
		Prev_Page = "AuchManaTavarok";
		Prev_Title = AtlasLoot_TableNames["AuchManaTavarok"][1];
		};
	["AuchManaYor"] = {
		Title = AtlasLoot_TableNames["AuchManaYor"][1];
		Prev_Page = "AuchManaNexusPrince";
		Prev_Title = AtlasLoot_TableNames["AuchManaNexusPrince"][1];
		};

	["AuchSethekkDarkweaver"] = {
		Title = AtlasLoot_TableNames["AuchSethekkDarkweaver"][1];
		Next_Page = "AuchSethekkTalonKing";
		Next_Title = AtlasLoot_TableNames["AuchSethekkTalonKing"][1];
		};
	["AuchSethekkTalonKing"] = {
		Title = AtlasLoot_TableNames["AuchSethekkTalonKing"][1];
		Prev_Page = "AuchSethekkDarkweaver";
		Prev_Title = AtlasLoot_TableNames["AuchSethekkDarkweaver"][1];
		};

	["AuchShadowHellmaw"] = {
		Title = AtlasLoot_TableNames["AuchShadowHellmaw"][1];
		Next_Page = "AuchShadowBlackheart";
		Next_Title = AtlasLoot_TableNames["AuchShadowBlackheart"][1];
		};
	["AuchShadowBlackheart"] = {
		Title = AtlasLoot_TableNames["AuchShadowBlackheart"][1];
		Next_Page = "AuchShadowGrandmaster";
		Next_Title = AtlasLoot_TableNames["AuchShadowGrandmaster"][1];
		Prev_Page = "AuchShadowHellmaw";
		Prev_Title = AtlasLoot_TableNames["AuchShadowHellmaw"][1];
		};
	["AuchShadowGrandmaster"] = {
		Title = AtlasLoot_TableNames["AuchShadowGrandmaster"][1];
		Next_Page = "AuchShadowMurmur";
		Next_Title = AtlasLoot_TableNames["AuchShadowMurmur"][1];
		Prev_Page = "AuchShadowBlackheart";
		Prev_Title = AtlasLoot_TableNames["AuchShadowBlackheart"][1];
		};
	["AuchShadowMurmur"] = {
		Title = AtlasLoot_TableNames["AuchShadowMurmur"][1];
		Prev_Page = "AuchShadowGrandmaster";
		Prev_Title = AtlasLoot_TableNames["AuchShadowGrandmaster"][1];
		};

	["CFRSlaveMennu"] = {
		Title = AtlasLoot_TableNames["CFRSlaveMennu"][1];
		Next_Page = "CFRSlaveRokmar";
		Next_Title = AtlasLoot_TableNames["CFRSlaveRokmar"][1];
		};
	["CFRSlaveRokmar"] = {
		Title = AtlasLoot_TableNames["CFRSlaveRokmar"][1];
		Next_Page = "CFRSlaveQuagmirran";
		Next_Title = AtlasLoot_TableNames["CFRSlaveQuagmirran"][1];
		Prev_Page = "CFRSlaveMennu";
		Prev_Title = AtlasLoot_TableNames["CFRSlaveMennu"][1];
		};
	["CFRSlaveQuagmirran"] = {
		Title = AtlasLoot_TableNames["CFRSlaveQuagmirran"][1];
		Prev_Page = "CFRSlaveRokmar";
		Prev_Title = AtlasLoot_TableNames["CFRSlaveRokmar"][1];
		};

	["CFRSteamThespia"] = {
		Title = AtlasLoot_TableNames["CFRSteamThespia"][1];
		Next_Page = "CFRSteamSteamrigger";
		Next_Title = AtlasLoot_TableNames["CFRSteamSteamrigger"][1];
		};
	["CFRSteamSteamrigger"] = {
		Title = AtlasLoot_TableNames["CFRSteamSteamrigger"][1];
		Next_Page = "CFRSteamWarlord";
		Next_Title = AtlasLoot_TableNames["CFRSteamWarlord"][1];
		Prev_Page = "CFRSteamThespia";
		Prev_Title = AtlasLoot_TableNames["CFRSteamThespia"][1];
		};
	["CFRSteamWarlord"] = {
		Title = AtlasLoot_TableNames["CFRSteamWarlord"][1];
		Prev_Page = "CFRSteamSteamrigger";
		Prev_Title = AtlasLoot_TableNames["CFRSteamSteamrigger"][1];
		};

	["CFRUnderHungarfen"] = {
		Title = AtlasLoot_TableNames["CFRUnderHungarfen"][1];
		Next_Page = "CFRUnderGhazan";
		Next_Title = AtlasLoot_TableNames["CFRUnderGhazan"][1];
		};
	["CFRUnderGhazan"] = {
		Title = AtlasLoot_TableNames["CFRUnderGhazan"][1];
		Next_Page = "CFRUnderSwamplord";
		Next_Title = AtlasLoot_TableNames["CFRUnderSwamplord"][1];
		Prev_Page = "CFRUnderHungarfen";
		Prev_Title = AtlasLoot_TableNames["CFRUnderHungarfen"][1];
		};
	["CFRUnderSwamplord"] = {
		Title = AtlasLoot_TableNames["CFRUnderSwamplord"][1];
		Next_Page = "CFRUnderStalker";
		Next_Title = AtlasLoot_TableNames["CFRUnderStalker"][1];
		Prev_Page = "CFRUnderGhazan";
		Prev_Title = AtlasLoot_TableNames["CFRUnderGhazan"][1];
		};
	["CFRUnderStalker"] = {
		Title = AtlasLoot_TableNames["CFRUnderStalker"][1];
		Prev_Page = "CFRUnderSwamplord";
		Prev_Title = AtlasLoot_TableNames["CFRUnderSwamplord"][1];
		};

	["CoTMorassDeja"] = {
		Title = AtlasLoot_TableNames["CoTMorassDeja"][1];
		Next_Page = "CoTMorassTemporus";
		Next_Title = AtlasLoot_TableNames["CoTMorassTemporus"][1];
		};
	["CoTMorassTemporus"] = {
		Title = AtlasLoot_TableNames["CoTMorassTemporus"][1];
		Next_Page = "CoTMorassAeonus";
		Next_Title = AtlasLoot_TableNames["CoTMorassAeonus"][1];
		Prev_Page = "CoTMorassDeja";
		Prev_Title = AtlasLoot_TableNames["CoTMorassDeja"][1];
		};
	["CoTMorassAeonus"] = {
		Title = AtlasLoot_TableNames["CoTMorassAeonus"][1];
		Prev_Page = "CoTMorassTemporus";
		Prev_Title = AtlasLoot_TableNames["CoTMorassTemporus"][1];
		};

	["CoTHillsbradDrake"] = {
		Title = AtlasLoot_TableNames["CoTHillsbradDrake"][1];
		Next_Page = "CoTHillsbradSkarloc";
		Next_Title = AtlasLoot_TableNames["CoTHillsbradSkarloc"][1];
		};
	["CoTHillsbradSkarloc"] = {
		Title = AtlasLoot_TableNames["CoTHillsbradSkarloc"][1];
		Next_Page = "CoTHillsbradHunter";
		Next_Title = AtlasLoot_TableNames["CoTHillsbradHunter"][1];
		Prev_Page = "CoTHillsbradDrake";
		Prev_Title = AtlasLoot_TableNames["CoTHillsbradDrake"][1];
		};
	["CoTHillsbradHunter"] = {
		Title = AtlasLoot_TableNames["CoTHillsbradHunter"][1];
		Prev_Page = "CoTHillsbradSkarloc";
		Prev_Title = AtlasLoot_TableNames["CoTHillsbradSkarloc"][1];
		};

	["HCFurnaceMaker"] = {
		Title = AtlasLoot_TableNames["HCFurnaceMaker"][1];
		Next_Page = "HCFurnaceBroggok";
		Next_Title = AtlasLoot_TableNames["HCFurnaceBroggok"][1];
		};
	["HCFurnaceBroggok"] = {
		Title = AtlasLoot_TableNames["HCFurnaceBroggok"][1];
		Next_Page = "HCFurnaceBreaker";
		Next_Title = AtlasLoot_TableNames["HCFurnaceBreaker"][1];
		Prev_Page = "HCFurnaceMaker";
		Prev_Title = AtlasLoot_TableNames["HCFurnaceMaker"][1];
		};
	["HCFurnaceBreaker"] = {
		Title = AtlasLoot_TableNames["HCFurnaceBreaker"][1];
		Prev_Page = "HCFurnaceBroggok";
		Prev_Title = AtlasLoot_TableNames["HCFurnaceBroggok"][1];
		};

	["HCRampWatchkeeper"] = {
		Title = AtlasLoot_TableNames["HCRampWatchkeeper"][1];
		Next_Page = "HCRampOmor";
		Next_Title = AtlasLoot_TableNames["HCRampOmor"][1];
		};
	["HCRampOmor"] = {
		Title = AtlasLoot_TableNames["HCRampOmor"][1];
		Next_Page = "HCRampVazruden";
		Next_Title = AtlasLoot_TableNames["HCRampVazruden"][1];
		Prev_Page = "HCRampWatchkeeper";
		Prev_Title = AtlasLoot_TableNames["HCRampWatchkeeper"][1];
		};
	["HCRampVazruden"] = {
		Title = AtlasLoot_TableNames["HCRampVazruden"][1];
		Next_Page = "HCRampNazan";
		Next_Title = AtlasLoot_TableNames["HCRampNazan"][1];
		Prev_Page = "HCRampOmor";
		Prev_Title = AtlasLoot_TableNames["HCRampOmor"][1];
		};
	["HCRampNazan"] = {
		Title = AtlasLoot_TableNames["HCRampNazan"][1];
		Next_Page = "HCRampFelIronChest";
		Next_Title = AtlasLoot_TableNames["HCRampFelIronChest"][1];
		Prev_Page = "HCRampVazruden";
		Prev_Title = AtlasLoot_TableNames["HCRampVazruden"][1];
		};
	["HCRampFelIronChest"] = {
		Title = AtlasLoot_TableNames["HCRampFelIronChest"][1];
		Prev_Page = "HCRampNazan";
		Prev_Title = AtlasLoot_TableNames["HCRampNazan"][1];
		};

	["HCHallsNethekurse"] = {
		Title = AtlasLoot_TableNames["HCHallsNethekurse"][1];
		Next_Page = "HCHallsPorung";
		Next_Title = AtlasLoot_TableNames["HCHallsPorung"][1];
		};
	["HCHallsPorung"] = {
		Title = AtlasLoot_TableNames["HCHallsPorung"][1];
		Next_Page = "HCHallsOmrogg";
		Next_Title = AtlasLoot_TableNames["HCHallsOmrogg"][1];
		Prev_Page = "HCHallsNethekurse";
		Prev_Title = AtlasLoot_TableNames["HCHallsNethekurse"][1];
		};
	["HCHallsOmrogg"] = {
		Title = AtlasLoot_TableNames["HCHallsOmrogg"][1];
		Next_Page = "HCHallsKargath";
		Next_Title = AtlasLoot_TableNames["HCHallsKargath"][1];
		Prev_Page = "HCHallsPorung";
		Prev_Title = AtlasLoot_TableNames["HCHallsPorung"][1];
		};
	["HCHallsKargath"] = {
		Title = AtlasLoot_TableNames["HCHallsKargath"][1];
		Prev_Page = "HCHallsOmrogg";
		Prev_Title = AtlasLoot_TableNames["HCHallsOmrogg"][1];
		};

	["SMTFireheart"] = {
		Title = AtlasLoot_TableNames["SMTFireheart"][1];
		Next_Page = "SMTVexallus";
		Next_Title = AtlasLoot_TableNames["SMTVexallus"][1];
		};
	["SMTVexallus"] = {
		Title = AtlasLoot_TableNames["SMTVexallus"][1];
		Next_Page = "SMTDelrissa";
		Next_Title = AtlasLoot_TableNames["SMTDelrissa"][1];
		Prev_Page = "SMTFireheart";
		Prev_Title = AtlasLoot_TableNames["SMTFireheart"][1];
		};
	["SMTDelrissa"] = {
		Title = AtlasLoot_TableNames["SMTDelrissa"][1];
		Next_Page = "SMTKaelthas";
		Next_Title = AtlasLoot_TableNames["SMTKaelthas"][1];
		Prev_Page = "SMTVexallus";
		Prev_Title = AtlasLoot_TableNames["SMTVexallus"][1];
		};
	["SMTKaelthas"] = {
		Title = AtlasLoot_TableNames["SMTKaelthas"][1];
		Prev_Page = "SMTDelrissa";
		Prev_Title = AtlasLoot_TableNames["SMTDelrissa"][1];
		};

	["TKArcUnbound"] = {
		Title = AtlasLoot_TableNames["TKArcUnbound"][1];
		Next_Page = "TKArcDalliah";
		Next_Title = AtlasLoot_TableNames["TKArcDalliah"][1];
		};
	["TKArcDalliah"] = {
		Title = AtlasLoot_TableNames["TKArcDalliah"][1];
		Next_Page = "TKArcScryer";
		Next_Title = AtlasLoot_TableNames["TKArcScryer"][1];
		Prev_Page = "TKArcUnbound";
		Prev_Title = AtlasLoot_TableNames["TKArcUnbound"][1];
		};
	["TKArcScryer"] = {
		Title = AtlasLoot_TableNames["TKArcScryer"][1];
		Next_Page = "TKArcHarbinger";
		Next_Title = AtlasLoot_TableNames["TKArcHarbinger"][1];
		Prev_Page = "TKArcDalliah";
		Prev_Title = AtlasLoot_TableNames["TKArcDalliah"][1];
		};
	["TKArcHarbinger"] = {
		Title = AtlasLoot_TableNames["TKArcHarbinger"][1];
		Prev_Page = "TKArcScryer";
		Prev_Title = AtlasLoot_TableNames["TKArcScryer"][1];
		};

	["TKBotSarannis"] = {
		Title = AtlasLoot_TableNames["TKBotSarannis"][1];
		Next_Page = "TKBotFreywinn";
		Next_Title = AtlasLoot_TableNames["TKBotFreywinn"][1];
		};
	["TKBotFreywinn"] = {
		Title = AtlasLoot_TableNames["TKBotFreywinn"][1];
		Next_Page = "TKBotThorngrin";
		Next_Title = AtlasLoot_TableNames["TKBotThorngrin"][1];
		Prev_Page = "TKBotSarannis";
		Prev_Title = AtlasLoot_TableNames["TKBotSarannis"][1];
		};
	["TKBotThorngrin"] = {
		Title = AtlasLoot_TableNames["TKBotThorngrin"][1];
		Next_Page = "TKBotLaj";
		Next_Title = AtlasLoot_TableNames["TKBotLaj"][1];
		Prev_Page = "TKBotFreywinn";
		Prev_Title = AtlasLoot_TableNames["TKBotFreywinn"][1];
		};
	["TKBotLaj"] = {
		Title = AtlasLoot_TableNames["TKBotLaj"][1];
		Next_Page = "TKBotSplinter";
		Next_Title = AtlasLoot_TableNames["TKBotSplinter"][1];
		Prev_Page = "TKBotThorngrin";
		Prev_Title = AtlasLoot_TableNames["TKBotThorngrin"][1];
		};
	["TKBotSplinter"] = {
		Title = AtlasLoot_TableNames["TKBotSplinter"][1];
		Prev_Page = "TKBotLaj";
		Prev_Title = AtlasLoot_TableNames["TKBotLaj"][1];
		};

	["TKMechGyro"] = {
		Title = AtlasLoot_TableNames["TKMechGyro"][1];
		Next_Page = "TKMechIron";
		Next_Title = AtlasLoot_TableNames["TKMechIron"][1];
		};
	["TKMechIron"] = {
		Title = AtlasLoot_TableNames["TKMechIron"][1];
		Next_Page = "TKMechCacheoftheLegion";
		Next_Title = AtlasLoot_TableNames["TKMechCacheoftheLegion"][1];
		Prev_Page = "TKMechGyro";
		Prev_Title = AtlasLoot_TableNames["TKMechGyro"][1];
		};
	["TKMechCacheoftheLegion"] = {
		Title = AtlasLoot_TableNames["TKMechCacheoftheLegion"][1];
		Next_Page = "TKMechCapacitus";
		Next_Title = AtlasLoot_TableNames["TKMechCapacitus"][1];
		Prev_Page = "TKMechIron";
		Prev_Title = AtlasLoot_TableNames["TKMechIron"][1];
		};
	["TKMechCapacitus"] = {
		Title = AtlasLoot_TableNames["TKMechCapacitus"][1];
		Next_Page = "TKMechSepethrea";
		Next_Title = AtlasLoot_TableNames["TKMechSepethrea"][1];
		Prev_Page = "TKMechCacheoftheLegion";
		Prev_Title = AtlasLoot_TableNames["TKMechCacheoftheLegion"][1];
		};
	["TKMechSepethrea"] = {
		Title = AtlasLoot_TableNames["TKMechSepethrea"][1];
		Next_Page = "TKMechCalc";
		Next_Title = AtlasLoot_TableNames["TKMechCalc"][1];
		Prev_Page = "TKMechCapacitus";
		Prev_Title = AtlasLoot_TableNames["TKMechCapacitus"][1];
		};
	["TKMechCalc"] = {
		Title = AtlasLoot_TableNames["TKMechCalc"][1];
		Prev_Page = "TKMechSepethrea";
		Prev_Title = AtlasLoot_TableNames["TKMechSepethrea"][1];
		};

	["AuchCryptsShirrakHEROIC"] = {
		Title = AtlasLoot_TableNames["AuchCryptsShirrakHEROIC"][1];
		Next_Page = "AuchCryptsExarchHEROIC";
		Next_Title = AtlasLoot_TableNames["AuchCryptsExarchHEROIC"][1];
		};
	["AuchCryptsExarchHEROIC"] = {
		Title = AtlasLoot_TableNames["AuchCryptsExarchHEROIC"][1];
		Prev_Page = "AuchCryptsShirrakHEROIC";
		Prev_Title = AtlasLoot_TableNames["AuchCryptsShirrakHEROIC"][1];
		};

	["AuchManaPandemoniusHEROIC"] = {
		Title = AtlasLoot_TableNames["AuchManaPandemoniusHEROIC"][1];
		Next_Page = "AuchManaTavarokHEROIC";
		Next_Title = AtlasLoot_TableNames["AuchManaTavarokHEROIC"][1];
		};
	["AuchManaTavarokHEROIC"] = {
		Title = AtlasLoot_TableNames["AuchManaTavarokHEROIC"][1];
		Next_Page = "AuchManaNexusPrinceHEROIC";
		Next_Title = AtlasLoot_TableNames["AuchManaNexusPrinceHEROIC"][1];
		Prev_Page = "AuchManaPandemoniusHEROIC";
		Prev_Title = AtlasLoot_TableNames["AuchManaPandemoniusHEROIC"][1];
		};
	["AuchManaNexusPrinceHEROIC"] = {
		Title = AtlasLoot_TableNames["AuchManaNexusPrinceHEROIC"][1];
		Prev_Page = "AuchManaTavarokHEROIC";
		Prev_Title = AtlasLoot_TableNames["AuchManaTavarokHEROIC"][1];
		};

	["AuchSethekkDarkweaverHEROIC"] = {
		Title = AtlasLoot_TableNames["AuchSethekkDarkweaverHEROIC"][1];
		Next_Page = "AuchSethekkTalonKingHEROIC";
		Next_Title = AtlasLoot_TableNames["AuchSethekkTalonKingHEROIC"][1];
		};
	["AuchSethekkTalonKingHEROIC"] = {
		Title = AtlasLoot_TableNames["AuchSethekkTalonKingHEROIC"][1];
		Prev_Page = "AuchSethekkDarkweaverHEROIC";
		Prev_Title = AtlasLoot_TableNames["AuchSethekkDarkweaverHEROIC"][1];
		};

	["AuchShadowHellmawHEROIC"] = {
		Title = AtlasLoot_TableNames["AuchShadowHellmawHEROIC"][1];
		Next_Page = "AuchShadowBlackheartHEROIC";
		Next_Title = AtlasLoot_TableNames["AuchShadowBlackheartHEROIC"][1];
		};
	["AuchShadowBlackheartHEROIC"] = {
		Title = AtlasLoot_TableNames["AuchShadowBlackheartHEROIC"][1];
		Next_Page = "AuchShadowGrandmasterHEROIC";
		Next_Title = AtlasLoot_TableNames["AuchShadowGrandmasterHEROIC"][1];
		Prev_Page = "AuchShadowHellmawHEROIC";
		Prev_Title = AtlasLoot_TableNames["AuchShadowHellmawHEROIC"][1];
		};
	["AuchShadowGrandmasterHEROIC"] = {
		Title = AtlasLoot_TableNames["AuchShadowGrandmasterHEROIC"][1];
		Next_Page = "AuchShadowMurmurHEROIC";
		Next_Title = AtlasLoot_TableNames["AuchShadowMurmurHEROIC"][1];
		Prev_Page = "AuchShadowBlackheartHEROIC";
		Prev_Title = AtlasLoot_TableNames["AuchShadowBlackheartHEROIC"][1];
		};
	["AuchShadowMurmurHEROIC"] = {
		Title = AtlasLoot_TableNames["AuchShadowMurmurHEROIC"][1];
		Prev_Page = "AuchShadowGrandmasterHEROIC";
		Prev_Title = AtlasLoot_TableNames["AuchShadowGrandmasterHEROIC"][1];
		};

	["CFRSlaveMennuHEROIC"] = {
		Title = AtlasLoot_TableNames["CFRSlaveMennuHEROIC"][1];
		Next_Page = "CFRSlaveRokmarHEROIC";
		Next_Title = AtlasLoot_TableNames["CFRSlaveRokmarHEROIC"][1];
		};
	["CFRSlaveRokmarHEROIC"] = {
		Title = AtlasLoot_TableNames["CFRSlaveRokmarHEROIC"][1];
		Next_Page = "CFRSlaveQuagmirranHEROIC";
		Next_Title = AtlasLoot_TableNames["CFRSlaveQuagmirranHEROIC"][1];
		Prev_Page = "CFRSlaveMennuHEROIC";
		Prev_Title = AtlasLoot_TableNames["CFRSlaveMennuHEROIC"][1];
		};
	["CFRSlaveQuagmirranHEROIC"] = {
		Title = AtlasLoot_TableNames["CFRSlaveQuagmirranHEROIC"][1];
		Prev_Page = "CFRSlaveRokmarHEROIC";
		Prev_Title = AtlasLoot_TableNames["CFRSlaveRokmarHEROIC"][1];
		};

	["CFRSteamThespiaHEROIC"] = {
		Title = AtlasLoot_TableNames["CFRSteamThespiaHEROIC"][1];
		Next_Page = "CFRSteamSteamriggerHEROIC";
		Next_Title = AtlasLoot_TableNames["CFRSteamSteamriggerHEROIC"][1];
		};
	["CFRSteamSteamriggerHEROIC"] = {
		Title = AtlasLoot_TableNames["CFRSteamSteamriggerHEROIC"][1];
		Next_Page = "CFRSteamWarlordHEROIC";
		Next_Title = AtlasLoot_TableNames["CFRSteamWarlordHEROIC"][1];
		Prev_Page = "CFRSteamThespiaHEROIC";
		Prev_Title = AtlasLoot_TableNames["CFRSteamThespiaHEROIC"][1];
		};
	["CFRSteamWarlordHEROIC"] = {
		Title = AtlasLoot_TableNames["CFRSteamWarlordHEROIC"][1];
		Prev_Page = "CFRSteamSteamriggerHEROIC";
		Prev_Title = AtlasLoot_TableNames["CFRSteamSteamriggerHEROIC"][1];
		};

	["CFRUnderHungarfenHEROIC"] = {
		Title = AtlasLoot_TableNames["CFRUnderHungarfenHEROIC"][1];
		Next_Page = "CFRUnderGhazanHEROIC";
		Next_Title = AtlasLoot_TableNames["CFRUnderGhazanHEROIC"][1];
		};
	["CFRUnderGhazanHEROIC"] = {
		Title = AtlasLoot_TableNames["CFRUnderGhazanHEROIC"][1];
		Next_Page = "CFRUnderSwamplordHEROIC";
		Next_Title = AtlasLoot_TableNames["CFRUnderSwamplordHEROIC"][1];
		Prev_Page = "CFRUnderHungarfenHEROIC";
		Prev_Title = AtlasLoot_TableNames["CFRUnderHungarfenHEROIC"][1];
		};
	["CFRUnderSwamplordHEROIC"] = {
		Title = AtlasLoot_TableNames["CFRUnderSwamplordHEROIC"][1];
		Next_Page = "CFRUnderStalkerHEROIC";
		Next_Title = AtlasLoot_TableNames["CFRUnderStalkerHEROIC"][1];
		Prev_Page = "CFRUnderGhazanHEROIC";
		Prev_Title = AtlasLoot_TableNames["CFRUnderGhazanHEROIC"][1];
		};
	["CFRUnderStalkerHEROIC"] = {
		Title = AtlasLoot_TableNames["CFRUnderStalkerHEROIC"][1];
		Prev_Page = "CFRUnderSwamplordHEROIC";
		Prev_Title = AtlasLoot_TableNames["CFRUnderSwamplordHEROIC"][1];
		};

	["CoTMorassDejaHEROIC"] = {
		Title = AtlasLoot_TableNames["CoTMorassDejaHEROIC"][1];
		Next_Page = "CoTMorassTemporusHEROIC";
		Next_Title = AtlasLoot_TableNames["CoTMorassTemporusHEROIC"][1];
		};
	["CoTMorassTemporusHEROIC"] = {
		Title = AtlasLoot_TableNames["CoTMorassTemporusHEROIC"][1];
		Next_Page = "CoTMorassAeonusHEROIC";
		Next_Title = AtlasLoot_TableNames["CoTMorassAeonusHEROIC"][1];
		Prev_Page = "CoTMorassDejaHEROIC";
		Prev_Title = AtlasLoot_TableNames["CoTMorassDejaHEROIC"][1];
		};
	["CoTMorassAeonusHEROIC"] = {
		Title = AtlasLoot_TableNames["CoTMorassAeonusHEROIC"][1];
		Prev_Page = "CoTMorassTemporusHEROIC";
		Prev_Title = AtlasLoot_TableNames["CoTMorassTemporusHEROIC"][1];
		};

	["CoTHillsbradDrakeHEROIC"] = {
		Title = AtlasLoot_TableNames["CoTHillsbradDrakeHEROIC"][1];
		Next_Page = "CoTHillsbradSkarlocHEROIC";
		Next_Title = AtlasLoot_TableNames["CoTHillsbradSkarlocHEROIC"][1];
		};
	["CoTHillsbradSkarlocHEROIC"] = {
		Title = AtlasLoot_TableNames["CoTHillsbradSkarlocHEROIC"][1];
		Next_Page = "CoTHillsbradHunterHEROIC";
		Next_Title = AtlasLoot_TableNames["CoTHillsbradHunterHEROIC"][1];
		Prev_Page = "CoTHillsbradDrakeHEROIC";
		Prev_Title = AtlasLoot_TableNames["CoTHillsbradDrakeHEROIC"][1];
		};
	["CoTHillsbradHunterHEROIC"] = {
		Title = AtlasLoot_TableNames["CoTHillsbradHunterHEROIC"][1];
		Prev_Page = "CoTHillsbradSkarlocHEROIC";
		Prev_Title = AtlasLoot_TableNames["CoTHillsbradSkarlocHEROIC"][1];
		};

	["HCFurnaceMakerHEROIC"] = {
		Title = AtlasLoot_TableNames["HCFurnaceMakerHEROIC"][1];
		Next_Page = "HCFurnaceBroggokHEROIC";
		Next_Title = AtlasLoot_TableNames["HCFurnaceBroggokHEROIC"][1];
		};
	["HCFurnaceBroggokHEROIC"] = {
		Title = AtlasLoot_TableNames["HCFurnaceBroggokHEROIC"][1];
		Next_Page = "HCFurnaceBreakerHEROIC";
		Next_Title = AtlasLoot_TableNames["HCFurnaceBreakerHEROIC"][1];
		Prev_Page = "HCFurnaceMakerHEROIC";
		Prev_Title = AtlasLoot_TableNames["HCFurnaceMakerHEROIC"][1];
		};
	["HCFurnaceBreakerHEROIC"] = {
		Title = AtlasLoot_TableNames["HCFurnaceBreakerHEROIC"][1];
		Prev_Page = "HCFurnaceBroggokHEROIC";
		Prev_Title = AtlasLoot_TableNames["HCFurnaceBroggokHEROIC"][1];
		};

	["HCRampWatchkeeperHEROIC"] = {
		Title = AtlasLoot_TableNames["HCRampWatchkeeperHEROIC"][1];
		Next_Page = "HCRampOmorHEROIC";
		Next_Title = AtlasLoot_TableNames["HCRampOmorHEROIC"][1];
		};
	["HCRampOmorHEROIC"] = {
		Title = AtlasLoot_TableNames["HCRampOmor"][1];
		Next_Page = "HCRampVazruden";
		Next_Title = AtlasLoot_TableNames["HCRampVazruden"][1];
		Prev_Page = "HCRampWatchkeeperHEROIC";
		Prev_Title = AtlasLoot_TableNames["HCRampWatchkeeperHEROIC"][1];
		};
	["HCRampVazruden"] = {
		Title = AtlasLoot_TableNames["HCRampVazruden"][1];
		Next_Page = "HCRampNazan";
		Next_Title = AtlasLoot_TableNames["HCRampNazan"][1];
		Prev_Page = "HCRampOmor";
		Prev_Title = AtlasLoot_TableNames["HCRampOmor"][1];
		};
	["HCRampNazan"] = {
		Title = AtlasLoot_TableNames["HCRampNazan"][1];
		Next_Page = "HCRampFelIronChestHEROIC";
		Next_Title = AtlasLoot_TableNames["HCRampFelIronChestHEROIC"][1];
		Prev_Page = "HCRampVazruden";
		Prev_Title = AtlasLoot_TableNames["HCRampVazruden"][1];
		};
	["HCRampFelIronChestHEROIC"] = {
		Title = AtlasLoot_TableNames["HCRampFelIronChestHEROIC"][1];
		Prev_Page = "HCRampNazan";
		Prev_Title = AtlasLoot_TableNames["HCRampNazan"][1];
		};

	["HCHallsNethekurseHEROIC"] = {
		Title = AtlasLoot_TableNames["HCHallsNethekurseHEROIC"][1];
		Next_Page = "HCHallsPorung";
		Next_Title = AtlasLoot_TableNames["HCHallsPorung"][1];
		};
	["HCHallsPorung"] = {
		Title = AtlasLoot_TableNames["HCHallsPorung"][1];
		Next_Page = "HCHallsOmroggHEROIC";
		Next_Title = AtlasLoot_TableNames["HCHallsOmroggHEROIC"][1];
		Prev_Page = "HCHallsNethekurseHEROIC";
		Prev_Title = AtlasLoot_TableNames["HCHallsNethekurseHEROIC"][1];
		};
	["HCHallsOmroggHEROIC"] = {
		Title = AtlasLoot_TableNames["HCHallsOmroggHEROIC"][1];
		Next_Page = "HCHallsKargathHEROIC";
		Next_Title = AtlasLoot_TableNames["HCHallsKargathHEROIC"][1];
		Prev_Page = "HCHallsPorung";
		Prev_Title = AtlasLoot_TableNames["HCHallsPorung"][1];
		};
	["HCHallsKargathHEROIC"] = {
		Title = AtlasLoot_TableNames["HCHallsKargathHEROIC"][1];
		Prev_Page = "HCHallsOmroggHEROIC";
		Prev_Title = AtlasLoot_TableNames["HCHallsOmroggHEROIC"][1];
		};

	["SMTFireheartHEROIC"] = {
		Title = AtlasLoot_TableNames["SMTFireheartHEROIC"][1];
		Next_Page = "SMTVexallusHEROIC";
		Next_Title = AtlasLoot_TableNames["SMTVexallusHEROIC"][1];
		};
	["SMTVexallusHEROIC"] = {
		Title = AtlasLoot_TableNames["SMTVexallusHEROIC"][1];
		Next_Page = "SMTDelrissaHEROIC";
		Next_Title = AtlasLoot_TableNames["SMTDelrissaHEROIC"][1];
		Prev_Page = "SMTFireheartHEROIC";
		Prev_Title = AtlasLoot_TableNames["SMTFireheartHEROIC"][1];
		};
	["SMTDelrissaHEROIC"] = {
		Title = AtlasLoot_TableNames["SMTDelrissaHEROIC"][1];
		Next_Page = "SMTKaelthasHEROIC";
		Next_Title = AtlasLoot_TableNames["SMTKaelthasHEROIC"][1];
		Prev_Page = "SMTVexallusHEROIC";
		Prev_Title = AtlasLoot_TableNames["SMTVexallusHEROIC"][1];
		};
	["SMTKaelthasHEROIC"] = {
		Title = AtlasLoot_TableNames["SMTKaelthasHEROIC"][1];
		Prev_Page = "SMTDelrissaHEROIC";
		Prev_Title = AtlasLoot_TableNames["SMTDelrissaHEROIC"][1];
		};

	["TKArcUnboundHEROIC"] = {
		Title = AtlasLoot_TableNames["TKArcUnboundHEROIC"][1];
		Next_Page = "TKArcDalliahHEROIC";
		Next_Title = AtlasLoot_TableNames["TKArcDalliahHEROIC"][1];
		};
	["TKArcDalliahHEROIC"] = {
		Title = AtlasLoot_TableNames["TKArcDalliahHEROIC"][1];
		Next_Page = "TKArcScryerHEROIC";
		Next_Title = AtlasLoot_TableNames["TKArcScryerHEROIC"][1];
		Prev_Page = "TKArcUnboundHEROIC";
		Prev_Title = AtlasLoot_TableNames["TKArcUnboundHEROIC"][1];
		};
	["TKArcScryerHEROIC"] = {
		Title = AtlasLoot_TableNames["TKArcScryerHEROIC"][1];
		Next_Page = "TKArcHarbingerHEROIC";
		Next_Title = AtlasLoot_TableNames["TKArcHarbingerHEROIC"][1];
		Prev_Page = "TKArcDalliahHEROIC";
		Prev_Title = AtlasLoot_TableNames["TKArcDalliahHEROIC"][1];
		};
	["TKArcHarbingerHEROIC"] = {
		Title = AtlasLoot_TableNames["TKArcHarbingerHEROIC"][1];
		Prev_Page = "TKArcScryerHEROIC";
		Prev_Title = AtlasLoot_TableNames["TKArcScryerHEROIC"][1];
		};

	["TKBotSarannisHEROIC"] = {
		Title = AtlasLoot_TableNames["TKBotSarannisHEROIC"][1];
		Next_Page = "TKBotFreywinnHEROIC";
		Next_Title = AtlasLoot_TableNames["TKBotFreywinnHEROIC"][1];
		};
	["TKBotFreywinnHEROIC"] = {
		Title = AtlasLoot_TableNames["TKBotFreywinnHEROIC"][1];
		Next_Page = "TKBotThorngrinHEROIC";
		Next_Title = AtlasLoot_TableNames["TKBotThorngrinHEROIC"][1];
		Prev_Page = "TKBotSarannisHEROIC";
		Prev_Title = AtlasLoot_TableNames["TKBotSarannisHEROIC"][1];
		};
	["TKBotThorngrinHEROIC"] = {
		Title = AtlasLoot_TableNames["TKBotThorngrinHEROIC"][1];
		Next_Page = "TKBotLajHEROIC";
		Next_Title = AtlasLoot_TableNames["TKBotLajHEROIC"][1];
		Prev_Page = "TKBotFreywinnHEROIC";
		Prev_Title = AtlasLoot_TableNames["TKBotFreywinnHEROIC"][1];
		};
	["TKBotLajHEROIC"] = {
		Title = AtlasLoot_TableNames["TKBotLajHEROIC"][1];
		Next_Page = "TKBotSplinterHEROIC";
		Next_Title = AtlasLoot_TableNames["TKBotSplinterHEROIC"][1];
		Prev_Page = "TKBotThorngrinHEROIC";
		Prev_Title = AtlasLoot_TableNames["TKBotThorngrinHEROIC"][1];
		};
	["TKBotSplinterHEROIC"] = {
		Title = AtlasLoot_TableNames["TKBotSplinterHEROIC"][1];
		Prev_Page = "TKBotLajHEROIC";
		Prev_Title = AtlasLoot_TableNames["TKBotLajHEROIC"][1];
		};

	["TKMechCapacitusHEROIC"] = {
		Title = AtlasLoot_TableNames["TKMechCapacitusHEROIC"][1];
		Next_Page = "TKMechSepethreaHEROIC";
		Next_Title = AtlasLoot_TableNames["TKMechSepethreaHEROIC"][1];
		Prev_Page = "TKMechCacheoftheLegion";
		Prev_Title = AtlasLoot_TableNames["TKMechCacheoftheLegion"][1];
		};
	["TKMechSepethreaHEROIC"] = {
		Title = AtlasLoot_TableNames["TKMechSepethreaHEROIC"][1];
		Next_Page = "TKMechCalcHEROIC";
		Next_Title = AtlasLoot_TableNames["TKMechCalcHEROIC"][1];
		Prev_Page = "TKMechCapacitusHEROIC";
		Prev_Title = AtlasLoot_TableNames["TKMechCapacitusHEROIC"][1];
		};
	["TKMechCalcHEROIC"] = {
		Title = AtlasLoot_TableNames["TKMechCalcHEROIC"][1];
		Prev_Page = "TKMechSepethreaHEROIC";
		Prev_Title = AtlasLoot_TableNames["TKMechSepethreaHEROIC"][1];
		};





	["BFDGhamoora"] = {
		Title = AtlasLoot_TableNames["BFDGhamoora"][1];
		Next_Page = "BFDQuestItems";
		Next_Title = AtlasLoot_TableNames["BFDQuestItems"][1];
		};
	["BFDQuestItems"] = {
		Title = AtlasLoot_TableNames["BFDQuestItems"][1];
		Next_Page = "BFDLadySarevess";
		Next_Title = AtlasLoot_TableNames["BFDLadySarevess"][1];
		Prev_Page = "BFDGhamoora";
		Prev_Title = AtlasLoot_TableNames["BFDGhamoora"][1];
		};
	["BFDLadySarevess"] = {
		Title = AtlasLoot_TableNames["BFDLadySarevess"][1];
		Next_Page = "BFDGelihast";
		Next_Title = AtlasLoot_TableNames["BFDGelihast"][1];
		Prev_Page = "BFDQuestItems";
		Prev_Title = AtlasLoot_TableNames["BFDQuestItems"][1];
		};
	["BFDGelihast"] = {
		Title = AtlasLoot_TableNames["BFDGelihast"][1];
		Next_Page = "BFDBaronAquanis";
		Next_Title = AtlasLoot_TableNames["BFDBaronAquanis"][1];
		Prev_Page = "BFDLadySarevess";
		Prev_Title = AtlasLoot_TableNames["BFDLadySarevess"][1];
		};
	["BFDBaronAquanis"] = {
		Title = AtlasLoot_TableNames["BFDBaronAquanis"][1];
		Next_Page = "BFDQuestItems";
		Next_Title = AtlasLoot_TableNames["BFDQuestItems"][1];
		Prev_Page = "BFDGelihast";
		Prev_Title = AtlasLoot_TableNames["BFDGelihast"][1];
		};
	["BFDQuestItems"] = {
		Title = AtlasLoot_TableNames["BFDQuestItems"][1];
		Next_Page = "BFDTwilightLordKelris";
		Next_Title = AtlasLoot_TableNames["BFDTwilightLordKelris"][1];
		Prev_Page = "BFDBaronAquanis";
		Prev_Title = AtlasLoot_TableNames["BFDBaronAquanis"][1];
		};
	["BFDTwilightLordKelris"] = {
		Title = AtlasLoot_TableNames["BFDTwilightLordKelris"][1];
		Next_Page = "BFDOldSerrakis";
		Next_Title = AtlasLoot_TableNames["BFDOldSerrakis"][1];
		Prev_Page = "BFDQuestItems";
		Prev_Title = AtlasLoot_TableNames["BFDQuestItems"][1];
		};
	["BFDOldSerrakis"] = {
		Title = AtlasLoot_TableNames["BFDOldSerrakis"][1];
		Next_Page = "BFDAkumai";
		Next_Title = AtlasLoot_TableNames["BFDAkumai"][1];
		Prev_Page = "BFDTwilightLordKelris";
		Prev_Title = AtlasLoot_TableNames["BFDTwilightLordKelris"][1];
		};
	["BFDAkumai"] = {
		Title = AtlasLoot_TableNames["BFDAkumai"][1];
		Prev_Page = "BFDOldSerrakis";
		Prev_Title = AtlasLoot_TableNames["BFDOldSerrakis"][1];
		};

	["BRDPyron"] = {
		Title = AtlasLoot_TableNames["BRDPyron"][1];
		Next_Page = "BRDLordRoccor";
		Next_Title = AtlasLoot_TableNames["BRDLordRoccor"][1];
		};
	["BRDLordRoccor"] = {
		Title = AtlasLoot_TableNames["BRDLordRoccor"][1];
		Next_Page = "BRDHighInterrogatorGerstahn";
		Next_Title = AtlasLoot_TableNames["BRDHighInterrogatorGerstahn"][1];
		Prev_Page = "BRDPyron";
		Prev_Title = AtlasLoot_TableNames["BRDPyron"][1];
		};
	["BRDHighInterrogatorGerstahn"] = {
		Title = AtlasLoot_TableNames["BRDHighInterrogatorGerstahn"][1];
		Next_Page = "BRDTheldren";
		Next_Title = AtlasLoot_TableNames["BRDTheldren"][1];
		Prev_Page = "BRDLordRoccor";
		Prev_Title = AtlasLoot_TableNames["BRDLordRoccor"][1];
		};
	["BRDTheldren"] = {
		Title = AtlasLoot_TableNames["BRDTheldren"][1];
		Next_Page = "BRDHoundmaster";
		Next_Title = AtlasLoot_TableNames["BRDHoundmaster"][1];
		Prev_Page = "BRDHighInterrogatorGerstahn";
		Prev_Title = AtlasLoot_TableNames["BRDHighInterrogatorGerstahn"][1];
		};
	["BRDHoundmaster"] = {
		Title = AtlasLoot_TableNames["BRDHoundmaster"][1];
		Next_Page = "BRDForgewright";
		Next_Title = AtlasLoot_TableNames["BRDForgewright"][1];
		Prev_Page = "BRDTheldren";
		Prev_Title = AtlasLoot_TableNames["BRDTheldren"][1];
		};
	["BRDForgewright"] = {
		Title = AtlasLoot_TableNames["BRDForgewright"][1];
		Next_Page = "BRDPyromantLoregrain";
		Next_Title = AtlasLoot_TableNames["BRDPyromantLoregrain"][1];
		Prev_Page = "BRDHoundmaster";
		Prev_Title = AtlasLoot_TableNames["BRDHoundmaster"][1];
		};
	["BRDPyromantLoregrain"] = {
		Title = AtlasLoot_TableNames["BRDPyromantLoregrain"][1];
		Next_Page = "BRDTheVault";
		Next_Title = AtlasLoot_TableNames["BRDTheVault"][1];
		Prev_Page = "BRDForgewright";
		Prev_Title = AtlasLoot_TableNames["BRDForgewright"][1];
		};
	["BRDTheVault"] = {
		Title = AtlasLoot_TableNames["BRDTheVault"][1];
		Next_Page = "BRDWarderStilgiss";
		Next_Title = AtlasLoot_TableNames["BRDWarderStilgiss"][1];
		Prev_Page = "BRDPyromantLoregrain";
		Prev_Title = AtlasLoot_TableNames["BRDPyromantLoregrain"][1];
		};
	["BRDWarderStilgiss"] = {
		Title = AtlasLoot_TableNames["BRDWarderStilgiss"][1];
		Next_Page = "BRDVerek";
		Next_Title = AtlasLoot_TableNames["BRDVerek"][1];
		Prev_Page = "BRDTheVault";
		Prev_Title = AtlasLoot_TableNames["BRDTheVault"][1];
		};
	["BRDVerek"] = {
		Title = AtlasLoot_TableNames["BRDVerek"][1];
		Next_Page = "BRDFineousDarkvire";
		Next_Title = AtlasLoot_TableNames["BRDFineousDarkvire"][1];
		Prev_Page = "BRDWarderStilgiss";
		Prev_Title = AtlasLoot_TableNames["BRDWarderStilgiss"][1];
		};
	["BRDFineousDarkvire"] = {
		Title = AtlasLoot_TableNames["BRDFineousDarkvire"][1];
		Next_Page = "BRDLordIncendius";
		Next_Title = AtlasLoot_TableNames["BRDLordIncendius"][1];
		Prev_Page = "BRDVerek";
		Prev_Title = AtlasLoot_TableNames["BRDVerek"][1];
		};
	["BRDLordIncendius"] = {
		Title = AtlasLoot_TableNames["BRDLordIncendius"][1];
		Next_Page = "BRDBaelGar";
		Next_Title = AtlasLoot_TableNames["BRDBaelGar"][1];
		Prev_Page = "BRDFineousDarkvire";
		Prev_Title = AtlasLoot_TableNames["BRDFineousDarkvire"][1];
		};
	["BRDBaelGar"] = {
		Title = AtlasLoot_TableNames["BRDBaelGar"][1];
		Next_Page = "BRDGeneralAngerforge";
		Next_Title = AtlasLoot_TableNames["BRDGeneralAngerforge"][1];
		Prev_Page = "BRDLordIncendius";
		Prev_Title = AtlasLoot_TableNames["BRDLordIncendius"][1];
		};
	["BRDGeneralAngerforge"] = {
		Title = AtlasLoot_TableNames["BRDGeneralAngerforge"][1];
		Next_Page = "BRDGolemLordArgelmach";
		Next_Title = AtlasLoot_TableNames["BRDGolemLordArgelmach"][1];
		Prev_Page = "BRDBaelGar";
		Prev_Title = AtlasLoot_TableNames["BRDBaelGar"][1];
		};
	["BRDGolemLordArgelmach"] = {
		Title = AtlasLoot_TableNames["BRDGolemLordArgelmach"][1];
		Next_Page = "BRDGuzzler";
		Next_Title = AtlasLoot_TableNames["BRDGuzzler"][1];
		Prev_Page = "BRDGeneralAngerforge";
		Prev_Title = AtlasLoot_TableNames["BRDGeneralAngerforge"][1];
		};
	["BRDGuzzler"] = {
		Title = AtlasLoot_TableNames["BRDGuzzler"][1];
		Next_Page = "BRDFlamelash";
		Next_Title = AtlasLoot_TableNames["BRDFlamelash"][1];
		Prev_Page = "BRDGolemLordArgelmach";
		Prev_Title = AtlasLoot_TableNames["BRDGolemLordArgelmach"][1];
		};
	["BRDFlamelash"] = {
		Title = AtlasLoot_TableNames["BRDFlamelash"][1];
		Next_Page = "BRDPanzor";
		Next_Title = AtlasLoot_TableNames["BRDPanzor"][1];
		Prev_Page = "BRDGuzzler";
		Prev_Title = AtlasLoot_TableNames["BRDGuzzler"][1];
		};
	["BRDPanzor"] = {
		Title = AtlasLoot_TableNames["BRDPanzor"][1];
		Next_Page = "BRDTomb";
		Next_Title = AtlasLoot_TableNames["BRDTomb"][1];
		Prev_Page = "BRDFlamelash";
		Prev_Title = AtlasLoot_TableNames["BRDFlamelash"][1];
		};
	["BRDTomb"] = {
		Title = AtlasLoot_TableNames["BRDTomb"][1];
		Next_Page = "BRDLyceum";
		Next_Title = AtlasLoot_TableNames["BRDLyceum"][1];
		Prev_Page = "BRDPanzor";
		Prev_Title = AtlasLoot_TableNames["BRDPanzor"][1];
		};
	["BRDLyceum"] = {
		Title = AtlasLoot_TableNames["BRDLyceum"][1];
		Next_Page = "BRDMagmus";
		Next_Title = AtlasLoot_TableNames["BRDMagmus"][1];
		Prev_Page = "BRDTomb";
		Prev_Title = AtlasLoot_TableNames["BRDTomb"][1];
		};
	["BRDMagmus"] = {
		Title = AtlasLoot_TableNames["BRDMagmus"][1];
		Next_Page = "BRDImperatorDagranThaurissan";
		Next_Title = AtlasLoot_TableNames["BRDImperatorDagranThaurissan"][1];
		Prev_Page = "BRDLyceum";
		Prev_Title = AtlasLoot_TableNames["BRDLyceum"][1];
		};
	["BRDImperatorDagranThaurissan"] = {
		Title = AtlasLoot_TableNames["BRDImperatorDagranThaurissan"][1];
		Next_Page = "BRDPrincess";
		Next_Title = AtlasLoot_TableNames["BRDPrincess"][1];
		Prev_Page = "BRDMagmus";
		Prev_Title = AtlasLoot_TableNames["BRDMagmus"][1];
		};
	["BRDPrincess"] = {
		Title = AtlasLoot_TableNames["BRDPrincess"][1];
		Prev_Page = "BRDImperatorDagranThaurissan";
		Prev_Title = AtlasLoot_TableNames["BRDImperatorDagranThaurissan"][1];
		};

	["LBRSSpirestoneButcher"] = {
		Title = AtlasLoot_TableNames["LBRSSpirestoneButcher"][1];
		Next_Page = "LBRSOmokk";
		Next_Title = AtlasLoot_TableNames["LBRSOmokk"][1];
		};
	["LBRSOmokk"] = {
		Title = AtlasLoot_TableNames["LBRSOmokk"][1];
		Next_Page = "LBRSSpirestoneLord";
		Next_Title = AtlasLoot_TableNames["LBRSSpirestoneLord"][1];
		Prev_Page = "LBRSSpirestoneButcher";
		Prev_Title = AtlasLoot_TableNames["LBRSSpirestoneButcher"][1];
		};
	["LBRSSpirestoneLord"] = {
		Title = AtlasLoot_TableNames["LBRSSpirestoneLord"][1];
		Next_Page = "LBRSLordMagus";
		Next_Title = AtlasLoot_TableNames["LBRSLordMagus"][1];
		Prev_Page = "LBRSOmokk";
		Prev_Title = AtlasLoot_TableNames["LBRSOmokk"][1];
		};
	["LBRSLordMagus"] = {
		Title = AtlasLoot_TableNames["LBRSLordMagus"][1];
		Next_Page = "LBRSVosh";
		Next_Title = AtlasLoot_TableNames["LBRSVosh"][1];
		Prev_Page = "LBRSSpirestoneLord";
		Prev_Title = AtlasLoot_TableNames["LBRSSpirestoneLord"][1];
		};
	["LBRSVosh"] = {
		Title = AtlasLoot_TableNames["LBRSVosh"][1];
		Next_Page = "LBRSVoone";
		Next_Title = AtlasLoot_TableNames["LBRSVoone"][1];
		Prev_Page = "LBRSLordMagus";
		Prev_Title = AtlasLoot_TableNames["LBRSLordMagus"][1];
		};
	["LBRSVoone"] = {
		Title = AtlasLoot_TableNames["LBRSVoone"][1];
		Next_Page = "LBRSGrayhoof";
		Next_Title = AtlasLoot_TableNames["LBRSGrayhoof"][1];
		Prev_Page = "LBRSVosh";
		Prev_Title = AtlasLoot_TableNames["LBRSVosh"][1];
		};
	["LBRSGrayhoof"] = {
		Title = AtlasLoot_TableNames["LBRSGrayhoof"][1];
		Next_Page = "LBRSGrimaxe";
		Next_Title = AtlasLoot_TableNames["LBRSGrimaxe"][1];
		Prev_Page = "LBRSVoone";
		Prev_Title = AtlasLoot_TableNames["LBRSVoone"][1];
		};
	["LBRSGrimaxe"] = {
		Title = AtlasLoot_TableNames["LBRSGrimaxe"][1];
		Next_Page = "LBRSSmolderweb";
		Next_Title = AtlasLoot_TableNames["LBRSSmolderweb"][1];
		Prev_Page = "LBRSGrayhoof";
		Prev_Title = AtlasLoot_TableNames["LBRSGrayhoof"][1];
		};
	["LBRSSmolderweb"] = {
		Title = AtlasLoot_TableNames["LBRSSmolderweb"][1];
		Next_Page = "LBRSCrystalFang";
		Next_Title = AtlasLoot_TableNames["LBRSCrystalFang"][1];
		Prev_Page = "LBRSGrimaxe";
		Prev_Title = AtlasLoot_TableNames["LBRSGrimaxe"][1];
		};
	["LBRSCrystalFang"] = {
		Title = AtlasLoot_TableNames["LBRSCrystalFang"][1];
		Next_Page = "LBRSDoomhowl";
		Next_Title = AtlasLoot_TableNames["LBRSDoomhowl"][1];
		Prev_Page = "LBRSSmolderweb";
		Prev_Title = AtlasLoot_TableNames["LBRSSmolderweb"][1];
		};
	["LBRSDoomhowl"] = {
		Title = AtlasLoot_TableNames["LBRSDoomhowl"][1];
		Next_Page = "LBRSZigris";
		Next_Title = AtlasLoot_TableNames["LBRSZigris"][1];
		Prev_Page = "LBRSCrystalFang";
		Prev_Title = AtlasLoot_TableNames["LBRSCrystalFang"][1];
		};
	["LBRSZigris"] = {
		Title = AtlasLoot_TableNames["LBRSZigris"][1];
		Next_Page = "LBRSHalycon";
		Next_Title = AtlasLoot_TableNames["LBRSHalycon"][1];
		Prev_Page = "LBRSDoomhowl";
		Prev_Title = AtlasLoot_TableNames["LBRSDoomhowl"][1];
		};
	["LBRSHalycon"] = {
		Title = AtlasLoot_TableNames["LBRSHalycon"][1];
		Next_Page = "LBRSSlavener";
		Next_Title = AtlasLoot_TableNames["LBRSSlavener"][1];
		Prev_Page = "LBRSZigris";
		Prev_Title = AtlasLoot_TableNames["LBRSZigris"][1];
		};
	["LBRSSlavener"] = {
		Title = AtlasLoot_TableNames["LBRSSlavener"][1];
		Next_Page = "LBRSBashguud";
		Next_Title = AtlasLoot_TableNames["LBRSBashguud"][1];
		Prev_Page = "LBRSHalycon";
		Prev_Title = AtlasLoot_TableNames["LBRSHalycon"][1];
		};
	["LBRSBashguud"] = {
		Title = AtlasLoot_TableNames["LBRSBashguud"][1];
		Next_Page = "LBRSWyrmthalak";
		Next_Title = AtlasLoot_TableNames["LBRSWyrmthalak"][1];
		Prev_Page = "LBRSSlavener";
		Prev_Title = AtlasLoot_TableNames["LBRSSlavener"][1];
		};
	["LBRSWyrmthalak"] = {
		Title = AtlasLoot_TableNames["LBRSWyrmthalak"][1];
		Next_Page = "LBRSFelguard";
		Next_Title = AtlasLoot_TableNames["LBRSFelguard"][1];
		Prev_Page = "LBRSBashguud";
		Prev_Title = AtlasLoot_TableNames["LBRSBashguud"][1];
		};
	["LBRSFelguard"] = {
		Title = AtlasLoot_TableNames["LBRSFelguard"][1];
		Prev_Page = "LBRSWyrmthalak";
		Prev_Title = AtlasLoot_TableNames["LBRSWyrmthalak"][1];
		};

	["UBRSEmberseer"] = {
		Title = AtlasLoot_TableNames["UBRSEmberseer"][1];
		Next_Page = "UBRSSolakar";
		Next_Title = AtlasLoot_TableNames["UBRSSolakar"][1];
		};
	["UBRSSolakar"] = {
		Title = AtlasLoot_TableNames["UBRSSolakar"][1];
		Next_Page = "UBRSFLAME";
		Next_Title = AtlasLoot_TableNames["UBRSFLAME"][1];
		Prev_Page = "UBRSEmberseer";
		Prev_Title = AtlasLoot_TableNames["UBRSEmberseer"][1];
		};
	["UBRSFLAME"] = {
		Title = AtlasLoot_TableNames["UBRSFLAME"][1];
		Next_Page = "UBRSRunewatcher";
		Next_Title = AtlasLoot_TableNames["UBRSRunewatcher"][1];
		Prev_Page = "UBRSSolakar";
		Prev_Title = AtlasLoot_TableNames["UBRSSolakar"][1];
		};
	["UBRSRunewatcher"] = {
		Title = AtlasLoot_TableNames["UBRSRunewatcher"][1];
		Next_Page = "UBRSAnvilcrack";
		Next_Title = AtlasLoot_TableNames["UBRSAnvilcrack"][1];
		Prev_Page = "UBRSFLAME";
		Prev_Title = AtlasLoot_TableNames["UBRSFLAME"][1];
		};
	["UBRSAnvilcrack"] = {
		Title = AtlasLoot_TableNames["UBRSAnvilcrack"][1];
		Next_Page = "UBRSRend";
		Next_Title = AtlasLoot_TableNames["UBRSRend"][1];
		Prev_Page = "UBRSRunewatcher";
		Prev_Title = AtlasLoot_TableNames["UBRSRunewatcher"][1];
		};
	["UBRSRend"] = {
		Title = AtlasLoot_TableNames["UBRSRend"][1];
		Next_Page = "UBRSGyth";
		Next_Title = AtlasLoot_TableNames["UBRSGyth"][1];
		Prev_Page = "UBRSAnvilcrack";
		Prev_Title = AtlasLoot_TableNames["UBRSAnvilcrack"][1];
		};
	["UBRSGyth"] = {
		Title = AtlasLoot_TableNames["UBRSGyth"][1];
		Next_Page = "UBRSBeast";
		Next_Title = AtlasLoot_TableNames["UBRSBeast"][1];
		Prev_Page = "UBRSRend";
		Prev_Title = AtlasLoot_TableNames["UBRSRend"][1];
		};
	["UBRSBeast"] = {
		Title = AtlasLoot_TableNames["UBRSBeast"][1];
		Next_Page = "UBRSValthalak";
		Next_Title = AtlasLoot_TableNames["UBRSValthalak"][1];
		Prev_Page = "UBRSGyth";
		Prev_Title = AtlasLoot_TableNames["UBRSGyth"][1];
		};
	["UBRSValthalak"] = {
		Title = AtlasLoot_TableNames["UBRSValthalak"][1];
		Next_Page = "UBRSDrakkisath";
		Next_Title = AtlasLoot_TableNames["UBRSDrakkisath"][1];
		Prev_Page = "UBRSBeast";
		Prev_Title = AtlasLoot_TableNames["UBRSBeast"][1];
		};
	["UBRSDrakkisath"] = {
		Title = AtlasLoot_TableNames["UBRSDrakkisath"][1];
		Prev_Page = "UBRSValthalak";
		Prev_Title = AtlasLoot_TableNames["UBRSValthalak"][1];
		};

	["BWLRazorgore"] = {
		Title = AtlasLoot_TableNames["BWLRazorgore"][1];
		Next_Page = "BWLVaelastrasz";
		Next_Title = AtlasLoot_TableNames["BWLVaelastrasz"][1];
		};
	["BWLVaelastrasz"] = {
		Title = AtlasLoot_TableNames["BWLVaelastrasz"][1];
		Next_Page = "BWLLashlayer";
		Next_Title = AtlasLoot_TableNames["BWLLashlayer"][1];
		Prev_Page = "BWLRazorgore";
		Prev_Title = AtlasLoot_TableNames["BWLRazorgore"][1];
		};
	["BWLLashlayer"] = {
		Title = AtlasLoot_TableNames["BWLLashlayer"][1];
		Next_Page = "BWLFiremaw";
		Next_Title = AtlasLoot_TableNames["BWLFiremaw"][1];
		Prev_Page = "BWLVaelastrasz";
		Prev_Title = AtlasLoot_TableNames["BWLVaelastrasz"][1];
		};
	["BWLFiremaw"] = {
		Title = AtlasLoot_TableNames["BWLFiremaw"][1];
		Next_Page = "BWLEbonroc";
		Next_Title = AtlasLoot_TableNames["BWLEbonroc"][1];
		Prev_Page = "BWLLashlayer";
		Prev_Title = AtlasLoot_TableNames["BWLLashlayer"][1];
		};
	["BWLEbonroc"] = {
		Title = AtlasLoot_TableNames["BWLEbonroc"][1];
		Next_Page = "BWLFlamegor";
		Next_Title = AtlasLoot_TableNames["BWLFlamegor"][1];
		Prev_Page = "BWLFiremaw";
		Prev_Title = AtlasLoot_TableNames["BWLFiremaw"][1];
		};
	["BWLFlamegor"] = {
		Title = AtlasLoot_TableNames["BWLFlamegor"][1];
		Next_Page = "BWLChromaggus";
		Next_Title = AtlasLoot_TableNames["BWLChromaggus"][1];
		Prev_Page = "BWLEbonroc";
		Prev_Title = AtlasLoot_TableNames["BWLEbonroc"][1];
		};
	["BWLChromaggus"] = {
		Title = AtlasLoot_TableNames["BWLChromaggus"][1];
		Next_Page = "BWLNefarian";
		Next_Title = AtlasLoot_TableNames["BWLNefarian"][1];
		Prev_Page = "BWLFlamegor";
		Prev_Title = AtlasLoot_TableNames["BWLFlamegor"][1];
		};
	["BWLNefarian"] = {
		Title = AtlasLoot_TableNames["BWLNefarian"][1];
		Prev_Page = "BWLChromaggus";
		Prev_Title = AtlasLoot_TableNames["BWLChromaggus"][1];
		};

	["DMEPusillin"] = {
		Title = AtlasLoot_TableNames["DMEPusillin"][1];
		Next_Page = "DMEZevrimThornhoof";
		Next_Title = AtlasLoot_TableNames["DMEZevrimThornhoof"][1];
		};
	["DMEZevrimThornhoof"] = {
		Title = AtlasLoot_TableNames["DMEZevrimThornhoof"][1];
		Next_Page = "DMEHydro";
		Next_Title = AtlasLoot_TableNames["DMEHydro"][1];
		Prev_Page = "DMEPusillin";
		Prev_Title = AtlasLoot_TableNames["DMEPusillin"][1];
		};
	["DMEHydro"] = {
		Title = AtlasLoot_TableNames["DMEHydro"][1];
		Next_Page = "DMELethtendris";
		Next_Title = AtlasLoot_TableNames["DMELethtendris"][1];
		Prev_Page = "DMEZevrimThornhoof";
		Prev_Title = AtlasLoot_TableNames["DMEZevrimThornhoof"][1];
		};
	["DMELethtendris"] = {
		Title = AtlasLoot_TableNames["DMELethtendris"][1];
		Next_Page = "DMEPimgib";
		Next_Title = AtlasLoot_TableNames["DMEPimgib"][1];
		Prev_Page = "DMEHydro";
		Prev_Title = AtlasLoot_TableNames["DMEHydro"][1];
		};
	["DMEPimgib"] = {
		Title = AtlasLoot_TableNames["DMEPimgib"][1];
		Next_Page = "DMEAlzzin";
		Next_Title = AtlasLoot_TableNames["DMEAlzzin"][1];
		Prev_Page = "DMELethtendris";
		Prev_Title = AtlasLoot_TableNames["DMELethtendris"][1];
		};
	["DMEAlzzin"] = {
		Title = AtlasLoot_TableNames["DMEAlzzin"][1];
		Next_Page = "DMEIsalien";
		Next_Title = AtlasLoot_TableNames["DMEIsalien"][1];
		Prev_Page = "DMEPimgib";
		Prev_Title = AtlasLoot_TableNames["DMEPimgib"][1];
		};
	["DMEIsalien"] = {
		Title = AtlasLoot_TableNames["DMEIsalien"][1];
		Prev_Page = "DMEAlzzin";
		Prev_Title = AtlasLoot_TableNames["DMEAlzzin"][1];
		};

	["DMNGuardMoldar"] = {
		Title = AtlasLoot_TableNames["DMNGuardMoldar"][1];
		Next_Page = "DMNStomperKreeg";
		Next_Title = AtlasLoot_TableNames["DMNStomperKreeg"][1];
		};
	["DMNStomperKreeg"] = {
		Title = AtlasLoot_TableNames["DMNStomperKreeg"][1];
		Next_Page = "DMNGuardFengus";
		Next_Title = AtlasLoot_TableNames["DMNGuardFengus"][1];
		Prev_Page = "DMNGuardMoldar";
		Prev_Title = AtlasLoot_TableNames["DMNGuardMoldar"][1];
		};
	["DMNGuardFengus"] = {
		Title = AtlasLoot_TableNames["DMNGuardFengus"][1];
		Next_Page = "DMNThimblejack";
		Next_Title = AtlasLoot_TableNames["DMNThimblejack"][1];
		Prev_Page = "DMNStomperKreeg";
		Prev_Title = AtlasLoot_TableNames["DMNStomperKreeg"][1];
		};
	["DMNThimblejack"] = {
		Title = AtlasLoot_TableNames["DMNThimblejack"][1];
		Next_Page = "DMNGuardSlipkik";
		Next_Title = AtlasLoot_TableNames["DMNGuardSlipkik"][1];
		Prev_Page = "DMNGuardFengus";
		Prev_Title = AtlasLoot_TableNames["DMNGuardFengus"][1];
		};
	["DMNGuardSlipkik"] = {
		Title = AtlasLoot_TableNames["DMNGuardSlipkik"][1];
		Next_Page = "DMNCaptainKromcrush";
		Next_Title = AtlasLoot_TableNames["DMNCaptainKromcrush"][1];
		Prev_Page = "DMNThimblejack";
		Prev_Title = AtlasLoot_TableNames["DMNThimblejack"][1];
		};
	["DMNCaptainKromcrush"] = {
		Title = AtlasLoot_TableNames["DMNCaptainKromcrush"][1];
		Next_Page = "DMNKingGordok";
		Next_Title = AtlasLoot_TableNames["DMNKingGordok"][1];
		Prev_Page = "DMNGuardSlipkik";
		Prev_Title = AtlasLoot_TableNames["DMNGuardSlipkik"][1];
		};
	["DMNKingGordok"] = {
		Title = AtlasLoot_TableNames["DMNKingGordok"][1];
		Next_Page = "DMNChoRush";
		Next_Title = AtlasLoot_TableNames["DMNChoRush"][1];
		Prev_Page = "DMNCaptainKromcrush";
		Prev_Title = AtlasLoot_TableNames["DMNCaptainKromcrush"][1];
		};
	["DMNChoRush"] = {
		Title = AtlasLoot_TableNames["DMNChoRush"][1];
		Prev_Page = "DMNKingGordok";
		Prev_Title = AtlasLoot_TableNames["DMNKingGordok"][1];
		};

	["DMWTendrisWarpwood"] = {
		Title = AtlasLoot_TableNames["DMWTendrisWarpwood"][1];
		Next_Page = "DMWIllyannaRavenoak";
		Next_Title = AtlasLoot_TableNames["DMWIllyannaRavenoak"][1];
		};
	["DMWIllyannaRavenoak"] = {
		Title = AtlasLoot_TableNames["DMWIllyannaRavenoak"][1];
		Next_Page = "DMWMagisterKalendris";
		Next_Title = AtlasLoot_TableNames["DMWMagisterKalendris"][1];
		Prev_Page = "DMWTendrisWarpwood";
		Prev_Title = AtlasLoot_TableNames["DMWTendrisWarpwood"][1];
		};
	["DMWMagisterKalendris"] = {
		Title = AtlasLoot_TableNames["DMWMagisterKalendris"][1];
		Next_Page = "DMWTsuzee";
		Next_Title = AtlasLoot_TableNames["DMWTsuzee"][1];
		Prev_Page = "DMWIllyannaRavenoak";
		Prev_Title = AtlasLoot_TableNames["DMWIllyannaRavenoak"][1];
		};
	["DMWTsuzee"] = {
		Title = AtlasLoot_TableNames["DMWTsuzee"][1];
		Next_Page = "DMWImmolthar";
		Next_Title = AtlasLoot_TableNames["DMWImmolthar"][1];
		Prev_Page = "DMWMagisterKalendris";
		Prev_Title = AtlasLoot_TableNames["DMWMagisterKalendris"][1];
		};
	["DMWImmolthar"] = {
		Title = AtlasLoot_TableNames["DMWImmolthar"][1];
		Next_Page = "DMWHelnurath";
		Next_Title = AtlasLoot_TableNames["DMWHelnurath"][1];
		Prev_Page = "DMWTsuzee";
		Prev_Title = AtlasLoot_TableNames["DMWTsuzee"][1];
		};
	["DMWHelnurath"] = {
		Title = AtlasLoot_TableNames["DMWHelnurath"][1];
		Next_Page = "DMWPrinceTortheldrin";
		Next_Title = AtlasLoot_TableNames["DMWPrinceTortheldrin"][1];
		Prev_Page = "DMWImmolthar";
		Prev_Title = AtlasLoot_TableNames["DMWImmolthar"][1];
		};
	["DMWPrinceTortheldrin"] = {
		Title = AtlasLoot_TableNames["DMWPrinceTortheldrin"][1];
		Prev_Page = "DMWHelnurath";
		Prev_Title = AtlasLoot_TableNames["DMWHelnurath"][1];
		};

	["GnTechbot"] = {
		Title = AtlasLoot_TableNames["GnTechbot"][1];
		Next_Page = "GnGrubbis";
		Next_Title = AtlasLoot_TableNames["GnGrubbis"][1];
		};
	["GnGrubbis"] = {
		Title = AtlasLoot_TableNames["GnGrubbis"][1];
		Next_Page = "GnViscousFallout";
		Next_Title = AtlasLoot_TableNames["GnViscousFallout"][1];
		Prev_Page = "GnTechbot";
		Prev_Title = AtlasLoot_TableNames["GnTechbot"][1];
		};
	["GnViscousFallout"] = {
		Title = AtlasLoot_TableNames["GnViscousFallout"][1];
		Next_Page = "GnElectrocutioner6000";
		Next_Title = AtlasLoot_TableNames["GnElectrocutioner6000"][1];
		Prev_Page = "GnGrubbis";
		Prev_Title = AtlasLoot_TableNames["GnGrubbis"][1];
		};
	["GnElectrocutioner6000"] = {
		Title = AtlasLoot_TableNames["GnElectrocutioner6000"][1];
		Next_Page = "GnCrowdPummeler960";
		Next_Title = AtlasLoot_TableNames["GnCrowdPummeler960"][1];
		Prev_Page = "GnViscousFallout";
		Prev_Title = AtlasLoot_TableNames["GnViscousFallout"][1];
		};
	["GnCrowdPummeler960"] = {
		Title = AtlasLoot_TableNames["GnCrowdPummeler960"][1];
		Next_Page = "GnDIAmbassador";
		Next_Title = AtlasLoot_TableNames["GnDIAmbassador"][1];
		Prev_Page = "GnElectrocutioner6000";
		Prev_Title = AtlasLoot_TableNames["GnElectrocutioner6000"][1];
		};
	["GnDIAmbassador"] = {
		Title = AtlasLoot_TableNames["GnDIAmbassador"][1];
		Next_Page = "GnMekgineerThermaplugg";
		Next_Title = AtlasLoot_TableNames["GnMekgineerThermaplugg"][1];
		Prev_Page = "GnCrowdPummeler960";
		Prev_Title = AtlasLoot_TableNames["GnCrowdPummeler960"][1];
		};
	["GnMekgineerThermaplugg"] = {
		Title = AtlasLoot_TableNames["GnMekgineerThermaplugg"][1];
		Prev_Page = "GnDIAmbassador";
		Prev_Title = AtlasLoot_TableNames["GnDIAmbassador"][1];
		};

	["MaraNoxxion"] = {
		Title = AtlasLoot_TableNames["MaraNoxxion"][1];
		Next_Page = "MaraRazorlash";
		Next_Title = AtlasLoot_TableNames["MaraRazorlash"][1];
		};
	["MaraRazorlash"] = {
		Title = AtlasLoot_TableNames["MaraRazorlash"][1];
		Next_Page = "MaraLordVyletongue";
		Next_Title = AtlasLoot_TableNames["MaraLordVyletongue"][1];
		Prev_Page = "MaraNoxxion";
		Prev_Title = AtlasLoot_TableNames["MaraNoxxion"][1];
		};
	["MaraLordVyletongue"] = {
		Title = AtlasLoot_TableNames["MaraLordVyletongue"][1];
		Next_Page = "MaraMeshlok";
		Next_Title = AtlasLoot_TableNames["MaraMeshlok"][1];
		Prev_Page = "MaraRazorlash";
		Prev_Title = AtlasLoot_TableNames["MaraRazorlash"][1];
		};
	["MaraMeshlok"] = {
		Title = AtlasLoot_TableNames["MaraMeshlok"][1];
		Next_Page = "MaraCelebras";
		Next_Title = AtlasLoot_TableNames["MaraCelebras"][1];
		Prev_Page = "MaraLordVyletongue";
		Prev_Title = AtlasLoot_TableNames["MaraLordVyletongue"][1];
		};
	["MaraCelebras"] = {
		Title = AtlasLoot_TableNames["MaraCelebras"][1];
		Next_Page = "MaraLandslide";
		Next_Title = AtlasLoot_TableNames["MaraLandslide"][1];
		Prev_Page = "MaraMeshlok";
		Prev_Title = AtlasLoot_TableNames["MaraMeshlok"][1];
		};
	["MaraLandslide"] = {
		Title = AtlasLoot_TableNames["MaraLandslide"][1];
		Next_Page = "MaraTinkererGizlock";
		Next_Title = AtlasLoot_TableNames["MaraTinkererGizlock"][1];
		Prev_Page = "MaraCelebras";
		Prev_Title = AtlasLoot_TableNames["MaraCelebras"][1];
		};
	["MaraTinkererGizlock"] = {
		Title = AtlasLoot_TableNames["MaraTinkererGizlock"][1];
		Next_Page = "MaraRotgrip";
		Next_Title = AtlasLoot_TableNames["MaraRotgrip"][1];
		Prev_Page = "MaraLandslide";
		Prev_Title = AtlasLoot_TableNames["MaraLandslide"][1];
		};
	["MaraRotgrip"] = {
		Title = AtlasLoot_TableNames["MaraRotgrip"][1];
		Next_Page = "MaraPrincessTheradras";
		Next_Title = AtlasLoot_TableNames["MaraPrincessTheradras"][1];
		Prev_Page = "MaraTinkererGizlock";
		Prev_Title = AtlasLoot_TableNames["MaraTinkererGizlock"][1];
		};
	["MaraPrincessTheradras"] = {
		Title = AtlasLoot_TableNames["MaraPrincessTheradras"][1];
		Prev_Page = "MaraRotgrip";
		Prev_Title = AtlasLoot_TableNames["MaraRotgrip"][1];
		};

	["MCLucifron"] = {
		Title = AtlasLoot_TableNames["MCLucifron"][1];
		Next_Page = "MCMagmadar";
		Next_Title = AtlasLoot_TableNames["MCMagmadar"][1];
		};
	["MCMagmadar"] = {
		Title = AtlasLoot_TableNames["MCMagmadar"][1];
		Next_Page = "MCGehennas";
		Next_Title = AtlasLoot_TableNames["MCGehennas"][1];
		Prev_Page = "MCLucifron";
		Prev_Title = AtlasLoot_TableNames["MCLucifron"][1];
		};
	["MCGehennas"] = {
		Title = AtlasLoot_TableNames["MCGehennas"][1];
		Next_Page = "MCGarr";
		Next_Title = AtlasLoot_TableNames["MCGarr"][1];
		Prev_Page = "MCMagmadar";
		Prev_Title = AtlasLoot_TableNames["MCMagmadar"][1];
		};
	["MCGarr"] = {
		Title = AtlasLoot_TableNames["MCGarr"][1];
		Next_Page = "MCShazzrah";
		Next_Title = AtlasLoot_TableNames["MCShazzrah"][1];
		Prev_Page = "MCGehennas";
		Prev_Title = AtlasLoot_TableNames["MCGehennas"][1];
		};
	["MCShazzrah"] = {
		Title = AtlasLoot_TableNames["MCShazzrah"][1];
		Next_Page = "MCGeddon";
		Next_Title = AtlasLoot_TableNames["MCGeddon"][1];
		Prev_Page = "MCGarr";
		Prev_Title = AtlasLoot_TableNames["MCGarr"][1];
		};
	["MCGeddon"] = {
		Title = AtlasLoot_TableNames["MCGeddon"][1];
		Next_Page = "MCGolemagg";
		Next_Title = AtlasLoot_TableNames["MCGolemagg"][1];
		Prev_Page = "MCShazzrah";
		Prev_Title = AtlasLoot_TableNames["MCShazzrah"][1];
		};
	["MCGolemagg"] = {
		Title = AtlasLoot_TableNames["MCGolemagg"][1];
		Next_Page = "MCSulfuron";
		Next_Title = AtlasLoot_TableNames["MCSulfuron"][1];
		Prev_Page = "MCGeddon";
		Prev_Title = AtlasLoot_TableNames["MCGeddon"][1];
		};
	["MCSulfuron"] = {
		Title = AtlasLoot_TableNames["MCSulfuron"][1];
		Next_Page = "MCMajordomo";
		Next_Title = AtlasLoot_TableNames["MCMajordomo"][1];
		Prev_Page = "MCGolemagg";
		Prev_Title = AtlasLoot_TableNames["MCGolemagg"][1];
		};
	["MCMajordomo"] = {
		Title = AtlasLoot_TableNames["MCMajordomo"][1];
		Next_Page = "MCRagnaros";
		Next_Title = AtlasLoot_TableNames["MCRagnaros"][1];
		Prev_Page = "MCSulfuron";
		Prev_Title = AtlasLoot_TableNames["MCSulfuron"][1];
		};
	["MCRagnaros"] = {
		Title = AtlasLoot_TableNames["MCRagnaros"][1];
		Prev_Page = "MCMajordomo";
		Prev_Title = AtlasLoot_TableNames["MCMajordomo"][1];
		};

	["NAXPatchwerk"] = {
		Title = AtlasLoot_TableNames["NAXPatchwerk"][1];
		Next_Page = "NAXGrobbulus";
		Next_Title = AtlasLoot_TableNames["NAXGrobbulus"][1];
		};
	["NAXGrobbulus"] = {
		Title = AtlasLoot_TableNames["NAXGrobbulus"][1];
		Next_Page = "NAXGluth";
		Next_Title = AtlasLoot_TableNames["NAXGluth"][1];
		Prev_Page = "NAXPatchwerk";
		Prev_Title = AtlasLoot_TableNames["NAXPatchwerk"][1];
		};
	["NAXGluth"] = {
		Title = AtlasLoot_TableNames["NAXGluth"][1];
		Next_Page = "NAXThaddius";
		Next_Title = AtlasLoot_TableNames["NAXThaddius"][1];
		Prev_Page = "NAXGrobbulus";
		Prev_Title = AtlasLoot_TableNames["NAXGrobbulus"][1];
		};
	["NAXThaddius"] = {
		Title = AtlasLoot_TableNames["NAXThaddius"][1];
		Next_Page = "NAXAnubRekhan";
		Next_Title = AtlasLoot_TableNames["NAXAnubRekhan"][1];
		Prev_Page = "NAXGluth";
		Prev_Title = AtlasLoot_TableNames["NAXGluth"][1];
		};
	["NAXAnubRekhan"] = {
		Title = AtlasLoot_TableNames["NAXAnubRekhan"][1];
		Next_Page = "NAXGrandWidowFaerlina";
		Next_Title = AtlasLoot_TableNames["NAXGrandWidowFaerlina"][1];
		Prev_Page = "NAXThaddius";
		Prev_Title = AtlasLoot_TableNames["NAXThaddius"][1];
		};
	["NAXGrandWidowFaerlina"] = {
		Title = AtlasLoot_TableNames["NAXGrandWidowFaerlina"][1];
		Next_Page = "NAXMaexxna";
		Next_Title = AtlasLoot_TableNames["NAXMaexxna"][1];
		Prev_Page = "NAXAnubRekhan";
		Prev_Title = AtlasLoot_TableNames["NAXAnubRekhan"][1];
		};
	["NAXMaexxna"] = {
		Title = AtlasLoot_TableNames["NAXMaexxna"][1];
		Next_Page = "NAXInstructorRazuvious";
		Next_Title = AtlasLoot_TableNames["NAXInstructorRazuvious"][1];
		Prev_Page = "NAXGrandWidowFaerlina";
		Prev_Title = AtlasLoot_TableNames["NAXGrandWidowFaerlina"][1];
		};
	["NAXInstructorRazuvious"] = {
		Title = AtlasLoot_TableNames["NAXInstructorRazuvious"][1];
		Next_Page = "NAXGothikderHarvester";
		Next_Title = AtlasLoot_TableNames["NAXGothikderHarvester"][1];
		Prev_Page = "NAXMaexxna";
		Prev_Title = AtlasLoot_TableNames["NAXMaexxna"][1];
		};
	["NAXGothikderHarvester"] = {
		Title = AtlasLoot_TableNames["NAXGothikderHarvester"][1];
		Next_Page = "NAXTheFourHorsemen";
		Next_Title = AtlasLoot_TableNames["NAXTheFourHorsemen"][1];
		Prev_Page = "NAXInstructorRazuvious";
		Prev_Title = AtlasLoot_TableNames["NAXInstructorRazuvious"][1];
		};
	["NAXTheFourHorsemen"] = {
		Title = AtlasLoot_TableNames["NAXTheFourHorsemen"][1];
		Next_Page = "NAXNothderPlaguebringer";
		Next_Title = AtlasLoot_TableNames["NAXNothderPlaguebringer"][1];
		Prev_Page = "NAXGothikderHarvester";
		Prev_Title = AtlasLoot_TableNames["NAXGothikderHarvester"][1];
		};
	["NAXNothderPlaguebringer"] = {
		Title = AtlasLoot_TableNames["NAXNothderPlaguebringer"][1];
		Next_Page = "NAXHeiganderUnclean";
		Next_Title = AtlasLoot_TableNames["NAXHeiganderUnclean"][1];
		Prev_Page = "NAXTheFourHorsemen";
		Prev_Title = AtlasLoot_TableNames["NAXTheFourHorsemen"][1];
		};
	["NAXHeiganderUnclean"] = {
		Title = AtlasLoot_TableNames["NAXHeiganderUnclean"][1];
		Next_Page = "NAXLoatheb";
		Next_Title = AtlasLoot_TableNames["NAXLoatheb"][1];
		Prev_Page = "NAXNothderPlaguebringer";
		Prev_Title = AtlasLoot_TableNames["NAXNothderPlaguebringer"][1];
		};
	["NAXLoatheb"] = {
		Title = AtlasLoot_TableNames["NAXLoatheb"][1];
		Next_Page = "NAXSapphiron";
		Next_Title = AtlasLoot_TableNames["NAXSapphiron"][1];
		Prev_Page = "NAXHeiganderUnclean";
		Prev_Title = AtlasLoot_TableNames["NAXHeiganderUnclean"][1];
		};
	["NAXSapphiron"] = {
		Title = AtlasLoot_TableNames["NAXSapphiron"][1];
		Next_Page = "NAXKelThuzard";
		Next_Title = AtlasLoot_TableNames["NAXKelThuzard"][1];
		Prev_Page = "NAXLoatheb";
		Prev_Title = AtlasLoot_TableNames["NAXLoatheb"][1];
		};
	["NAXKelThuzard"] = {
		Title = AtlasLoot_TableNames["NAXKelThuzard"][1];
		Prev_Page = "NAXSapphiron";
		Prev_Title = AtlasLoot_TableNames["NAXSapphiron"][1];
		};

	["RFCTaragaman"] = {
		Title = AtlasLoot_TableNames["RFCTaragaman"][1];
		Next_Page = "RFCJergosh";
		Next_Title = AtlasLoot_TableNames["RFCJergosh"][1];
		};
	["RFCJergosh"] = {
		Title = AtlasLoot_TableNames["RFCJergosh"][1];
		Prev_Page = "RFCTaragaman";
		Prev_Title = AtlasLoot_TableNames["RFCTaragaman"][1];
		};

	["RFDTutenkash"] = {
		Title = AtlasLoot_TableNames["RFDTutenkash"][1];
		Next_Page = "RFDHenryStern";
		Next_Title = AtlasLoot_TableNames["RFDHenryStern"][1];
		};
	["RFDHenryStern"] = {
		Title = AtlasLoot_TableNames["RFDHenryStern"][1];
		Next_Page = "RFDPlaguemaw";
		Next_Title = AtlasLoot_TableNames["RFDPlaguemaw"][1];
		Prev_Page = "RFDTutenkash";
		Prev_Title = AtlasLoot_TableNames["RFDTutenkash"][1];
		};
	["RFDPlaguemaw"] = {
		Title = AtlasLoot_TableNames["RFDPlaguemaw"][1];
		Next_Page = "RFDMordreshFireEye";
		Next_Title = AtlasLoot_TableNames["RFDMordreshFireEye"][1];
		Prev_Page = "RFDHenryStern";
		Prev_Title = AtlasLoot_TableNames["RFDHenryStern"][1];
		};
	["RFDMordreshFireEye"] = {
		Title = AtlasLoot_TableNames["RFDMordreshFireEye"][1];
		Next_Page = "RFDGlutton";
		Next_Title = AtlasLoot_TableNames["RFDGlutton"][1];
		Prev_Page = "RFDPlaguemaw";
		Prev_Title = AtlasLoot_TableNames["RFDPlaguemaw"][1];
		};
	["RFDGlutton"] = {
		Title = AtlasLoot_TableNames["RFDGlutton"][1];
		Next_Page = "RFDRagglesnout";
		Next_Title = AtlasLoot_TableNames["RFDRagglesnout"][1];
		Prev_Page = "RFDMordreshFireEye";
		Prev_Title = AtlasLoot_TableNames["RFDMordreshFireEye"][1];
		};
	["RFDRagglesnout"] = {
		Title = AtlasLoot_TableNames["RFDRagglesnout"][1];
		Next_Page = "RFDAmnennar";
		Next_Title = AtlasLoot_TableNames["RFDAmnennar"][1];
		Prev_Page = "RFDGlutton";
		Prev_Title = AtlasLoot_TableNames["RFDGlutton"][1];
		};
	["RFDAmnennar"] = {
		Title = AtlasLoot_TableNames["RFDAmnennar"][1];
		Prev_Page = "RFDRagglesnout";
		Prev_Title = AtlasLoot_TableNames["RFDRagglesnout"][1];
		};

	["RFKRoogug"] = {
		Title = AtlasLoot_TableNames["RFKRoogug"][1];
		Next_Page = "RFKThorncurse";
		Next_Title = AtlasLoot_TableNames["RFKThorncurse"][1];
		};
	["RFKThorncurse"] = {
		Title = AtlasLoot_TableNames["RFKThorncurse"][1];
		Next_Page = "RFKDeathSpeakerJargba";
		Next_Title = AtlasLoot_TableNames["RFKDeathSpeakerJargba"][1];
		Prev_Page = "RFKRoogug";
		Prev_Title = AtlasLoot_TableNames["RFKRoogug"][1];
		};
	["RFKDeathSpeakerJargba"] = {
		Title = AtlasLoot_TableNames["RFKDeathSpeakerJargba"][1];
		Next_Page = "RFKOverlordRamtusk";
		Next_Title = AtlasLoot_TableNames["RFKOverlordRamtusk"][1];
		Prev_Page = "RFKThorncurse";
		Prev_Title = AtlasLoot_TableNames["RFKThorncurse"][1];
		};
	["RFKOverlordRamtusk"] = {
		Title = AtlasLoot_TableNames["RFKOverlordRamtusk"][1];
		Next_Page = "RFKRazorfenSpearhide";
		Next_Title = AtlasLoot_TableNames["RFKRazorfenSpearhide"][1];
		Prev_Page = "RFKDeathSpeakerJargba";
		Prev_Title = AtlasLoot_TableNames["RFKDeathSpeakerJargba"][1];
		};
	["RFKRazorfenSpearhide"] = {
		Title = AtlasLoot_TableNames["RFKRazorfenSpearhide"][1];
		Next_Page = "RFKAgathelos";
		Next_Title = AtlasLoot_TableNames["RFKAgathelos"][1];
		Prev_Page = "RFKOverlordRamtusk";
		Prev_Title = AtlasLoot_TableNames["RFKOverlordRamtusk"][1];
		};
	["RFKAgathelos"] = {
		Title = AtlasLoot_TableNames["RFKAgathelos"][1];
		Next_Page = "RFKBlindHunter";
		Next_Title = AtlasLoot_TableNames["RFKBlindHunter"][1];
		Prev_Page = "RFKRazorfenSpearhide";
		Prev_Title = AtlasLoot_TableNames["RFKRazorfenSpearhide"][1];
		};
	["RFKBlindHunter"] = {
		Title = AtlasLoot_TableNames["RFKBlindHunter"][1];
		Next_Page = "RFKCharlgaRazorflank";
		Next_Title = AtlasLoot_TableNames["RFKCharlgaRazorflank"][1];
		Prev_Page = "RFKAgathelos";
		Prev_Title = AtlasLoot_TableNames["RFKAgathelos"][1];
		};
	["RFKCharlgaRazorflank"] = {
		Title = AtlasLoot_TableNames["RFKCharlgaRazorflank"][1];
		Next_Page = "RFKEarthcallerHalmgar";
		Next_Title = AtlasLoot_TableNames["RFKEarthcallerHalmgar"][1];
		Prev_Page = "RFKBlindHunter";
		Prev_Title = AtlasLoot_TableNames["RFKBlindHunter"][1];
		};
	["RFKEarthcallerHalmgar"] = {
		Title = AtlasLoot_TableNames["RFKEarthcallerHalmgar"][1];
		Prev_Page = "RFKCharlgaRazorflank";
		Prev_Title = AtlasLoot_TableNames["RFKCharlgaRazorflank"][1];
		};

	["SCHOLOBloodStewardofKirtonos"] = {
		Title = AtlasLoot_TableNames["SCHOLOBloodStewardofKirtonos"][1];
		Next_Page = "SCHOLOKirtonostheHerald";
		Next_Title = AtlasLoot_TableNames["SCHOLOKirtonostheHerald"][1];
		};
	["SCHOLOKirtonostheHerald"] = {
		Title = AtlasLoot_TableNames["SCHOLOKirtonostheHerald"][1];
		Next_Page = "SCHOLOJandiceBarov";
		Next_Title = AtlasLoot_TableNames["SCHOLOJandiceBarov"][1];
		Prev_Page = "SCHOLOBloodStewardofKirtonos";
		Prev_Title = AtlasLoot_TableNames["SCHOLOBloodStewardofKirtonos"][1];
		};
	["SCHOLOJandiceBarov"] = {
		Title = AtlasLoot_TableNames["SCHOLOJandiceBarov"][1];
		Next_Page = "SCHOLORattlegore";
		Next_Title = AtlasLoot_TableNames["SCHOLORattlegore"][1];
		Prev_Page = "SCHOLOKirtonostheHerald";
		Prev_Title = AtlasLoot_TableNames["SCHOLOKirtonostheHerald"][1];
		};
	["SCHOLORattlegore"] = {
		Title = AtlasLoot_TableNames["SCHOLORattlegore"][1];
		Next_Page = "SCHOLODeathKnight";
		Next_Title = AtlasLoot_TableNames["SCHOLODeathKnight"][1];
		Prev_Page = "SCHOLOJandiceBarov";
		Prev_Title = AtlasLoot_TableNames["SCHOLOJandiceBarov"][1];
		};
	["SCHOLODeathKnight"] = {
		Title = AtlasLoot_TableNames["SCHOLODeathKnight"][1];
		Next_Page = "SCHOLOMarduk";
		Next_Title = AtlasLoot_TableNames["SCHOLOMarduk"][1];
		Prev_Page = "SCHOLORattlegore";
		Prev_Title = AtlasLoot_TableNames["SCHOLORattlegore"][1];
		};
	["SCHOLOMarduk"] = {
		Title = AtlasLoot_TableNames["SCHOLOMarduk"][1];
		Next_Page = "SCHOLOVectus";
		Next_Title = AtlasLoot_TableNames["SCHOLOVectus"][1];
		Prev_Page = "SCHOLODeathKnight";
		Prev_Title = AtlasLoot_TableNames["SCHOLODeathKnight"][1];
		};
	["SCHOLOVectus"] = {
		Title = AtlasLoot_TableNames["SCHOLOVectus"][1];
		Next_Page = "SCHOLORasFrostwhisper";
		Next_Title = AtlasLoot_TableNames["SCHOLORasFrostwhisper"][1];
		Prev_Page = "SCHOLOMarduk";
		Prev_Title = AtlasLoot_TableNames["SCHOLOMarduk"][1];
		};
	["SCHOLORasFrostwhisper"] = {
		Title = AtlasLoot_TableNames["SCHOLORasFrostwhisper"][1];
		Next_Page = "SCHOLOKormok";
		Next_Title = AtlasLoot_TableNames["SCHOLOKormok"][1];
		Prev_Page = "SCHOLOVectus";
		Prev_Title = AtlasLoot_TableNames["SCHOLOVectus"][1];
		};
	["SCHOLOKormok"] = {
		Title = AtlasLoot_TableNames["SCHOLOKormok"][1];
		Next_Page = "SCHOLOInstructorMalicia";
		Next_Title = AtlasLoot_TableNames["SCHOLOInstructorMalicia"][1];
		Prev_Page = "SCHOLORasFrostwhisper";
		Prev_Title = AtlasLoot_TableNames["SCHOLORasFrostwhisper"][1];
		};
	["SCHOLOInstructorMalicia"] = {
		Title = AtlasLoot_TableNames["SCHOLOInstructorMalicia"][1];
		Next_Page = "SCHOLODoctorTheolenKrastinov";
		Next_Title = AtlasLoot_TableNames["SCHOLODoctorTheolenKrastinov"][1];
		Prev_Page = "SCHOLOKormok";
		Prev_Title = AtlasLoot_TableNames["SCHOLOKormok"][1];
		};
	["SCHOLODoctorTheolenKrastinov"] = {
		Title = AtlasLoot_TableNames["SCHOLODoctorTheolenKrastinov"][1];
		Next_Page = "SCHOLOLorekeeperPolkelt";
		Next_Title = AtlasLoot_TableNames["SCHOLOLorekeeperPolkelt"][1];
		Prev_Page = "SCHOLOInstructorMalicia";
		Prev_Title = AtlasLoot_TableNames["SCHOLOInstructorMalicia"][1];
		};
	["SCHOLOLorekeeperPolkelt"] = {
		Title = AtlasLoot_TableNames["SCHOLOLorekeeperPolkelt"][1];
		Next_Page = "SCHOLOTheRavenian";
		Next_Title = AtlasLoot_TableNames["SCHOLOTheRavenian"][1];
		Prev_Page = "SCHOLODoctorTheolenKrastinov";
		Prev_Title = AtlasLoot_TableNames["SCHOLODoctorTheolenKrastinov"][1];
		};
	["SCHOLOTheRavenian"] = {
		Title = AtlasLoot_TableNames["SCHOLOTheRavenian"][1];
		Next_Page = "SCHOLOLordAlexeiBarov";
		Next_Title = AtlasLoot_TableNames["SCHOLOLordAlexeiBarov"][1];
		Prev_Page = "SCHOLOLorekeeperPolkelt";
		Prev_Title = AtlasLoot_TableNames["SCHOLOLorekeeperPolkelt"][1];
		};
	["SCHOLOLordAlexeiBarov"] = {
		Title = AtlasLoot_TableNames["SCHOLOLordAlexeiBarov"][1];
		Next_Page = "SCHOLOLadyIlluciaBarov";
		Next_Title = AtlasLoot_TableNames["SCHOLOLadyIlluciaBarov"][1];
		Prev_Page = "SCHOLOTheRavenian";
		Prev_Title = AtlasLoot_TableNames["SCHOLOTheRavenian"][1];
		};
	["SCHOLOLadyIlluciaBarov"] = {
		Title = AtlasLoot_TableNames["SCHOLOLadyIlluciaBarov"][1];
		Next_Page = "SCHOLODarkmasterGandling";
		Next_Title = AtlasLoot_TableNames["SCHOLODarkmasterGandling"][1];
		Prev_Page = "SCHOLOLordAlexeiBarov";
		Prev_Title = AtlasLoot_TableNames["SCHOLOLordAlexeiBarov"][1];
		};
	["SCHOLODarkmasterGandling"] = {
		Title = AtlasLoot_TableNames["SCHOLODarkmasterGandling"][1];
		Prev_Page = "SCHOLOLadyIlluciaBarov";
		Prev_Title = AtlasLoot_TableNames["SCHOLOLadyIlluciaBarov"][1];
		};

	["BSFRethilgore"] = {
		Title = AtlasLoot_TableNames["BSFRethilgore"][1];
		Next_Page = "BSFFelSteed";
		Next_Title = AtlasLoot_TableNames["BSFFelSteed"][1];
		};
	["BSFFelSteed"] = {
		Title = AtlasLoot_TableNames["BSFFelSteed"][1];
		Next_Page = "BSFRazorclawtheButcher";
		Next_Title = AtlasLoot_TableNames["BSFRazorclawtheButcher"][1];
		Prev_Page = "BSFRethilgore";
		Prev_Title = AtlasLoot_TableNames["BSFRethilgore"][1];
		};
	["BSFRazorclawtheButcher"] = {
		Title = AtlasLoot_TableNames["BSFRazorclawtheButcher"][1];
		Next_Page = "BSFSilverlaine";
		Next_Title = AtlasLoot_TableNames["BSFSilverlaine"][1];
		Prev_Page = "BSFFelSteed";
		Prev_Title = AtlasLoot_TableNames["BSFFelSteed"][1];
		};
	["BSFSilverlaine"] = {
		Title = AtlasLoot_TableNames["BSFSilverlaine"][1];
		Next_Page = "BSFSpringvale";
		Next_Title = AtlasLoot_TableNames["BSFSpringvale"][1];
		Prev_Page = "BSFRazorclawtheButcher";
		Prev_Title = AtlasLoot_TableNames["BSFRazorclawtheButcher"][1];
		};
	["BSFSpringvale"] = {
		Title = AtlasLoot_TableNames["BSFSpringvale"][1];
		Next_Page = "BSFOdotheBlindwatcher";
		Next_Title = AtlasLoot_TableNames["BSFOdotheBlindwatcher"][1];
		Prev_Page = "BSFSilverlaine";
		Prev_Title = AtlasLoot_TableNames["BSFSilverlaine"][1];
		};
	["BSFOdotheBlindwatcher"] = {
		Title = AtlasLoot_TableNames["BSFOdotheBlindwatcher"][1];
		Next_Page = "BSFFenrustheDevourer";
		Next_Title = AtlasLoot_TableNames["BSFFenrustheDevourer"][1];
		Prev_Page = "BSFSpringvale";
		Prev_Title = AtlasLoot_TableNames["BSFSpringvale"][1];
		};
	["BSFFenrustheDevourer"] = {
		Title = AtlasLoot_TableNames["BSFFenrustheDevourer"][1];
		Next_Page = "BSFArugalsVoidwalker";
		Next_Title = AtlasLoot_TableNames["BSFArugalsVoidwalker"][1];
		Prev_Page = "BSFOdotheBlindwatcher";
		Prev_Title = AtlasLoot_TableNames["BSFOdotheBlindwatcher"][1];
		};
	["BSFArugalsVoidwalker"] = {
		Title = AtlasLoot_TableNames["BSFArugalsVoidwalker"][1];
		Next_Page = "BSFWolfMasterNandos";
		Next_Title = AtlasLoot_TableNames["BSFWolfMasterNandos"][1];
		Prev_Page = "BSFFenrustheDevourer";
		Prev_Title = AtlasLoot_TableNames["BSFFenrustheDevourer"][1];
		};
	["BSFWolfMasterNandos"] = {
		Title = AtlasLoot_TableNames["BSFWolfMasterNandos"][1];
		Next_Page = "BSFArchmageArugal";
		Next_Title = AtlasLoot_TableNames["BSFArchmageArugal"][1];
		Prev_Page = "BSFArugalsVoidwalker";
		Prev_Title = AtlasLoot_TableNames["BSFArugalsVoidwalker"][1];
		};
	["BSFArchmageArugal"] = {
		Title = AtlasLoot_TableNames["BSFArchmageArugal"][1];
		Prev_Page = "BSFWolfMasterNandos";
		Prev_Title = AtlasLoot_TableNames["BSFWolfMasterNandos"][1];
		};

	["SMFairbanks"] = {
		Title = AtlasLoot_TableNames["SMFairbanks"][1];
		Next_Page = "SMMograine";
		Next_Title = AtlasLoot_TableNames["SMMograine"][1];
		};
	["SMMograine"] = {
		Title = AtlasLoot_TableNames["SMMograine"][1];
		Next_Page = "SMWhitemane";
		Next_Title = AtlasLoot_TableNames["SMWhitemane"][1];
		Prev_Page = "SMFairbanks";
		Prev_Title = AtlasLoot_TableNames["SMFairbanks"][1];
		};
	["SMWhitemane"] = {
		Title = AtlasLoot_TableNames["SMWhitemane"][1];
		Prev_Page = "SMMograine";
		Prev_Title = AtlasLoot_TableNames["SMMograine"][1];
		};

	["SMVishas"] = {
		Title = AtlasLoot_TableNames["SMVishas"][1];
		Next_Page = "SMIronspine";
		Next_Title = AtlasLoot_TableNames["SMIronspine"][1];
		};
	["SMIronspine"] = {
		Title = AtlasLoot_TableNames["SMIronspine"][1];
		Next_Page = "SMAzshir";
		Next_Title = AtlasLoot_TableNames["SMAzshir"][1];
		Prev_Page = "SMVishas";
		Prev_Title = AtlasLoot_TableNames["SMVishas"][1];
		};
	["SMAzshir"] = {
		Title = AtlasLoot_TableNames["SMAzshir"][1];
		Next_Page = "SMFallenChampion";
		Next_Title = AtlasLoot_TableNames["SMFallenChampion"][1];
		Prev_Page = "SMIronspine";
		Prev_Title = AtlasLoot_TableNames["SMIronspine"][1];
		};
	["SMFallenChampion"] = {
		Title = AtlasLoot_TableNames["SMFallenChampion"][1];
		Next_Page = "SMBloodmageThalnos";
		Next_Title = AtlasLoot_TableNames["SMBloodmageThalnos"][1];
		Prev_Page = "SMAzshir";
		Prev_Title = AtlasLoot_TableNames["SMAzshir"][1];
		};
	["SMBloodmageThalnos"] = {
		Title = AtlasLoot_TableNames["SMBloodmageThalnos"][1];
		Prev_Page = "SMFallenChampion";
		Prev_Title = AtlasLoot_TableNames["SMFallenChampion"][1];
		};

	["SMHoundmasterLoksey"] = {
		Title = AtlasLoot_TableNames["SMHoundmasterLoksey"][1];
		Next_Page = "SMDoan";
		Next_Title = AtlasLoot_TableNames["SMDoan"][1];
		};
	["SMDoan"] = {
		Title = AtlasLoot_TableNames["SMDoan"][1];
		Prev_Page = "SMHoundmasterLoksey";
		Prev_Title = AtlasLoot_TableNames["SMHoundmasterLoksey"][1];
		};

	["STRATSkull"] = {
		Title = AtlasLoot_TableNames["STRATSkull"][1];
		Next_Page = "STRATStratholmeCourier";
		Next_Title = AtlasLoot_TableNames["STRATStratholmeCourier"][1];
		};
	["STRATStratholmeCourier"] = {
		Title = AtlasLoot_TableNames["STRATStratholmeCourier"][1];
		Next_Page = "STRATFrasSiabi";
		Next_Title = AtlasLoot_TableNames["STRATFrasSiabi"][1];
		Prev_Page = "STRATSkull";
		Prev_Title = AtlasLoot_TableNames["STRATSkull"][1];
		};
	["STRATFrasSiabi"] = {
		Title = AtlasLoot_TableNames["STRATFrasSiabi"][1];
		Next_Page = "STRATAtiesh";
		Next_Title = AtlasLoot_TableNames["STRATAtiesh"][1];
		Prev_Page = "STRATStratholmeCourier";
		Prev_Title = AtlasLoot_TableNames["STRATStratholmeCourier"][1];
		};
	["STRATAtiesh"] = {
		Title = AtlasLoot_TableNames["STRATAtiesh"][1];
		Next_Page = "STRATHearthsingerForresten";
		Next_Title = AtlasLoot_TableNames["STRATHearthsingerForresten"][1];
		Prev_Page = "STRATFrasSiabi";
		Prev_Title = AtlasLoot_TableNames["STRATFrasSiabi"][1];
		};
	["STRATHearthsingerForresten"] = {
		Title = AtlasLoot_TableNames["STRATHearthsingerForresten"][1];
		Next_Page = "STRATTheUnforgiven";
		Next_Title = AtlasLoot_TableNames["STRATTheUnforgiven"][1];
		Prev_Page = "STRATAtiesh";
		Prev_Title = AtlasLoot_TableNames["STRATAtiesh"][1];
		};
	["STRATTheUnforgiven"] = {
		Title = AtlasLoot_TableNames["STRATTheUnforgiven"][1];
		Next_Page = "STRATTimmytheCruel";
		Next_Title = AtlasLoot_TableNames["STRATTimmytheCruel"][1];
		Prev_Page = "STRATHearthsingerForresten";
		Prev_Title = AtlasLoot_TableNames["STRATHearthsingerForresten"][1];
		};
	["STRATTimmytheCruel"] = {
		Title = AtlasLoot_TableNames["STRATTimmytheCruel"][1];
		Next_Page = "STRATMalorsStrongbox";
		Next_Title = AtlasLoot_TableNames["STRATMalorsStrongbox"][1];
		Prev_Page = "STRATTheUnforgiven";
		Prev_Title = AtlasLoot_TableNames["STRATTheUnforgiven"][1];
		};
	["STRATMalorsStrongbox"] = {
		Title = AtlasLoot_TableNames["STRATMalorsStrongbox"][1];
		Next_Page = "STRATCrimsonHammersmith";
		Next_Title = AtlasLoot_TableNames["STRATCrimsonHammersmith"][1];
		Prev_Page = "STRATTimmytheCruel";
		Prev_Title = AtlasLoot_TableNames["STRATTimmytheCruel"][1];
		};
	["STRATCrimsonHammersmith"] = {
		Title = AtlasLoot_TableNames["STRATCrimsonHammersmith"][1];
		Next_Page = "STRATBSPlansSerenity";
		Next_Title = AtlasLoot_TableNames["STRATBSPlansSerenity"][1];
		Prev_Page = "STRATMalorsStrongbox";
		Prev_Title = AtlasLoot_TableNames["STRATMalorsStrongbox"][1];
		};
	["STRATBSPlansSerenity"] = {
		Title = AtlasLoot_TableNames["STRATBSPlansSerenity"][1];
		Next_Page = "STRATCannonMasterWilley";
		Next_Title = AtlasLoot_TableNames["STRATCannonMasterWilley"][1];
		Prev_Page = "STRATCrimsonHammersmith";
		Prev_Title = AtlasLoot_TableNames["STRATCrimsonHammersmith"][1];
		};
	["STRATCannonMasterWilley"] = {
		Title = AtlasLoot_TableNames["STRATCannonMasterWilley"][1];
		Next_Page = "STRATArchivistGalford";
		Next_Title = AtlasLoot_TableNames["STRATArchivistGalford"][1];
		Prev_Page = "STRATBSPlansSerenity";
		Prev_Title = AtlasLoot_TableNames["STRATBSPlansSerenity"][1];
		};
	["STRATArchivistGalford"] = {
		Title = AtlasLoot_TableNames["STRATArchivistGalford"][1];
		Next_Page = "STRATBalnazzar";
		Next_Title = AtlasLoot_TableNames["STRATBalnazzar"][1];
		Prev_Page = "STRATCannonMasterWilley";
		Prev_Title = AtlasLoot_TableNames["STRATCannonMasterWilley"][1];
		};
	["STRATBalnazzar"] = {
		Title = AtlasLoot_TableNames["STRATBalnazzar"][1];
		Next_Page = "STRATSothosJarien";
		Next_Title = AtlasLoot_TableNames["STRATSothosJarien"][1];
		Prev_Page = "STRATArchivistGalford";
		Prev_Title = AtlasLoot_TableNames["STRATArchivistGalford"][1];
		};
	["STRATSothosJarien"] = {
		Title = AtlasLoot_TableNames["STRATSothosJarien"][1];
		Next_Page = "STRATSothosJarien";
		Next_Title = AtlasLoot_TableNames["STRATSothosJarien"][1];
		Prev_Page = "STRATBalnazzar";
		Prev_Title = AtlasLoot_TableNames["STRATBalnazzar"][1];
		};
	["STRATSothosJarien"] = {
		Title = AtlasLoot_TableNames["STRATSothosJarien"][1];
		Next_Page = "STRATMagistrateBarthilas";
		Next_Title = AtlasLoot_TableNames["STRATMagistrateBarthilas"][1];
		Prev_Page = "STRATSothosJarien";
		Prev_Title = AtlasLoot_TableNames["STRATSothosJarien"][1];
		};
	["STRATMagistrateBarthilas"] = {
		Title = AtlasLoot_TableNames["STRATMagistrateBarthilas"][1];
		Next_Page = "STRATStonespine";
		Next_Title = AtlasLoot_TableNames["STRATStonespine"][1];
		Prev_Page = "STRATSothosJarien";
		Prev_Title = AtlasLoot_TableNames["STRATSothosJarien"][1];
		};
	["STRATStonespine"] = {
		Title = AtlasLoot_TableNames["STRATStonespine"][1];
		Next_Page = "STRATBaronessAnastari";
		Next_Title = AtlasLoot_TableNames["STRATBaronessAnastari"][1];
		Prev_Page = "STRATMagistrateBarthilas";
		Prev_Title = AtlasLoot_TableNames["STRATMagistrateBarthilas"][1];
		};
	["STRATBaronessAnastari"] = {
		Title = AtlasLoot_TableNames["STRATBaronessAnastari"][1];
		Next_Page = "STRATBlackGuardSwordsmith";
		Next_Title = AtlasLoot_TableNames["STRATBlackGuardSwordsmith"][1];
		Prev_Page = "STRATStonespine";
		Prev_Title = AtlasLoot_TableNames["STRATStonespine"][1];
		};
	["STRATBlackGuardSwordsmith"] = {
		Title = AtlasLoot_TableNames["STRATBlackGuardSwordsmith"][1];
		Next_Page = "STRATBSPlansCorruption";
		Next_Title = AtlasLoot_TableNames["STRATBSPlansCorruption"][1];
		Prev_Page = "STRATBaronessAnastari";
		Prev_Title = AtlasLoot_TableNames["STRATBaronessAnastari"][1];
		};
	["STRATBSPlansCorruption"] = {
		Title = AtlasLoot_TableNames["STRATBSPlansCorruption"][1];
		Next_Page = "STRATNerubenkan";
		Next_Title = AtlasLoot_TableNames["STRATNerubenkan"][1];
		Prev_Page = "STRATBlackGuardSwordsmith";
		Prev_Title = AtlasLoot_TableNames["STRATBlackGuardSwordsmith"][1];
		};
	["STRATNerubenkan"] = {
		Title = AtlasLoot_TableNames["STRATNerubenkan"][1];
		Next_Page = "STRATMalekithePallid";
		Next_Title = AtlasLoot_TableNames["STRATMalekithePallid"][1];
		Prev_Page = "STRATBSPlansCorruption";
		Prev_Title = AtlasLoot_TableNames["STRATBSPlansCorruption"][1];
		};
	["STRATMalekithePallid"] = {
		Title = AtlasLoot_TableNames["STRATMalekithePallid"][1];
		Next_Page = "STRATRamsteintheGorger";
		Next_Title = AtlasLoot_TableNames["STRATRamsteintheGorger"][1];
		Prev_Page = "STRATNerubenkan";
		Prev_Title = AtlasLoot_TableNames["STRATNerubenkan"][1];
		};
	["STRATRamsteintheGorger"] = {
		Title = AtlasLoot_TableNames["STRATRamsteintheGorger"][1];
		Next_Page = "STRATBaronRivendare";
		Next_Title = AtlasLoot_TableNames["STRATBaronRivendare"][1];
		Prev_Page = "STRATMalekithePallid";
		Prev_Title = AtlasLoot_TableNames["STRATMalekithePallid"][1];
		};
	["STRATBaronRivendare"] = {
		Title = AtlasLoot_TableNames["STRATBaronRivendare"][1];
		Prev_Page = "STRATRamsteintheGorger";
		Prev_Title = AtlasLoot_TableNames["STRATRamsteintheGorger"][1];
		};

	["VCMarisaduPaige"] = {
		Title = AtlasLoot_TableNames["VCMarisaduPaige"][1];
		Next_Page = "VCBrainwashedNoble";
		Next_Title = AtlasLoot_TableNames["VCBrainwashedNoble"][1];
		};
	["VCBrainwashedNoble"] = {
		Title = AtlasLoot_TableNames["VCBrainwashedNoble"][1];
		Next_Page = "VCForemanThistlenettle";
		Next_Title = AtlasLoot_TableNames["VCForemanThistlenettle"][1];
		Prev_Page = "VCMarisaduPaige";
		Prev_Title = AtlasLoot_TableNames["VCMarisaduPaige"][1];
		};
	["VCForemanThistlenettle"] = {
		Title = AtlasLoot_TableNames["VCForemanThistlenettle"][1];
		Next_Page = "VCRhahkZor";
		Next_Title = AtlasLoot_TableNames["VCRhahkZor"][1];
		Prev_Page = "VCBrainwashedNoble";
		Prev_Title = AtlasLoot_TableNames["VCBrainwashedNoble"][1];
		};
	["VCRhahkZor"] = {
		Title = AtlasLoot_TableNames["VCRhahkZor"][1];
		Next_Page = "VCMinerJohnson";
		Next_Title = AtlasLoot_TableNames["VCMinerJohnson"][1];
		Prev_Page = "VCForemanThistlenettle";
		Prev_Title = AtlasLoot_TableNames["VCForemanThistlenettle"][1];
		};
	["VCMinerJohnson"] = {
		Title = AtlasLoot_TableNames["VCMinerJohnson"][1];
		Next_Page = "VCSneed";
		Next_Title = AtlasLoot_TableNames["VCSneed"][1];
		Prev_Page = "VCRhahkZor";
		Prev_Title = AtlasLoot_TableNames["VCRhahkZor"][1];
		};
	["VCSneed"] = {
		Title = AtlasLoot_TableNames["VCSneed"][1];
		Next_Page = "VCSneedsShredder";
		Next_Title = AtlasLoot_TableNames["VCSneedsShredder"][1];
		Prev_Page = "VCMinerJohnson";
		Prev_Title = AtlasLoot_TableNames["VCMinerJohnson"][1];
		};
	["VCSneedsShredder"] = {
		Title = AtlasLoot_TableNames["VCSneedsShredder"][1];
		Next_Page = "VCGilnid";
		Next_Title = AtlasLoot_TableNames["VCGilnid"][1];
		Prev_Page = "VCSneed";
		Prev_Title = AtlasLoot_TableNames["VCSneed"][1];
		};
	["VCGilnid"] = {
		Title = AtlasLoot_TableNames["VCGilnid"][1];
		Next_Page = "VCCaptainGreenskin";
		Next_Title = AtlasLoot_TableNames["VCCaptainGreenskin"][1];
		Prev_Page = "VCSneedsShredder";
		Prev_Title = AtlasLoot_TableNames["VCSneedsShredder"][1];
		};
	["VCCaptainGreenskin"] = {
		Title = AtlasLoot_TableNames["VCCaptainGreenskin"][1];
		Next_Page = "VCVanCleef";
		Next_Title = AtlasLoot_TableNames["VCVanCleef"][1];
		Prev_Page = "VCGilnid";
		Prev_Title = AtlasLoot_TableNames["VCGilnid"][1];
		};
	["VCVanCleef"] = {
		Title = AtlasLoot_TableNames["VCVanCleef"][1];
		Next_Page = "VCMrSmite";
		Next_Title = AtlasLoot_TableNames["VCMrSmite"][1];
		Prev_Page = "VCCaptainGreenskin";
		Prev_Title = AtlasLoot_TableNames["VCCaptainGreenskin"][1];
		};
	["VCMrSmite"] = {
		Title = AtlasLoot_TableNames["VCMrSmite"][1];
		Next_Page = "VCCookie";
		Next_Title = AtlasLoot_TableNames["VCCookie"][1];
		Prev_Page = "VCVanCleef";
		Prev_Title = AtlasLoot_TableNames["VCVanCleef"][1];
		};
	["VCCookie"] = {
		Title = AtlasLoot_TableNames["VCCookie"][1];
		Prev_Page = "VCMrSmite";
		Prev_Title = AtlasLoot_TableNames["VCMrSmite"][1];
		};

	["AQ20Kurinnaxx"] = {
		Title = AtlasLoot_TableNames["AQ20Kurinnaxx"][1];
		Next_Page = "AQ20Andorov";
		Next_Title = AtlasLoot_TableNames["AQ20Andorov"][1];
		};
	["AQ20Andorov"] = {
		Title = AtlasLoot_TableNames["AQ20Andorov"][1];
		Next_Page = "AQ20Rajaxx";
		Next_Title = AtlasLoot_TableNames["AQ20Rajaxx"][1];
		Prev_Page = "AQ20Kurinnaxx";
		Prev_Title = AtlasLoot_TableNames["AQ20Kurinnaxx"][1];
		};
	["AQ20Rajaxx"] = {
		Title = AtlasLoot_TableNames["AQ20Rajaxx"][1];
		Next_Page = "AQ20CAPTIAN";
		Next_Title = AtlasLoot_TableNames["AQ20CAPTIAN"][1];
		Prev_Page = "AQ20Andorov";
		Prev_Title = AtlasLoot_TableNames["AQ20Andorov"][1];
		};
	["AQ20CAPTIAN"] = {
		Title = AtlasLoot_TableNames["AQ20CAPTIAN"][1];
		Next_Page = "AQ20Moam";
		Next_Title = AtlasLoot_TableNames["AQ20Moam"][1];
		Prev_Page = "AQ20Rajaxx";
		Prev_Title = AtlasLoot_TableNames["AQ20Rajaxx"][1];
		};
	["AQ20Moam"] = {
		Title = AtlasLoot_TableNames["AQ20Moam"][1];
		Next_Page = "AQ20Buru";
		Next_Title = AtlasLoot_TableNames["AQ20Buru"][1];
		Prev_Page = "AQ20CAPTIAN";
		Prev_Title = AtlasLoot_TableNames["AQ20CAPTIAN"][1];
		};
	["AQ20Buru"] = {
		Title = AtlasLoot_TableNames["AQ20Buru"][1];
		Next_Page = "AQ20Ayamiss";
		Next_Title = AtlasLoot_TableNames["AQ20Ayamiss"][1];
		Prev_Page = "AQ20Moam";
		Prev_Title = AtlasLoot_TableNames["AQ20Moam"][1];
		};
	["AQ20Ayamiss"] = {
		Title = AtlasLoot_TableNames["AQ20Ayamiss"][1];
		Next_Page = "AQ20Ossirian";
		Next_Title = AtlasLoot_TableNames["AQ20Ossirian"][1];
		Prev_Page = "AQ20Buru";
		Prev_Title = AtlasLoot_TableNames["AQ20Buru"][1];
		};
	["AQ20Ossirian"] = {
		Title = AtlasLoot_TableNames["AQ20Ossirian"][1];
		Prev_Page = "AQ20Ayamiss";
		Prev_Title = AtlasLoot_TableNames["AQ20Ayamiss"][1];
		};

	["SWStTargor"] = {
		Title = AtlasLoot_TableNames["SWStTargor"][1];
		Next_Page = "SWStKamDeepfury";
		Next_Title = AtlasLoot_TableNames["SWStKamDeepfury"][1];
		};
	["SWStKamDeepfury"] = {
		Title = AtlasLoot_TableNames["SWStKamDeepfury"][1];
		Next_Page = "SWStBazilThredd";
		Next_Title = AtlasLoot_TableNames["SWStBazilThredd"][1];
		Prev_Page = "SWStTargor";
		Prev_Title = AtlasLoot_TableNames["SWStTargor"][1];
		};
	["SWStBazilThredd"] = {
		Title = AtlasLoot_TableNames["SWStBazilThredd"][1];
		Next_Page = "SWStDextrenWard";
		Next_Title = AtlasLoot_TableNames["SWStDextrenWard"][1];
		Prev_Page = "SWStKamDeepfury";
		Prev_Title = AtlasLoot_TableNames["SWStKamDeepfury"][1];
		};
	["SWStDextrenWard"] = {
		Title = AtlasLoot_TableNames["SWStDextrenWard"][1];
		Next_Page = "SWStBruegalIronknuckle";
		Next_Title = AtlasLoot_TableNames["SWStBruegalIronknuckle"][1];
		Prev_Page = "SWStBazilThredd";
		Prev_Title = AtlasLoot_TableNames["SWStBazilThredd"][1];
		};
	["SWStBruegalIronknuckle"] = {
		Title = AtlasLoot_TableNames["SWStBruegalIronknuckle"][1];
		Prev_Page = "SWStDextrenWard";
		Prev_Title = AtlasLoot_TableNames["SWStDextrenWard"][1];
		};

	["STSpawnOfHakkar"] = {
		Title = AtlasLoot_TableNames["STSpawnOfHakkar"][1];
		Next_Page = "STTrollMinibosses";
		Next_Title = AtlasLoot_TableNames["STTrollMinibosses"][1];
		};
	["STTrollMinibosses"] = {
		Title = AtlasLoot_TableNames["STTrollMinibosses"][1];
		Next_Page = "STAtalalarion";
		Next_Title = AtlasLoot_TableNames["STAtalalarion"][1];
		Prev_Page = "STSpawnOfHakkar";
		Prev_Title = AtlasLoot_TableNames["STSpawnOfHakkar"][1];
		};
	["STAtalalarion"] = {
		Title = AtlasLoot_TableNames["STAtalalarion"][1];
		Next_Page = "STDreamscythe";
		Next_Title = AtlasLoot_TableNames["STDreamscythe"][1];
		Prev_Page = "STTrollMinibosses";
		Prev_Title = AtlasLoot_TableNames["STTrollMinibosses"][1];
		};
	["STDreamscythe"] = {
		Title = AtlasLoot_TableNames["STDreamscythe"][1];
		Next_Page = "STWeaver";
		Next_Title = AtlasLoot_TableNames["STWeaver"][1];
		Prev_Page = "STAtalalarion";
		Prev_Title = AtlasLoot_TableNames["STAtalalarion"][1];
		};
	["STWeaver"] = {
		Title = AtlasLoot_TableNames["STWeaver"][1];
		Next_Page = "STAvatarofHakkar";
		Next_Title = AtlasLoot_TableNames["STAvatarofHakkar"][1];
		Prev_Page = "STDreamscythe";
		Prev_Title = AtlasLoot_TableNames["STDreamscythe"][1];
		};
	["STAvatarofHakkar"] = {
		Title = AtlasLoot_TableNames["STAvatarofHakkar"][1];
		Next_Page = "STJammalan";
		Next_Title = AtlasLoot_TableNames["STJammalan"][1];
		Prev_Page = "STWeaver";
		Prev_Title = AtlasLoot_TableNames["STWeaver"][1];
		};
	["STJammalan"] = {
		Title = AtlasLoot_TableNames["STJammalan"][1];
		Next_Page = "STOgom";
		Next_Title = AtlasLoot_TableNames["STOgom"][1];
		Prev_Page = "STAvatarofHakkar";
		Prev_Title = AtlasLoot_TableNames["STAvatarofHakkar"][1];
		};
	["STOgom"] = {
		Title = AtlasLoot_TableNames["STOgom"][1];
		Next_Page = "STMorphaz";
		Next_Title = AtlasLoot_TableNames["STMorphaz"][1];
		Prev_Page = "STJammalan";
		Prev_Title = AtlasLoot_TableNames["STJammalan"][1];
		};
	["STMorphaz"] = {
		Title = AtlasLoot_TableNames["STMorphaz"][1];
		Next_Page = "STHazzas";
		Next_Title = AtlasLoot_TableNames["STHazzas"][1];
		Prev_Page = "STOgom";
		Prev_Title = AtlasLoot_TableNames["STOgom"][1];
		};
	["STHazzas"] = {
		Title = AtlasLoot_TableNames["STHazzas"][1];
		Next_Page = "STEranikus";
		Next_Title = AtlasLoot_TableNames["STEranikus"][1];
		Prev_Page = "STMorphaz";
		Prev_Title = AtlasLoot_TableNames["STMorphaz"][1];
		};
	["STEranikus"] = {
		Title = AtlasLoot_TableNames["STEranikus"][1];
		Prev_Page = "STHazzas";
		Prev_Title = AtlasLoot_TableNames["STHazzas"][1];
		};

	["AQ40Skeram"] = {
		Title = AtlasLoot_TableNames["AQ40Skeram"][1];
		Next_Page = "AQ40Vem";
		Next_Title = AtlasLoot_TableNames["AQ40Vem"][1];
		};
	["AQ40Vem"] = {
		Title = AtlasLoot_TableNames["AQ40Vem"][1];
		Next_Page = "AQ40Sartura";
		Next_Title = AtlasLoot_TableNames["AQ40Sartura"][1];
		Prev_Page = "AQ40Skeram";
		Prev_Title = AtlasLoot_TableNames["AQ40Skeram"][1];
		};
	["AQ40Sartura"] = {
		Title = AtlasLoot_TableNames["AQ40Sartura"][1];
		Next_Page = "AQ40Fankriss";
		Next_Title = AtlasLoot_TableNames["AQ40Fankriss"][1];
		Prev_Page = "AQ40Vem";
		Prev_Title = AtlasLoot_TableNames["AQ40Vem"][1];
		};
	["AQ40Fankriss"] = {
		Title = AtlasLoot_TableNames["AQ40Fankriss"][1];
		Next_Page = "AQ40Viscidus";
		Next_Title = AtlasLoot_TableNames["AQ40Viscidus"][1];
		Prev_Page = "AQ40Sartura";
		Prev_Title = AtlasLoot_TableNames["AQ40Sartura"][1];
		};
	["AQ40Viscidus"] = {
		Title = AtlasLoot_TableNames["AQ40Viscidus"][1];
		Next_Page = "AQ40Huhuran";
		Next_Title = AtlasLoot_TableNames["AQ40Huhuran"][1];
		Prev_Page = "AQ40Fankriss";
		Prev_Title = AtlasLoot_TableNames["AQ40Fankriss"][1];
		};
	["AQ40Huhuran"] = {
		Title = AtlasLoot_TableNames["AQ40Huhuran"][1];
		Next_Page = "AQ40Emperors";
		Next_Title = AtlasLoot_TableNames["AQ40Emperors"][1];
		Prev_Page = "AQ40Viscidus";
		Prev_Title = AtlasLoot_TableNames["AQ40Viscidus"][1];
		};
	["AQ40Emperors"] = {
		Title = AtlasLoot_TableNames["AQ40Emperors"][1];
		Next_Page = "AQ40Ouro";
		Next_Title = AtlasLoot_TableNames["AQ40Ouro"][1];
		Prev_Page = "AQ40Huhuran";
		Prev_Title = AtlasLoot_TableNames["AQ40Huhuran"][1];
		};
	["AQ40Ouro"] = {
		Title = AtlasLoot_TableNames["AQ40Ouro"][1];
		Next_Page = "AQ40CThun";
		Next_Title = AtlasLoot_TableNames["AQ40CThun"][1];
		Prev_Page = "AQ40Emperors";
		Prev_Title = AtlasLoot_TableNames["AQ40Emperors"][1];
		};
	["AQ40CThun"] = {
		Title = AtlasLoot_TableNames["AQ40CThun"][1];
		Prev_Page = "AQ40Ouro";
		Prev_Title = AtlasLoot_TableNames["AQ40Ouro"][1];
		};

	["UldShovelphlange"] = {
		Title = AtlasLoot_TableNames["UldShovelphlange"][1];
		Next_Page = "UldBaelog";
		Next_Title = AtlasLoot_TableNames["UldBaelog"][1];
		};
	["UldBaelog"] = {
		Title = AtlasLoot_TableNames["UldBaelog"][1];
		Next_Page = "UldRevelosh";
		Next_Title = AtlasLoot_TableNames["UldRevelosh"][1];
		Prev_Page = "UldShovelphlange";
		Prev_Title = AtlasLoot_TableNames["UldShovelphlange"][1];
		};
	["UldRevelosh"] = {
		Title = AtlasLoot_TableNames["UldRevelosh"][1];
		Next_Page = "UldIronaya";
		Next_Title = AtlasLoot_TableNames["UldIronaya"][1];
		Prev_Page = "UldBaelog";
		Prev_Title = AtlasLoot_TableNames["UldBaelog"][1];
		};
	["UldIronaya"] = {
		Title = AtlasLoot_TableNames["UldIronaya"][1];
		Next_Page = "UldAncientStoneKeeper";
		Next_Title = AtlasLoot_TableNames["UldAncientStoneKeeper"][1];
		Prev_Page = "UldRevelosh";
		Prev_Title = AtlasLoot_TableNames["UldRevelosh"][1];
		};
	["UldAncientStoneKeeper"] = {
		Title = AtlasLoot_TableNames["UldAncientStoneKeeper"][1];
		Next_Page = "UldGalgannFirehammer";
		Next_Title = AtlasLoot_TableNames["UldGalgannFirehammer"][1];
		Prev_Page = "UldIronaya";
		Prev_Title = AtlasLoot_TableNames["UldIronaya"][1];
		};
	["UldGalgannFirehammer"] = {
		Title = AtlasLoot_TableNames["UldGalgannFirehammer"][1];
		Next_Page = "UldGrimlok";
		Next_Title = AtlasLoot_TableNames["UldGrimlok"][1];
		Prev_Page = "UldAncientStoneKeeper";
		Prev_Title = AtlasLoot_TableNames["UldAncientStoneKeeper"][1];
		};
	["UldGrimlok"] = {
		Title = AtlasLoot_TableNames["UldGrimlok"][1];
		Next_Page = "UldArchaedas";
		Next_Title = AtlasLoot_TableNames["UldArchaedas"][1];
		Prev_Page = "UldGalgannFirehammer";
		Prev_Title = AtlasLoot_TableNames["UldGalgannFirehammer"][1];
		};
	["UldArchaedas"] = {
		Title = AtlasLoot_TableNames["UldArchaedas"][1];
		Prev_Page = "UldGrimlok";
		Prev_Title = AtlasLoot_TableNames["UldGrimlok"][1];
		};

	["WCKalldanFelmoon"] = {
		Title = AtlasLoot_TableNames["WCKalldanFelmoon"][1];
		Next_Page = "WCMadMagglish";
		Next_Title = AtlasLoot_TableNames["WCMadMagglish"][1];
		};
	["WCMadMagglish"] = {
		Title = AtlasLoot_TableNames["WCMadMagglish"][1];
		Next_Page = "WCTrigoretheLasher";
		Next_Title = AtlasLoot_TableNames["WCTrigoretheLasher"][1];
		Prev_Page = "WCKalldanFelmoon";
		Prev_Title = AtlasLoot_TableNames["WCKalldanFelmoon"][1];
		};
	["WCTrigoretheLasher"] = {
		Title = AtlasLoot_TableNames["WCTrigoretheLasher"][1];
		Next_Page = "WCLordCobrahn";
		Next_Title = AtlasLoot_TableNames["WCLordCobrahn"][1];
		Prev_Page = "WCMadMagglish";
		Prev_Title = AtlasLoot_TableNames["WCMadMagglish"][1];
		};
	["WCLordCobrahn"] = {
		Title = AtlasLoot_TableNames["WCLordCobrahn"][1];
		Next_Page = "WCLadyAnacondra";
		Next_Title = AtlasLoot_TableNames["WCLadyAnacondra"][1];
		Prev_Page = "WCTrigoretheLasher";
		Prev_Title = AtlasLoot_TableNames["WCTrigoretheLasher"][1];
		};
	["WCLadyAnacondra"] = {
		Title = AtlasLoot_TableNames["WCLadyAnacondra"][1];
		Next_Page = "WCKresh";
		Next_Title = AtlasLoot_TableNames["WCKresh"][1];
		Prev_Page = "WCLordCobrahn";
		Prev_Title = AtlasLoot_TableNames["WCLordCobrahn"][1];
		};
	["WCKresh"] = {
		Title = AtlasLoot_TableNames["WCKresh"][1];
		Next_Page = "WCLordPythas";
		Next_Title = AtlasLoot_TableNames["WCLordPythas"][1];
		Prev_Page = "WCLadyAnacondra";
		Prev_Title = AtlasLoot_TableNames["WCLadyAnacondra"][1];
		};
	["WCLordPythas"] = {
		Title = AtlasLoot_TableNames["WCLordPythas"][1];
		Next_Page = "WCSkum";
		Next_Title = AtlasLoot_TableNames["WCSkum"][1];
		Prev_Page = "WCKresh";
		Prev_Title = AtlasLoot_TableNames["WCKresh"][1];
		};
	["WCSkum"] = {
		Title = AtlasLoot_TableNames["WCSkum"][1];
		Next_Page = "WCLordSerpentis";
		Next_Title = AtlasLoot_TableNames["WCLordSerpentis"][1];
		Prev_Page = "WCLordPythas";
		Prev_Title = AtlasLoot_TableNames["WCLordPythas"][1];
		};
	["WCLordSerpentis"] = {
		Title = AtlasLoot_TableNames["WCLordSerpentis"][1];
		Next_Page = "WCVerdan";
		Next_Title = AtlasLoot_TableNames["WCVerdan"][1];
		Prev_Page = "WCSkum";
		Prev_Title = AtlasLoot_TableNames["WCSkum"][1];
		};
	["WCVerdan"] = {
		Title = AtlasLoot_TableNames["WCVerdan"][1];
		Next_Page = "WCMutanus";
		Next_Title = AtlasLoot_TableNames["WCMutanus"][1];
		Prev_Page = "WCLordSerpentis";
		Prev_Title = AtlasLoot_TableNames["WCLordSerpentis"][1];
		};
	["WCMutanus"] = {
		Title = AtlasLoot_TableNames["WCMutanus"][1];
		Next_Page = "WCDeviateFaerieDragon";
		Next_Title = AtlasLoot_TableNames["WCDeviateFaerieDragon"][1];
		Prev_Page = "WCVerdan";
		Prev_Title = AtlasLoot_TableNames["WCVerdan"][1];
		};
	["WCDeviateFaerieDragon"] = {
		Title = AtlasLoot_TableNames["WCDeviateFaerieDragon"][1];
		Prev_Page = "WCMutanus";
		Prev_Title = AtlasLoot_TableNames["WCMutanus"][1];
		};

	["ZFAntusul"] = {
		Title = AtlasLoot_TableNames["ZFAntusul"][1];
		Next_Page = "ZFThekatheMartyr";
		Next_Title = AtlasLoot_TableNames["ZFThekatheMartyr"][1];
		};
	["ZFThekatheMartyr"] = {
		Title = AtlasLoot_TableNames["ZFThekatheMartyr"][1];
		Next_Page = "ZFWitchDoctorZumrah";
		Next_Title = AtlasLoot_TableNames["ZFWitchDoctorZumrah"][1];
		Prev_Page = "ZFAntusul";
		Prev_Title = AtlasLoot_TableNames["ZFAntusul"][1];
		};
	["ZFWitchDoctorZumrah"] = {
		Title = AtlasLoot_TableNames["ZFWitchDoctorZumrah"][1];
		Next_Page = "ZFNekrumGutchewer";
		Next_Title = AtlasLoot_TableNames["ZFNekrumGutchewer"][1];
		Prev_Page = "ZFThekatheMartyr";
		Prev_Title = AtlasLoot_TableNames["ZFThekatheMartyr"][1];
		};
	["ZFNekrumGutchewer"] = {
		Title = AtlasLoot_TableNames["ZFNekrumGutchewer"][1];
		Next_Page = "ZFSezzziz";
		Next_Title = AtlasLoot_TableNames["ZFSezzziz"][1];
		Prev_Page = "ZFWitchDoctorZumrah";
		Prev_Title = AtlasLoot_TableNames["ZFWitchDoctorZumrah"][1];
		};
	["ZFSezzziz"] = {
		Title = AtlasLoot_TableNames["ZFSezzziz"][1];
		Next_Page = "ZFDustwraith";
		Next_Title = AtlasLoot_TableNames["ZFDustwraith"][1];
		Prev_Page = "ZFNekrumGutchewer";
		Prev_Title = AtlasLoot_TableNames["ZFNekrumGutchewer"][1];
		};
	["ZFDustwraith"] = {
		Title = AtlasLoot_TableNames["ZFDustwraith"][1];
		Next_Page = "ZFSergeantBly";
		Next_Title = AtlasLoot_TableNames["ZFSergeantBly"][1];
		Prev_Page = "ZFSezzziz";
		Prev_Title = AtlasLoot_TableNames["ZFSezzziz"][1];
		};
	["ZFSergeantBly"] = {
		Title = AtlasLoot_TableNames["ZFSergeantBly"][1];
		Next_Page = "ZFSandfury";
		Next_Title = AtlasLoot_TableNames["ZFSandfury"][1];
		Prev_Page = "ZFDustwraith";
		Prev_Title = AtlasLoot_TableNames["ZFDustwraith"][1];
		};
	["ZFSandfury"] = {
		Title = AtlasLoot_TableNames["ZFSandfury"][1];
		Next_Page = "ZFHydromancerVelratha";
		Next_Title = AtlasLoot_TableNames["ZFHydromancerVelratha"][1];
		Prev_Page = "ZFSergeantBly";
		Prev_Title = AtlasLoot_TableNames["ZFSergeantBly"][1];
		};
	["ZFHydromancerVelratha"] = {
		Title = AtlasLoot_TableNames["ZFHydromancerVelratha"][1];
		Next_Page = "ZFGahzrilla";
		Next_Title = AtlasLoot_TableNames["ZFGahzrilla"][1];
		Prev_Page = "ZFSandfury";
		Prev_Title = AtlasLoot_TableNames["ZFSandfury"][1];
		};
	["ZFGahzrilla"] = {
		Title = AtlasLoot_TableNames["ZFGahzrilla"][1];
		Next_Page = "ZFChiefUkorzSandscalp";
		Next_Title = AtlasLoot_TableNames["ZFChiefUkorzSandscalp"][1];
		Prev_Page = "ZFHydromancerVelratha";
		Prev_Title = AtlasLoot_TableNames["ZFHydromancerVelratha"][1];
		};
	["ZFChiefUkorzSandscalp"] = {
		Title = AtlasLoot_TableNames["ZFChiefUkorzSandscalp"][1];
		Next_Page = "ZFZerillis";
		Next_Title = AtlasLoot_TableNames["ZFZerillis"][1];
		Prev_Page = "ZFGahzrilla";
		Prev_Title = AtlasLoot_TableNames["ZFGahzrilla"][1];
		};
	["ZFZerillis"] = {
		Title = AtlasLoot_TableNames["ZFZerillis"][1];
		Prev_Page = "ZFChiefUkorzSandscalp";
		Prev_Title = AtlasLoot_TableNames["ZFChiefUkorzSandscalp"][1];
		};

	["ZGJeklik"] = {
		Title = AtlasLoot_TableNames["ZGJeklik"][1];
		Next_Page = "ZGVenoxis";
		Next_Title = AtlasLoot_TableNames["ZGVenoxis"][1];
		};
	["ZGVenoxis"] = {
		Title = AtlasLoot_TableNames["ZGVenoxis"][1];
		Next_Page = "ZGMarli";
		Next_Title = AtlasLoot_TableNames["ZGMarli"][1];
		Prev_Page = "ZGJeklik";
		Prev_Title = AtlasLoot_TableNames["ZGJeklik"][1];
		};
	["ZGMarli"] = {
		Title = AtlasLoot_TableNames["ZGMarli"][1];
		Next_Page = "ZGMandokir";
		Next_Title = AtlasLoot_TableNames["ZGMandokir"][1];
		Prev_Page = "ZGVenoxis";
		Prev_Title = AtlasLoot_TableNames["ZGVenoxis"][1];
		};
	["ZGMandokir"] = {
		Title = AtlasLoot_TableNames["ZGMandokir"][1];
		Next_Page = "ZGGrilek";
		Next_Title = AtlasLoot_TableNames["ZGGrilek"][1];
		Prev_Page = "ZGMarli";
		Prev_Title = AtlasLoot_TableNames["ZGMarli"][1];
		};
	["ZGGrilek"] = {
		Title = AtlasLoot_TableNames["ZGGrilek"][1];
		Next_Page = "ZGHazzarah";
		Next_Title = AtlasLoot_TableNames["ZGHazzarah"][1];
		Prev_Page = "ZGMandokir";
		Prev_Title = AtlasLoot_TableNames["ZGMandokir"][1];
		};
	["ZGHazzarah"] = {
		Title = AtlasLoot_TableNames["ZGHazzarah"][1];
		Next_Page = "ZGRenataki";
		Next_Title = AtlasLoot_TableNames["ZGRenataki"][1];
		Prev_Page = "ZGGrilek";
		Prev_Title = AtlasLoot_TableNames["ZGGrilek"][1];
		};
	["ZGRenataki"] = {
		Title = AtlasLoot_TableNames["ZGRenataki"][1];
		Next_Page = "ZGWushoolay";
		Next_Title = AtlasLoot_TableNames["ZGWushoolay"][1];
		Prev_Page = "ZGHazzarah";
		Prev_Title = AtlasLoot_TableNames["ZGHazzarah"][1];
		};
	["ZGWushoolay"] = {
		Title = AtlasLoot_TableNames["ZGWushoolay"][1];
		Next_Page = "ZGGahzranka";
		Next_Title = AtlasLoot_TableNames["ZGGahzranka"][1];
		Prev_Page = "ZGRenataki";
		Prev_Title = AtlasLoot_TableNames["ZGRenataki"][1];
		};
	["ZGGahzranka"] = {
		Title = AtlasLoot_TableNames["ZGGahzranka"][1];
		Next_Page = "ZGThekal";
		Next_Title = AtlasLoot_TableNames["ZGThekal"][1];
		Prev_Page = "ZGWushoolay";
		Prev_Title = AtlasLoot_TableNames["ZGWushoolay"][1];
		};
	["ZGThekal"] = {
		Title = AtlasLoot_TableNames["ZGThekal"][1];
		Next_Page = "ZGArlokk";
		Next_Title = AtlasLoot_TableNames["ZGArlokk"][1];
		Prev_Page = "ZGGahzranka";
		Prev_Title = AtlasLoot_TableNames["ZGGahzranka"][1];
		};
	["ZGArlokk"] = {
		Title = AtlasLoot_TableNames["ZGArlokk"][1];
		Next_Page = "ZGJindo";
		Next_Title = AtlasLoot_TableNames["ZGJindo"][1];
		Prev_Page = "ZGThekal";
		Prev_Title = AtlasLoot_TableNames["ZGThekal"][1];
		};
	["ZGJindo"] = {
		Title = AtlasLoot_TableNames["ZGJindo"][1];
		Next_Page = "ZGHakkar";
		Next_Title = AtlasLoot_TableNames["ZGHakkar"][1];
		Prev_Page = "ZGArlokk";
		Prev_Title = AtlasLoot_TableNames["ZGArlokk"][1];
		};
	["ZGHakkar"] = {
		Title = AtlasLoot_TableNames["ZGHakkar"][1];
		Prev_Page = "ZGJindo";
		Prev_Title = AtlasLoot_TableNames["ZGJindo"][1];
		};
	["BWLKastyon"] = {
		Title = AtlasLoot_TableNames["BWLKastyon"][1];
		Next_Page = "BWLGorrak";
		Next_Title = AtlasLoot_TableNames["BWLGorrak"][1];
		};
	["BWLGorrak"] = {
		Title = AtlasLoot_TableNames["BWLGorrak"][1];
		Next_Page = "BWLGholbine";
		Next_Title = AtlasLoot_TableNames["BWLGholbine"][1];
		Prev_Page = "BWLKastyon";
		Prev_Title = AtlasLoot_TableNames["BWLKastyon"][1];
		};
	["BWLGholbine"] = {
		Title = AtlasLoot_TableNames["BWLGholbine"][1];
		Next_Page = "BWLVarguk";
		Next_Title = AtlasLoot_TableNames["BWLVarguk"][1];
		Prev_Page = "BWLGorrak";
		Prev_Title = AtlasLoot_TableNames["BWLGorrak"][1];
		};
	["BWLVarguk"] = {
		Title = AtlasLoot_TableNames["BWLVarguk"][1];
		Next_Page = "BWLTelarion";
		Next_Title = AtlasLoot_TableNames["BWLTelarion"][1];
		Prev_Page = "BWLGholbine";
		Prev_Title = AtlasLoot_TableNames["BWLGholbine"][1];
		};
	["BWLTelarion"] = {
		Title = AtlasLoot_TableNames["BWLTelarion"][1];
		Next_Page = "BWLPravus";
		Next_Title = AtlasLoot_TableNames["BWLPravus"][1];
		Prev_Page = "BWLVarguk";
		Prev_Title = AtlasLoot_TableNames["BWLVarguk"][1];
			};
	["BWLPravus"] = {
		Title = AtlasLoot_TableNames["BWLPravus"][1];
		Next_Page = "BWLShade";
		Next_Title = AtlasLoot_TableNames["BWLShade"][1];
		Prev_Page = "BWLTelarion";
		Prev_Title = AtlasLoot_TableNames["BWLTelarion"][1];
		};
	["BWLShade"] = {
		Title = AtlasLoot_TableNames["BWLShade"][1];
		Prev_Page = "BWLPravus";
		Prev_Title = AtlasLoot_TableNames["BWLPravus"][1];
		Next_Page = "BWLZytolis";
		Next_Title = AtlasLoot_TableNames["BWLZytolis"][1];
		};
	["BWLZytolis"] = {
		Title = AtlasLoot_TableNames["BWLZytolis"][1].. " (page 1)";
		Prev_Page = "BWLShade";
		Prev_Title = AtlasLoot_TableNames["BWLShade"][1];
		Next_Page = "BWLZytolis2";
		Next_Title = AtlasLoot_TableNames["BWLZytolis2"][1];
		};
	["BWLZytolis2"] = {
		Title = AtlasLoot_TableNames["BWLZytolis2"][1] .. " (page 2)";
		Prev_Page = "BWLShade";
		Prev_Title = AtlasLoot_TableNames["BWLShade"][1];
	};

	["DMRhahkzor"] = {
		Title = AtlasLoot_TableNames["DMRhahkzor"][1];
		Next_Page = "DMSneedShredder";
		Next_Title = AtlasLoot_TableNames["DMSneedShredder"][1];
		};
	["DMSneedShredder"] = {
		Title = AtlasLoot_TableNames["DMSneedShredder"][1];
		Next_Page = "DMEdwinVanCleef";
		Next_Title = AtlasLoot_TableNames["DMEdwinVanCleef"][1];
		Prev_Page = "DMRhahkzor";
		Prev_Title = AtlasLoot_TableNames["DMRhahkzor"][1];
		};
	["DMEdwinVanCleef"] = {
		Title = AtlasLoot_TableNames["DMEdwinVanCleef"][1];
		Prev_Page = "DMSneedShredder";
		Prev_Title = AtlasLoot_TableNames["DMSneedShredder"][1];
		};
  --Season Events
	["Brewfest1"] = {
		Title = AL["Brewfest"];
		Next_Page = "Brewfest2";
		Next_Title = AL["Brewfest"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["Brewfest2"] = {
		Title = AL["Brewfest"];
		Next_Page = "CorenDirebrew";
		Next_Title = AtlasLoot_TableNames["CorenDirebrew"][1];
		Prev_Page = "Brewfest1";
		Prev_Title = AL["Brewfest"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["CorenDirebrew"] = {
		Title = AL["Coren Direbrew"];
		Prev_Page = "Brewfest2";
		Prev_Title = AL["Brewfest"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["ChildrensWeek"] = {
		Title = AL["Children's Week"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["Winterviel1"] = {
		Title = AL["Feast of Winter Veil"];
		Next_Page = "Winterviel2";
		Next_Title = AtlasLoot_TableNames["Winterviel2"][1];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["Winterviel2"] = {
		Title = AtlasLoot_TableNames["Winterviel2"][1];
		Prev_Page = "Winterviel1";
		Prev_Title = AL["Feast of Winter Veil"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["Halloween1"] = {
		Title = AL["Hallow's End"];
		Next_Page = "Halloween2";
		Next_Title = AL["Hallow's End"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["Halloween2"] = {
		Title = AL["Hallow's End"];
		Next_Page = "HeadlessHorseman";
		Next_Title = AL["Headless Horseman"];
		Prev_Page = "Halloween1";
		Prev_Title = AL["Hallow's End"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["HeadlessHorseman"] = {
		Title = AL["Headless Horseman"];
		Prev_Page = "Halloween2";
		Prev_Title = AL["Hallow's End"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["HarvestFestival"] = {
		Title = AL["Harvest Festival"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["Valentineday"] = {
		Title = AL["Love is in the Air"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["LunarFestival1"] = {
		Title = AL["Lunar Festival"];
		Next_Page = "LunarFestival2";
		Next_Title = AL["Lunar Festival"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["LunarFestival2"] = {
		Title = AL["Lunar Festival"];
		Prev_Page = "LunarFestival1";
		Prev_Title = AL["Lunar Festival"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["MidsummerFestival"] = {
		Title = AL["Midsummer Fire Festival"];
		Next_Page = "LordAhune";
		Next_Title = AL["Lord Ahune"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["LordAhune"] = {
		Title = AL["Lord Ahune"];
		Prev_Page = "MidsummerFestival";
		Prev_Title = AL["Midsummer Fire Festival"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["LordAhuneHEROIC"] = {
		Title = AL["Lord Ahune"];
		Prev_Page = "MidsummerFestival";
		Prev_Title = AL["Midsummer Fire Festival"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["Noblegarden"] = {
		Title = AL["Noblegarden"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
  --World Events
	["BashirLanding"] = {
		Title = AL["Bash'ir Landing Skyguard Raid"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["ElementalInvasion"] = {
		Title = AL["Elemental Invasion"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["GurubashiArena"] = {
		Title = AL["Gurubashi Arena Booty Run"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["Shartuul"] = {
		Title = AL["Shartuul"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["ScourgeInvasionEvent1"] = {
		Title = AL["Scourge Invasion"];
		Next_Page = "ScourgeInvasionEvent2";
		Next_Title = AtlasLoot_TableNames["ScourgeInvasionEvent2"][1];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["ScourgeInvasionEvent2"] = {
		Title = AtlasLoot_TableNames["ScourgeInvasionEvent2"][1];
		Prev_Page = "ScourgeInvasionEvent1";
		Prev_Title = AL["Scourge Invasion"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
	["FishingExtravaganza"] = {
		Title = AL["Stranglethorn Fishing Extravaganza"];
		Back_Page = "WORLDEVENTMENU";
		Back_Title = AL["World Events"];
		};
  --Abyssal Counci
	["Templars"] = {
		Title = AL["Abyssal Council"].." - "..AL["Templars"];
		Back_Page = "ABYSSALMENU";
		Back_Title = AL["Abyssal Council"];
		};
	["Dukes"] = {
		Title = AL["Abyssal Council"].." - "..AL["Dukes"];
		Back_Page = "ABYSSALMENU";
		Back_Title = AL["Abyssal Council"];
		};
	["HighCouncil"] = {
		Title = AL["Abyssal Council"].." - "..AL["High Council"];
		Back_Page = "ABYSSALMENU";
		Back_Title = AL["Abyssal Council"];
		};
  --Ethereum Prison
	["ArmbreakerHuffaz"] = {
		Title = AL["Armbreaker Huffaz"];
		Back_Page = "ETHEREUMMENU";
		Back_Title = AL["Ethereum Prison"];
		};
	["FelTinkererZortan"] = {
		Title = AL["Fel Tinkerer Zortan"];
		Back_Page = "ETHEREUMMENU";
		Back_Title = AL["Ethereum Prison"];
		};
	["Forgosh"] = {
		Title = AL["Forgosh"];
		Back_Page = "ETHEREUMMENU";
		Back_Title = AL["Ethereum Prison"];
		};
	["Gulbor"] = {
		Title = AL["Gul'bor"];
		Back_Page = "ETHEREUMMENU";
		Back_Title = AL["Ethereum Prison"];
		};
	["MalevustheMad"] = {
		Title = AL["Malevus the Mad"];
		Back_Page = "ETHEREUMMENU";
		Back_Title = AL["Ethereum Prison"];
		};
	["PorfustheGemGorger"] = {
		Title = AL["Porfus the Gem Gorger"];
		Back_Page = "ETHEREUMMENU";
		Back_Title = AL["Ethereum Prison"];
		};
	["WrathbringerLaztarash"] = {
		Title = AL["Wrathbringer Laz-tarash"];
		Back_Page = "ETHEREUMMENU";
		Back_Title = AL["Ethereum Prison"];
		};
	["BashirStasisChambers"] = {
		Title = AL["Bash'ir Landing Stasis Chambers"];
		Back_Page = "ETHEREUMMENU";
		Back_Title = AL["Ethereum Prison"];
		};
  --Skettis
	["DarkscreecherAkkarai"] = {
		Title = AL["Darkscreecher Akkarai"];
		Back_Page = "SKETTISMENU";
		Back_Title = AL["Skettis"];
		};
	["Karrog"] = {
		Title = AL["Karrog"];
		Back_Page = "SKETTISMENU";
		Back_Title = AL["Skettis"];
		};
	["GezzaraktheHuntress"] = {
		Title = AL["Gezzarak the Huntress"];
		Back_Page = "SKETTISMENU";
		Back_Title = AL["Skettis"];
		};
	["VakkiztheWindrager"] = {
		Title = AL["Vakkiz the Windrager"];
		Back_Page = "SKETTISMENU";
		Back_Title = AL["Skettis"];
		};
	["Terokk"] = {
		Title = AL["Terokk"];
		Back_Page = "SKETTISMENU";
		Back_Title = AL["Skettis"];
		};

--Crafting
  --Alchemy
	["AlchemyApprentice1"] = {
		Title = ALCHEMY..": "..APPRENTICE;
		Back_Page = "ALCHEMYMENU";
		Back_Title = ALCHEMY;
		Next_Page = "AlchemyJourneyman1";
		Next_Title = ALCHEMY..": "..JOURNEYMAN;
		};
	["AlchemyJourneyman1"] = {
		Title = ALCHEMY..": "..JOURNEYMAN;
		Back_Page = "ALCHEMYMENU";
		Back_Title = ALCHEMY;
		Next_Page = "AlchemyExpert1";
		Next_Title = ALCHEMY..": "..EXPERT;
		Prev_Page = "AlchemyApprentice1";
		Prev_Title = ALCHEMY..": "..APPRENTICE;
		};
	["AlchemyExpert1"] = {
		Title = ALCHEMY..": "..EXPERT;
		Back_Page = "ALCHEMYMENU";
		Back_Title = ALCHEMY;
		Next_Page = "AlchemyArtisan1";
		Next_Title = ALCHEMY..": "..ARTISAN;
		Prev_Page = "AlchemyJourneyman1";
		Prev_Title = ALCHEMY..": "..JOURNEYMAN;
		};
	["AlchemyArtisan1"] = {
		Title = ALCHEMY..": "..ARTISAN;
		Back_Page = "ALCHEMYMENU";
		Back_Title = ALCHEMY;
		Next_Page = "AlchemyArtisan2";
		Next_Title = ALCHEMY..": "..ARTISAN;
		Prev_Page = "AlchemyExpert1";
		Prev_Title = ALCHEMY..": "..EXPERT;
		};
	["AlchemyArtisan2"] = {
		Title = ALCHEMY..": "..ARTISAN;
		Back_Page = "ALCHEMYMENU";
		Back_Title = ALCHEMY;
		Next_Page = "AlchemyMaster1";
		Next_Title = ALCHEMY..": "..MASTER;
		Prev_Page = "AlchemyArtisan1";
		Prev_Title = ALCHEMY..": "..ARTISAN;
		};
	["AlchemyMaster1"] = {
		Title = ALCHEMY..": "..MASTER;
		Back_Page = "ALCHEMYMENU";
		Back_Title = ALCHEMY;
		Next_Page = "AlchemyMaster2";
		Next_Title = ALCHEMY..": "..MASTER;
		Prev_Page = "AlchemyArtisan2";
		Prev_Title = ALCHEMY..": "..ARTISAN;
		};
	["AlchemyMaster2"] = {
		Title = ALCHEMY..": "..MASTER;
		Back_Page = "ALCHEMYMENU";
		Back_Title = ALCHEMY;
		Next_Page = "AlchemyMaster3";
		Next_Title = ALCHEMY..": "..MASTER;
		Prev_Page = "AlchemyMaster1";
		Prev_Title = ALCHEMY..": "..MASTER;
		};
	["AlchemyMaster3"] = {
		Title = ALCHEMY..": "..MASTER;
		Back_Page = "ALCHEMYMENU";
		Back_Title = ALCHEMY;
		Next_Page = "AlchemyMaster4";
		Next_Title = ALCHEMY..": "..MASTER;
		Prev_Page = "AlchemyMaster2";
		Prev_Title = ALCHEMY..": "..MASTER;
		};
	["AlchemyMaster4"] = {
		Title = ALCHEMY..": "..MASTER;
		Back_Page = "ALCHEMYMENU";
		Back_Title = ALCHEMY;
		Prev_Page = "AlchemyMaster3";
		Prev_Title = ALCHEMY..": "..MASTER;
		};
  --BlackSmithing
	["SmithingApprentice1"] = {
		Title = BLACKSMITHING..": "..APPRENTICE;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Next_Page = "SmithingJourneyman1";
		Next_Title = BLACKSMITHING..": "..JOURNEYMAN;
		};
	["SmithingJourneyman1"] = {
		Title = BLACKSMITHING..": "..JOURNEYMAN;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "SmithingApprentice1";
		Prev_Title = BLACKSMITHING..": "..APPRENTICE;
		Next_Page = "SmithingExpert1";
		Next_Title = BLACKSMITHING..": "..EXPERT;
		};
	["SmithingExpert1"] = {
		Title = BLACKSMITHING..": "..EXPERT;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "SmithingJourneyman1";
		Prev_Title = BLACKSMITHING..": "..JOURNEYMAN;
		Next_Page = "SmithingExpert2";
		Next_Title = BLACKSMITHING..": "..EXPERT;
		};
	["SmithingExpert2"] = {
		Title = BLACKSMITHING..": "..EXPERT;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "SmithingExpert1";
		Prev_Title = BLACKSMITHING..": "..EXPERT;
		Next_Page = "SmithingArtisan1";
		Next_Title = BLACKSMITHING..": "..ARTISAN;
		};
	["SmithingArtisan1"] = {
		Title = BLACKSMITHING..": "..ARTISAN;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "SmithingExpert2";
		Prev_Title = BLACKSMITHING..": "..EXPERT;
		Next_Page = "SmithingArtisan2";
		Next_Title = BLACKSMITHING..": "..ARTISAN;
		};
	["SmithingArtisan2"] = {
		Title = BLACKSMITHING..": "..ARTISAN;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "SmithingArtisan1";
		Prev_Title = BLACKSMITHING..": "..ARTISAN;
		Next_Page = "SmithingMaster1";
		Next_Title = BLACKSMITHING..": "..MASTER;
		};
	["SmithingMaster1"] = {
		Title = BLACKSMITHING..": "..ARTISAN;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "SmithingArtisan2";
		Prev_Title = BLACKSMITHING..": "..ARTISAN;
		Next_Page = "SmithingMaster2";
		Next_Title = BLACKSMITHING..": "..MASTER;
		};
	["SmithingMaster2"] = {
		Title = BLACKSMITHING..": "..MASTER;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "SmithingMaster1";
		Prev_Title = BLACKSMITHING..": "..MASTER;
		Next_Page = "SmithingMaster3";
		Next_Title = BLACKSMITHING..": "..MASTER;
		};
	["SmithingMaster3"] = {
		Title = BLACKSMITHING..": "..MASTER;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "SmithingMaster2";
		Prev_Title = BLACKSMITHING..": "..MASTER;
		Next_Page = "SmithingMaster4";
		Next_Title = BLACKSMITHING..": "..MASTER;
		};
	["SmithingMaster4"] = {
		Title = BLACKSMITHING..": "..MASTER;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "SmithingMaster3";
		Prev_Title = BLACKSMITHING..": "..MASTER;
		Next_Page = "SmithingMaster5";
		Next_Title = BLACKSMITHING..": "..MASTER;
		};
	["SmithingMaster5"] = {
		Title = BLACKSMITHING..": "..MASTER;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "SmithingMaster4";
		Prev_Title = BLACKSMITHING..": "..MASTER;
		Next_Page = "SmithingMaster6";
		Next_Title = BLACKSMITHING..": "..MASTER;
		};
	["SmithingMaster6"] = {
		Title = BLACKSMITHING..": "..MASTER;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "SmithingMaster5";
		Prev_Title = BLACKSMITHING..": "..MASTER;
		Next_Page = "SmithingMaster7";
		Next_Title = BLACKSMITHING..": "..MASTER;
		};
	["SmithingMaster7"] = {
		Title = BLACKSMITHING..": "..MASTER;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "SmithingMaster6";
		Prev_Title = BLACKSMITHING..": "..MASTER;
		Next_Page = "SmithingMaster8";
		Next_Title = BLACKSMITHING..": "..MASTER;
		};
	["SmithingMaster8"] = {
		Title = BLACKSMITHING..": "..MASTER;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "SmithingMaster7";
		Prev_Title = BLACKSMITHING..": "..MASTER;
		Next_Page = "Armorsmith1";
		Next_Title = ARMORSMITH;
		};
	["Armorsmith1"] = {
		Title = ARMORSMITH;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "SmithingMaster8";
		Prev_Title = BLACKSMITHING..": "..MASTER;
		Next_Page = "Weaponsmith1";
		Next_Title = WEAPONSMITH;
		};
	["Weaponsmith1"] = {
		Title = WEAPONSMITH;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "Armorsmith1";
		Prev_Title = ARMORSMITH;
		Next_Page = "Axesmith1";
		Next_Title = AXESMITH;
		};
	["Axesmith1"] = {
		Title = AXESMITH;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "Weaponsmith1";
		Prev_Title = WEAPONSMITH;
		Next_Page = "Hammersmith1";
		Next_Title = HAMMERSMITH;
		};
	["Hammersmith1"] = {
		Title = HAMMERSMITH;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "Axesmith1";
		Prev_Title = AXESMITH;
		Next_Page = "Swordsmith1";
		Next_Title = SWORDSMITH;
		};
	["Swordsmith1"] = {
		Title = SWORDSMITH;
		Back_Page = "SMITHINGMENU";
		Back_Title = BLACKSMITHING;
		Prev_Page = "Hammersmith1";
		Prev_Title = HAMMERSMITH;
		};
  --Enchanting
	["EnchantingApprentice1"] = {
		Title = ENCHANTING..": "..APPRENTICE;
		Back_Page = "ENCHANTINGMENU";
		Back_Title = ENCHANTING;
		Next_Page = "EnchantingJourneyman1";
		Next_Title = ENCHANTING..": "..JOURNEYMAN;
		};
	["EnchantingJourneyman1"] = {
		Title = ENCHANTING..": "..JOURNEYMAN;
		Back_Page = "ENCHANTINGMENU";
		Back_Title = ENCHANTING;
		Prev_Page = "EnchantingApprentice1";
		Prev_Title = ENCHANTING..": "..APPRENTICE;
		Next_Page = "EnchantingExpert1";
		Next_Title = ENCHANTING..": "..EXPERT;
		};
	["EnchantingExpert1"] = {
		Title = ENCHANTING..": "..EXPERT;
		Back_Page = "ENCHANTINGMENU";
		Back_Title = ENCHANTING;
		Prev_Page = "EnchantingJourneyman1";
		Prev_Title = ENCHANTING..": "..JOURNEYMAN;
		Next_Page = "EnchantingExpert2";
		Next_Title = ENCHANTING..": "..EXPERT;
		};
	["EnchantingExpert2"] = {
		Title = ENCHANTING..": "..EXPERT;
		Back_Page = "ENCHANTINGMENU";
		Back_Title = ENCHANTING;
		Prev_Page = "EnchantingExpert1";
		Prev_Title = ENCHANTING..": "..EXPERT;
		Next_Page = "EnchantingArtisan1";
		Next_Title = ENCHANTING..": "..ARTISAN;
		};
	["EnchantingArtisan1"] = {
		Title = ENCHANTING..": "..ARTISAN;
		Back_Page = "ENCHANTINGMENU";
		Back_Title = ENCHANTING;
		Prev_Page = "EnchantingExpert2";
		Prev_Title = ENCHANTING..": "..EXPERT;
		Next_Page = "EnchantingArtisan2";
		Next_Title = ENCHANTING..": "..ARTISAN;
		};
	["EnchantingArtisan2"] = {
		Title = ENCHANTING..": "..ARTISAN;
		Back_Page = "ENCHANTINGMENU";
		Back_Title = ENCHANTING;
		Prev_Page = "EnchantingArtisan1";
		Prev_Title = ENCHANTING..": "..ARTISAN;
		Next_Page = "EnchantingMaster1";
		Next_Title = ENCHANTING..": "..MASTER;
		};
	["EnchantingMaster1"] = {
		Title = ENCHANTING..": "..MASTER;
		Back_Page = "ENCHANTINGMENU";
		Back_Title = ENCHANTING;
		Prev_Page = "EnchantingArtisan2";
		Prev_Title = ENCHANTING..": "..ARTISAN;
		Next_Page = "EnchantingMaster2";
		Next_Title = ENCHANTING..": "..MASTER;
		};
	["EnchantingMaster2"] = {
		Title = ENCHANTING..": "..MASTER;
		Back_Page = "ENCHANTINGMENU";
		Back_Title = ENCHANTING;
		Prev_Page = "EnchantingMaster1";
		Prev_Title = ENCHANTING..": "..MASTER;
		Next_Page = "EnchantingMaster3";
		Next_Title = ENCHANTING..": "..MASTER;
		};
	["EnchantingMaster3"] = {
		Title = ENCHANTING..": "..MASTER;
		Back_Page = "ENCHANTINGMENU";
		Back_Title = ENCHANTING;
		Prev_Page = "EnchantingMaster2";
		Prev_Title = ENCHANTING..": "..MASTER;
		Next_Page = "EnchantingMaster4";
		Next_Title = ENCHANTING..": "..MASTER;
		};
	["EnchantingMaster4"] = {
		Title = ENCHANTING..": "..MASTER;
		Back_Page = "ENCHANTINGMENU";
		Back_Title = ENCHANTING;
		Prev_Page = "EnchantingMaster3";
		Prev_Title = ENCHANTING..": "..MASTER;
		};
  --Engineering
	["EngineeringApprentice1"] = {
		Title = ENGINEERING..": "..APPRENTICE;
		Back_Page = "ENGINEERINGMENU";
		Back_Title = ENGINEERING;
		Next_Page = "EngineeringJourneyman1";
		Next_Title = ENGINEERING..": "..JOURNEYMAN;
		};
	["EngineeringJourneyman1"] = {
		Title = ENGINEERING..": "..JOURNEYMAN;
		Back_Page = "ENGINEERINGMENU";
		Back_Title = ENGINEERING;
		Prev_Page = "EngineeringApprentice1";
		Prev_Title = ENGINEERING..": "..APPRENTICE;
		Next_Page = "EngineeringExpert1";
		Next_Title = ENGINEERING..": "..EXPERT;
		};
	["EngineeringExpert1"] = {
		Title = ENGINEERING..": "..EXPERT;
		Back_Page = "ENGINEERINGMENU";
		Back_Title = ENGINEERING;
		Prev_Page = "EngineeringJourneyman1";
		Prev_Title = ENGINEERING..": "..JOURNEYMAN;
		Next_Page = "EngineeringExpert2";
		Next_Title = ENGINEERING..": "..EXPERT;
		};
	["EngineeringExpert2"] = {
		Title = ENGINEERING..": "..EXPERT;
		Back_Page = "ENGINEERINGMENU";
		Back_Title = ENGINEERING;
		Prev_Page = "EngineeringExpert1";
		Prev_Title = ENGINEERING..": "..EXPERT;
		Next_Page = "EngineeringArtisan1";
		Next_Title = ENGINEERING..": "..ARTISAN;
		};
	["EngineeringArtisan1"] = {
		Title = ENGINEERING..": "..ARTISAN;
		Back_Page = "ENGINEERINGMENU";
		Back_Title = ENGINEERING;
		Prev_Page = "EngineeringExpert2";
		Prev_Title = ENGINEERING..": "..EXPERT;
		Next_Page = "EngineeringArtisan2";
		Next_Title = ENGINEERING..": "..ARTISAN;
		};
	["EngineeringArtisan2"] = {
		Title = ENGINEERING..": "..ARTISAN;
		Back_Page = "ENGINEERINGMENU";
		Back_Title = ENGINEERING;
		Prev_Page = "EngineeringArtisan1";
		Prev_Title = ENGINEERING..": "..ARTISAN;
		Next_Page = "EngineeringArtisan3";
		Next_Title = ENGINEERING..": "..ARTISAN;
		};
	["EngineeringArtisan3"] = {
		Title = ENGINEERING..": "..ARTISAN;
		Back_Page = "ENGINEERINGMENU";
		Back_Title = ENGINEERING;
		Prev_Page = "EngineeringArtisan2";
		Prev_Title = ENGINEERING..": "..ARTISAN;
		Next_Page = "EngineeringMaster1";
		Next_Title = ENGINEERING..": "..MASTER;
		};
	["EngineeringMaster1"] = {
		Title = ENGINEERING..": "..MASTER;
		Back_Page = "ENGINEERINGMENU";
		Back_Title = ENGINEERING;
		Prev_Page = "EngineeringArtisan3";
		Prev_Title = ENGINEERING..": "..ARTISAN;
		Next_Page = "EngineeringMaster2";
		Next_Title = ENGINEERING..": "..MASTER;
		};
	["EngineeringMaster2"] = {
		Title = ENGINEERING..": "..MASTER;
		Back_Page = "ENGINEERINGMENU";
		Back_Title = ENGINEERING;
		Prev_Page = "EngineeringMaster1";
		Prev_Title = ENGINEERING..": "..MASTER;
		Next_Page = "EngineeringMaster3";
		Next_Title = ENGINEERING..": "..MASTER;
		};
	["EngineeringMaster3"] = {
		Title = ENGINEERING..": "..MASTER;
		Back_Page = "ENGINEERINGMENU";
		Back_Title = ENGINEERING;
		Prev_Page = "EngineeringMaster2";
		Prev_Title = ENGINEERING..": "..MASTER;
		Next_Page = "EngineeringMaster4";
		Next_Title = ENGINEERING..": "..MASTER;
		};
	["EngineeringMaster4"] = {
		Title = ENGINEERING..": "..MASTER;
		Back_Page = "ENGINEERINGMENU";
		Back_Title = ENGINEERING;
		Prev_Page = "EngineeringMaster3";
		Prev_Title = ENGINEERING..": "..MASTER;
		Next_Page = "Gnomish1";
		Next_Title = GNOMISH;
		};
	["Gnomish1"] = {
		Title = GNOMISH;
		Back_Page = "ENGINEERINGMENU";
		Back_Title = ENGINEERING;
		Prev_Page = "EngineeringMaster4";
		Prev_Title = ENGINEERING..": "..MASTER;
		Next_Page = "Goblin1";
		Next_Title = GOBLIN;
		};
	["Goblin1"] = {
		Title = GOBLIN;
		Back_Page = "ENGINEERINGMENU";
		Back_Title = ENGINEERING;
		Prev_Page = "Gnomish1";
		Prev_Title = GNOMISH;
		};
  --Jewelcrafting
	["JewelApprentice1"] = {
		Title = JEWELCRAFTING..": "..APPRENTICE;
		Back_Page = "JEWELCRAFTINGMENU";
		Back_Title = JEWELCRAFTING;
		Next_Page = "JewelJourneyman1";
		Next_Title = JEWELCRAFTING..": "..JOURNEYMAN;
		};
	["JewelJourneyman1"] = {
		Title = JEWELCRAFTING..": "..JOURNEYMAN;
		Back_Page = "JEWELCRAFTINGMENU";
		Back_Title = JEWELCRAFTING;
		Prev_Page = "JewelApprentice1";
		Prev_Title = JEWELCRAFTING..": "..APPRENTICE;
		Next_Page = "JewelExpert1";
		Next_Title = JEWELCRAFTING..": "..EXPERT;
		};
	["JewelExpert1"] = {
		Title = JEWELCRAFTING..": "..EXPERT;
		Back_Page = "JEWELCRAFTINGMENU";
		Back_Title = JEWELCRAFTING;
		Prev_Page = "JewelJourneyman1";
		Prev_Title = JEWELCRAFTING..": "..JOURNEYMAN;
		Next_Page = "JewelArtisan1";
		Next_Title = JEWELCRAFTING..": "..ARTISAN;
		};
	["JewelArtisan1"] = {
		Title = JEWELCRAFTING..": "..ARTISAN;
		Back_Page = "JEWELCRAFTINGMENU";
		Back_Title = JEWELCRAFTING;
		Prev_Page = "JewelExpert1";
		Prev_Title = JEWELCRAFTING..": "..EXPERT;
		Next_Page = "JewelMaster1";
		Next_Title = JEWELCRAFTING..": "..MASTER;
		};
	["JewelMaster1"] = {
		Title = JEWELCRAFTING..": "..MASTER;
		Back_Page = "JEWELCRAFTINGMENU";
		Back_Title = JEWELCRAFTING;
		Prev_Page = "JewelArtisan1";
		Prev_Title = JEWELCRAFTING..": "..ARTISAN;
		Next_Page = "JewelMaster2";
		Next_Title = JEWELCRAFTING..": "..MASTER;
		};
	["JewelMaster2"] = {
		Title = JEWELCRAFTING..": "..MASTER;
		Back_Page = "JEWELCRAFTINGMENU";
		Back_Title = JEWELCRAFTING;
		Prev_Page = "JewelMaster1";
		Prev_Title = JEWELCRAFTING..": "..MASTER;
		Next_Page = "JewelMaster3";
		Next_Title = JEWELCRAFTING..": "..MASTER;
		};
	["JewelMaster3"] = {
		Title = JEWELCRAFTING..": "..MASTER;
		Back_Page = "JEWELCRAFTINGMENU";
		Back_Title = JEWELCRAFTING;
		Prev_Page = "JewelMaster2";
		Prev_Title = JEWELCRAFTING..": "..MASTER;
		Next_Page = "JewelMaster4";
		Next_Title = JEWELCRAFTING..": "..MASTER;
		};
	["JewelMaster4"] = {
		Title = JEWELCRAFTING..": "..MASTER;
		Back_Page = "JEWELCRAFTINGMENU";
		Back_Title = JEWELCRAFTING;
		Prev_Page = "JewelMaster3";
		Prev_Title = JEWELCRAFTING..": "..MASTER;
		Next_Page = "JewelMaster5";
		Next_Title = JEWELCRAFTING..": "..MASTER;
		};
	["JewelMaster5"] = {
		Title = JEWELCRAFTING..": "..MASTER;
		Back_Page = "JEWELCRAFTINGMENU";
		Back_Title = JEWELCRAFTING;
		Prev_Page = "JewelMaster4";
		Prev_Title = JEWELCRAFTING..": "..MASTER;
		Next_Page = "JewelMaster6";
		Next_Title = JEWELCRAFTING..": "..MASTER;
		};
	["JewelMaster6"] = {
		Title = JEWELCRAFTING..": "..MASTER;
		Back_Page = "JEWELCRAFTINGMENU";
		Back_Title = JEWELCRAFTING;
		Prev_Page = "JewelMaster5";
		Prev_Title = JEWELCRAFTING..": "..MASTER;
		Next_Page = "JewelMaster7";
		Next_Title = JEWELCRAFTING..": "..MASTER;
		};
	["JewelMaster7"] = {
		Title = JEWELCRAFTING..": "..MASTER;
		Back_Page = "JEWELCRAFTINGMENU";
		Back_Title = JEWELCRAFTING;
		Prev_Page = "JewelMaster6";
		Prev_Title = JEWELCRAFTING..": "..MASTER;
		};
   --Leatherworking
	["LeatherApprentice1"] = {
		Title = LEATHERWORKING..": "..APPRENTICE;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Next_Page = "LeatherJourneyman1";
		Next_Title = LEATHERWORKING..": "..JOURNEYMAN;
		};
	["LeatherJourneyman1"] = {
		Title = LEATHERWORKING..": "..JOURNEYMAN;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "LeatherApprentice1";
		Prev_Title = LEATHERWORKING..": "..APPRENTICE;
		Next_Page = "LeatherJourneyman2";
		Next_Title = LEATHERWORKING..": "..JOURNEYMAN;
		};
	["LeatherJourneyman2"] = {
		Title = LEATHERWORKING..": "..JOURNEYMAN;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "LeatherJourneyman1";
		Prev_Title = LEATHERWORKING..": "..JOURNEYMAN;
		Next_Page = "LeatherExpert1";
		Next_Title = LEATHERWORKING..": "..EXPERT;
		};
	["LeatherExpert1"] = {
		Title = LEATHERWORKING..": "..EXPERT;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "LeatherJourneyman2";
		Prev_Title = LEATHERWORKING..": "..JOURNEYMAN;
		Next_Page = "LeatherExpert2";
		Next_Title = LEATHERWORKING..": "..EXPERT;
		};
	["LeatherExpert2"] = {
		Title = LEATHERWORKING..": "..EXPERT;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "LeatherExpert1";
		Prev_Title = LEATHERWORKING..": "..EXPERT;
		Next_Page = "LeatherArtisan1";
		Next_Title = LEATHERWORKING..": "..ARTISAN;
		};
	["LeatherArtisan1"] = {
		Title = LEATHERWORKING..": "..ARTISAN;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "LeatherExpert2";
		Prev_Title = LEATHERWORKING..": "..EXPERT;
		Next_Page = "LeatherArtisan2";
		Next_Title = LEATHERWORKING..": "..ARTISAN;
		};
	["LeatherArtisan2"] = {
		Title = LEATHERWORKING..": "..ARTISAN;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "LeatherArtisan1";
		Prev_Title = LEATHERWORKING..": "..ARTISAN;
		Next_Page = "LeatherMaster1";
		Next_Title = LEATHERWORKING..": "..MASTER;
		};
	["LeatherMaster1"] = {
		Title = LEATHERWORKING..": "..MASTER;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "LeatherArtisan2";
		Prev_Title = LEATHERWORKING..": "..ARTISAN;
		Next_Page = "LeatherMaster2";
		Next_Title = LEATHERWORKING..": "..MASTER;
		};
	["LeatherMaster2"] = {
		Title = LEATHERWORKING..": "..MASTER;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "LeatherMaster1";
		Prev_Title = LEATHERWORKING..": "..MASTER;
		Next_Page = "LeatherMaster3";
		Next_Title = LEATHERWORKING..": "..MASTER;
		};
	["LeatherMaster3"] = {
		Title = LEATHERWORKING..": "..MASTER;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "LeatherMaster2";
		Prev_Title = LEATHERWORKING..": "..MASTER;
		Next_Page = "LeatherMaster4";
		Next_Title = LEATHERWORKING..": "..MASTER;
		};
	["LeatherMaster4"] = {
		Title = LEATHERWORKING..": "..MASTER;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "LeatherMaster3";
		Prev_Title = LEATHERWORKING..": "..MASTER;
		Next_Page = "LeatherMaster5";
		Next_Title = LEATHERWORKING..": "..MASTER;
		};
	["LeatherMaster5"] = {
		Title = LEATHERWORKING..": "..MASTER;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "LeatherMaster4";
		Prev_Title = LEATHERWORKING..": "..MASTER;
		Next_Page = "LeatherMaster6";
		Next_Title = LEATHERWORKING..": "..MASTER;
		};
	["LeatherMaster6"] = {
		Title = LEATHERWORKING..": "..MASTER;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "LeatherMaster5";
		Prev_Title = LEATHERWORKING..": "..MASTER;
		Next_Page = "LeatherMaster7";
		Next_Title = LEATHERWORKING..": "..MASTER;
		};
	["LeatherMaster7"] = {
		Title = LEATHERWORKING..": "..MASTER;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "LeatherMaster6";
		Prev_Title = LEATHERWORKING..": "..MASTER;
		Next_Page = "LeatherMaster8";
		Next_Title = LEATHERWORKING..": "..MASTER;
		};
	["LeatherMaster8"] = {
		Title = LEATHERWORKING..": "..MASTER;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "LeatherMaster7";
		Prev_Title = LEATHERWORKING..": "..MASTER;
		Next_Page = "Dragonscale1";
		Next_Title = DRAGONSCALE;
		};
	["Dragonscale1"] = {
		Title = DRAGONSCALE;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "LeatherMaster8";
		Prev_Title = LEATHERWORKING..": "..MASTER;
		Next_Page = "Elemental1";
		Next_Title = ELEMENTAL;
		};
	["Elemental1"] = {
		Title = ELEMENTAL;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "Dragonscale1";
		Prev_Title = DRAGONSCALE;
		Next_Page = "Tribal1";
		Next_Title = TRIBAL;
		};
	["Tribal1"] = {
		Title = TRIBAL;
		Back_Page = "LEATHERWORKINGMENU";
		Back_Title = LEATHERWORKING;
		Prev_Page = "Elemental1";
		Prev_Title = ELEMENTAL;
		};
  --Tailoring
	["TailoringApprentice1"] = {
		Title = TAILORING..": "..APPRENTICE;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Next_Page = "TailoringJourneyman1";
		Next_Title = TAILORING..": "..JOURNEYMAN;
		};
	["TailoringJourneyman1"] = {
		Title = TAILORING..": "..JOURNEYMAN;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Prev_Page = "TailoringApprentice1";
		Prev_Title = TAILORING..": "..APPRENTICE;
		Next_Page = "TailoringJourneyman2";
		Next_Title = TAILORING..": "..JOURNEYMAN;
		};
	["TailoringJourneyman2"] = {
		Title = TAILORING..": "..JOURNEYMAN;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Prev_Page = "TailoringJourneyman1";
		Prev_Title = TAILORING..": "..JOURNEYMAN;
		Next_Page = "TailoringExpert1";
		Next_Title = TAILORING..": "..EXPERT;
		};
	["TailoringExpert1"] = {
		Title = TAILORING..": "..EXPERT;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Prev_Page = "TailoringJourneyman2";
		Prev_Title = TAILORING..": "..JOURNEYMAN;
		Next_Page = "TailoringExpert2";
		Next_Title = TAILORING..": "..EXPERT;
		};
	["TailoringExpert2"] = {
		Title = TAILORING..": "..EXPERT;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Prev_Page = "TailoringExpert1";
		Prev_Title = TAILORING..": "..EXPERT;
		Next_Page = "TailoringArtisan1";
		Next_Title = TAILORING..": "..ARTISAN;
		};
	["TailoringArtisan1"] = {
		Title = TAILORING..": "..ARTISAN;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Prev_Page = "TailoringExpert2";
		Prev_Title = TAILORING..": "..EXPERT;
		Next_Page = "TailoringArtisan2";
		Next_Title = TAILORING..": "..ARTISAN;
		};
	["TailoringArtisan2"] = {
		Title = TAILORING..": "..ARTISAN;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Prev_Page = "TailoringArtisan1";
		Prev_Title = TAILORING..": "..ARTISAN;
		Next_Page = "TailoringArtisan3";
		Next_Title = TAILORING..": "..ARTISAN;
		};
	["TailoringArtisan3"] = {
		Title = TAILORING..": "..ARTISAN;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Prev_Page = "TailoringArtisan2";
		Prev_Title = TAILORING..": "..ARTISAN;
		Next_Page = "TailoringMaster1";
		Next_Title = TAILORING..": "..MASTER;
		};
	["TailoringMaster1"] = {
		Title = TAILORING..": "..MASTER;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Prev_Page = "TailoringArtisan3";
		Prev_Title = TAILORING..": "..ARTISAN;
		Next_Page = "TailoringMaster2";
		Next_Title = TAILORING..": "..MASTER;
		};
	["TailoringMaster2"] = {
		Title = TAILORING..": "..MASTER;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Prev_Page = "TailoringMaster1";
		Prev_Title = TAILORING..": "..MASTER;
		Next_Page = "TailoringMaster3";
		Next_Title = TAILORING..": "..MASTER;
		};
	["TailoringMaster3"] = {
		Title = TAILORING..": "..MASTER;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Prev_Page = "TailoringMaster2";
		Prev_Title = TAILORING..": "..MASTER;
		Next_Page = "TailoringMaster4";
		Next_Title = TAILORING..": "..MASTER;
		};
	["TailoringMaster4"] = {
		Title = TAILORING..": "..MASTER;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Prev_Page = "TailoringMaster3";
		Prev_Title = TAILORING..": "..MASTER;
		Next_Page = "TailoringMaster5";
		Next_Title = TAILORING..": "..MASTER;
		};
	["TailoringMaster5"] = {
		Title = TAILORING..": "..MASTER;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Prev_Page = "TailoringMaster4";
		Prev_Title = TAILORING..": "..MASTER;
		Next_Page = "TailoringMaster6";
		Next_Title = TAILORING..": "..MASTER;
		};
	["TailoringMaster6"] = {
		Title = TAILORING..": "..MASTER;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Prev_Page = "TailoringMaster5";
		Prev_Title = TAILORING..": "..MASTER;
		Next_Page = "Mooncloth1";
		Next_Title = MOONCLOTH;
		};
	["Mooncloth1"] = {
		Title = MOONCLOTH;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Prev_Page = "TailoringMaster6";
		Prev_Title = TAILORING..": "..MASTER;
		Next_Page = "Shadoweave1";
		Next_Title = SHADOWEAVE;
		};
	["Shadoweave1"] = {
		Title = SHADOWEAVE;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Prev_Page = "Mooncloth1";
		Prev_Title = MOONCLOTH;
		Next_Page = "Spellfire1";
		Next_Title = SPELLFIRE;
		};
	["Spellfire1"] = {
		Title = SPELLFIRE;
		Back_Page = "TAILORINGMENU";
		Back_Title = TAILORING;
		Prev_Page = "Shadoweave1";
		Prev_Title = SHADOWEAVE;
		};
  --Cooking
	["CookingApprentice1"] = {
		Title = COOKING..": "..APPRENTICE;
		Back_Page = "COOKINGMENU";
		Back_Title = COOKING;
		Next_Page = "CookingJourneyman1";
		Next_Title = COOKING..": "..JOURNEYMAN;
		};
	["CookingJourneyman1"] = {
		Title = COOKING..": "..JOURNEYMAN;
		Back_Page = "COOKINGMENU";
		Back_Title = COOKING;
		Prev_Page = "CookingApprentice1";
		Prev_Title = COOKING..": "..APPRENTICE;
		Next_Page = "CookingJourneyman2";
		Next_Title = COOKING..": "..JOURNEYMAN;
		};
	["CookingJourneyman2"] = {
		Title = COOKING..": "..JOURNEYMAN;
		Back_Page = "COOKINGMENU";
		Back_Title = COOKING;
		Prev_Page = "CookingJourneyman1";
		Prev_Title = COOKING..": "..JOURNEYMAN;
		Next_Page = "CookingExpert1";
		Next_Title = COOKING..": "..EXPERT;
		};
	["CookingExpert1"] = {
		Title = COOKING..": "..EXPERT;
		Back_Page = "COOKINGMENU";
		Back_Title = COOKING;
		Prev_Page = "CookingJourneyman2";
		Prev_Title = COOKING..": "..JOURNEYMAN;
		Next_Page = "CookingArtisan1";
		Next_Title = COOKING..": "..ARTISAN;
		};
	["CookingArtisan1"] = {
		Title = COOKING..": "..ARTISAN;
		Back_Page = "COOKINGMENU";
		Back_Title = COOKING;
		Prev_Page = "CookingExpert1";
		Prev_Title = COOKING..": "..EXPERT;
		Next_Page = "CookingMaster1";
		Next_Title = COOKING..": "..MASTER;
		};
	["CookingMaster1"] = {
		Title = COOKING..": "..MASTER;
		Back_Page = "COOKINGMENU";
		Back_Title = COOKING;
		Prev_Page = "CookingArtisan1";
		Prev_Title = COOKING..": "..MASTER;
		};
};