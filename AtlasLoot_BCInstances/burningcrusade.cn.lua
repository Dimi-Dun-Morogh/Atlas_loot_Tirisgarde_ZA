﻿--[[
--AtlasLoot loot tables zhCN localization
--Maintained by Kurax Kuang (gmmgmm at gmail.com)
--NOTE: This file is auto-generated by a tool, any manually change might be overwritten.
--NOTE-zhCN: 本文件是由程序自动生成的，请勿人工干预，任何手动更改都可能会被覆盖！
--$Date: 2008-06-13 20:40:54 +0930 (Fri, 13 Jun 2008) $
--]]
if (GetLocale() == "zhCN") then
local Process = function(category,check,data) if not AtlasLoot_Data["AtlasLootExpansionItems"][category] or #AtlasLoot_Data["AtlasLootExpansionItems"][category] ~= check then return end for i = 1,#data do if(data[i] and data[i]~="") then AtlasLoot_Data["AtlasLootExpansionItems"][category][i][3] = data[i] end end data = nil end
Process("AuchCryptsAvatar",7,{"=q3=奥金尼死亡披风","=q3=自然治愈者护腕","=q3=堕落主教的意志","=q3=天空击碎者","=q3=德拉诺硬杖","","=q3=废土行者肩甲"})
Process("AuchCryptsExarch",8,{"=q3=平静便鞋","=q3=黑暗卫士面具","=q3=莫克纳萨野兽面具","=q3=主教之戒","=q3=亡者塑像","=q3=恢复铁杖","","=q2=绿色冬帽"})
Process("AuchCryptsExarchHEROIC",20,{"=q4=公正徽章","=q4=无私之圣光披风","=q4=奥术幻像腰带","=q4=水歌束腰","","=q3=冤仇之靴","=q3=玛拉达尔的祝福项圈","=q3=灵魂祭司的决心指环","=q3=主教的钻石指环","=q3=灵魂之镰","","=q2=绿色冬帽","","=q1=主教的灵魂宝钻","","=q4=勇士的火白石","=q4=高能火白石","=q4=先知的玉髓","","=q3=末日板甲护腿"})
Process("AuchCryptsShirrak",5,{"=q3=命令之轮","=q3=乌鸦之心头饰","=q3=希望使者头盔","=q3=隐秘邪眼","=q3=沙尔德轻剑"})
Process("AuchCryptsShirrakHEROIC",11,{"=q4=公正徽章","=q4=勇士的火白石","=q4=高能火白石","=q4=先知的玉髓","","=q3=洞察之闪耀头饰","=q3=死亡注视者手套","=q3=希尔拉克的护腕","=q3=熔岩羽毛长靴","=q3=刀扇肩铠","=q3=看守者之爪"})
Process("AuchCryptsTrash",3,{"=q3=设计图：魔钢手套","","=q2=公式：附魔靴子 - 灵敏"})
Process("AuchManaNexusPrince",10,{"=q3=虚灵天行长靴","=q3=咆哮风暴面具","=q3=活力之节点护腕","=q3=沙法尔的魔符","=q3=远征指环","=q3=虚灵空间长弓","","=q2=配方：特效冰霜防护药水","","=q1=沙法尔的护腕"})
Process("AuchManaNexusPrinceHEROIC",28,{"=q4=公正徽章","=q4=虚无护腕","=q4=森林行者褶裙","=q4=泰雷古萨之戒","=q4=邪能屏障","","=q3=不可宽恕者的护肩","=q3=雕丝腰带","=q3=清晰梦境护腕","=q3=止水束带","=q3=迅捷惩戒护肩","=q3=辩护手套","","=q1=沙法尔的精致饰物","=q1=沙法尔的护腕","=q4=刻文火白石","=q4=烁光火白石","=q4=永恒玉髓","","=q3=废土行者护腿","","=q3=星界甲虫","=q3=扭曲风暴战刃","=q3=节点之王的战斧","=q3=沙塔尔节杖","=q3=节点之王的权杖","","=q2=配方：特效冰霜防护药水"})
Process("AuchManaPandemonius",6,{"=q3=外域行者长靴","=q3=信仰使者护手","=q3=利爪神像","=q3=开膛手","=q3=虚无之盾","=q3=灵火魔杖"})
Process("AuchManaPandemoniusHEROIC",11,{"=q4=公正徽章","=q4=刻文火白石","=q4=烁光火白石","=q4=永恒玉髓","","=q3=思维怒火肩甲","=q3=新月星空长袍","=q3=巨人之靴","=q3=星风图腾","=q3=统驭双刃","=q3=星矢长弓"})
Process("AuchManaTavarok",6,{"=q3=苏醒披风","=q3=虚空阴影长靴","=q3=闪电护肩","=q3=节点猎手军刀","=q3=沙尔德重剑","=q3=极性法杖"})
Process("AuchManaTavarokHEROIC",11,{"=q4=公正徽章","=q4=刻文火白石","=q4=烁光火白石","=q4=永恒玉髓","","=q3=黑暗虚空长袍","=q3=恶意之奢侈长靴","=q3=猎食者手套","=q3=海狼护肩","=q3=碎片镶饰胸甲","=q3=勇气之水晶指环"})
Process("AuchManaTrash",3,{"=q3=设计图：迅钢手套","","=q2=公式：附魔靴子 - 坚韧"})
Process("AuchManaYor",18,{"=q4=公正徽章","=q4=节点亲王的平衡指环","=q4=沙法尔的野蛮指环","=q4=尤尔的崩裂指环","=q4=战争幸存者之戒","=q4=水晶虚空指环","=q4=尤尔的复仇","","=q3=导风者外套","=q3=天行者外套","=q3=尘雾外套","=q3=岩钢胸甲","","","","=q4=刻文火白石","=q4=烁光火白石","=q4=永恒玉髓"})
Process("AuchSethekkDarkweaver",10,{"=q3=光织便鞋","=q3=月行长靴","=q3=天空猎手迅捷之靴","=q3=塞斯护腕","=q3=永恒安息圣契","=q3=塞泰克羽毛飞镖","","=q3=图鉴：炼狱氪金指环","","=q1=泰罗克的面具"})
Process("AuchSethekkDarkweaverHEROIC",19,{"=q4=公正徽章","=q4=原始火白石","=q4=坚韧火白石","=q4=神圣紫萤石","","=q3=光织便鞋","=q3=月行长靴","=q3=天空猎手迅捷之靴","=q3=塞斯护腕","=q3=永恒安息圣契","=q3=塞泰克羽毛飞镖","","","","","=q3=图鉴：炼狱氪金指环","","=q1=泰罗克的面具","=q1=忘却之名"})
Process("AuchSethekkRavenGod",11,{"=q4=公正徽章","=q4=乌鸦之神的缰绳","=q4=原始火白石","=q4=坚韧火白石","=q4=神圣紫萤石","","=q3=乌鸦之王的腰带","=q3=正义坚韧之靴","=q3=冰冷元素指环","=q3=安苏之爪","=q3=大火枪"})
Process("AuchSethekkTalonKing",20,{"=q3=羽叶披风","=q3=塞泰克神谕披风","=q3=死亡熔炉束带","=q3=鸦爪指环","=q3=泰罗克的午夜钉锤","=q3=鸦翼巨斧","","=q1=泰罗克的羽毛","","","=q1=暗影迷宫钥匙","","","","","=q3=湮灭长裤","=q3=魔咒师长裤","=q3=圣徒长裤","=q3=刺杀护肩","=q3=荒芜腿甲"})
Process("AuchSethekkTalonKingHEROIC",27,{"=q4=公正徽章","=q4=怜悯护腕","=q4=猎杀护腕","=q4=狂乱肩甲","=q4=泰罗克暗影法杖","","=q3=羽叶披风","=q3=塞泰克神谕披风","=q3=死亡熔炉束带","=q3=鸦爪指环","=q3=泰罗克的午夜钉锤","=q3=鸦翼巨斧","","","=q1=暗影迷宫钥匙","=q4=原始火白石","=q4=坚韧火白石","=q4=神圣紫萤石","","=q3=湮灭长裤","=q3=魔咒师长裤","=q3=圣徒长裤","=q3=刺杀护肩","=q3=荒芜腿甲","","=q1=泰罗克的羽毛","=q1=艾吉斯的冠羽"})
Process("AuchSethekkTheSagaofTerokk",1,{"=q1=泰罗克的传说"})
Process("AuchSethekkTrash",3,{"=q3=图样：斯蒂林的赤链帽","","=q2=图样：暗影护甲片"})
Process("AuchShadowBlackheart",16,{"=q3=煽动者披风","=q3=崇高者的精制护腿","=q3=强化潜力颈环","=q3=精金雕像","=q3=灵翼魔杖","","=q3=图样：斯蒂林的紫皮帽","","=q1=恶魔名册","","","","","","","=q3=月光林地裹手"})
Process("AuchShadowBlackheartHEROIC",16,{"=q4=公正徽章","=q4=华丽紫萤石","=q4=蚀刻火白石","=q4=符文雕饰玉髓","","=q3=煽动者披风","=q3=崇高者的精制护腿","=q3=强化潜力颈环","=q3=精金雕像","=q3=灵翼魔杖","","=q3=图样：斯蒂林的紫皮帽","","=q1=恶魔名册","","=q3=月光林地裹手"})
Process("AuchShadowFirstFragmentGuardian",1,{"=q1=第一块钥匙碎片"})
Process("AuchShadowGrandmaster",16,{"=q3=优雅胸甲","=q3=非凡秘法宝珠","=q3=眩晕之棒","=q3=天怒手持火炮","","=q2=绿色冬帽","","=q1=魔语辞典","","","","","","","","=q3=圣徒护肩"})
Process("AuchShadowGrandmasterHEROIC",16,{"=q4=公正徽章","=q4=华丽紫萤石","=q4=蚀刻火白石","=q4=符文雕饰玉髓","","=q3=优雅胸甲","=q3=非凡秘法宝珠","=q3=眩晕之棒","=q3=天怒手持火炮","","=q2=绿色冬帽","","=q1=魔语辞典","","","=q3=圣徒护肩"})
Process("AuchShadowHellmaw",6,{"=q3=灭绝之碧火手套","=q3=梦翼头盔","=q3=圣灵之精制长靴","=q3=翡翠女王神像","=q3=勇猛者的白金盾牌","=q3=奥尔多灵魂魔杖"})
Process("AuchShadowHellmawHEROIC",11,{"=q4=公正徽章","=q4=华丽紫萤石","=q4=蚀刻火白石","=q4=符文雕饰玉髓","","=q3=灭绝之碧火手套","=q3=梦翼头盔","=q3=圣灵之精制长靴","=q3=翡翠女王神像","=q3=勇猛者的白金盾牌","=q3=奥尔多灵魂魔杖"})
Process("AuchShadowMurmur",21,{"=q4=图样：法术打击短裤","","=q3=冥想之无声便鞋","=q3=深流外套","=q3=屠戮之耳语利刃","=q3=恐怖梦境巨剑","=q3=音速长矛","=q3=银月纹章盾","","","","","","","","=q3=湮灭护肩","=q3=湮灭长袍","=q3=圣徒外衣","=q3=刺杀护腿","=q3=潮汐之怒褶裙","=q3=鲁莽肩甲"})
Process("AuchShadowMurmurHEROIC",28,{"=q4=公正徽章","=q4=堕落腰带","=q4=肯瑞托大师长裤","=q4=盗贼大师手套","=q4=凶暴束带","=q4=冲击波权杖","","=q3=冥想之无声便鞋","=q3=深流外套","=q3=屠戮之耳语利刃","=q3=恐怖梦境巨剑","=q3=音速长矛","=q3=银月纹章盾","","=q1=摩摩尔的精华","=q4=华丽紫萤石","=q4=蚀刻火白石","=q4=符文雕饰玉髓","=q4=图样：法术打击短裤","","=q3=湮灭护肩","=q3=湮灭长袍","=q3=圣徒外衣","=q3=刺杀护腿","=q3=潮汐之怒褶裙","=q3=鲁莽肩甲","","=q1=摩摩尔的低语"})
Process("AuchShadowTrash",1,{"=q3=设计图：魔钢头盔"})
Process("BCKeys",24,{"","=q1=暗影迷宫钥匙","=q1=破碎大厅钥匙","=q1=禁魔监狱钥匙","","","=q1=焰铸钥匙","=q1=焰铸钥匙","=q1=水库钥匙","=q1=奥金尼钥匙","=q1=时光之钥","=q1=星船钥匙","","","","","=q4=卡拉波勋章","=q1=风暴钥匙","=q1=麦迪文的钥匙","","","=q3=哈拉迈德之眼","=q1=黑色骨灰","=q1=灌注精华的月亮石"})
Process("BTAkama",17,{"=q4=耀眼光芒肩饰","=q4=法力聚焦护腕","=q4=神圣感化护腕","=q4=暗影行者腰带","=q4=不朽自然褶裙","=q4=隐藏猎手护肩","=q4=灵魂行者护手","=q4=闪火腰带","=q4=搜寻者的腕甲","=q4=沉默的公正","=q4=执政官护腿","=q4=侍从战靴","","","","=q4=欺诈指环","=q4=盲眼先知圣像"})
Process("BTBloodboil",20,{"=q4=宽恕披风","=q4=血咒护肩","=q4=节制长袍","=q4=原始王权腰带","=q4=迅疾突袭外套","=q4=坚定意志束带","=q4=稳固腰带","=q4=神圣惩戒护腿","","","","","","","","=q4=凶猛进攻指环","=q4=影月徽记","=q4=命运的信使","=q4=完美恢复法杖","=q4=棱光聚焦魔杖"})
Process("BTCouncil",18,{"=q4=伊利达雷议会披风","=q4=神圣指引腰带","=q4=旋叶护肩","=q4=森林潜伏者头盔","=q4=伊利达雷碎裂头盔","=q4=背叛者的疯狂","","","","","","","","","","=q4=遗忘征服者的护腿","=q4=遗忘保卫者的护腿","=q4=遗忘胜利者的护腿"})
Process("BTEssencofSouls",20,{"=q4=不灭信仰手套","=q4=艾露恩神力护腕","=q4=诅咒之握","=q4=自然护卫者之靴","=q4=波浪治愈护肩","=q4=骨纹束带","=q4=命运皇冠","=q4=军团恐怖战靴","","","","","","","","=q4=透明魔线项链","=q4=泰坦坠饰","=q4=灵感之触","=q4=诅咒火炬","=q4=纳鲁生命魔杖"})
Process("BTGorefiend",19,{"=q4=影月毁灭者斗篷","=q4=仁慈兜帽","=q4=暗影议会长袍","=q4=阴险护腕","=q4=植物学者的生长手套","=q4=追踪软靴","=q4=强制护手","=q4=洛丹伦亡者腰带","","","","","","","","=q4=先祖指引图腾","=q4=裂魂","=q4=萨拉克的扭曲飞刀","=q4=坚韧卫士火枪"})
Process("BTIllidanStormrage",24,{"=q4=上层精灵斗篷","=q4=伊利达雷大领主兜帽","=q4=萨格拉斯的诅咒视界","=q4=铁壁面甲","=q4=怒风徽记之戒","=q4=古尔丹之颅","=q4=泰兰德的记忆","","=q5=埃辛诺斯战刃","=q5=埃辛诺斯战刃","","","","","","=q4=遗忘征服者的胸甲","=q4=遗忘保卫者的胸甲","=q4=遗忘胜利者的胸甲","","=q4=埃辛诺斯碎片","=q4=卡拉波水晶之塔","=q4=扎尔杜姆，吞噬者的法杖","=q4=埃辛诺斯壁垒","=q4=背叛者的黑暗之弓"})
Process("BTNajentus",20,{"=q4=唤海者便鞋","=q4=海潮潜伏者之帽","=q4=黑暗护肩","=q4=缓流头盔","=q4=穆库之拳","=q4=海洋之怒长靴","=q4=恒金外壳护腕","=q4=珍珠镶饰长靴","=q4=踏潮者胫甲","","","","","","","=q4=静浪之戒","=q4=风暴掌控之戒","=q4=大漩涡之怒","=q4=涨潮","=q4=荒芜之戟"})
Process("BTPatterns",19,{"=q4=设计图：晨钢护腕","=q4=设计图：晨钢护肩","=q4=设计图：迅钢护腕","=q4=设计图：迅钢护肩","=q4=图样：闪电反射护腕","=q4=图样：新生护腕","=q4=图样：生命之地护腕","=q4=图样：生命之地护肩","=q4=图样：闪电反射护肩","=q4=图样：新生护肩","=q4=图样：迅捷打击护腕","=q4=图样：迅捷打击护肩","","","","=q4=图样：敏锐思维护腕","=q4=图样：敏锐思维衬肩","=q4=图样：迅捷治疗衬肩","=q4=图样：迅捷治疗护腕"})
Process("BTShahraz",18,{"=q4=崩坏护腿","=q4=暗影主宰之靴","=q4=裂心胸铠","=q4=纳蒂娜的纯洁坠饰","=q4=光明使者宝典","=q4=野蛮之刃","","","","","","","","","","=q4=遗忘征服者的护肩","=q4=遗忘保卫者的护肩","=q4=遗忘胜利者的护肩"})
Process("BTSupremus",22,{"=q4=无尽腰带","=q4=虚空暗影外套","=q4=风暴降临护腕","=q4=精准腕甲","=q4=自然庇护腰带","=q4=深渊愤怒肩铠","","","","","","","","","","=q4=无尽梦魇项圈","=q4=深渊领主指环","=q4=白鹿神像","=q4=残酷者","=q4=纳斯雷兹姆吸血者","=q4=魔石壁垒","=q4=军团杀手"})
Process("BTTrash",28,{"=q4=空灵披风","=q4=决战披风","=q4=神圣光芒长靴","=q4=兽穴领袖之靴","=q4=无情风暴胸甲","=q4=掠夺护手","=q4=圣光使者腰带","=q4=锯齿利刃项圈","=q4=地狱火坠饰","=q4=浩劫指环","=q4=卡拉波祝福指环","=q4=远古知识之戒","","","","=q4=审判之锤","=q4=迅钢锤","=q4=伊利达雷符文盾","","=q4=天蓝宝石","=q4=焚石","=q4=狮眼石","=q4=海浪翡翠","=q4=影歌紫玉","=q4=赤尖石","","=q3=黑暗之心","=q2=伊利达雷印记"})
Process("CFRSerpentHydross",21,{"=q4=仇恨回响长袍","=q4=净化裹腕","=q4=混沌噩梦之靴","=q4=冷漠者的护肩","=q4=黑暗深渊作战护腕","=q4=游侠将军的胸甲","=q4=正义之明亮头盔","=q4=战争舞者肩甲","","","","","","","","=q4=致命之戒","=q4=邪恶侵犯指环","=q4=野性之心的活力根须","=q4=偏移甲虫","=q4=深渊石","=q4=新月女神神像"})
Process("CFRSerpentKarathress",18,{"=q4=踏魂长靴","=q4=血海匪徒外衣","=q4=溺水者之链","=q4=踏潮者的深渊胸针","=q4=逆流六分仪","=q4=世界击碎者","","","","","","","","","","=q4=战败勇士的护腿","=q4=战败卫士的护腿","=q4=战败英雄的护腿"})
Process("CFRSerpentLeotheras",18,{"=q4=虎鲸皮靴","=q4=珊瑚护肩","=q4=精准猎手护腕","=q4=无敌束带","=q4=海啸护符","=q4=海兽之牙","","","","","","","","","","=q4=战败勇士的手套","=q4=战败卫士的手套","=q4=战败英雄的手套"})
Process("CFRSerpentLurker",21,{"=q4=尖啸恐惧腰带","=q4=守护者的天鹅绒长靴","=q4=雷姆洛斯的丛林护腕","=q4=猛烈打击长靴","=q4=风暴行者之靴","=q4=真相之光芒胸甲","=q4=根除护腕","","","","","","","","","=q4=凶兽之怒项圈","=q4=远古征服指环","=q4=丹扎拉尔徽记","=q4=热情冥想耳环","=q4=绝对真理圣契","=q4=潮汐之锤"})
Process("CFRSerpentMorogrim",21,{"=q4=锋鳞作战披风","=q4=伊利达雷护肩","=q4=上古纠结胸甲","=q4=不倦追踪者护肩","=q4=海潮召唤束带","=q4=银色哨兵肩甲","=q4=湮灭战靴","","","","","","","","","=q4=流失岁月坠饰","=q4=裂魂之戒","=q4=警醒指环","=q4=盘蛇饰带","=q4=艾萨拉之爪","=q4=纳鲁的寒光魔棒"})
Process("CFRSerpentTrash",27,{"=q4=无尽勇气之靴","=q4=危机坠饰","=q4=隐秘舰队的望远镜","=q4=漩涡图腾","=q4=野性怒火法杖","=q4=毒蛇神殿飞镖","","=q4=设计图：红色浩劫长靴","=q4=设计图：红色战斗腰带","=q4=设计图：保卫者战靴","=q4=设计图：守护者腰带","=q4=图样：冲击腰带","=q4=图样：冲击长靴","=q4=图样：长路之靴","=q4=图样：长路腰带","=q4=图样：飓风长靴","=q4=图样：季风腰带","=q4=图样：自然优雅之靴","=q4=图样：赤鹰之靴","=q4=图样：无边黑暗之靴","=q4=图样：自然力量腰带","=q4=图样：黑鹰腰带","=q4=图样：深邃暗影腰带","","=q4=虚空漩涡","","=q2=伊利达雷印记"})
Process("CFRSerpentVashj",20,{"=q4=海巫外衣","=q4=符文图腾衬肩","=q4=百亡腰带","=q4=毒蛇长靴","=q4=海怪之心胸甲","=q4=波浪荣耀护手","=q4=无尽盘蛇之戒","=q4=复苏者的珊瑚指环","=q4=心灵平静棱柱","=q4=瓦丝琪之牙","=q4=浅水权杖","=q4=蛇脊长弓","","","","=q4=战败勇士的头盔","=q4=战败卫士的头盔","=q4=战败英雄的头盔","","=q1=瓦丝琪的水瓶残余"})
Process("CFRSlaveMennu",7,{"=q3=高贵统御护腿","=q3=跃动闪电外衣","=q3=追踪者的腰带","=q3=废土行者尖刀","=q3=魔焰长剑","","=q2=图样：自然护甲片"})
Process("CFRSlaveMennuHEROIC",13,{"=q4=公正徽章","=q4=灿烂火白石","=q4=鲜艳玉髓","=q4=皇家紫萤石","","=q3=信任腰带","=q3=门努的鳞片护腿","=q3=破碎者的箭术腰带","=q3=叛徒的绞索","=q3=自然愈合图腾","=q3=星光匕首","","=q2=图样：自然护甲片"})
Process("CFRSlaveQuagmirran",5,{"=q3=孢子披风","=q3=灵巧手甲","=q3=蝎刺护肩","=q3=无疤胸甲","=q3=碧蓝板甲护胫"})
Process("CFRSlaveQuagmirranHEROIC",27,{"=q4=公正徽章","=q4=亵渎之靴","=q4=午夜护腿","=q4=野性魔法肩甲","=q4=完整的精金锁链","","=q3=夸格米拉的镣铐","=q3=地魂长裤","=q3=正义怒火胸甲","=q3=稳固束带","=q3=法师怒火腰带","","=q1=夸格米拉之心","","","=q4=灿烂火白石","=q4=鲜艳玉髓","=q4=皇家紫萤石","","=q3=法力蚀刻肩甲","=q3=荒芜肩甲","","=q3=乌索尔指环","=q3=夸格米拉之眼","=q3=沼泽光芒灯笼","=q3=磷光之刃","=q3=血环战锤"})
Process("CFRSlaveRokmar",5,{"=q3=泥沼龙虾人鳞片披风","=q3=符文菌帽","=q3=恢复之盘牙战锤","=q3=孢子芦苇杆","=q3=盘牙射针弩"})
Process("CFRSlaveRokmarHEROIC",11,{"=q4=公正徽章","=q4=灿烂火白石","=q4=鲜艳玉髓","=q4=皇家紫萤石","","=q3=铁鳞战斗披风","=q3=冷语束腰","=q3=谎言之绳","=q3=波涛之怒长靴","=q3=无穷祝福束带","=q3=战斗怒火之骷髅项链"})
Process("CFRSteamSecondFragmentGuardian",1,{"=q1=第二块钥匙碎片"})
Process("CFRSteamSteamrigger",7,{"=q3=地覆裹手","=q3=忏悔面具","=q3=勇气铰链","=q3=蛇纹生命法杖","=q3=无后座力火箭枪X-54型","","=q3=结构图：超级火箭靴"})
Process("CFRSteamSteamriggerHEROIC",12,{"=q4=公正徽章","=q4=碎裂玉髓","=q4=充能火白石","=q4=狡诈紫萤石","","=q3=地覆裹手","=q3=忏悔面具","=q3=勇气铰链","=q3=蛇纹生命法杖","=q3=无后座力火箭枪X-54型","","=q3=结构图：超级火箭靴"})
Process("CFRSteamThespia",16,{"=q3=海音贝壳披风","=q3=无情胸甲","=q3=月怒束带","=q3=闪烁的珊瑚指环","","=q2=图样：冰霜护甲片","","=q1=水下洞穴的沃土","","","","","","","","=q3=魔咒师手套"})
Process("CFRSteamThespiaHEROIC",16,{"=q4=公正徽章","=q4=碎裂玉髓","=q4=充能火白石","=q4=狡诈紫萤石","","=q3=海音贝壳披风","=q3=无情胸甲","=q3=月怒束带","=q3=闪烁的珊瑚指环","","=q2=图样：冰霜护甲片","","=q1=水下洞穴的沃土","","","=q3=魔咒师手套"})
Process("CFRSteamTrash",6,{"=q3=图鉴：冰霜氪金指环","","=q2=公式：附魔护腕 - 坚韧","","=q1=瓦丝琪女王的命令","=q1=盘牙武器"})
Process("CFRSteamWarlord",22,{"=q4=图样：战斗施法罩帽","","=q3=魔鲨斗篷","=q3=统御之朱红长袍","=q3=毒蛇女王的腰带","=q3=深渊之心手套","=q3=白银之手指环","","","","","","","","","=q3=魔咒师护肩","=q3=月光林地护肩","=q3=巨兽之王肩甲","=q3=潮汐之怒护手","=q3=巨兽之王护腿","=q3=正义胸铠","=q3=鲁莽护手"})
Process("CFRSteamWarlordHEROIC",28,{"=q4=公正徽章","=q4=大祭司褶裙","=q4=怒浪护臂","=q4=进攻者的琥珀护腕","=q4=怒潮长弓","","=q3=魔鲨斗篷","=q3=统御之朱红长袍","=q3=毒蛇女王的腰带","=q3=深渊之心手套","=q3=白银之手指环","","=q1=卡利瑟里斯的三叉戟","=q1=督军的论文","","=q4=图样：战斗施法罩帽","=q4=碎裂玉髓","=q4=充能火白石","=q4=狡诈紫萤石","","","=q3=魔咒师护肩","=q3=月光林地护肩","=q3=巨兽之王肩甲","=q3=潮汐之怒护手","=q3=巨兽之王护腿","=q3=正义胸铠","=q3=鲁莽护手"})
Process("CFRUnderGhazan",5,{"=q3=治疗光芒披风","=q3=纯洁钉皮束带","=q3=坚韧护符","=q3=洞察之夜明珠","=q3=仇恨使者"})
Process("CFRUnderGhazanHEROIC",11,{"=q4=公正徽章","=q4=烁光玉髓","=q4=华丽火白石","=q4=辐光玉髓","","=q3=沙丘狂风腰带","=q3=潮汐头饰","=q3=勇敢束带","=q3=蛇牙项链","=q3=暗影深渊之戒","=q3=海兽重杖"})
Process("CFRUnderHungarfen",5,{"=q3=魔法火花手套","=q3=星光护手","=q3=莱库尔血色护腕","=q3=雷暴图腾","=q3=尖针飞刀"})
Process("CFRUnderHungarfenHEROIC",11,{"=q4=公正徽章","=q4=烁光玉髓","=q4=华丽火白石","=q4=辐光玉髓","","=q3=秘术徽记护腕","=q3=霍加尔芬护手","=q3=活焰束带","=q3=忠诚圣袍","=q3=乌索克神像","=q3=沼泽骨拳"})
Process("CFRUnderStalker",7,{"=q3=预言者长袍","=q3=欺诈护腿","=q3=阔步者胸甲","=q3=蛮力护肩","=q3=黑色阔步者之牙","","=q1=黑色阔步者的大脑"})
Process("CFRUnderStalkerHEROIC",27,{"=q4=公正徽章","=q4=树皮长靴","=q4=雷歌褶裙","=q4=追踪者之眼","=q4=黑色茎杆","","=q3=魔牙仪祭头盔","=q3=永恒秘密之神谕腰带","=q3=山猫之王的野蛮面具","=q3=野蛮裹腿","=q3=骨串项链","=q3=虚幻希望之戒","=q3=恶魔能量萃取器","=q3=阿古斯指南针","","=q4=烁光玉髓","=q4=华丽火白石","=q4=辐光玉髓","","=q3=法力蚀刻长裤","=q3=末日板甲护肩","","=q3=终结使者","=q3=治愈之风暴盾牌","","=q1=黑色阔步者的大脑","=q1=黑色阔步者的卵"})
Process("CFRUnderSwamplord",5,{"=q3=耐久迅捷披风","=q3=守夜者外套","=q3=真相护肩","=q3=铁卫士胫甲","=q3=赞加利齿短剑"})
Process("CFRUnderSwamplordHEROIC",11,{"=q4=公正徽章","=q4=烁光玉髓","=q4=华丽火白石","=q4=辐光玉髓","","=q3=太阳之手","=q3=森林之王的头冠","=q3=轻蔑护腕","=q3=沼泽石链","=q3=沼泽之王的风蚀指环","=q3=泥沼利斧"})
Process("CoTHillsbradAgedDalaranWizard",1,{"=q1=公式：附魔盾牌 - 智力"})
Process("CoTHillsbradDrake",5,{"=q3=冲动披风","=q3=暴掠暗影褶裙","=q3=鸦翼肩甲","=q3=乌瑟尔的礼仪之靴","=q3=永固精铁指环"})
Process("CoTHillsbradDrakeHEROIC",11,{"=q4=公正徽章","=q4=眩光玉髓","=q4=增效火白石","=q4=坚硬玉髓","","=q3=埃兰的巫术护腿","=q3=月食之握","=q3=莫克纳萨作战面具","=q3=洛丹伦中尉徽记","=q3=洛丹伦医疗手册","=q3=血颅毁灭者"})
Process("CoTHillsbradHunter",7,{"=q4=图鉴：奥术力量头饰","","=q3=忍耐肩甲","=q3=匹瑞诺德护肩","=q3=轮回之钻石项链","=q3=布洛克斯的勇气指环","=q3=时光之匕"})
Process("CoTHillsbradHunterHEROIC",26,{"=q4=公正徽章","=q4=圣灵腰带","=q4=夜幕护腕","=q4=盗贼大师手套","=q4=龙鳞腿甲","=q4=殉难者胫甲","","=q3=时光耳语腰带","=q3=龙威肩铠","=q3=辉煌希望项链","=q3=荣耀之回响指环","=q3=闪光奥金指环","=q3=奥法师之石","=q3=时间切割者","=q3=永恒龙斧","=q4=眩光玉髓","=q4=增效火白石","=q4=坚硬玉髓","=q4=图鉴：奥术力量头饰","","=q3=法力蚀刻外衣","=q3=废土行者头盔","=q3=荒芜胸甲","=q3=末日板甲战盔","","=q1=时空猎手的头颅"})
Process("CoTHillsbradSkarloc",9,{"=q3=波峰护手","=q3=缀鳞容忍护胫","=q3=杜隆坦的战甲","=q3=阿曼尼毒斧","=q3=北郡作战钉锤","","=q2=红色冬帽","","=q2=配方：铁盾药水"})
Process("CoTHillsbradSkarlocHEROIC",15,{"=q4=公正徽章","=q4=眩光玉髓","=q4=增效火白石","=q4=坚硬玉髓","","=q3=波提夫的预言长裤","=q3=月冠之角","=q3=翡翠鳞片腿甲","=q3=警觉之心长靴","=q3=塔伦米尔活力坠饰","=q3=达索汉的仪式之锤","","=q2=红色冬帽","","=q2=配方：铁盾药水"})
Process("CoTHillsbradThomasYance",1,{"=q1=图样：马鞭"})
Process("CoTHillsbradTrash",1,{"=q3=图样：斯蒂林的冒险帽"})
Process("CoTMorassAeonus",21,{"=q3=无辜者兜帽","=q3=原始涌动护腕","=q3=红龙肩甲","=q3=无尽循环甲虫","=q3=拉托恩的狡诈之剑","=q3=血火法杖","","","","","","","","","","=q3=法力蚀刻皇冠","=q3=刺杀手套","=q3=月光林地短裤","=q3=荒芜头盔","=q3=鲁莽腿铠","=q3=正义腿铠"})
Process("CoTMorassAeonusHEROIC",25,{"=q4=公正徽章","=q4=术士长裤","=q4=死亡使者束带","=q4=勇敢契约束带","=q4=量子之刃","","=q3=无辜者兜帽","=q3=原始涌动护腕","=q3=红龙肩甲","=q3=无尽循环甲虫","=q3=拉托恩的狡诈之剑","=q3=血火法杖","","=q1=埃欧努斯的沙漏","","=q4=黯光火白石","=q4=反光火白石","=q4=炽热紫萤石","","=q3=法力蚀刻皇冠","=q3=刺杀手套","=q3=月光林地短裤","=q3=荒芜头盔","=q3=鲁莽腿铠","=q3=正义腿铠"})
Process("CoTMorassDeja",8,{"=q3=流逝岁月披风","=q3=三重恐惧护肩","=q3=镶焰护肩","=q3=心灵之火面具","=q3=灵魂精准之戒","=q3=梅尔莫塔的暮色长弓","","=q2=图样：奥术护甲片"})
Process("CoTMorassDejaHEROIC",13,{"=q4=公正徽章","=q4=黯光火白石","=q4=反光火白石","=q4=炽热紫萤石","","=q3=流逝岁月披风","=q3=三重恐惧护肩","=q3=镶焰护肩","=q3=心灵之火面具","=q3=灵魂精准之戒","=q3=梅尔莫塔的暮色长弓","","=q2=图样：奥术护甲片"})
Process("CoTMorassTemporus",6,{"=q3=卡德加的咒誓褶裙","=q3=嘲颅战甲","=q3=分解者的沙漏","=q3=星心灯笼","=q3=千年之刃","=q3=时光治愈者"})
Process("CoTMorassTemporusHEROIC",11,{"=q4=公正徽章","=q4=黯光火白石","=q4=反光火白石","=q4=炽热紫萤石","","=q3=卡德加的咒誓褶裙","=q3=嘲颅战甲","=q3=分解者的沙漏","=q3=星心灯笼","=q3=千年之刃","=q3=时光治愈者"})
Process("CoTMorassTrash",1,{"=q3=图样：斯蒂林的丛林帽"})
Process("GruulGruul",23,{"=q4=古加尔的项圈","=q4=自然呼吸兜帽","=q4=戈隆缝合束带","=q4=屠龙者护手","=q4=风剪长靴","=q4=完美勇士护手","=q4=格鲁尔之牙","=q4=格鲁尔之眼","=q4=龙脊奖章","","=q1=土灵徽记","","","","","=q4=阵亡勇士的护腿","=q4=阵亡卫士的护腿","=q4=阵亡英雄的护腿","","=q4=血喉魔剑","=q4=戈隆领主之斧","=q4=奥尔多遗产保卫者","=q4=否决飞镖"})
Process("GruulsLairHighKingMaulgar",18,{"=q4=食人魔法师的野蛮披风","=q4=神圣灵感腰带","=q4=暗影之邪恶面具","=q4=莫加尔的战盔","=q4=刀塔作战护腕","=q4=纳鲁之锤","","","","","","","","","","=q4=阵亡勇士的护肩","=q4=阵亡卫士的护肩","=q4=阵亡英雄的护肩"})
Process("HCFurnaceBreaker",5,{"=q3=神权外衣","=q3=思维火焰腰带","=q3=暮色隐者护肩","=q3=报复外衣","=q3=战歌咆哮之斧"})
Process("HCFurnaceBreakerHEROIC",26,{"=q4=公正徽章","=q4=暗影拥抱护肩","=q4=波浪纹章之靴","=q4=鹰纹战靴","=q4=击碎者的护符","","=q3=沸腾光芒之袍","=q3=无悔护腿","=q3=世界末日护腕","=q3=翡翠之眼护腕","=q3=公正之红宝石头盔","=q3=血誓战靴","=q3=士兵的识别牌","=q3=不屈勇气徽章","","=q4=折光火白石","=q4=幽光紫萤石","=q4=裂纹玉髓","","=q3=废土行者外套","=q3=末日板甲手套","","=q3=意志击碎者","=q3=精金强弩","","=q1=克里丹的羽饰法杖"})
Process("HCFurnaceBroggok",5,{"=q3=弧光护腕","=q3=外科医生的手套","=q3=夜行褶裙","=q3=奥丝蕾的光芒护符","=q3=军团火枪"})
Process("HCFurnaceBroggokHEROIC",10,{"=q4=公正徽章","=q4=折光火白石","=q4=幽光紫萤石","=q4=裂纹玉髓","","=q3=魔火刺绣长靴","=q3=月亮之子护腿","=q3=圣洁使者臂甲","=q3=休养徽记","=q3=火印战斧"})
Process("HCFurnaceMaker",5,{"=q3=阵风束带","=q3=铁刃护手","=q3=战斗欲望坠饰","=q3=消逝贤者圣契","=q3=钻石重锤"})
Process("HCFurnaceMakerHEROIC",10,{"=q4=公正徽章","=q4=折光火白石","=q4=幽光紫萤石","=q4=裂纹玉髓","","=q3=神秘刺绣斗篷","=q3=火焰风暴之法师头饰","=q3=月触护腕","=q3=血领主腿铠","=q3=复仇圣契"})
Process("HCHallsExecutioner",1,{"=q1=未使用的刽子手之斧"})
Process("HCHallsKargath",21,{"=q3=击碎者的胫甲","=q3=巨人塑像","=q3=太阳神的辉煌徽记","=q3=魔血剔骨者","=q3=光誓之锤","=q3=节点火炬","","=q1=卡加斯酋长之拳","","","","","","","","=q3=圣徒裹手","=q3=湮灭手套","=q3=废土行者手套","=q3=巨兽之王护手","=q3=荒芜手套","=q3=正义护手"})
Process("HCHallsKargathHEROIC",25,{"=q4=公正徽章","=q4=纯净魔法护腕","=q4=森林之心护腕","=q4=正义旅途长靴","=q4=刃拳","","=q3=击碎者的胫甲","=q3=巨人塑像","=q3=太阳神的辉煌徽记","=q3=魔血剔骨者","=q3=光誓之锤","=q3=节点火炬","","=q1=卡加斯酋长之拳","=q1=刃拳的印记","=q4=无瑕玉髓","=q4=辉光火白石","=q4=统御紫萤石","","=q3=圣徒裹手","=q3=湮灭手套","=q3=废土行者手套","=q3=巨兽之王护手","=q3=荒芜手套","=q3=正义护手"})
Process("HCHallsNethekurse",11,{"=q4=图样：法术打击兜帽","","=q3=恶意披风","=q3=奈瑟库斯护腕","=q3=塔拉狩猎束带","=q3=永固重盔","=q3=月亮女神的象牙神像","","=q2=绿色冬帽","","=q1=高阶术士的护符"})
Process("HCHallsNethekurseHEROIC",16,{"=q4=公正徽章","=q4=图样：法术打击兜帽","=q4=无瑕玉髓","=q4=辉光火白石","=q4=统御紫萤石","","=q3=恶意披风","=q3=奈瑟库斯护腕","=q3=塔拉狩猎束带","=q3=永固重盔","=q3=月亮女神的象牙神像","","=q1=高阶术士的护符","=q1=暮色魔典","","=q2=绿色冬帽"})
Process("HCHallsOmrogg",16,{"=q3=圣灵珠宝长靴","=q3=符文之歌","=q3=毁灭火槌","=q3=天火鹰弓","","=q1=大地之母的眼泪","","","","","","","","","","=q3=潮汐之怒护肩"})
Process("HCHallsOmroggHEROIC",16,{"=q4=公正徽章","=q4=无瑕玉髓","=q4=辉光火白石","=q4=统御紫萤石","","=q3=圣灵珠宝长靴","=q3=符文之歌","=q3=毁灭火槌","=q3=天火鹰弓","","=q1=大地之母的眼泪","","","","","=q3=潮汐之怒护肩"})
Process("HCHallsPorung",10,{"=q4=公正徽章","=q4=无瑕玉髓","=q4=辉光火白石","=q4=统御紫萤石","","=q3=烈焰怒火长裤","=q3=迅足之靴","=q3=涌动思维腰带","=q3=杀戮肩甲","=q3=血卫士的狂野项链"})
Process("HCHallsTrash",1,{"=q2=公式：附魔双手武器 - 野蛮"})
Process("HCMagtheridon",26,{"=q4=深渊猎手披风","=q4=食魂者的裹手","=q4=谎言之舌手套","=q4=恐惧深渊束带","=q4=雷霆巨盔","=q4=无尽深渊束带","=q4=玛瑟里顿之眼","=q4=卡拉波护符","","=q4=深渊巨刃","=q4=水晶脉冲法杖","=q4=守备官纹章盾","=q4=艾瑞达湮灭魔杖","","=q2=黑色宝石袋","=q4=阵亡勇士的胸甲","=q4=阵亡卫士的胸甲","=q4=阵亡英雄的胸甲","","=q4=玛瑟里顿的头颅","=q4=反抗之戒","=q4=纳鲁圣光卫士指环","=q4=赤红怒火指环","=q4=阿达尔的防御徽记","","=q4=深渊领主的口袋"})
Process("HCRampFelIronChest",10,{"=q3=莫克纳萨迷失披风","=q3=生命赐予者长裤","=q3=午夜之狡诈腰带","=q3=滚雷褶裙","=q3=铁底靴","=q3=恢复指环","=q3=巫术指环","=q3=莫克纳萨氏族戒指","=q3=地狱剥夺者","=q3=乌索尔之爪"})
Process("HCRampFelIronChestHEROIC",21,{"=q4=公正徽章","=q4=愈树者腰带","=q4=天怒护手","=q4=狮王之心束带","=q4=魔牙剔骨者","","=q3=光明丝线护腕","=q3=徘徊者胸甲","=q3=自然气息外衣","=q3=火山肩铠","=q3=海洋之歌","=q3=铁龙面甲","=q3=勇敢臂甲","=q3=生命使者护手","","=q4=虹光火白石","=q4=耀目玉髓","=q4=稳固玉髓","","=q3=艾维林的斩杀指环","=q3=掠夺者之戒"})
Process("HCRampNazan",1,{"=q1=纳杉之颅"})
Process("HCRampOmor",8,{"=q3=染血的掠食者护手","=q3=顽强防御者","=q3=绞喉项链","=q3=心血念珠","=q3=心火战锤","=q3=水晶火焰法杖","","=q1=奥摩尔之蹄"})
Process("HCRampOmorHEROIC",20,{"=q4=公正徽章","","=q3=敏锐头饰","=q3=阴暗之火红护腕","=q3=沉默旅者长靴","=q3=破碎疆界腰带","=q3=公正使者肩铠","=q3=炽火熔铸胸甲","=q3=奥摩尔的意志","=q3=多棱指环","=q3=法奥的净化徽记","=q3=恐惧烈焰匕首","=q3=炼狱权杖","","=q1=奥摩尔之蹄","=q4=虹光火白石","=q4=耀目玉髓","=q4=稳固玉髓","","=q3=法力蚀刻手套"})
Process("HCRampVazruden",1,{"=q1=不祥的信件"})
Process("HCRampWatchkeeper",7,{"=q3=奥术怒火护肩","=q3=诡计护腕","=q3=散兵的鳞片护腿","=q3=光触胸甲","=q3=影裂长剑","","=q1=加戈玛之手"})
Process("HCRampWatchkeeperHEROIC",12,{"=q4=公正徽章","=q4=虹光火白石","=q4=耀目玉髓","=q4=稳固玉髓","","=q3=永生披风","=q3=黑暗行者长靴","=q3=荒野行者长靴","=q3=正义护腕","=q3=血骑士防御者","","=q1=加戈玛之手"})
Process("KaraAran",22,{"=q4=黑暗掠夺者斗篷","=q4=夺灵者护肩","=q4=地狱巫师之靴","=q4=无瑕之靴","=q4=恶匪长靴","=q4=钢针面甲","=q4=公正追寻者肩甲","","=q4=公正徽章","","=q1=麦迪文的日记","","","","","=q4=豹爪护符","=q4=谢尔曼指环","=q4=紫罗兰之眼坠饰","=q4=埃兰的镇定宝石","=q4=提瑞斯法支配魔杖","","=q3=公式：附魔武器 - 阳炎"})
Process("KaraAttumen",21,{"=q4=预兆护腕","=q4=涌动思维裹手","=q4=圣洁祝福手套","=q4=白鹿护腕","=q4=灵巧驾驭手套","=q4=旋风护腕","=q4=猎手的作战护腕","=q4=胆量臂甲","=q4=复兴希望护手","","=q4=公正徽章","","","","","=q4=狼人利爪项链","=q4=灵感之鬼怪指环","=q4=钢鹰强弩","=q4=炽热战马的缰绳","","=q3=结构图：稳定恒金瞄准镜"})
Process("KaraCharredBoneFragment",1,{"=q1=焦骨碎块"})
Process("KaraChess",19,{"=q4=王权头饰","=q4=残酷肩刃","=q4=叛逆束带","=q4=森林王者长靴","=q4=心灵烈焰护腿","=q4=斩魔者之靴","=q4=无辜者腿铠","=q4=战痕长靴","","=q4=公正徽章","","","","","","=q4=英雄的秘银项链","=q4=循环之戒","=q4=国王护卫者","=q4=古树之三联盾牌"})
Process("KaraCurator",18,{"=q4=抚慰肩甲","=q4=森林微风护肩","=q4=龙啸护肩","=q4=乌瑞恩王朝腿甲","=q4=迦萝娜的徽记指环","=q4=无尽秘密法杖","","=q4=公正徽章","","","","","","","","=q4=阵亡勇士的手套","=q4=阵亡卫士的手套","=q4=阵亡英雄的手套"})
Process("KaraIllhoof",22,{"=q4=镀金瑟银披风","=q4=暗影魔藤披风","=q4=意志之环","=q4=煞星束带","=q4=自然维持腰带","=q4=徘徊者束带","=q4=缚光者胸甲","","=q4=公正徽章","","","","","","","=q4=治愈者的心灵指环","=q4=电容器","=q4=愚者之灾","=q4=特雷斯坦的荆棘法杖","=q4=萨维安飞刀","","=q3=公式：附魔武器 - 魂霜"})
Process("KaraKeannaLog",1,{"=q1=金娜的日记"})
Process("KaraMaiden",18,{"=q4=心灵护腕","=q4=奈法里奥斯契约护腕","=q4=预测之靴","=q4=恶毒护腕","=q4=愈树者手套","=q4=聚焦手套","=q4=振作手套","=q4=公正护腕","=q4=圣女的铁护手","","=q4=公正徽章","","","","","=q4=戒律之尖刺项圈","=q4=治疗之雨图腾","=q4=纯洁碎片"})
Process("KaraMoroes",22,{"=q4=阿拉希国王的皇家披风","=q4=达拉然暗影披风","=q4=虚空碎片束带","=q4=刀锋行者长靴","=q4=强风力量腰带","=q4=不屈之火红束带","=q4=骁勇之靴","","=q4=公正徽章","","","","","","","=q4=无尽怒火项圈","=q4=莫罗斯的幸运怀表","=q4=坚定信仰徽记","=q4=飞鸟之心神像","=q4=翡翠撕裂者","","=q3=公式：附魔武器 - 猫鼬"})
Process("KaraNamed",20,{"","=q4=潜伏者束腰","=q4=潜伏者护腰","=q4=潜伏者腰带","=q4=潜伏者束带","","","=q4=蹂躏者护腕","=q4=蹂躏者裹腕","=q4=蹂躏者腕环","=q4=蹂躏者腕甲","","","","","","=q4=滑翔者的裹足","=q4=滑翔者的长靴","=q4=滑翔者的战靴","=q4=滑翔者的胫甲"})
Process("KaraNetherspite",19,{"=q4=思维联合头饰","=q4=忏悔长裤","=q4=挑战兜帽","=q4=潜藏者的腿甲","=q4=大地血脉胸甲","=q4=剥裂者护腿","=q4=亚布拉米斯护肩","=q4=真相束带","","=q4=公正徽章","","","","","","=q4=地狱光芒锁链","=q4=无疤者的秘银指环","=q4=无尽可能宝珠","=q4=怨恨"})
Process("KaraNightbane",20,{"=q4=博学长者之袍","=q4=石枝外套","=q4=暗谋胸甲","=q4=屠戮之鳞片胸甲","=q4=狂野迅疾长靴","=q4=潘萨塔尔胸铠","=q4=急促铁靴","","=q4=公正徽章","","=q1=灿烂徽记","=q1=暗淡的奥术精华","","","","=q4=灰烬之刺","=q4=夜之魇的护符","=q4=永生长夜法杖","=q4=龙心火盾","=q4=无边黑暗之盾"})
Process("KaraOperaEvent",28,{"","=q4=公正徽章","=q4=试炼火焰长裤","=q4=地魂护腿","=q4=野兽之吼护肩","=q4=恒金重盔","=q4=牺牲绶带","=q4=救赎灵魂圣契","","","=q4=邪恶女巫帽","=q4=红宝石靴子","=q4=遗产","=q4=蓝钻魔杖","","","=q4=避世长袍","=q4=罗密欧的毒药","=q4=无缘","=q4=绝望","","","","","=q4=小红帽的披风","=q4=大灰狼的头","=q4=大灰狼的爪子","=q4=屠狼者的狙击枪"})
Process("KaraPrince",18,{"=q4=纯净心灵之无暇披风","=q4=秘法红宝石斗篷","=q4=远行者荒野披风","=q4=灵魂窃取项链","=q4=永生之翡翠指环","=q4=千印之戒","","=q4=纳斯雷兹姆心灵之刃","=q4=玛克扎尔匕首","=q4=斩首者","=q4=血吼","=q4=圣光的正义","=q4=凤凰之日怒长弓","","=q4=公正徽章","=q4=阵亡勇士的头盔","=q4=阵亡卫士的头盔","=q4=阵亡英雄的头盔"})
Process("KaraTrash",21,{"=q4=正义披风","=q4=亡者之握","=q4=炼狱腰带","=q4=灵巧之握","=q4=泽尔哈特遗失的靴子","=q4=追踪者腰带","=q4=躲闪长靴","","=q1=山丘之王的遗产","=q1=狼人的折磨","=q1=堕落者的救赎","=q1=泰坦之怒","","=q1=灵魂精华","","=q4=雷特森的遗失坠饰","=q4=冷酷风暴之戒","","=q4=图样：灵魂布护肩","=q4=图样：灵魂布外衣","=q2=公式：附魔靴子 - 稳固"})
Process("MountHyjalAnetheron",19,{"=q4=怨怒护肩","=q4=安纳塞隆的束缚","=q4=大主教的便鞋","=q4=阿加多的腰带","=q4=魔化皮质便鞋","=q4=金色治疗胸甲","=q4=疾步长靴","=q4=闪光的钢铁护肩","","","","","","","","=q4=不败的意志","=q4=恶行之刃","=q4=狂野之柱","=q4=圣光壁垒"})
Process("MountHyjalArchimonde",18,{"=q4=罗宁之袍","=q4=永恒护腿","=q4=午夜胸甲","=q4=狂热追击锁甲","=q4=救世胸铠","=q4=无尽怒气腿甲","=q4=净化节杖","","=q4=混乱风暴","=q4=灾变之刃","=q4=阿古斯的使徒","=q4=安东尼达斯的专注纹章盾","=q4=闪击强弓","","","=q4=遗忘征服者的头盔","=q4=遗忘保卫者的头盔","=q4=遗忘胜利者的头盔"})
Process("MountHyjalAzgalor",18,{"=q4=罗德里格的雨衣","=q4=秘密商人长裤","=q4=弯弓护腿","=q4=防御者的荣耀","=q4=希望束带","=q4=无尽的痛苦","","","","","","","","","","=q4=遗忘征服者的手套","=q4=遗忘保卫者的手套","=q4=遗忘胜利者的手套"})
Process("MountHyjalKazrogal",17,{"=q4=安格莉丝塔的腰带","=q4=元素导能护腿","=q4=蓝色山羊皮软靴","=q4=刀锋怒火护肩","=q4=新月腰带","=q4=黑羽之靴","=q4=驯兽者护肩","=q4=峡谷猎手腰带","=q4=阳炎锁链护腿","=q4=沸腾怒火腰带","","","","","","=q4=赎罪之锤","=q4=卡兹洛加之心"})
Process("MountHyjalTrash",23,{"=q4=空灵披风","=q4=镇定斗篷","=q4=神圣光芒长靴","=q4=无情风暴胸甲","=q4=锯齿利刃项圈","=q4=地狱火坠饰","=q4=审判之锤","=q4=熔岩怒火之爪","=q4=熔岩怒火之拳","","=q3=黑暗之心","=q2=伊利达雷印记","","","","=q4=图鉴：闪光赤尖石","=q4=图鉴：巨型狮眼石","=q4=图鉴：铭文焚石","=q4=图鉴：秘法狮眼石","=q4=图鉴：狡诈影歌紫玉","=q4=图鉴：统御影歌紫玉","=q4=图鉴：风暴天蓝宝石","=q4=图鉴：隐秘焚石"})
Process("MountHyjalWinterchill",19,{"=q4=殉难护腕","=q4=崩坏腕甲","=q4=致命腕甲","=q4=回春护腕","=q4=寻路者护腕","=q4=嚎风护腕","=q4=止水长靴","=q4=染血肩铠","=q4=神圣精金护腕","=q4=狂暴镣铐","","","","","","=q4=追踪匕首","=q4=黑暗秘密编年史","","=q1=时光护符匣"})
Process("SMTDelrissa",8,{"=q3=背弃披风","=q3=幽暗圣洁护肩","=q3=静谧波浪手套","=q3=杀戮护腕","=q3=高阶女祭司的作战钉锤","=q3=夜袭","","=q3=公式：附魔披风 - 钢纹"})
Process("SMTDelrissaHEROIC",8,{"=q4=公正徽章","=q4=凯尔萨斯的赞誉","=q4=太阳之井的水瓶","=q4=提巴尔的聚焦水晶","=q4=耻辱碎片","","=q3=公式：附魔披风 - 钢纹","=q3=辛多雷宝珠"})
Process("SMTFireheart",6,{"=q3=迅捷治愈披风","=q3=怒火护腕","=q3=背弃护腿","=q3=森林追踪者护腕","=q3=神圣祝福护手","=q3=日铸利斧"})
Process("SMTFireheartHEROIC",7,{"=q4=公正徽章","=q4=永歌护腕","=q4=永恒苦痛肩铠","=q4=镶玉水晶匕首","=q4=混乱飞刀","","=q3=辛多雷宝珠"})
Process("SMTKaelthas",22,{"=q4=刀锋扭转披风","=q4=奥法敏锐手套","=q4=日怒皮靴","=q4=战争使者胸甲","=q4=逐日者战靴","=q4=卡尔玛的命运指环","","=q3=结构图：法力药水注射器","=q3=图鉴：致密艾露恩之星","","=q1=凯尔萨斯的头颅","","","","","=q3=重铸腰带","=q3=夏焰之袍","=q3=圣灵头盔","=q3=迅猛指环","=q3=碎梦之斧","=q3=烈日能量法杖","=q3=凤凰宝宝"})
Process("SMTKaelthasHEROIC",15,{"=q4=公正徽章","=q4=辛多雷血袍","=q4=银月侍从护肩","=q4=游侠领主外套","=q4=虚空力量胸甲","=q4=忏悔骑士胫甲","=q4=祭礼短棍","=q4=王子的迅捷之刃","=q4=彗星","=q4=迅捷白色陆行鸟","","=q3=凤凰宝宝","","=q3=结构图：法力药水注射器","=q3=图鉴：致密艾露恩之星"})
Process("SMTTrash",1,{"=q3=烈日背包"})
Process("SMTVexallus",6,{"=q3=暮色披风","=q3=神圣灌注护腕","=q3=复兴之靴","=q3=奥法跃动指环","=q3=决断指环","=q3=拉托恩的乱舞之刃"})
Process("SMTVexallusHEROIC",7,{"=q4=公正徽章","=q4=魔息护肩","=q4=活力胸甲","=q4=压迫之刃","=q4=炽光之杖","","=q3=辛多雷宝珠"})
Process("SPBrutallus",18,{"=q4=灾难护腿","=q4=魔怒腿铠","=q4=魔能力量腿铠","=q4=深渊领主颈圈","=q4=终结锁链","=q4=深渊之心","=q4=哀难","","","","","","","","","=q4=遗忘征服者的腰带","=q4=遗忘保卫者的腰带","=q4=遗忘胜利者的腰带"})
Process("SPEredarTwins",28,{"=q4=救赎灵魂披风","=q4=血色珍珠披风","=q4=唤魔师护肩","=q4=奇迹披肩","=q4=求知护肩","=q4=拓荒护肩","=q4=荒林护肩","=q4=盛怒护肩","=q4=魔牙护肩","=q4=金色森林护肩","=q4=均衡肩饰","=q4=爆发护肩","=q4=坚定肩铠","=q4=狂暴肩铠","","=q4=萨拉斯救世主护肩","=q4=萨拉斯防御者护肩","=q4=辛多雷征服坠饰","=q4=辛多雷拯救坠饰","=q4=辛多雷胜利坠饰","=q4=自由魔法项链","=q4=灾难指环","=q4=上层精灵的赞美诗","=q4=放血剃刀","=q4=执政官之槌","=q4=玛诺洛斯之握","=q4=远古本能之柱","=q4=奎尔萨拉斯金弓"})
Process("SPFelmyst",18,{"=q4=堡垒手套","=q4=永恒长夜护腿","=q4=永生野兽护腿","=q4=雷暴锁链护腿","=q4=灵魂重铸褶裙","=q4=上层精灵的胸针","=q4=折戟壁垒","=q4=大魔导师的洪流法杖","","","","","","","","=q4=遗忘征服者的长靴","=q4=遗忘保卫者的长靴","=q4=遗忘胜利者的长靴"})
Process("SPKalecgos",18,{"=q4=止战马裤","=q4=激战长裤","=q4=自然侵攻护腿","=q4=壮丽自然长裤","=q4=逐星者护腿","=q4=神圣信仰腿铠","=q4=仲裁者护腿","=q4=光棱指环","=q4=卡雷苟斯之牙","=q4=龙鳞","","","","","","=q4=遗忘征服者的护腕","=q4=遗忘保卫者的护腕","=q4=遗忘胜利者的护腕"})
Process("SPKiljaeden",30,{"=q4=原罪披风","=q4=安东尼达斯的破碎斗篷","=q4=纯净圣光兜帽","=q4=奥术纯净头盔","=q4=黑暗咒术之环","=q4=黎明护手","=q4=泰莉的强能手套","=q4=诸界亵渎护手","=q4=狡诈之盔","=q4=愤怒猎手面具","=q4=智者乌索尔之帽","=q4=巨熊乌索克之帽","=q4=奥蕾莉亚的头盔","=q4=古尔丹的兜帽","=q4=耐奥祖酋长的兜帽","=q4=萨拉斯游侠护手","=q4=燃烧的正义","=q4=乌瑟尔的决心之盔","=q4=安纳斯特里亚的王冠","=q4=达斯雷玛之冠","=q4=边疆手套","","=q5=索利达尔，群星之怒","","=q4=天启","=q4=奥伯莱恩，裂日之剑","=q4=圣灵之锤","=q4=欺诈者之手","=q4=日灸","=q4=辛多雷金杖"})
Process("SPMuru",28,{"=q4=魔能征服者外衣","=q4=幻化光芒长袍","=q4=幽怨之袍","=q4=阳光外衣","=q4=艾露恩的幻想外套","=q4=野兽本能外套","=q4=混沌刀锋外套","=q4=暗影爆发护手","=q4=森林流浪者手套","=q4=静谧海岸外衣","=q4=惊涛胸甲","=q4=邪恶陆行鸟胸甲","=q4=鲁莽怒火战甲","=q4=憎恨胸铠","=q4=宁静灵魂护手","=q4=英勇仲裁者胸甲","=q4=尊贵仲裁者胸甲","=q4=坚定决心指环","=q4=全能之戒","=q4=辛多雷统御指环","=q4=辛多雷拯救指环","=q4=辛多雷胜利指环","=q4=灰暗的纳鲁薄片","=q4=闪光的纳鲁薄片","=q4=变幻的纳鲁薄片","=q4=坚硬的纳鲁薄片","=q4=村正","=q4=天使命运之盾"})
Process("SPPatterns",29,{"=q4=图样：骄阳之皮革护手","=q4=图样：骄阳之皮革胸甲","=q4=图样：凤凰飞羽手套","=q4=图样：凤凰的拥抱","=q4=图样：永生幽暗手套","=q4=图样：烈日暗影甲胄","=q4=图样：炙日鳞片手套","=q4=图样：炙日鳞片胸甲","=q4=图样：阳炎护手","=q4=图样：阳炎之袍","=q4=图样：永恒光芒之手","=q4=图样：永恒光芒长袍","=q4=图鉴：熔铸能量指环","=q4=图鉴：阳炎坠饰","=q4=图鉴：涌动生命指环","=q4=图鉴：涌动生命护符","=q4=图鉴：硬化氪金指环","=q4=图鉴：硬化氪金项链","=q4=结构图：湮灭全视护目镜","=q4=结构图：审判者护目镜3000型","=q4=结构图：超级治疗射线9000型","=q4=结构图：超级月光放大护目镜","=q4=结构图：奇迹治疗罩XT68型","=q4=结构图：源生同频护目镜","=q4=结构图：闪电蚀刻护目镜","=q4=结构图：必中护目镜V3.0","=q4=结构图：伤害投射护目镜","=q4=结构图：硬化氪金护目镜","=q4=结构图：四核死亡一击护目镜X44型"})
Process("SPTrash",26,{"=q4=稳固王权护手","=q4=宁静月光护手","=q4=上古影月护手","=q4=上古霜狼护手","=q4=谐和之戒","=q4=魔脊之枪","=q4=复仇","=q4=死亡飞刀","=q4=净化光芒魔杖","=q4=魔魂手杖","","=q3=高级熔炼教程","","=q3=太阳之尘","","=q4=天蓝宝石","=q4=焚石","=q4=狮眼石","=q4=海浪翡翠","=q4=影歌紫玉","=q4=赤尖石","","=q4=设计图：圣日护手","=q4=设计图：圣日胸甲","=q4=设计图：硬化氪金拳甲","=q4=设计图：硬化氪金战甲"})
Process("TKArcDalliah",7,{"=q4=图样：白色治愈短裤","","=q3=诸界烈焰胸甲","=q3=萨提亚的自校正护手","=q3=平静休眠灯笼","=q3=反射拳刃","=q3=魔像控制棒"})
Process("TKArcDalliahHEROIC",11,{"=q4=公正徽章","=q4=致命火白石","=q4=轻盈火白石","=q4=耐久火白石","=q4=图样：白色治愈短裤","","=q3=诸界烈焰胸甲","=q3=萨提亚的自校正护手","=q3=平静休眠灯笼","=q3=反射拳刃","=q3=魔像控制棒"})
Process("TKArcHarbinger",21,{"=q3=魔符长靴","=q3=涌动思维项圈","=q3=斥候之元素指环","=q3=希法尔的节点号角","=q3=平静光芒灯笼","=q3=饥饿骨刺","","","","","","","","","","=q3=湮灭兜帽","=q3=圣徒头冠","=q3=刺杀头盔","=q3=潮汐之怒胸甲","=q3=末日板甲护胸","=q3=鲁莽胸甲"})
Process("TKArcHarbingerHEROIC",25,{"=q4=公正徽章","=q4=堕落腰带","=q4=影步之靴","=q4=尊严护腕","=q4=背叛者的邪恶匕首","","=q3=魔符长靴","=q3=涌动思维项圈","=q3=斥候之元素指环","=q3=希法尔的节点号角","=q3=平静光芒灯笼","=q3=饥饿骨刺","","=q1=斯克瑞斯的卷轴","","=q4=致命火白石","=q4=轻盈火白石","=q4=耐久火白石","","=q3=湮灭兜帽","=q3=圣徒头冠","=q3=刺杀头盔","=q3=潮汐之怒胸甲","=q3=末日板甲护胸","=q3=鲁莽胸甲"})
Process("TKArcScryer",5,{"=q3=自由者手套","=q3=沉睡者腰带","=q3=雷恩葛的灵巧指环","=q3=圣光灌注之槌","=q3=灰烬鹰弩"})
Process("TKArcScryerHEROIC",10,{"=q4=公正徽章","=q4=致命火白石","=q4=轻盈火白石","=q4=耐久火白石","","=q3=自由者手套","=q3=沉睡者腰带","=q3=雷恩葛的灵巧指环","=q3=圣光灌注之槌","=q3=灰烬鹰弩"})
Process("TKArcThirdFragmentGuardian",1,{"=q1=第三块钥匙碎片"})
Process("TKArcTrash",5,{"=q3=设计图：魔钢护腿","","=q2=公式：附魔双手武器 - 特效敏捷","=q2=图样：烈焰护甲片","=q2=图样：奥法交织护腕"})
Process("TKArcUnbound",5,{"=q3=耀眼光环披风","=q3=魔珠护肩","=q3=外域长靴","=q3=红玉作战腰带","=q3=野性阴影神像"})
Process("TKArcUnboundHEROIC",10,{"=q4=公正徽章","=q4=致命火白石","=q4=轻盈火白石","=q4=耐久火白石","","=q3=耀眼光环披风","=q3=魔珠护肩","=q3=外域长靴","=q3=红玉作战腰带","=q3=野性阴影神像"})
Process("TKBotFreywinn",11,{"=q3=能量裹手","=q3=黑曜石践踏者","=q3=魔化瑟银饰环","=q3=暴掠战刃","=q3=太阳鸟纹章盾","","=q3=设计图：和谐胸甲","","=q2=红色冬帽","","=q1=植物学家的指南"})
Process("TKBotFreywinnHEROIC",18,{"=q4=公正徽章","=q4=蛮力紫萤石","=q4=帝王紫萤石","=q4=神秘火白石","","=q3=能量裹手","=q3=黑曜石践踏者","=q3=魔化瑟银饰环","=q3=暴掠战刃","=q3=太阳鸟纹章盾","","=q2=红色冬帽","","","","=q3=设计图：和谐胸甲","","=q1=植物学家的指南"})
Process("TKBotLaj",16,{"=q3=秘银树皮披风","=q3=恶魔缝合护腿","=q3=秋日护肩","=q3=流沙长靴","","","","","","","","","","","","=q3=正义肩铠"})
Process("TKBotLajHEROIC",16,{"=q4=公正徽章","=q4=蛮力紫萤石","=q4=帝王紫萤石","=q4=神秘火白石","","=q3=秘银树皮披风","=q3=恶魔缝合护腿","=q3=秋日护肩","=q3=流沙长靴","","","","","","","=q3=正义肩铠"})
Process("TKBotSarannis",7,{"=q3=萨拉妮丝的秘法披风","=q3=治愈之棱光手套","=q3=狩猎肩甲","=q3=光明使者圣契","=q3=复仇者","","=q1=钥石"})
Process("TKBotSarannisHEROIC",10,{"=q4=公正徽章","=q4=蛮力紫萤石","=q4=帝王紫萤石","=q4=神秘火白石","","=q3=萨拉妮丝的秘法披风","=q3=治愈之棱光手套","=q3=狩猎肩甲","=q3=光明使者圣契","=q3=复仇者"})
Process("TKBotSplinter",20,{"=q4=图样：白色治愈兜帽","","=q3=虚空之怒斗篷","=q3=迁跃能量长袍","=q3=迁跃鳞片护腿","=q3=锯齿树皮坠饰","=q3=无尽祝福法链","=q3=迁跃扭木之棘","=q3=遗忘预言巨剑","=q3=奥秘星杖","","=q1=禁魔监狱钥匙的上半块","","","","=q3=魔咒师长袍","=q3=月光林地罩帽","=q3=潮汐之怒头盔","=q3=巨兽之王胸甲","=q3=鲁莽战盔"})
Process("TKBotSplinterHEROIC",27,{"=q4=公正徽章","=q4=虚灵能量之靴","=q4=无尽狩猎长靴","=q4=争执护手","=q4=鞭笞之野性法杖","=q4=图样：白色治愈兜帽","","=q3=虚空之怒斗篷","=q3=迁跃能量长袍","=q3=迁跃鳞片护腿","=q3=锯齿树皮坠饰","=q3=无尽祝福法链","=q3=迁跃扭木之棘","=q3=遗忘预言巨剑","=q3=奥秘星杖","=q4=蛮力紫萤石","=q4=帝王紫萤石","=q4=神秘火白石","","=q3=魔咒师长袍","=q3=月光林地罩帽","=q3=潮汐之怒头盔","=q3=巨兽之王胸甲","=q3=鲁莽战盔","","=q1=禁魔监狱钥匙的上半块","=q1=扭木碎片"})
Process("TKBotThorngrin",7,{"=q4=图样：战斗施法短裤","","=q3=残酷意图护手","=q3=奥术虚空指环","=q3=阴暗末日指环","=q3=抚慰之符文匕首","=q3=梦眠龙杖"})
Process("TKBotThorngrinHEROIC",11,{"=q4=公正徽章","=q4=蛮力紫萤石","=q4=帝王紫萤石","=q4=神秘火白石","=q4=图样：战斗施法短裤","","=q3=残酷意图护手","=q3=奥术虚空指环","=q3=阴暗末日指环","=q3=抚慰之符文匕首","=q3=梦眠龙杖"})
Process("TKBotTrash",1,{"=q4=图鉴：翠绿火焰宝冠"})
Process("TKEyeAlar",19,{"=q4=凤翼披风","=q4=心灵风暴护腕","=q4=灼热之握","=q4=火焰纹章胸铠","=q4=奥之指环","=q4=浴火凤凰之戒","=q4=奥之爪","=q4=炽热救赎圣典","=q4=太阳之王的护符","","","","","","","=q4=凤凰的右爪","=q4=凤凰的左爪","=q4=虚空梦魇","=q4=奥金气枪"})
Process("TKEyeKaelthas",28,{"=q4=逐日者皇家披风","=q4=太阳光芒披风","=q4=萨拉斯荒野披风","=q4=太阳皇冠","=q4=太阳之王的护手","=q4=危险意图护腿","=q4=炎鹰护腿","=q4=银月皇家护手","=q4=游侠将军指环","=q4=凤凰双刃","=q4=太阳之王的权杖","=q4=节点钥匙","","","","=q4=战败勇士的胸甲","=q4=战败卫士的胸甲","=q4=战败英雄的胸甲","","=q4=奥的灰烬","","=q4=翠绿的魔珠","=q4=萨古纳尔男爵的索求","=q4=塔隆尼库斯的伤害坠饰","=q4=亵渎者萨拉德雷之握","=q4=太阳之王的符咒","","=q1=凯尔萨斯的水瓶残余"})
Process("TKEyeLegendaries",8,{"=q5=无尽之刃","=q5=迁跃切割者","=q5=宇宙灌注者","=q5=毁灭","=q5=瓦解法杖","=q5=相位壁垒","=q5=灵弦长弓","=q5=虚空尖刺"})
Process("TKEyeSolarian",20,{"=q4=星魂长裤","=q4=星术师长裤","=q4=终结臂甲","=q4=世界风暴护手","=q4=群星旅者长靴","=q4=正义旅途束带","=q4=血警卫的护胫","=q4=复原之靴","","","","","","","","=q4=索兰莉安的蓝宝石","=q4=虚空之星","=q4=剃心者","=q4=复仇军生命法杖","=q4=遗忘之星"})
Process("TKEyeTrash",27,{"=q4=精灵王的护肩","=q4=大法师的火焰腰带","=q4=远古智慧之树皮手套","=q4=天界猎手护腕","=q4=坠落星辰束带","=q4=提瑞斯法安宁指环","","=q4=设计图：红色浩劫长靴","=q4=设计图：红色战斗腰带","=q4=设计图：保卫者战靴","=q4=设计图：守护者腰带","=q4=图样：冲击腰带","=q4=图样：冲击长靴","=q4=图样：长路之靴","=q4=图样：长路腰带","=q4=图样：飓风长靴","=q4=图样：季风腰带","=q4=图样：自然优雅之靴","=q4=图样：赤鹰之靴","=q4=图样：无边黑暗之靴","=q4=图样：自然力量腰带","=q4=图样：黑鹰腰带","=q4=图样：深邃暗影腰带","","=q4=虚空漩涡","","=q2=伊利达雷印记"})
Process("TKEyeVoidReaver",18,{"=q4=首席技师兜帽","=q4=扎尔塔的束带","=q4=空灵机甲护腿","=q4=魔钢战盔","=q4=决心腕甲","=q4=魔能机甲的活塞","=q4=星界螺旋","","","","","","","","","=q4=战败勇士的护肩","=q4=战败卫士的护肩","=q4=战败英雄的护肩"})
Process("TKMechCacheoftheLegion",7,{"=q4=公正徽章","","=q3=卡帕西图斯的校准披风","=q3=维斯提亚的心灵优雅护肩","=q3=湮灭之血焚长袍","=q3=林地卫士长靴","=q3=虚空图腾"})
Process("TKMechCalc",20,{"=q3=奥能披风","=q3=熔土褶裙","=q3=达斯雷玛的防御指环","=q3=强烈优势算盘","=q3=魔法之怒","=q3=宇宙之刃","=q3=远程精准步枪","","=q2=图样：奥法交织长袍","","=q1=禁魔监狱钥匙的下半块","","","","","=q3=魔咒师兜帽","=q3=月光林地长袍","=q3=刺杀外套","=q3=巨兽之王头盔","=q3=正义头盔"})
Process("TKMechCalcHEROIC",27,{"=q4=公正徽章","=q4=虔诚信徒之靴","=q4=稳固护手","=q4=胜利者的腿铠","=q4=噬日者","","=q3=奥能披风","=q3=熔土褶裙","=q3=达斯雷玛的防御指环","=q3=强烈优势算盘","=q3=魔法之怒","=q3=宇宙之刃","=q3=远程精准步枪","","=q2=图样：奥法交织长袍","=q4=刺客的火白石","=q4=防御者的紫萤石","=q4=辉煌火白石","","=q3=魔咒师兜帽","=q3=月光林地长袍","=q3=刺杀外套","=q3=巨兽之王头盔","=q3=正义头盔","","=q1=帕萨雷恩的投影仪","=q1=禁魔监狱钥匙的下半块"})
Process("TKMechCapacitus",7,{"=q3=瑟银纹路披风","=q3=月爪肩甲","=q3=迁跃工程师的棱光之链","=q3=悔过之锤","=q3=血鼠之镰","","=q3=结构图：轻便型超级火箭靴"})
Process("TKMechCapacitusHEROIC",12,{"=q4=公正徽章","=q4=刺客的火白石","=q4=防御者的紫萤石","=q4=辉煌火白石","","=q3=瑟银纹路披风","=q3=月爪肩甲","=q3=迁跃工程师的棱光之链","=q3=悔过之锤","=q3=血鼠之镰","","=q3=结构图：轻便型超级火箭靴"})
Process("TKMechGyro",1,{"=q1=蓝色锯齿水晶"})
Process("TKMechIron",1,{"=q1=红色锯齿水晶"})
Process("TKMechOverchargedManacell",1,{"=q1=超载的魔法晶格"})
Process("TKMechSepethrea",9,{"=q3=翡翠颅骨胸甲","=q3=宇宙生命指环","=q3=星术师的手册","=q3=恒星之斧","=q3=虚空飞刀","","=q2=红色冬帽","","=q2=配方：特效火焰防护药水"})
Process("TKMechSepethreaHEROIC",14,{"=q4=公正徽章","=q4=刺客的火白石","=q4=防御者的紫萤石","=q4=辉煌火白石","","=q3=翡翠颅骨胸甲","=q3=宇宙生命指环","=q3=星术师的手册","=q3=恒星之斧","=q3=虚空飞刀","","=q2=红色冬帽","","=q2=配方：特效火焰防护药水"})
Process("TKMechTrash",2,{"=q2=配方：特效火焰防护药水","=q2=图样：奥法交织长靴"})
Process("ZAAkilZon",10,{"=q4=公正徽章","=q4=魔精医师的面具","=q4=浸血的精灵战衣","=q4=隐秘意图胸甲","=q4=自然怜悯胸针","=q4=上古魔法徽记","=q4=埃基尔松的爪刃","=q4=阿曼尼惩戒者","","=q3=公式：附魔武器 - 斩杀"})
Process("ZAHalazzi",10,{"=q4=公正徽章","=q4=逝者英灵长袍","=q4=剑舞护肩","=q4=光滑皮毛外衣","=q4=雪崩护腿","=q4=鼓吹肩铠","=q4=碎颅战靴","=q4=蛮族项圈","","=q3=公式：附魔武器 - 斩杀"})
Process("ZAJanAlai",10,{"=q4=公正徽章","=q4=疯狂足垫","=q4=天然恢复头盔","=q4=影牙巨魔皮甲","=q4=箭雨胸甲","=q4=瓦布的妖术诅咒之刃","=q4=阿曼尼帝国壁垒","=q4=魔精瓷盘","","=q3=公式：附魔武器 - 斩杀"})
Process("ZAMalacrass",22,{"=q4=公正徽章","=q4=上古仪祭披风","=q4=妖术兜帽","=q4=三眼兜帽","=q4=丛林行者兜帽","=q4=妖术领主的巫毒肩铠","=q4=百战獠盔","=q4=激流堡的希望","","=q3=公式：附魔武器 - 斩杀","","","","","","=q4=妖术之颅","=q4=小巫毒面具","=q4=魔鬼治疗宝典","=q4=邪恶魔精匕首","=q4=徘徊者的利刃","=q4=无情","=q4=原始怒火法杖"})
Process("ZANalorakk",10,{"=q4=公正徽章","=q4=神圣意志长袍","=q4=巨熊之怒","=q4=刀锋天使的钱币腰带","=q4=原始怒火肩甲","=q4=反省面具","=q4=丛林践踏者","=q4=怒火","","=q3=公式：附魔武器 - 斩杀"})
Process("ZATimedChest",25,{"","=q4=邪魔披风","=q4=暗影法师斗篷","=q4=邪恶预谋衬肩","=q4=巨魔发髻腰带","=q4=生命步伐腰带","=q4=艾露恩宝石护腿","=q4=暗影猎手裹足","=q4=磐石肩铠","","=q4=法力协调指环","=q4=永恒生命徽记","=q4=原始怒火徽记","=q4=末日防御者徽记","=q4=宁静森林徽记","","=q4=狂暴","=q4=暗影剃刀","=q4=托尔贝恩","=q4=黑暗愈合法杖","=q4=阿曼尼占卜法杖","=q4=獠牙击碎者","","","=q4=阿曼尼战熊"})
Process("ZATrash",7,{"=q3=魔汁","","=q2=阿曼尼妖术之杖","=q2=阿曼尼放血者护符","=q2=阿曼尼巫医护符","=q2=阿曼尼强力魔精护符","=q2=阿曼尼暴怒防御者护符"})
Process("ZAZuljin",22,{"=q4=公正徽章","=q4=双趾拖鞋","=q4=扭曲面甲","=q4=帝国勇士的锁甲","=q4=督军胸甲","=q4=诅咒骨环","=q4=上古埃基尔神器","=q4=狂暴者的召唤","","=q3=公式：附魔武器 - 斩杀","","","","","","=q4=扭曲预言之刃","=q4=金洛斯，末日的启示者","=q4=无情利斧","=q4=黑暗祝福","=q4=上古阿曼尼长弓","","=q4=祖尔金之血"})
end
