﻿--[[
--AtlasLoot loot tables deDE localization
--Maintained by Kurax Kuang (gmmgmm at gmail.com)
--NOTE: This file is auto-generated by a tool, any manually change might be overwritten.
--$Date: 2008-06-24 01:11:45 +0930 (Tue, 24 Jun 2008) $
--]]
if (GetLocale() == "deDE") then
local Process = function(category,check,data) if not AtlasLoot_Data["AtlasLootWorldEvents"][category] or #AtlasLoot_Data["AtlasLootWorldEvents"][category] ~= check then return end for i = 1,#data do if(data[i] and data[i]~="") then AtlasLoot_Data["AtlasLootWorldEvents"][category][i][3] = data[i] end end data = nil end
Process("ArmbreakerHuffaz",22,{"=q3=Astraleumsband","","=q3=Dunkler Umhang","=q3=Rätselhafter Umhang","=q3=Feuriger Umhang","=q3=Frostiger Umhang","=q3=Lebendiger Umhang","","=q2=Identifikationsmarke eines Gefangenen des Astraleums","","","","","","","","","=q3=Dunkles Band","=q3=Rätselhaftes Band","=q3=Feuriges Band","=q3=Frostiges Band","=q3=Lebendiges Band"})
Process("BashirLanding",27,{"","=q1=Instabiles Fläschchen des Ältesten","=q1=Instabiles Fläschchen des Heilers","=q1=Instabiles Fläschchen des Banditen","=q1=Instabiles Fläschchen des Soldaten","","","=q3=Instabiler Amethyst","=q3=Instabiler Citrin","=q3=Instabiler Peridot","=q3=Instabiler Saphir","=q3=Instabiler Talasit","=q3=Instabiler Topas","","","","=q3=Magieerfüllter instabiler Diamant","=q3=Mächtiger instabiler Diamant","=q1=Beschleunigermodul","=q1=Kleine goldene Verwandlungsgeode","=q1=Kleine silberne Verwandlungsgeode","=q1=Kleine kupferne Verwandlungsgeode","=q1=Kleine eiserne Verwandlungsgeode","=q1=Große goldene Verwandlungsgeode","=q1=Große silberne Verwandlungsgeode","=q1=Große kupferne Verwandlungsgeode","=q1=Große eiserne Verwandlungsgeode"})
Process("BashirStasisChambers",22,{"","=q3=Dämonisches Bollwerk","=q2=Abzeichen des Nexuskönigs","","","=q3=Schieferstahlschultern","=q2=Abzeichen des Nexuskönigs","","","=q3=Nebelschleierschultern","=q2=Abzeichen des Nexuskönigs","","","","","","=q3=Windkanalisierungsmantelung","=q2=Abzeichen des Nexuskönigs","","","=q3=Himmelspirscherschultern","=q2=Abzeichen des Nexuskönigs"})
Process("Brewfest1",30,{"=q3=Braufestfässchen","","=q1=Belbis sichtverbessernde Romantikbrille","=q1=Blauer Braufesthut","=q1=Brauner Braufesthut","=q1=Grüner Braufesthut","=q1=Lila Braufesthut","=q1=Braufesttracht","=q1=Braufestdirndl","=q1=Braufeststiefel","=q1=Braufestschuhe","","=q1=Handstempel \"Ehrenbrauer\"","=q4=Schneller Braufestwidder","=q3=Braufestwidder","=q3=Gelber Braufestkrug","=q3=Krug der Dunkeleisenzwerge","=q3=Wolpertingerhumpen","","=q2=Gewinnlos des Braufests","","=q1=Brachländer Dörrwurst","=q1=Saftige Wurst","=q1=Pikante Wurst","=q1=Weißwurst","=q1=Würzige geräucherte Wurst","=q1=Das güldene Zipferl","","=q1=Die einzig wahre Braufestbrezel","=q1=Braufestbräu"})
Process("Brewfest2",24,{"","=q1=Kristallklares Gerstenbräu","=q1=Helles Gerstenbräu","=q1=Dunkles Gerstenbräu","","","=q1=Donner 45","=q1=Donnerbräu Lager","=q1=Donnerbräu Starkbier","","","=q1=Gordokgrog","=q1=Schlammermilch","=q1=Ogermet","","","=q1=Kleiner Schwips","=q1=Katertropfen","=q1=Torkelbräu","","","=q1=Dschungeltropfen","=q1=Zombie Spezial","=q1=Schrumpfkopf Stark"})
Process("ChildrensWeek",19,{"","=q1=Schweinehalsband","=q1=Rattenkäfig","=q1=Schildkrötenkiste","=q1=Griesgrams Bestechungsgeld","","","","","","","","","","","","=q3=Ei des Kolumbus","=q3=Elekkhalsband","=q3=Schläfriger Willy"})
Process("DarkscreecherAkkarai",12,{"=q3=Ketzerstulpen","=q2=Akkarais Krallen","","=q3=Windkanalisierungsbindungen","=q3=Windkanalisierungsleibriemen","=q3=Himmelspirscherarmschienen","=q3=Himmelspirscherkordel","=q3=Nebelschleierarmschienen","=q3=Nebelschleiergürtel","=q3=Schieferstahlarmschienen","=q3=Schieferstahlgurt","=q3=Skettisband"})
Process("Dukes",27,{"","=q3=Abyssische Ledergamaschen","=q3=Gehärteter Stahlkriegshammer","=q3=Abyssisches Siegel","=q2=Abyssische Stoffschärpe","=q1=Asche des Fürsten","","","=q3=Abyssische Panzerbeinschützer","=q3=Dunkelsteinclaymore","=q3=Abyssisches Siegel","=q2=Abyssischer Ledergürtel","","","","","=q3=Abyssische Stoffhose","=q3=Seelensammler","=q3=Abyssisches Siegel","=q2=Abyssischer Plattengurt","","","","=q3=Abyssische Plattenbeinschienen","=q3=Sprühender Kristallzauberstab","=q3=Abyssisches Siegel","=q2=Abyssische Panzerklammer"})
Process("ElementalInvasion",25,{"","=q3=Baron Glutarrs Szepter","=q3=Elementar Ass","=q2=Elementare Glut","","","=q3=Tempestrias gefrorene Halskette","=q3=Elementar Ass","=q3=Muster: Sturmschleierhandschuhe","=q2=Kühler Ring","","","","","","","=q3=Lavinius' steiniger Balg","=q3=Elementar Ass","=q2=Verhärtetes Steinband","","","=q3=Schärpe des Windhäschers","=q3=Elementar Ass","=q3=Muster: Sturmschleierhandschuhe","=q2=Zephyrumhang"})
Process("FelTinkererZortan",22,{"=q3=Nebelschleierstiefel","","=q3=Dunkler Umhang","=q3=Rätselhafter Umhang","=q3=Feuriger Umhang","=q3=Frostiger Umhang","=q3=Lebendiger Umhang","","=q2=Identifikationsmarke eines Gefangenen des Astraleums","","","","","","","","","=q3=Dunkles Band","=q3=Rätselhaftes Band","=q3=Feuriges Band","=q3=Frostiges Band","=q3=Lebendiges Band"})
Process("FishingExtravaganza",23,{"","=q3=Arkanitangelrute","=q3=Angelhaken des Anglermeisters","","","=q2=Kiefers Engelfisch","=q2=Braunells blaugestreifter Flitzerfisch","=q2=Dezianischer Königinnenfisch","=q2=Felsnischenstarkfisch","","","","","","","","","","","","=q2=Glücksangelhut","=q2=Nat Pagles Extremanglerstiefel","=q2=Extremgetestete Eterniumangelschnur"})
Process("Forgosh",22,{"=q3=Astraleumshalsreif","","=q3=Dunkler Umhang","=q3=Rätselhafter Umhang","=q3=Feuriger Umhang","=q3=Frostiger Umhang","=q3=Lebendiger Umhang","","=q2=Identifikationsmarke eines Gefangenen des Astraleums","","","","","","","","","=q3=Dunkles Band","=q3=Rätselhaftes Band","=q3=Feuriges Band","=q3=Frostiges Band","=q3=Lebendiges Band"})
Process("GezzaraktheHuntress",12,{"=q3=Gezzaraks Fangzahn","=q2=Gezzaraks Klauen","","=q3=Windkanalisierungsbindungen","=q3=Windkanalisierungsleibriemen","=q3=Himmelspirscherarmschienen","=q3=Himmelspirscherkordel","=q3=Nebelschleierarmschienen","=q3=Nebelschleiergürtel","=q3=Schieferstahlarmschienen","=q3=Schieferstahlgurt","=q3=Skettisband"})
Process("Gulbor",22,{"=q3=Astraleumshalsreif","","=q3=Dunkler Umhang","=q3=Rätselhafter Umhang","=q3=Feuriger Umhang","=q3=Frostiger Umhang","=q3=Lebendiger Umhang","","=q2=Identifikationsmarke eines Gefangenen des Astraleums","","","","","","","","","=q3=Dunkles Band","=q3=Rätselhaftes Band","=q3=Feuriges Band","=q3=Frostiges Band","=q3=Lebendiges Band"})
Process("GurubashiArena",17,{"=q3=Arenahandgelenksschutz","=q3=Arenaarmschienen","=q3=Arenaarmbänder","=q3=Arenaunterarmschienen","","","","","","","","","","","","=q2=Meister der Arena","=q3=Großmeister der Arena"})
Process("Halloween1",28,{"=q3=Kürbislaterne","=q2=Kürbistasche","","=q1=Styleens Sauerlolly","=q1=Tumulttoffee aus Mondbruch","=q1=Bellaras Nussriegel","=q1=Kürbisdrops der Schlotternächte","","","","","","","","","","=q1=Stab der Verwandlung - Fledermaus","=q1=Stab der Verwandlung - Geist","=q1=Stab der Verwandlung - Lepragnom","=q1=Stab der Verwandlung - Ninja","=q1=Stab der Verwandlung - Pirat","=q1=Stab der Verwandlung - zufällig","=q1=Stab der Verwandlung - Skelett","=q1=Stab der Verwandlung - Irrwisch","","=q1=Zuckerpops","=q1=Lutscher","=q1=Schokoriegel"})
Process("Halloween2",24,{"","=q1=Leichte männliche Zwergenmaske","=q1=Leichte männliche Gnomenmaske","=q1=Leichte männliche Menschenmaske","=q1=Leichte männliche Nachtelfenmaske","=q1=Leichte männliche Orcmaske","=q1=Leichte männliche Taurenmaske","=q1=Leichte männliche Trollmaske","=q1=Leichte männliche Untotenmaske","","","","","","","","=q1=Leichte weibliche Zwergenmaske","=q1=Leichte weibliche Gnomenmaske","=q1=Leichte weibliche Menschenmaske","=q1=Leichte weibliche Nachtelfenmaske","=q1=Leichte weibliche Orcmaske","=q1=Leichte weibliche Taurenmaske","=q1=Leichte weibliche Trollmaske","=q1=Leichte weibliche Untotenmaske"})
Process("HarvestFestival",8,{"=q1=Erntegabe","=q1=Für das Licht!","=q1=Höllschrei, Held der Horde","","=q1=Erntedankeber","=q1=Erntedankfisch","=q1=Erntedankobst","=q1=Erntedanknektar"})
Process("HeadlessHorseman",20,{"=q4=Helm des kopflosen Reiters","=q4=Ring der fröstelnden Wonne","=q4=Siegelring des kopflosen Reiters","=q4=Gespenstisches Band","","=q3=Geheiligter Helm","=q3=Gruselkürbis","","=q1=Gewichtige Kürbislaterne","=q1=Süßes Saures","","","","","","=q4=Schneller fliegender Besen","=q4=Schneller Zauberbesen","=q3=Fliegender Besen","=q3=Alter Zauberbesen","=q2=Maroder Zauberbesen"})
Process("HighCouncil",26,{"","=q4=Elementares Fokusband","=q4=Abyssisches Szepter","=q3=Abyssische Lederarmschienen","=q3=Abyssische Panzerschulterstücke","","","=q4=Wellenfronthalskette","=q4=Abyssisches Szepter","=q3=Abyssische Panzerarmschützer","=q3=Abyssische Plattenschulterklappen","","","","","","=q4=Scherwindcape","=q4=Abyssisches Szepter","=q3=Abyssische Stoffgelenkbänder","=q3=Abyssische Lederschultern","","","=q4=Irdene Wache","=q4=Abyssisches Szepter","=q3=Abyssische Stoffamicia","=q3=Abyssische Plattenunterarmschienen"})
Process("Karrog",12,{"=q3=Splitter von Karrog","=q2=Karokks Rückgrat","","=q3=Windkanalisierungsbindungen","=q3=Windkanalisierungsleibriemen","=q3=Himmelspirscherarmschienen","=q3=Himmelspirscherkordel","=q3=Nebelschleierarmschienen","=q3=Nebelschleiergürtel","=q3=Schieferstahlarmschienen","=q3=Schieferstahlgurt","=q3=Skettisband"})
Process("LordAhune",12,{"=q4=Umhang der eisigen Winde","=q4=Eingefrorener Umhang","=q4=Tuch der Winterkälte","=q4=Der Kriegsumhang des Frostfürsten","=q4=Fürst Ahunes Frostsichel","","=q3=Formel: Waffe - Todeskälte","=q3=Versengter Stein","","=q1=Splitter von Ahune","=q3=Wappenrock der sommerlichen Himmel","=q3=Wappenrock der Sommerflammen"})
Process("LordAhuneHEROIC",20,{"=q4=Amulett des bitteren Hasses","=q4=Amulett der eisigen Ruhe","=q4=Halsschmuck des arktischen Flusses","=q4=Hagelkornanhänger","","=q3=Formel: Waffe - Todeskälte","=q3=Versengter Stein","","=q1=Splitter von Ahune","=q3=Wappenrock der sommerlichen Himmel","=q3=Wappenrock der Sommerflammen","","","","","=q4=Umhang der eisigen Winde","=q4=Eingefrorener Umhang","=q4=Tuch der Winterkälte","=q4=Der Kriegsumhang des Frostfürsten","=q4=Fürst Ahunes Frostsichel"})
Process("LunarFestival1",30,{"=q2=Elunes Laterne","","=q1=Grünes Festtagskleid","=q1=Rosa Festtagskleid","=q1=Lila Festtagskleid","","=q1=Festlicher schwarzer Hosenanzug","=q1=Festlicher blauer Hosenanzug","=q1=Festlicher mintgrüner Hosenanzug","","=q1=Festtagsklöße","","=q1=Elunes Kerze","","=q1=Münze der Urahnen","","=q1=Kleine blaue Rakete","=q1=Kleine grüne Rakete","=q1=Kleine rote Rakete","=q1=Kleine weiße Rakete","=q1=Kleine gelbe Rakete","=q1=Große blaue Rakete","=q1=Große grüne Rakete","=q1=Große rote Rakete","=q1=Große weiße Rakete","=q1=Große gelbe Rakete","","","=q1=Glücksraketenbündel","=q1=Mondstein der Urahnen"})
Process("LunarFestival2",28,{"=q2=Bauplan: Zünder für Feuerwerk","","","=q2=Bauplan: Kleine blaue Rakete","=q2=Bauplan: Kleine grüne Rakete","=q2=Bauplan: Kleine rote Rakete","","","=q2=Bauplan: Große blaue Rakete","=q2=Bauplan: Große grüne Rakete","=q2=Bauplan: Große rote Rakete","","=q2=Muster: Festtagskleid","","","=q2=Bauplan: Zünder für Raketenbündel","","","=q2=Bauplan: Blaues Raketenbündel","=q2=Bauplan: Grünes Raketenbündel","=q2=Bauplan: Rotes Raketenbündel","","","=q2=Bauplan: Großes blaues Raketenbündel","=q2=Bauplan: Großes grünes Raketenbündel","=q2=Bauplan: Großes rotes Raketenbündel","","=q2=Muster: Festtagsanzug"})
Process("MalevustheMad",22,{"=q3=Schieferstahlstiefel","","=q3=Dunkler Umhang","=q3=Rätselhafter Umhang","=q3=Feuriger Umhang","=q3=Frostiger Umhang","=q3=Lebendiger Umhang","","=q2=Identifikationsmarke eines Gefangenen des Astraleums","","","","","","","","","=q3=Dunkles Band","=q3=Rätselhaftes Band","=q3=Feuriges Band","=q3=Frostiges Band","=q3=Lebendiges Band"})
Process("MidsummerFestival",19,{"=q3=Kohlenpfanne der tanzenden Flammen","=q3=Eingefangene Flamme","","=q2=Aschenarmschienen","","=q1=Brandblüte","=q1=Feuriges Festgebräu","=q1=Holunderbeerenkuchen","=q1=Feuergeröstetes Brötchen","=q1=Sonnenwendwürstchen","=q1=Getoastetes Smorc","=q1=Handvoll Sommerblüten","","","","=q1=Krone des Feuerfests","=q1=Mantelung des Feuerfests","=q1=Sommertracht","=q1=Sommersandalen"})
Process("Noblegarden",7,{"","=q1=Elegantes Kleid","=q1=Weißes Smokinghemd","=q1=Schwarze Smokinghose","=q1=Schokoriegel","=q1=Schokoladentafel","=q1=Lutscher"})
Process("PorfustheGemGorger",22,{"=q3=Windkanalisiererstiefel","","=q3=Dunkler Umhang","=q3=Rätselhafter Umhang","=q3=Feuriger Umhang","=q3=Frostiger Umhang","=q3=Lebendiger Umhang","","=q2=Identifikationsmarke eines Gefangenen des Astraleums","","","","","","","","","=q3=Dunkles Band","=q3=Rätselhaftes Band","=q3=Feuriges Band","=q3=Frostiges Band","=q3=Lebendiges Band"})
Process("ScourgeInvasionEvent1",30,{"=q2=Gesegnetes Zauberöl","=q2=Geweihter Wetzstein","=q1=Wappenrock der Argentumdämmerung","","=q2=Nekrotische Rune","","","=q3=Robe der Untotenbekämpfung","=q3=Armschienen der Untotenbekämpfung","=q3=Handschuhe der Untotenbekämpfung","","","=q3=Tunika des Untotenschlachtens","=q3=Gelenkbänder des Untotenschlachtens","=q3=Handlappen des Untotenschlachtens","=q1=Kleines Mal der Dämmerung","=q1=Mal der Dämmerung","=q1=Großes Mal der Dämmerung","","","","","=q3=Brustschutz des Untotenschlachtens","=q3=Handgelenksschutz des Untotenschlachtens","=q3=Handschützer des Untotenschlachtens","","","=q3=Brustplatte des Untotenschlachtens","=q3=Armschienen des Untotenschlachtens","=q3=Stulpen des Untotenschlachtens"})
Process("ScourgeInvasionEvent2",28,{"","=q3=Gürtelbund von Balzaphon","=q3=Fesseln des Lichs","=q3=Stab von Balzaphon","","","=q3=Schwarzstahls Oberschenkelknochen","=q3=Fürst Schwarzstahls Klinge","=q3=Fürst Schwarzstahls Rundschild","","","=q3=Revanchions Umhang","=q3=Heilungsarmschienen","=q3=Griff des Schattens","","","=q3=Der eisige Griff","=q3=Eisiger Halsschmuck des Verächters","=q3=Fokusdolch des Verächters","","","=q3=Gamaschen aus Monstrositätenhaut","=q3=Die Axt des Zerspaltens","","","","=q3=Mantel von Lady Falther'ess","=q3=Finger von Lady Falther'ess"})
Process("Shartuul",27,{"=q4=Siegel des Verderbers","","=q4=Ausgelaugte Stoffarmschienen","=q4=Ausgelaugte Kettenstulpen","=q3=Ausgelaugter Umhang","=q3=Ausgelaugter Ring","=q3=Ausgelaugtes Abzeichen","=q3=Ausgelaugter Dolch","=q3=Ausgelaugtes Schwert","=q3=Ausgelaugte Zweihandaxt","=q3=Ausgelaugter Streitkolben","=q3=Ausgelaugter Stab","","","","=q4=Ring des Aufpassers","","=q4=Kristallgewebte Armschienen","=q4=Kristallhandlappen","=q3=Kristallgewebter Umhang","=q3=Traumkristallband","=q3=Abzeichen der Hartnäckigkeit","=q3=Kristallerfülltes Messer","=q3=Kristallgeschmiedetes Schwert","=q3=Apexisspalter","=q3=Apexiskristallstreitkolben","=q3=Flammender Quarzstab"})
Process("SkettisHazziksPackage",1,{"=q1=Hazziks Päckchen"})
Process("SkettisTalonpriestIshaal",1,{"=q1=Ishaals Almanach"})
Process("Templars",26,{"","=q3=Kristallstilett","=q2=Abyssische Stoffhandlappen","=q2=Abyssische Panzersabatons","=q2=Abyssisches Wappen","","","=q3=Amethystkriegsstab","=q2=Abyssische Stoffschuhe","=q2=Abyssische Plattenstulpen","=q2=Abyssisches Wappen","","","","","","=q3=Steinschneidende Gleve","=q2=Abyssische Lederstiefel","=q2=Abyssische Panzerhandschützer","=q2=Abyssisches Wappen","","","=q3=Durchschlagskräftiger Bogen","=q2=Abyssische Lederhandschuhe","=q2=Abyssische Plattenschienbeinschützer","=q2=Abyssisches Wappen"})
Process("Terokk",11,{"=q4=Terokks Macht","=q4=Terokks Weisheit","=q3=Windkanalisierergamaschen","=q3=Himmelspirschergamaschen","=q3=Nebelschleierhose","=q3=Schieferstahlgamaschen","=q3=Gabe der Krallenpriester","=q3=Brosche des unsterblichen Königs","=q3=Zeitverlorene Statuette","=q3=Terokks Hammer","=q3=Terokks Hammer"})
Process("VakkiztheWindrager",12,{"=q3=Armreif des Windzürners","","","=q3=Windkanalisierungsbindungen","=q3=Windkanalisierungsleibriemen","=q3=Himmelspirscherarmschienen","=q3=Himmelspirscherkordel","=q3=Nebelschleierarmschienen","=q3=Nebelschleiergürtel","=q3=Schieferstahlarmschienen","=q3=Schieferstahlgurt","=q3=Skettisband"}) --Missing: 32718
Process("Valentineday",27,{"=q2=Roter Rosenstrauß","","","=q3=Picknickkorb für Verliebte","=q1=Reizendes schwarzes Kleid","=q1=Echtsilberschaftpfeil","=q1=Silberschaftpfeil","=q1=Liebesschwindler","=q1=Handvoll Rosenblüten","=q1=Bonbontüte","=q1=Liebesrakete","","","","","","=q1=Dunkle Versuchung","=q1=Beerens Echte","=q1=Buttermilchküsschen","=q1=Süße Träume","","=q1=Reizendes rotes Kleid","=q1=Reizendes blaues Kleid","=q1=Reizendes lila Kleid","=q1=Roter Abendanzug","=q1=Blauer Abendanzug","=q1=Lila Abendanzug"})
Process("Winterviel1",30,{"=q2=Grüne Wintermütze","=q2=Rote Wintermütze","=q1=Winterhauchverkleidungsset","=q1=Schneeball","=q1=Hand voll Schneeflocken","=q1=Frischer Tannenzweig","=q1=Mistelzweig","","","=q2=Muster: Winterstiefel","=q2=Muster: Rote Winterkleidung","=q2=Muster: Grüne Winterkleidung","=q1=Rezept: Heißer Apfelwein","=q1=Rezept: Eierflip","=q1=Rezept: Lebkuchen","=q1=Bonbonstange","=q1=Festtagskäserad","=q1=Graccus hausgemachte Fleischpastete","=q1=Brachländer Würstchen","=q1=Honigveredelter Festtagsschinken","=q1=Bohnengebräu","=q1=Grüner Gartentee","=q1=Prickelnder Apfelwein","=q1=Festtagsgeister","=q1=Dampfdruckprickelschnaps","=q1=Altvater Winters Bier","=q1=Festtagsgewürze","=q1=Geschenkpapier mit blauem Band","=q1=Geschenkpapier mit grünem Band","=q1=Geschenkpapier mit lila Band"})
Process("Winterviel2",30,{"","=q1=Grüne Helferbox","=q1=Bimmelglöckchen","=q1=Rote Helferbox","=q1=Schneemannset","","","=q1=Zauberstab der Festtagsfreude","","","=q3=Aufziehraketenbot","","","=q1=Winterhauchbraten","=q1=Winterhaucheierflip","","=q2=Mechanischer Griesgram","=q2=Konservierter Tannenzweig","=q2=Pläne: Schneide des Winters","=q2=Formel: Waffe - Wintermacht","=q2=Bauplan: Schneemeister 9000","=q2=Muster: Handschuhe des Altvaters","=q1=Rezept: Elixier der Frostmacht","=q1=Muster: Grünes Festtagshemd","","","=q1=Winterhauchplätzchen","","","=q1=Graccus hausgemachte Früchtepastete"})
Process("WrathbringerLaztarash",22,{"=q3=Manageschmiedete Sphäre","","=q3=Dunkler Umhang","=q3=Rätselhafter Umhang","=q3=Feuriger Umhang","=q3=Frostiger Umhang","=q3=Lebendiger Umhang","","=q2=Identifikationsmarke eines Gefangenen des Astraleums","","","","","","","","","=q3=Dunkles Band","=q3=Rätselhaftes Band","=q3=Feuriges Band","=q3=Frostiges Band","=q3=Lebendiges Band"})
end
