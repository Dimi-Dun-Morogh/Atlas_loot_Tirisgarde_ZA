﻿--[[
--AtlasLoot loot tables zhTW localization
--Maintained by Kurax Kuang (gmmgmm at gmail.com)
--NOTE: This file is auto-generated by a tool, any manually change might be overwritten.
--NOTE-zhTW: 本檔是由程式自動生成的，請勿人工干預，任何手動更改都可能會被覆蓋！
--$Date: 2008-06-24 01:11:45 +0930 (Tue, 24 Jun 2008) $
--]]
if (GetLocale() == "zhTW") then
local Process = function(category,check,data) if not AtlasLoot_Data["AtlasLootWorldEvents"][category] or #AtlasLoot_Data["AtlasLootWorldEvents"][category] ~= check then return end for i = 1,#data do if(data[i] and data[i]~="") then AtlasLoot_Data["AtlasLootWorldEvents"][category][i][3] = data[i] end end data = nil end
Process("ArmbreakerHuffaz",22,{"=q3=伊斯利恩指環","","=q3=暗色披風","=q3=謎團披風","=q3=燃燒披風","=q3=嚴寒披風","=q3=活躍披風","","=q2=伊斯利恩囚犯I.D.標籤","","","","","","","","","=q3=黑暗指環","=q3=謎團指環","=q3=燃燒指環","=q3=嚴寒指環","=q3=活躍指環"})
Process("BashirLanding",27,{"","=q1=長者的不穩定精煉藥劑","=q1=醫師的不穩定精煉藥劑","=q1=強盜的不穩定精煉藥劑","=q1=士兵的不穩定精煉藥劑","","","=q3=不穩定的紫水晶","=q3=不穩定的黃水晶","=q3=不穩定的翠綠橄欖石","=q3=不穩定的藍寶石","=q3=不穩定的泰拉寶石","=q3=不穩定的黃寶石","","","","=q3=灌魔的不穩定鑽石","=q3=高效的不穩定鑽石","=q1=催化裝置模組","=q1=小型金質變形手套","=q1=小型銀質變形手套","=q1=小型銅質變形手套","=q1=小型鐵質變形手套","=q1=大型金質變形頭盔","=q1=大型銀質變形頭盔","=q1=大型銅質變形頭盔","=q1=大型鐵質變形頭盔"})
Process("BashirStasisChambers",22,{"","=q3=惡魔防護壁壘","=q2=奈薩斯王的印記","","","=q3=岩鋼護肩","=q2=奈薩斯王的印記","","","=q3=霧幕護肩","=q2=奈薩斯王的印記","","","","","","=q3=導風者披肩","=q2=奈薩斯王的印記","","","=q3=天行者護肩","=q2=奈薩斯王的印記"})
Process("Brewfest1",30,{"=q3=啤酒節小酒桶","","=q1=貝爾碧的視力強化浪漫眼鏡","=q1=藍色啤酒節紀念帽","=q1=棕色啤酒節紀念帽","=q1=綠色啤酒節紀念帽","=q1=紫色啤酒節紀念帽","=q1=啤酒節華服","=q1=啤酒節裙裝","=q1=啤酒節靴子","=q1=啤酒節軟靴","","=q1=「榮譽釀酒者」手印","=q4=迅捷啤酒節山羊","=q3=啤酒節山羊","=q3=黃色啤酒節酒杯","=q3=黑鐵酒杯","=q3=鹿角兔的大酒杯","","=q2=啤酒節獎品券","","=q1=曬乾的香腸","=q1=多汁的香腸","=q1=香辣香腸","=q1=醃香腸","=q1=辣味煙燻香腸","=q1=金環","","=q1=啤酒節必備的鹹脆餅","=q1=啤酒節啤酒"})
Process("Brewfest2",24,{"","=q1=超淡麥酒","=q1=淡麥酒","=q1=濃麥酒","","","=q1=雷電 45","=q1=雷酒牌麥芽酒","=q1=雷霆烈啤酒","","","=q1=戈多克烈酒","=q1=穆德的牛奶","=q1=巨魔蜜酒","","","=q1=小步啤酒","=q1=邁步啤酒","=q1=啤酒之道","","","=q1=叢林河水","=q1=巫啤魔法","=q1=乾頭烈酒"})
Process("ChildrensWeek",19,{"","=q1=小豬頸環","=q1=老鼠籠","=q1=烏龜盒","=q1=庫瑪真的回饋","","","","","","","","","","","","=q3=艾格伯特的蛋","=q3=伊萊克訓練項圈","=q3=瞌睡蟲韋利"})
Process("DarkscreecherAkkarai",12,{"=q3=異教徒護手","=q2=阿卡萊之爪","","=q3=導風者束腕","=q3=導風者腰帶","=q3=天行者護腕","=q3=天行者之索","=q3=霧幕護腕","=q3=霧幕腰帶","=q3=岩鋼護腕","=q3=岩鋼束腰","=q3=司凱堤斯指環"})
Process("Dukes",27,{"","=q3=深淵皮甲護腿","=q3=硬化鋼質戰錘","=q3=深淵徽記","=q2=深淵布質束帶","=q1=辛德爾的煤渣","","","=q3=深淵鎖甲腿甲","=q3=黑石巨刃劍","=q3=深淵徽記","=q2=深淵皮甲腰帶","","","","","=q3=深淵布質便褲","=q3=靈魂補償者","=q3=深淵徽記","=q2=深淵鎧甲束腰","","","","=q3=深淵鎧甲腿鎧","=q3=閃耀水晶魔杖","=q3=深淵徽記","=q2=深淵鎖甲之攫"})
Process("ElementalInvasion",25,{"","=q3=火焰男爵查爾的節杖","=q3=元素之一","=q2=元素灰燼","","","=q3=泰比斯蒂亞的寒冰項鍊","=q3=元素之一","=q3=圖樣:雷暴手套","=q2=嚴寒戒指","","","","","","","=q3=阿瓦蘭奇奧的石皮","=q3=元素之一","=q2=硬石指環","","","=q3=烈風搶奪者束帶","=q3=元素之一","=q3=圖樣:雷暴手套","=q2=微風披風"})
Process("FelTinkererZortan",22,{"=q3=霧幕之靴","","=q3=暗色披風","=q3=謎團披風","=q3=燃燒披風","=q3=嚴寒披風","=q3=活躍披風","","=q2=伊斯利恩囚犯I.D.標籤","","","","","","","","","=q3=黑暗指環","=q3=謎團指環","=q3=燃燒指環","=q3=嚴寒指環","=q3=活躍指環"})
Process("FishingExtravaganza",23,{"","=q3=奧金釣魚竿","=q3=釣魚大師魚鉤","","","=q2=基佛天使魚","=q2=布隆奈爾藍斑魚","=q2=迪森皇后魚","=q2=石皮大魚","","","","","","","","","","","","=q2=幸運漁帽","=q2=納特·帕格的極限釣魚靴","=q2=高強度恆金漁線"})
Process("Forgosh",22,{"=q3=伊斯利恩項鍊","","=q3=暗色披風","=q3=謎團披風","=q3=燃燒披風","=q3=嚴寒披風","=q3=活躍披風","","=q2=伊斯利恩囚犯I.D.標籤","","","","","","","","","=q3=黑暗指環","=q3=謎團指環","=q3=燃燒指環","=q3=嚴寒指環","=q3=活躍指環"})
Process("GezzaraktheHuntress",12,{"=q3=吉札拉毒牙項鍊","=q2=吉札拉之爪","","=q3=導風者束腕","=q3=導風者腰帶","=q3=天行者護腕","=q3=天行者之索","=q3=霧幕護腕","=q3=霧幕腰帶","=q3=岩鋼護腕","=q3=岩鋼束腰","=q3=司凱堤斯指環"})
Process("Gulbor",22,{"=q3=伊斯利恩項鍊","","=q3=暗色披風","=q3=謎團披風","=q3=燃燒披風","=q3=嚴寒披風","=q3=活躍披風","","=q2=伊斯利恩囚犯I.D.標籤","","","","","","","","","=q3=黑暗指環","=q3=謎團指環","=q3=燃燒指環","=q3=嚴寒指環","=q3=活躍指環"})
Process("GurubashiArena",17,{"=q3=競技場腕甲","=q3=競技場護腕","=q3=競技場手環","=q3=競技場臂鎧","","","","","","","","","","","","=q2=競技場大師飾物","=q3=競技場宗師飾物"})
Process("Halloween1",28,{"=q3=南瓜燈籠","=q2=南瓜袋","","=q1=斯泰林的乳酸棒棒糖","=q1=月溪節日糖","=q1=蓓拉的夾心巧克力","=q1=萬鬼節南瓜糖","","","","","","","","","","=q1=萬鬼節魔棒 - 蝙蝠","=q1=萬鬼節魔棒 - 鬼魂","=q1=萬鬼節魔棒 - 麻瘋地精","=q1=萬鬼節魔棒 - 忍者","=q1=萬鬼節魔棒 - 海賊","=q1=萬鬼節魔棒 - 隨機","=q1=萬鬼節魔棒 - 骷髏","=q1=萬鬼節魔棒 - 幽光","","=q1=糖球","=q1=棒棒糖","=q1=糖果棒"})
Process("Halloween2",24,{"","=q1=劣質男性矮人面具","=q1=劣質男性地精面具","=q1=劣質男性人類面具","=q1=劣質男性夜精靈面具","=q1=劣質男性獸人面具","=q1=劣質男性牛頭人面具","=q1=劣質男性食人妖面具","=q1=劣質男性不死族面具","","","","","","","","=q1=劣質女性矮人面具","=q1=劣質女性地精面具","=q1=劣質女性人類面具","=q1=劣質女性夜精靈面具","=q1=劣質女性獸人面具","=q1=劣質女性牛頭人面具","=q1=劣質女性食人妖面具","=q1=劣質女性不死族面具"})
Process("HarvestFestival",8,{"=q1=收穫節的獎勵","=q1=為聖光而戰!","=q1=部落的地獄吼","","=q1=收穫節豬肉","=q1=收穫節魚肉","=q1=收穫節水果","=q1=收穫節蜜酒"})
Process("HeadlessHorseman",20,{"=q4=無頭騎士盔帽","=q4=屍鬼之欲戒指","=q4=騎士的璽戒","=q4=女巫指環","","=q3=巨型南瓜燈籠","=q3=邪惡小南瓜","","=q1=增重的南瓜燈籠","=q1=搗蛋糖果","","","","","","=q4=迅捷飛行掃帚","=q4=迅捷魔法掃帚","=q3=飛行掃帚","=q3=老舊的魔法掃帚","=q2=不牢固的魔法掃帚"})
Process("HighCouncil",26,{"","=q4=元素聚焦指環","=q4=深淵節杖","=q3=深淵皮甲護腕","=q3=深淵鎖甲肩鎧","","","=q4=浪峰項鍊","=q4=深淵節杖","=q3=深淵鎖甲護臂","=q3=深淵鎧甲肩冑","","","","","","=q4=風剪斗篷","=q4=深淵節杖","=q3=深淵布質腕環","=q3=深淵皮甲護肩","","","=q4=土靈護衛者","=q4=深淵節杖","=q3=深淵布質襯肩","=q3=深淵鎧甲護臂"})
Process("Karrog",12,{"=q3=凱羅格的裂片","=q2=凱羅格之刺","","=q3=導風者束腕","=q3=導風者腰帶","=q3=天行者護腕","=q3=天行者之索","=q3=霧幕護腕","=q3=霧幕腰帶","=q3=岩鋼護腕","=q3=岩鋼束腰","=q3=司凱堤斯指環"})
Process("LordAhune",12,{"=q4=嚴寒之風披風","=q4=冰縛披風","=q4=深冬之寒罩氅","=q4=冰霜領主戰爭披風","=q4=艾胡恩的冰霜鐮刀","","=q3=公式:附魔武器 - 死亡冰霜","=q3=焦灼之石","","=q1=艾胡恩裂片","=q3=夏日晴空外袍","=q3=夏日烈焰外袍"})
Process("LordAhuneHEROIC",20,{"=q4=苦澀仇恨護符","=q4=冰川寧靜護符","=q4=極地波流頸飾","=q4=冰雹墜飾","","=q3=公式:附魔武器 - 死亡冰霜","=q3=焦灼之石","","=q1=艾胡恩裂片","=q3=夏日晴空外袍","=q3=夏日烈焰外袍","","","","","=q4=嚴寒之風披風","=q4=冰縛披風","=q4=深冬之寒罩氅","=q4=冰霜領主戰爭披風","=q4=艾胡恩的冰霜鐮刀"})
Process("LunarFestival1",30,{"=q2=伊露恩的燈籠","","=q1=綠色節慶長裙","=q1=粉紅節慶裙裝","=q1=紫色節慶裙裝","","=q1=黑色節慶褲裝","=q1=藍色節慶褲裝","=q1=青色節慶褲裝","","=q1=新年節慶點心","","=q1=伊露恩的蠟燭","","=q1=先祖硬幣","","=q1=小型藍色煙花","=q1=小型綠色煙花","=q1=小型紅色煙花","=q1=小型白色煙花","=q1=小型黃色煙花","=q1=大型藍色煙花","=q1=大型綠色煙花","=q1=大型紅色煙花","=q1=大型白色煙花","=q1=大型黃色煙花","","","=q1=幸運煙花束","=q1=長者的月亮石"})
Process("LunarFestival2",28,{"=q2=結構圖:煙火發射器","","","=q2=結構圖:小型藍色煙花","=q2=結構圖:小型綠色煙花","=q2=結構圖:小型紅色煙花","","","=q2=結構圖:大型藍色煙花","=q2=結構圖:大型綠色煙花","=q2=結構圖:大型紅色煙花","","=q2=圖樣:節慶長裙","","","=q2=結構圖:煙花束發射器","","","=q2=結構圖:藍色煙花束","=q2=結構圖:綠色煙花束","=q2=結構圖:紅色煙花束","","","=q2=結構圖:大型藍色煙花束","=q2=結構圖:大型綠色煙花束","=q2=結構圖:大型紅色煙花束","","=q2=圖樣:節慶衣服"})
Process("MalevustheMad",22,{"=q3=岩鋼長靴","","=q3=暗色披風","=q3=謎團披風","=q3=燃燒披風","=q3=嚴寒披風","=q3=活躍披風","","=q2=伊斯利恩囚犯I.D.標籤","","","","","","","","","=q3=黑暗指環","=q3=謎團指環","=q3=燃燒指環","=q3=嚴寒指環","=q3=活躍指環"})
Process("MidsummerFestival",19,{"=q3=火焰舞孃火盆","=q3=捕捉到的烈焰","","=q2=煤渣護腕","","=q1=燃燒之花","=q1=節慶烈酒","=q1=紫梅派","=q1=火烤麵包","=q1=仲夏香腸","=q1=燒烤史馬克","=q1=一捧夏日花瓣","","","","=q1=火焰節慶之冠","=q1=火焰節慶披肩","=q1=夏日法衣","=q1=夏日便鞋"})
Process("Noblegarden",7,{"","=q1=端莊的裙子","=q1=白色禮服襯衣","=q1=黑色禮服便褲","=q1=糖果棒","=q1=巧克力","=q1=棒棒糖"})
Process("PorfustheGemGorger",22,{"=q3=導風者的靴子","","=q3=暗色披風","=q3=謎團披風","=q3=燃燒披風","=q3=嚴寒披風","=q3=活躍披風","","=q2=伊斯利恩囚犯I.D.標籤","","","","","","","","","=q3=黑暗指環","=q3=謎團指環","=q3=燃燒指環","=q3=嚴寒指環","=q3=活躍指環"})
Process("ScourgeInvasionEvent1",30,{"=q2=受祝福的巫師之油","=q2=聖化磨刀石","=q1=銀色黎明外袍","","=q2=墓地符文","","","=q3=淨妖長袍","=q3=淨妖護腕","=q3=淨妖手套","","","=q3=弒妖外套","=q3=弒妖裹腕","=q3=弒妖裹手","=q1=次級黎明印記","=q1=黎明印記","=q1=高級黎明印記","","","","","=q3=弒妖護胸","=q3=弒妖腕甲","=q3=弒妖手甲","","","=q3=弒妖胸甲","=q3=弒妖護腕","=q3=弒妖護手"})
Process("ScourgeInvasionEvent2",28,{"","=q3=巴爾薩馮腰環","=q3=巫妖之鍊","=q3=巴爾薩馮之杖","","","=q3=黑木之腿","=q3=黑木領主之刃","=q3=黑木領主之盾","","","=q3=雷瓦克安披風","=q3=修補護腕","=q3=暗影之握","","","=q3=冰凍之攫","=q3=瑟克恩的覆冰頸飾","=q3=瑟克恩的聚焦匕首","","","=q3=憎惡皮護腿","=q3=侍奉之斧","","","","=q3=法瑟蕾絲女士的披肩","=q3=法瑟蕾絲女士之指"})
Process("Shartuul",27,{"=q4=墮落者璽戒","","=q4=枯竭布質護腕","=q4=枯竭鎖甲護手","=q3=枯竭披風","=q3=枯竭指環","=q3=枯竭徽章","=q3=枯竭匕首","=q3=枯竭長劍","=q3=枯竭雙手斧","=q3=枯竭大錘","=q3=枯竭法杖","","","","=q4=監督者指環","","=q4=晶紋護腕","=q4=晶鱗裹手","=q3=晶紋斗篷","=q3=夢境水晶指環","=q3=堅毅徽章","=q3=水晶灌注剃刃","=q3=晶鑄長劍","=q3=頂尖斬斧","=q3=頂尖水晶錘","=q3=火焰石英法杖"})
Process("SkettisHazziksPackage",1,{"=q1=海茲克的包裹"})
Process("SkettisTalonpriestIshaal",1,{"=q1=艾夏歐的年鑑"})
Process("Templars",26,{"","=q3=水晶鑲飾短劍","=q2=深淵布質裹手","=q2=深淵鎖甲脛甲","=q2=深淵紋章","","","=q3=紫水晶戰爭法杖","=q2=深淵布質軟靴","=q2=深淵鎧甲護手","=q2=深淵紋章","","","","","","=q3=削石之刃","=q2=深淵皮甲長靴","=q2=深淵鎖甲手甲","=q2=深淵紋章","","","=q3=深擊之弓","=q2=深淵皮甲手套","=q2=深淵鎧甲護脛","=q2=深淵紋章"})
Process("Terokk",11,{"=q4=泰洛克力量披風","=q4=泰洛克智慧披風","=q3=導風者護腿","=q3=天行者護腿","=q3=霧幕便褲","=q3=岩鋼護腿","=q3=魔爪祭司的禮物","=q3=不死之王胸針","=q3=時光流逝刻像","=q3=泰洛克裁決槌","=q3=泰洛克裁決槌"})
Process("VakkiztheWindrager",12,{"=q3=風怒者纏繞護腕","","","=q3=導風者束腕","=q3=導風者腰帶","=q3=天行者護腕","=q3=天行者之索","=q3=霧幕護腕","=q3=霧幕腰帶","=q3=岩鋼護腕","=q3=岩鋼束腰","=q3=司凱堤斯指環"}) --Missing: 32718
Process("Valentineday",27,{"=q2=紅玫瑰花束","","","=q3=浪漫野餐籃","=q1=漂亮的黑色裙裝","=q1=真銀箭桿","=q1=銀質箭桿","=q1=愛的傻瓜","=q1=一把玫瑰花瓣","=q1=糖果袋","=q1=愛心煙火","","","","","","=q1=黑暗慾望","=q1=濃郁苺酪","=q1=歡恬牛奶","=q1=甜蜜驚喜","","=q1=漂亮的紅色裙裝","=q1=漂亮的藍色裙裝","=q1=漂亮的紫色裙裝","=q1=紅色晚宴套裝","=q1=藍色晚宴套裝","=q1=紫色晚宴套裝"})
Process("Winterviel1",30,{"=q2=綠色冬帽","=q2=紅色冬帽","=q1=冬幕偽裝包","=q1=雪球","=q1=一捧雪花","=q1=新鮮的冬青","=q1=槲寄生","","","=q2=圖樣:冬靴","=q2=圖樣:紅色冬裝","=q2=圖樣:綠色冬裝","=q1=食譜:熱蘋果酒","=q1=食譜:蛋奶酒","=q1=食譜:薑餅","=q1=拐杖糖","=q1=節日乳酪圈","=q1=格拉庫的自製肉餅","=q1=香辣牛肉乾","=q1=節日蜂蜜火腿","=q1=混製豆酒","=q1=綠花茶","=q1=氣泡蘋果酒","=q1=節日美酒","=q1=熱砂泡沫啤酒","=q1=冬天爺爺的麥芽酒","=q1=節日香料","=q1=藍色條紋包裝紙","=q1=綠色條紋包裝紙","=q1=紫色條紋包裝紙"})
Process("Winterviel2",30,{"","=q1=綠色助手箱","=q1=聖誕鈴鐺","=q1=紅色助手箱","=q1=雪人工具","","","=q1=節日狂歡魔杖","","","=q3=發條火箭機器人","","","=q1=冬幕節烤肉","=q1=冬幕節蛋酒","","=q2=機器格林奇","=q2=保存的冬青","=q2=設計圖:寒冬之鋒","=q2=公式:附魔武器 - 寒冬之力","=q2=結構圖:雪王9000型","=q2=圖樣:冬天爺爺的手套","=q1=配方:冰霜之力藥劑","=q1=圖樣:綠色節日襯衣","","","=q1=冬幕節點心","","","=q1=格拉庫的肉糜水果蛋糕"})
Process("WrathbringerLaztarash",22,{"=q3=法力冶煉晶球","","=q3=暗色披風","=q3=謎團披風","=q3=燃燒披風","=q3=嚴寒披風","=q3=活躍披風","","=q2=伊斯利恩囚犯I.D.標籤","","","","","","","","","=q3=黑暗指環","=q3=謎團指環","=q3=燃燒指環","=q3=嚴寒指環","=q3=活躍指環"})
end
