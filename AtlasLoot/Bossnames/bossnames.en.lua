--[[
bossnames.en.lua
This file gives the localised names of bosses needed in loot descriptions,
especially on tables from many locations where we need to indicate where the
loot came from.
]]
local BabbleBoss = LibStub("LibBabble-Boss-3.0"):GetLookupTable();
local BabbleZone = LibStub("LibBabble-Zone-3.0"):GetLookupTable();
local AL = AceLibrary("AceLocale-2.2"):new("AtlasLoot");

AtlasLootBossNames = {

	AuchManaTombs = {
		BabbleBoss["Nexus-Prince Shaffar"].." ("..BabbleZone["Mana-Tombs"]..")";
	};

	AuchAuchenaiCrypts = {
		"Maladaar".." ("..BabbleZone["Auchenai Crypts"]..")";
		"Avatar".." ("..BabbleZone["Auchenai Crypts"]..")";
	};

	AuchSethekkHalls = {
		BabbleBoss["Talon King Ikiss"].." ("..BabbleZone["Sethekk Halls"]..")";
	};

	AuchShadowLabyrinth = {
		"Blackheart".." ("..BabbleZone["Shadow Labyrinth"]..")";
		BabbleBoss["Grandmaster Vorpil"].." ("..BabbleZone["Shadow Labyrinth"]..")";
		BabbleBoss["Murmur"].." ("..BabbleZone["Shadow Labyrinth"]..")";
	};

	BlackrockSpireLower = {
		BabbleBoss["Highlord Omokk"].." ("..AL["LBRS"]..")";
		BabbleBoss["Shadow Hunter Vosh'gajin"].." ("..AL["LBRS"]..")";
		BabbleBoss["War Master Voone"].." ("..AL["LBRS"]..")";
		BabbleBoss["Mor Grayhoof"].." ("..AL["LBRS"]..")";
		BabbleBoss["Mother Smolderweb"].." ("..AL["LBRS"]..")";
		BabbleBoss["Gizrul the Slavener"].." ("..AL["LBRS"]..")";
		BabbleBoss["Overlord Wyrmthalak"].." ("..AL["LBRS"]..")";
		AL["Trash Mobs"].." ("..AL["LBRS"]..")";
	};

	BlackrockSpireUpper = {
		BabbleBoss["Pyroguard Emberseer"].." ("..AL["UBRS"]..")";
		BabbleBoss["Solakar Flamewreath"].." ("..AL["UBRS"]..")";
		BabbleBoss["Warchief Rend Blackhand"].." ("..AL["UBRS"]..")";
		BabbleBoss["Gyth"].." ("..AL["UBRS"]..")";
		BabbleBoss["The Beast"].." ("..AL["UBRS"]..")";
		BabbleBoss["General Drakkisath"].." ("..AL["UBRS"]..")";
	};

	BlackTemple = {
		BabbleBoss["Mother Shahraz"].." ("..BabbleZone["Black Temple"]..")";
		BabbleBoss["Illidari Council"].." ("..BabbleZone["Black Temple"]..")";
		BabbleBoss["Illidan Stormrage"].." ("..BabbleZone["Black Temple"]..")";
	};

	BlackwingLair = {
		BabbleBoss["Razorgore the Untamed"];
		BabbleBoss["Vaelastrasz the Corrupt"];
		BabbleBoss["Broodlord Lashlayer"];
		BabbleBoss["Firemaw"];
		BabbleBoss["Ebonroc"];
		BabbleBoss["Flamegor"];
		BabbleBoss["Chromaggus"];
		BabbleBoss["Nefarian"];
	};

	CFRTheSlavePens = {
		BabbleBoss["Quagmirran"];
	};

	CFRTheUnderbog = {
		BabbleBoss["The Black Stalker"];
	};

	CFRTheSteamvault = {
		"Thespia".." ("..BabbleZone["The Steamvault"]..")";
		"Kalithresh".." ("..BabbleZone["The Steamvault"]..")";
	};

	CFRSerpentshrineCavern = {
		BabbleBoss["Leotheras the Blind"].." ("..AL["Serpentshrine"]..")";
		BabbleBoss["Fathom-Lord Karathress"].." ("..AL["Serpentshrine"]..")";
		BabbleBoss["Lady Vashj"].." ("..AL["Serpentshrine"]..")";
	};

	Common = {
		AL["Trash Mobs"];
	};

	CoTOldHillsbradFoothills = {
	    BabbleBoss["Epoch Hunter"].." ("..AL["CoT1"]..")";
	};

	CoTTheBlackMorass = {
		BabbleBoss["Aeonus"].." ("..AL["CoT2"]..")";
	};

	CoTMountHyjal = {
		BabbleBoss["Azgalor"].." ("..BabbleZone["Hyjal Summit"]..")";
		BabbleBoss["Archimonde"].." ("..BabbleZone["Hyjal Summit"]..")";
	};

	GruulsLair = {
		BabbleBoss["High King Maulgar"];
		BabbleBoss["Gruul the Dragonkiller"];
	};

	HCRamparts = {
		BabbleBoss["Omor the Unscarred"].." ("..BabbleZone["Hellfire Ramparts"]..")";
	};

	HCBloodFurnace = {
		"Keli'dan".." ("..BabbleZone["The Blood Furnace"]..")";
	};

	HCShatteredHalls = {
		"O'mrogg".." ("..BabbleZone["The Shattered Halls"]..")";
		"Kargath".." ("..BabbleZone["The Shattered Halls"]..")";
	};

	SunwellPlateau = {
		BabbleBoss["Kalecgos"].." ("..BabbleZone["Sunwell Plateau"]..")";
		BabbleBoss["Brutallus"].." ("..BabbleZone["Sunwell Plateau"]..")";
		BabbleBoss["Felmyst"].." ("..BabbleZone["Sunwell Plateau"]..")";
	};

	Karazhan = {
		BabbleBoss["The Curator"].." ("..BabbleZone["Karazhan"]..")";
		BabbleBoss["Prince Malchezaar"].." ("..BabbleZone["Karazhan"]..")";
	};

	WorldsEnd = {
		BabbleBoss["Aventine"].." ("..BabbleZone["World's End"]..")";
		BabbleBoss["Micrah"].." ("..BabbleZone["World's End"]..")";
		BabbleBoss["Lord Maximus"].." ("..BabbleZone["World's End"]..")";
		BabbleBoss["Seer Akaldor"].." ("..BabbleZone["World's End"]..")";
		BabbleBoss["Seris"].." ("..BabbleZone["World's End"]..")";
		AL["Trash Mobs"];
	};

	MagtheridonsLair = {
		BabbleBoss["Magtheridon"];
	};

	MoltenCore = {
		BabbleBoss["Lucifron"];
		BabbleBoss["Magmadar"];
		BabbleBoss["Gehennas"];
		BabbleBoss["Garr"];
		BabbleBoss["Shazzrah"];
		BabbleBoss["Baron Geddon"];
		BabbleBoss["Golemagg the Incinerator"];
		BabbleBoss["Sulfuron Harbinger"];
		BabbleBoss["Ragnaros"];
		AL["Trash Mobs"];
	};

	Naxxramas = {
		BabbleBoss["Patchwerk"];
		BabbleBoss["Grobbulus"];
		BabbleBoss["Gluth"];
		BabbleBoss["Thaddius"];
		BabbleBoss["Anub'Rekhan"];
		BabbleBoss["Grand Widow Faerlina"];
		BabbleBoss["Maexxna"];
		BabbleBoss["Instructor Razuvious"];
		BabbleBoss["Gothik the Harvester"];
		BabbleBoss["The Four Horsemen"];
		BabbleBoss["Noth the Plaguebringer"];
		BabbleBoss["Heigan the Unclean"];
		BabbleBoss["Loatheb"];
		BabbleBoss["Sapphiron"];
		BabbleBoss["Kel'Thuzad"];
	};

	OnyxiasLair = {
		BabbleBoss["Onyxia"];
	};

	Scholomance = {
		BabbleBoss["Kirtonos the Herald"].." ("..AL["Scholo"]..")";
		BabbleBoss["Jandice Barov"].." ("..AL["Scholo"]..")";
		BabbleBoss["Rattlegore"].." ("..AL["Scholo"]..")";
		BabbleBoss["Ras Frostwhisper"].." ("..AL["Scholo"]..")";
		BabbleBoss["Instructor Malicia"].." ("..AL["Scholo"]..")";
		BabbleBoss["Doctor Theolen Krastinov"].." ("..AL["Scholo"]..")";
		BabbleBoss["Lorekeeper Polkelt"].." ("..AL["Scholo"]..")";
		BabbleBoss["The Ravenian"].." ("..AL["Scholo"]..")";
		BabbleBoss["Lord Alexei Barov"].." ("..AL["Scholo"]..")";
		BabbleBoss["Darkmaster Gandling"].." ("..AL["Scholo"]..")";
		AL["Trash Mobs"].." ("..AL["Scholo"]..")";
   };
	Stratholme = {
		BabbleBoss["Hearthsinger Forresten"].." ("..AL["Strat"]..")";
		BabbleBoss["The Unforgiven"].." ("..AL["Strat"]..")";
		BabbleBoss["Timmy the Cruel"].." ("..AL["Strat"]..")";
		BabbleBoss["Cannon Master Willey"].." ("..AL["Strat"]..")";
		BabbleBoss["Archivist Galford"].." ("..AL["Strat"]..")";
		BabbleBoss["Balnazzar"].." ("..AL["Strat"]..")";
		BabbleBoss["Baroness Anastari"].." ("..AL["Strat"]..")";
		BabbleBoss["Nerub'enkan"].." ("..AL["Strat"]..")";
		BabbleBoss["Maleki the Pallid"].." ("..AL["Strat"]..")";
		BabbleBoss["Magistrate Barthilas"].." ("..AL["Strat"]..")";
		BabbleBoss["Ramstein the Gorger"].." ("..AL["Strat"]..")";
		BabbleBoss["Baron Rivendare"].." ("..AL["Strat"]..")";
		AL["Trash Mobs"].." ("..AL["Strat"]..")";
    };

	TKMechanar = {
		BabbleBoss["Pathaleon the Calculator"].." (Mechanar)";
	};

	TKTheBotanica = {
		BabbleBoss["Laj"].." ("..BabbleZone["The Botanica"]..")";
		BabbleBoss["Warp Splinter"].." ("..BabbleZone["The Botanica"]..")";
	};

	TKTheArcatraz = {
		BabbleBoss["Harbinger Skyriss"].." (Arcatraz)";
	};

	TKTheEye = {
		BabbleBoss["Void Reaver"].." ("..BabbleZone["The Eye"]..")";
		BabbleBoss["Kael'thas Sunstrider"].." ("..BabbleZone["The Eye"]..")";
	};
	SMCathedral = {
		BabbleBoss["Larsh"].." ("..BabbleZone["Scarlet Monastery 2"]..")";
		BabbleBoss["Highlord Dracien"].." ("..BabbleZone["Scarlet Monastery 2"]..")";
		BabbleBoss["Vindicator Berean"].." ("..BabbleZone["Scarlet Monastery 2"]..")";
		BabbleBoss["King Midas"].." ("..BabbleZone["Scarlet Monastery 2"]..")";
	};

	BlackrockDepths2 = {
		BabbleBoss["Valroth"].." ("..BabbleZone["Blackrock Depths 2"]..")";
		BabbleBoss["Cratoriun"].." ("..BabbleZone["Blackrock Depths 2"]..")";
		BabbleBoss["Nerothar the Tormentor"].." ("..BabbleZone["Blackrock Depths 2"]..")";
		BabbleBoss["Blood Guard Gungo"].." ("..BabbleZone["Blackrock Depths 2"]..")";
		BabbleBoss["Volcanus"].." ("..BabbleZone["Blackrock Depths 2"]..")";
		BabbleBoss["Lord Ellcrys"].." ("..BabbleZone["Blackrock Depths 2"]..")";
		BabbleBoss["Grand Overseer Balgannon"].." ("..BabbleZone["Blackrock Depths 2"]..")";
		BabbleBoss["Lady Weezuz"].." ("..BabbleZone["Blackrock Depths 2"]..")";
		AL["Trash Mobs"].." ("..AL["Blackrock Depths 2"]..")";
	};

	OnysLair = {
		BabbleBoss["Dreadscale"].." ("..BabbleZone["Onyxia's Lair 2"]..")";
		BabbleBoss["Illidan"].." ("..BabbleZone["Onyxia's Lair 2"]..")";
	};

	BlackwingHold = {
		BabbleBoss["Wrathcaster Kastyon"].." ("..BabbleZone["Blackwing Hold"]..")";
		BabbleBoss["Gorrak"].." ("..BabbleZone["Blackwing Hold"]..")";
		BabbleBoss["Gholbine"].." ("..BabbleZone["Blackwing Hold"]..")";
		BabbleBoss["Chromatic Huntsman Varguk"].." ("..BabbleZone["Blackwing Hold"]..")";
		BabbleBoss["Ogmeth"].." ("..BabbleZone["Blackwing Hold"]..")";
	};

	Deadmines2 = {
		BabbleBoss["Rhahk'zor"].." ("..BabbleZone["Deadmines2"]..")";
		BabbleBoss["Sneed's Shredder"].." ("..BabbleZone["Deadmines2"]..")";
		BabbleBoss["Edwin VanCleef"].." ("..BabbleZone["Deadmines2"]..")";
	};

	ZulFarrak2 = {
		BabbleBoss["Wrathcaster Kastyon"].." ("..BabbleZone["Zul Farrak 2"]..")";
	};

	VoidHold = {
		BabbleBoss["Crystalcore Defender"].." ("..BabbleZone["Void Hold"]..")";
		BabbleBoss["Xa'os"].." ("..BabbleZone["Void Hold"]..")";
		BabbleBoss["Test"].." ("..BabbleZone["Void Hold"]..")";
	};

	GuthrotsLab = {
		BabbleBoss["Derpenstein"].." ("..BabbleZone["Guthrot's Lab"]..")";
		BabbleBoss["Guth'rot"].." ("..BabbleZone["Guthrot's Lab"]..")";
	};

	MoltenCore2 = {
		BabbleBoss["Ragnaros"].." ("..BabbleZone["Molten Core"]..")";
	};

	-- Grinchmass
	Grotto = {
		BabbleBoss["UnUn"].." ("..BabbleZone["Grinchmas Grotto"]..")";
		BabbleBoss["Gerald Snowdrift"].." ("..BabbleZone["Grinchmas Grotto"]..")";
		BabbleBoss["Advisor Netheran"].." ("..BabbleZone["Grinchmas Grotto"]..")";
		BabbleBoss["Palinho"].." ("..BabbleZone["Grinchmas Grotto"]..")";
		BabbleBoss["Telarion"].." ("..BabbleZone["Grinchmas Grotto"]..")";
		BabbleBoss["Shade of Naal"].." ("..BabbleZone["Grinchmas Grotto"]..")";
		BabbleBoss["Grinchmas"].." ("..BabbleZone["Grinchmas Grotto"]..")";
	};
};