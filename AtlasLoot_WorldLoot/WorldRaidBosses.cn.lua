﻿--[[
--AtlasLoot loot tables zhCN localization
--Maintained by Kurax Kuang (gmmgmm at gmail.com)
--NOTE: This file is auto-generated by a tool, any manually change might be overwritten.
--NOTE-zhCN: 本文件是由程序自动生成的，请勿人工干预，任何手动更改都可能会被覆盖！
--$Date: 2008-05-22 00:30:16 +0930 (Thu, 22 May 2008) $
--]]
if (GetLocale() == "zhCN") then
local Process = function(category,check,data) if not AtlasLoot_Data["AtlasLootWBItems"][category] or #AtlasLoot_Data["AtlasLootWBItems"][category] ~= check then return end for i = 1,#data do if(data[i] and data[i]~="") then AtlasLoot_Data["AtlasLootWBItems"][category][i][3] = data[i] end end data = nil end
Process("AAzuregos",17,{"=q4=强者斗篷","=q4=祝福披风","=q4=水晶头冠","=q4=无上奥法护腿","=q4=雪盲软靴","=q4=永冻腰带","=q4=秘法之牙","=q4=艾斯卡达尔的左爪","=q4=台风","=q4=冰冷魔棒","","","","","","=q4=成年蓝龙的肌腱","=q4=龙筋箭袋"})
Process("DDoomwalker",10,{"=q4=暗铁作战披风","=q4=愤怒火花手套","=q4=镶金祈福长裤","=q4=恐惧编织外套","=q4=深渊头盔","=q4=无尽守望面甲","=q4=风采护符","=q4=风暴之爪","=q4=复仇军节点战斧","=q4=刺刀长枪"})
Process("DEmeriss",20,{"=q4=绿色龙皮披风","=q4=虚幻能量手套","=q4=龙刺裹布","=q4=上古腐蚀护腿","=q4=龙骨护腕","=q4=蚀刻胫甲","=q4=沉睡之石","=q4=野兽狂怒之锤","=q4=猛烈生长法杖","","=q4=梦魇包裹的物品","=q4=玛法里奥的徽记之戒","","","","=q4=躁动梦境头饰","=q4=无边沼泽之靴","=q4=龙心项链","=q4=无息指环","=q4=抛光铁木强弩"})
Process("DLethon",21,{"=q4=绿色龙皮披风","=q4=虚幻能量手套","=q4=龙刺裹布","=q4=上古腐蚀护腿","=q4=龙骨护腕","=q4=蚀刻胫甲","=q4=沉睡之石","=q4=野兽狂怒之锤","=q4=猛烈生长法杖","","=q4=梦魇包裹的物品","=q4=玛法里奥的徽记之戒","","","","=q4=黑色树皮护腕","=q4=黑暗沼泽腰带","=q4=异常生长之帽","=q4=黑暗之心短裤","=q4=恶毒护足","=q4=光亮护手"})
Process("DTaerar",20,{"=q4=绿色龙皮披风","=q4=虚幻能量手套","=q4=龙刺裹布","=q4=上古腐蚀护腿","=q4=龙骨护腕","=q4=蚀刻胫甲","=q4=沉睡之石","=q4=野兽狂怒之锤","=q4=猛烈生长法杖","","=q4=梦魇包裹的物品","=q4=玛法里奥的徽记之戒","","","","=q4=乞求之靴","=q4=异常皮质肩甲","=q4=惊骇之靴","=q4=心灵之泪","=q4=噩梦之刃"})
Process("DYsondre",21,{"=q4=绿色龙皮披风","=q4=虚幻能量手套","=q4=龙刺裹布","=q4=上古腐蚀护腿","=q4=龙骨护腕","=q4=蚀刻胫甲","=q4=沉睡之石","=q4=野兽狂怒之锤","=q4=猛烈生长法杖","","=q4=梦魇包裹的物品","=q4=玛法里奥的徽记之戒","","","","=q4=镶玉外套","=q4=狂乱护腿","=q4=蚀刻肩铠","=q4=奇异雕文腿甲","=q4=休眠水晶","=q4=翡翠龙牙"})
Process("DoomLordKazzak",10,{"=q4=上层精灵的远古魔法披风","=q4=七环护腿","=q4=金叶长靴","=q4=神射手的鳞甲护胫","=q4=裂魔肩铠","=q4=缀玉战斗护手","=q4=浮光之戒","=q4=逆转指环","=q4=希望的终结","=q4=埃索达生命法杖"})
Process("KKruul",18,{"=q4=艾斯卡达尔的毛皮","=q4=黑光护腕","=q4=魔能护腿","=q4=厄运皮护手","=q4=末日守卫腰带","=q4=恶魔颅壳","=q4=火焰之怒","=q4=混乱之戒","=q4=苍穹击碎者","=q4=琥珀封印","","","","","","=q4=暗影之眼","=q4=祈福","=q4=咒逐"})
end
