﻿--[[
--AtlasLoot loot tables koKR localization
--Maintained by Kurax Kuang (gmmgmm at gmail.com)
--NOTE: This file is auto-generated by a tool, any manually change might be overwritten.
--$Date: 2008-05-22 00:29:36 +0930 (Thu, 22 May 2008) $
--]]
if (GetLocale() == "koKR") then
local Process = function(category,check,data) if not AtlasLoot_Data["AtlasLootCrafting"][category] or #AtlasLoot_Data["AtlasLootCrafting"][category] ~= check then return end for i = 1,#data do if(data[i] and data[i]~="") then AtlasLoot_Data["AtlasLootCrafting"][category][i][3] = data[i] end end data = nil end
Process("AdamantiteB",4,{"","=q3=아다만타이트 흉갑","=q3=아다만타이트 판금 팔보호구","=q3=아다만타이트 판금 장갑"})
Process("ArcanoVest",4,{"","=q3=비전매듭 로브","=q3=비전매듭 팔보호구","=q3=비전매듭 장화"})
Process("BattlecastG",3,{"","=q4=전투시전술 두건","=q4=전투시전술 바지"})
Process("BlackDragonM",5,{"","=q3=검은용비늘 어깨보호구","=q3=검은용비늘 흉갑","=q3=검은용비늘 다리보호구","=q4=검은용비늘 장화"})
Process("BloodTigerH",3,{"","=q3=붉은호랑이 어깨보호구","=q3=붉은호랑이 흉갑"})
Process("BloodsoulEmbrace",4,{"","=q3=붉은영혼의 어깨보호구","=q3=붉은영혼의 흉갑","=q3=붉은영혼의 건틀릿"})
Process("BloodvineG",4,{"","=q3=붉은덩굴 조끼","=q3=붉은덩굴 다리보호구","=q3=붉은덩굴 장화"})
Process("BlueDragonM",4,{"","=q3=푸른용비늘 어깨보호구","=q3=푸른용비늘 흉갑","=q3=푸른용비늘 다리보호구"})
Process("BurningRage",5,{"","=q3=분노의 강철 투구","=q3=분노의 강철 어깨보호구","=q3=분노의 강철 흉갑","=q3=분노의 강철 장갑"})
Process("CraftedWeapons1",22,{"","=q4=불꽃의 수호검","=q4=타오르는 수호검","=q4=타오르는 격노","=q4=사자심장 검","=q4=용사의 사자심장 검","=q4=집행의 사자심장 검","","","=q4=차원의 도끼","=q4=검은 차원의 도끼","=q4=사악한 차원의 도끼","=q4=초승달 도끼","=q4=달빛 클레버","=q4=피의 달","","=q4=비룡갈퀴 망치","=q4=용아귀","=q4=용의 일격","=q4=천둥 망치","=q4=천둥번개 망치","=q4=폭풍의 전령"})
Process("CraftedWeapons2",29,{"","=q4=이터늄 룬검","=q4=진혼곡","=q4=지옥강철 장검","=q4=용사의 코륨검","=q4=지옥날 전투도끼","=q4=지옥강철 도끼","=q4=영원의 손길","=q4=룬문자 망치","=q4=지옥 경화 마울","=q4=정의로운 힘의 망치","","","=q4=균형 잡힌 회전식 코륨 파괴자","","","=q4=어둠의 사절","=q4=현자의 검","=q4=검은 수호자","=q4=일몰","=q4=강권의 망치","=q4=칠흑의 손","=q4=설퍼론 망치","=q4=검은분노","=q4=뾰족한 흑요석 방패","","","=q4=명사수의 라이플","=q4=마력장 원반"})
Process("DevilsaurArmor",3,{"","=q3=데빌사우루스 건틀릿","=q3=데빌사우루스 다리보호구"})
Process("EnchantedAdaman",5,{"","=q3=마력 깃든 아다만타이트 흉갑","=q3=마력 깃든 아다만타이트 허리띠","=q3=마력 깃든 아다만타이트 다리보호구","=q3=마력 깃든 아다만타이트 장화"})
Process("FaithFelsteel",4,{"","=q3=지옥강철 투구","=q3=지옥강철 장갑","=q3=지옥강철 다리보호구"})
Process("FelIronChain",5,{"","=q2=지옥무쇠 사슬 코이프","=q2=지옥무쇠 사슬 조끼","=q2=지옥무쇠 사슬 팔보호구","=q2=지옥무쇠 사슬 장갑"})
Process("FelIronPlate",6,{"","=q2=지옥무쇠 흉갑","=q2=지옥무쇠 장갑","=q2=지옥무쇠 허리띠","=q2=지옥무쇠 바지","=q2=지옥무쇠 장화"})
Process("FelSkin",4,{"","=q3=지옥 가죽 장갑","=q3=지옥 가죽 다리보호구","=q3=지옥 가죽 장화"})
Process("FelscaleArmor",5,{"","=q2=지옥껍질 흉갑","=q2=지옥껍질 장갑","=q2=지옥껍질 바지","=q2=지옥껍질 장화"})
Process("FelstalkerArmor",4,{"","=q3=지옥추적자 흉갑","=q3=지옥추적자 팔보호구","=q3=지옥추적자 허리띠"})
Process("FlameG",5,{"","=q3=화염파멸 투구","=q3=화염파멸 흉갑","=q3=화염파멸 팔보호구","=q3=화염파멸 장갑"})
Process("GreenDragonM",4,{"","=q3=녹색용비늘 흉갑","=q3=녹색용비늘 건틀릿","=q3=녹색용비늘 다리보호구"})
Process("ImbuedNeather",5,{"","=q3=마력 깃든 황천매듭 튜닉","=q3=마력 깃든 황천매듭 로브","=q3=마력 깃든 황천매듭 바지","=q3=마력 깃든 황천매듭 장화"})
Process("ImperialPlate",8,{"","=q2=황제의 판금 투구","=q2=황제의 판금 어깨보호구","=q2=황제의 판금 흉갑","=q2=황제의 판금 팔보호구","=q2=황제의 판금 허리띠","=q2=황제의 판금 다리보호구","=q2=황제의 판금 장화"})
Process("IronfeatherArmor",3,{"","=q3=무쇠깃털 어깨보호구","=q3=무쇠깃털 흉갑"})
Process("KhoriumWard",4,{"","=q3=코륨 허리띠","=q3=코륨 바지","=q3=코륨 장화"})
Process("NeatherVest",8,{"","=q2=황천매듭 튜닉","=q2=황천매듭 로브","=q2=황천매듭 팔보호구","=q2=황천매듭 장갑","=q2=황천매듭 허리띠","=q2=황천매듭 바지","=q2=황천매듭 장화"})
Process("NetherFury",4,{"","=q3=황천의 격노 허리띠","=q3=황천의 격노 다리보호구","=q3=황천의 격노 장화"})
Process("NetherscaleArmor",4,{"","=q4=칠흑의 황천비늘 흉갑","=q4=칠흑의 황천비늘 팔보호구","=q4=칠흑의 황천비늘 허리띠"})
Process("NetherstrikeArmor",4,{"","=q4=황천쐐기 흉갑","=q4=황천쐐기 팔보호구","=q4=황천쐐기 허리띠"})
Process("PrimalBatskin",4,{"","=q3=원시 박쥐가죽 웃옷","=q3=원시 박쥐가죽 팔보호구","=q3=원시 박쥐가죽 장갑"})
Process("PrimalIntent",4,{"","=q4=원소쐐기 조끼","=q4=원소쐐기 팔보호구","=q4=원소쐐기 허리띠"})
Process("PrimalMoon",4,{"","=q4=태초의 달빛매듭 어깨보호대","=q4=태초의 달빛매듭 로브","=q4=태초의 달빛매듭 허리띠"})
Process("SClefthoof",4,{"","=q3=질긴 갈래발굽 조끼","=q3=질긴 갈래발굽 다리보호구","=q3=질긴 갈래발굽 장화"})
Process("ScaledDraenicA",5,{"","=q2=드레나이 미늘 조끼","=q2=드레나이 미늘 장갑","=q2=드레나이 미늘 바지","=q2=드레나이 미늘 장화"})
Process("ShadowEmbrace",4,{"","=q4=얼어붙은 그림자매듭 어깨보호구","=q4=얼어붙은 그림자매듭 로브","=q4=얼어붙은 그림자매듭 장화"})
Process("SoulclothEm",4,{"","=q4=영혼매듭 어깨보호구","=q4=영혼매듭 조끼","=q4=영혼매듭 장갑"})
Process("SpellfireWrath",4,{"","=q4=마법불꽃 로브","=q4=마법불꽃 장갑","=q4=마법불꽃 허리띠"})
Process("SpellstrikeInfu",3,{"","=q4=마법 강타의 두건","=q4=마법 강타의 바지"})
Process("StormshroudArmor",5,{"","=q3=폭풍안개 어깨보호구","=q3=폭풍안개 갑옷","=q3=폭풍안개 장갑","=q3=폭풍안개 바지"})
Process("TheDarksoul",4,{"","=q3=검은영혼의 어깨보호구","=q3=검은영혼의 흉갑","=q3=검은영혼의 다리보호구"})
Process("TheUnyielding",3,{"","=q3=불굴의 팔보호구","=q4=불굴의 벨트"})
Process("ThickDraenicA",5,{"","=q2=두꺼운 드레나이 조끼","=q2=두꺼운 드레나이 장갑","=q2=두꺼운 드레나이 바지","=q2=두꺼운 드레나이 장화"})
Process("VolcanicArmor",4,{"","=q2=화산 어깨보호구","=q2=화산 흉갑","=q2=화산 다리보호구"})
Process("WhitemendWis",3,{"","=q4=백마법 두건","=q4=백마법 바지"})
Process("WildDraenishA",5,{"","=q2=야생의 드레나이 조끼","=q2=야생의 드레나이 장갑","=q2=야생의 드레나이 다리보호구","=q2=야생의 드레나이 장화"})
Process("WindhawkArmor",4,{"","=q4=바람매 갑옷","=q4=바람매 팔보호구","=q4=바람매 허리띠"})
end
