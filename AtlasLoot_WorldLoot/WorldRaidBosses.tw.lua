﻿--[[
--AtlasLoot loot tables zhTW localization
--Maintained by Kurax Kuang (gmmgmm at gmail.com)
--NOTE: This file is auto-generated by a tool, any manually change might be overwritten.
--NOTE-zhTW: 本檔是由程式自動生成的，請勿人工干預，任何手動更改都可能會被覆蓋！
--$Date: 2008-05-22 00:30:16 +0930 (Thu, 22 May 2008) $
--]]
if (GetLocale() == "zhTW") then
local Process = function(category,check,data) if not AtlasLoot_Data["AtlasLootWBItems"][category] or #AtlasLoot_Data["AtlasLootWBItems"][category] ~= check then return end for i = 1,#data do if(data[i] and data[i]~="") then AtlasLoot_Data["AtlasLootWBItems"][category][i][3] = data[i] end end data = nil end
Process("AAzuregos",17,{"=q4=強者斗篷","=q4=祝福披氅","=q4=水晶之冠","=q4=無上秘法護腿","=q4=雪盲輕鞋","=q4=永凍束腰","=q4=秘法之牙","=q4=艾斯卡達爾的左爪","=q4=颱風雙手劍","=q4=冰冷魔棒","","","","","","=q4=成年藍龍的肌腱","=q4=龍筋箭袋"})
Process("DDoomwalker",10,{"=q4=黑鐵戰鬥披風","=q4=憤怒火花手套","=q4=祝福鍍金長褲","=q4=恐懼編織外套","=q4=深淵之處頭盔","=q4=無盡守望面甲","=q4=風采古老符咒","=q4=風暴之爪","=q4=伊斯利恩奈薩斯搶奪者","=q4=筒刃長步槍"})
Process("DEmeriss",20,{"=q4=綠色龍皮披風","=q4=虛環能量手套","=q4=龍刺裹布","=q4=上古腐蝕護腿","=q4=龍骨腕甲","=q4=蝕刻護脛","=q4=沉睡之石","=q4=野獸狂怒之錘","=q4=猛烈生長法杖","","=q4=夢魘包裹的物品","=q4=瑪法里恩的璽戒","","","","=q4=躁動夢境頭環","=q4=無邊沼澤之靴","=q4=龍心項鍊","=q4=無息指環","=q4=拋光鐵木強弩"})
Process("DLethon",21,{"=q4=綠色龍皮披風","=q4=虛環能量手套","=q4=龍刺裹布","=q4=上古腐蝕護腿","=q4=龍骨腕甲","=q4=蝕刻護脛","=q4=沉睡之石","=q4=野獸狂怒之錘","=q4=猛烈生長法杖","","=q4=夢魘包裹的物品","=q4=瑪法里恩的璽戒","","","","=q4=黑色樹皮腕環","=q4=黑暗泥沼腰帶","=q4=異常生長軟帽","=q4=黑暗之心便褲","=q4=惡毒護足","=q4=光亮護手"})
Process("DTaerar",20,{"=q4=綠色龍皮披風","=q4=虛環能量手套","=q4=龍刺裹布","=q4=上古腐蝕護腿","=q4=龍骨腕甲","=q4=蝕刻護脛","=q4=沉睡之石","=q4=野獸狂怒之錘","=q4=猛烈生長法杖","","=q4=夢魘包裹的物品","=q4=瑪法里恩的璽戒","","","","=q4=乞求軟靴","=q4=異常皮甲肩甲","=q4=驚駭之靴","=q4=心淚指環","=q4=夢魘之刃"})
Process("DYsondre",21,{"=q4=綠色龍皮披風","=q4=虛環能量手套","=q4=龍刺裹布","=q4=上古腐蝕護腿","=q4=龍骨腕甲","=q4=蝕刻護脛","=q4=沉睡之石","=q4=野獸狂怒之錘","=q4=猛烈生長法杖","","=q4=夢魘包裹的物品","=q4=瑪法里恩的璽戒","","","","=q4=鑲玉法衣","=q4=狂亂護腿","=q4=蝕刻肩鎧","=q4=奇異雕紋腿鎧","=q4=休眠水晶","=q4=翡翠龍牙"})
Process("DoomLordKazzak",10,{"=q4=精靈貴族的遠古法術披風","=q4=第七議會護腿","=q4=金葉野性之靴","=q4=神射手綴鱗護脛","=q4=碎魔重肩甲","=q4=黃玉飾釘戰鬥護手","=q4=流光之戒","=q4=互惠之戒","=q4=希望終止劍","=q4=艾克索達生命法杖"})
Process("KKruul",18,{"=q4=艾斯卡達爾的毛皮","=q4=黑光護腕","=q4=魔化灌注護腿","=q4=厄運皮護手","=q4=末日守衛腰帶","=q4=惡魔顱殼","=q4=火焰之怒勳章","=q4=混亂之戒","=q4=蒼穹擊碎者","=q4=琥珀封印看守者","","","","","","=q4=暗影之眼","=q4=祈福","=q4=咒逐"})
end
