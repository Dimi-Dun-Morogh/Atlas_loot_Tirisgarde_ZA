﻿--[[
--AtlasLoot loot tables deDE localization
--Maintained by Kurax Kuang (gmmgmm at gmail.com)
--NOTE: This file is auto-generated by a tool, any manually change might be overwritten.
--$Date: 2008-05-22 00:30:19 +0930 (Thu, 22 May 2008) $
--]]
if (GetLocale() == "deDE") then
local Process = function(category,check,data) if not AtlasLoot_Data["AtlasLootWorldPvPItems"][category] or #AtlasLoot_Data["AtlasLootWorldPvPItems"][category] ~= check then return end for i = 1,#data do if(data[i] and data[i]~="") then AtlasLoot_Data["AtlasLootWorldPvPItems"][category][i][3] = data[i] end end data = nil end
Process("Hellfire",22,{"=q3=Band des Siegers","=q3=Scharfkantiger Tiefenperidot","=q3=Mächtiger Blutgranat","","","=q1=Gunst der Ehrenfeste","=q1=Abzeichen der Ehrenfeste","","","","","","","","","=q3=Reif des Siegers","=q3=Gekerbter Tiefenperidot","=q3=Reiner Blutgranat","","","=q1=Gunst von Thrallmar","=q1=Abzeichen von Thrallmar"})
Process("Nagrand1",29,{"=q4=Zügel des dunklen Reittalbuks","=q4=Mystischer Edeldämmerstein","=q3=Gamaschen des Hierophanten","=q3=Traumpirschergamaschen","=q3=Gamaschen des Schattenpirschers","=q3=Beinschützer des Schützen","=q3=Gamaschen des Sturmbrechers","=q3=Beinplatten des Rächers","=q3=Gamaschen des Töters","","=q3=Vorlage: Mystischer Dämmerstein","","","=q2=Kampfmarke von Halaa","","=q4=Zügel des dunklen Kriegstalbuks","=q3=Halaanitasche","=q3=Schärpe des Hierophanten","=q3=Traumpirscherschärpe","=q3=Schärpe des Schattenpirschers","=q3=Gurt des Schützen","=q3=Gurt des Sturmbrechers","=q3=Taillenschutz des Rächers","=q3=Taillenschutz des Töters","","=q3=Vorlage: Beständiger Talasit","=q1=Rezept: Elixier der Eisenhaut","","=q2=Forschermarke von Halaa"})
Process("Nagrand2",22,{"=q3=Halaaniklingenschaft","=q1=Halaaniwhiskey","","","=q3=Don Amancios Herz","=q2=Halaaniclaymore","=q2=Rächende Klingen","","","","","","","","","=q3=Halaanigrimmkugel","","","","=q3=Don Rodrigos Herz","=q2=Arkadisches Claymore","=q2=Ninjakeks"})
Process("Terokkar",25,{"=q4=Band des Exorzisten","=q3=Flüchtiger Sternenfeuerdiamant","=q3=Schreckenszwirnkapuze des Exorzisten","=q3=Drachenlederhelm des Exorzisten","=q3=Wyrmbalghelm des Exorzisten","=q3=Gekettelter Helm des Exorzisten","=q3=Lamellenhelm des Exorzisten","=q3=Schuppenhelm des Exorzisten","","=q1=Heiltrank der Auchenai","","=q1=Geistsplitter","","","","=q4=Siegel des Exorzisten","=q3=Flüchtiger Windfeuerdiamant","=q3=Seidene Kapuze des Exorzisten","=q3=Lederhelm des Exorzisten","=q3=Kettenhelm des Exorzisten","=q3=Panzerhelm des Exorzisten","=q3=Plattenhelm des Exorzisten","","","=q1=Manatrank der Auchenai"})
Process("Zangarmarsh",22,{"=q3=Götze der Unbändigkeit","=q3=Totem des Einschlags","=q3=Mal der Herausforderung","=q3=Erlösungsstigma","=q3=Rute des Zorns","","=q1=Abzeichen der Ehrenfeste","","","","","","","","","=q3=Buchband des Eifers","=q3=Mal der Eroberung","=q3=Mal der Gegenwehr","=q3=Splittermal","","","=q1=Abzeichen von Thrallmar"})
end
