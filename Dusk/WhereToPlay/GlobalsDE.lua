------------------------------------------------------------------------------------------
-- GlobalDE file
-- Written by Homeopatix
-- 17 avril 2021
-- 11 mai 2021 thanslated in german by Nadia
------------------------------------------------------------------------------------------
function CreateLocalizationInfo()
	Strings = {};

	------------------------------------------------------------------------------------------
	-- Deutsche --
	------------------------------------------------------------------------------------------
	Strings.PluginName = "WhereToPlay";
	Strings.PluginText = "Von Homeopatix";
	Strings.PluginEscEnable = "Escape-Taste aktiviert";
	Strings.PluginEscDesable = "Escape-Taste deaktiviert";
	Strings.PluginAltEnable = "Alt-Taste aktiviert";
	Strings.PluginAltDesable = "Alt-Taste deaktiviert";
	Strings.PluginToggleOn = "Fenster wird angezeigt";
	Strings.PluginToggleOff = "Fenster wird ausgeblendet";
	Strings.PluginEscIconOn = "Symbol wird angezeigt";
	Strings.PluginEscIconOff = "Symbol wird ausgeblendet";
	Strings.PluginWindowShow = "Fenster wird angezeigt";
	Strings.PluginWindowHide = "Fenster wird ausgeblendet";
	Strings.PluginDateUpdate = "18.09.2026";
	Strings.PluginUnloaded = "Plugin entladen";
	------------------------------------------------------------------------------------------
	-- help --
	------------------------------------------------------------------------------------------
	Strings.PluginHelp1 = "\n\nListe der Befehle:\n";
	Strings.PluginHelp2 = "/wtp help - Zeigt das Hilfefenster an.\n";
	Strings.PluginHelp3 = "/wtp show - Zeigt das Fenster an.\n";
	Strings.PluginHelp4 = "/wtp hide - Blendet das Fenster aus.\n";
	Strings.PluginHelp5 = "/wtp esc - Aktiviert/Deaktiviert die Escape-Taste, um das Fenster zu schlie\195\159en.\n";
	Strings.PluginHelp6 = "/wtp alt - Alt-Taste gedr\195\188ckt halten, um das Symbol zu verschieben.\n";
	Strings.PluginHelp7 = "/wtp options - Zeigt die Optionen an.\n";
	Strings.PluginHelp8 = "/wtp toggle - Fenster anzeigen/ausblenden.\n";
	Strings.PluginHelp9 = "/wtp icon - Symbol anzeigen/ausblenden.\n\n";
	Strings.PluginHelp10 = "Klicke auf den Namen einer Region, um die Karte der Region zu \195\182ffnen.\n";
	Strings.PluginHelp11 = "Mit Rechtsklick auf das Hauptsymbol werden die Optionen angezeigt.\010";
	Strings.PluginHelp12 = "Klicke auf das kleine Taschen-Symbol, um die sammelbaren Materialien in der Region anzuzeigen.\n";
	Strings.PluginCloseButton = "Fenster schlie\195\159en";
Strings.PluginInfosTitle = "Informationen";
	------------------------------------------------------------------------------------------
	-- farm window --
	------------------------------------------------------------------------------------------
	Strings.PluginFarm1 = "Artefakte";
	Strings.PluginFarm2 = "Erze";
	Strings.PluginFarm3 = "Holz";
	Strings.PluginFarm4 = "Felle";
	Strings.PluginFarm5 = "Selten";
	Strings.PluginFarm6 = "Name";
	Strings.PluginFarm7 = "Ort";
	------------------------------------------------------------------------------------------
	-- instances window --
	------------------------------------------------------------------------------------------
	Strings.PlugInstances1 = "In Arbeit";
	------------------------------------------------------------------------------------------
	-- professions tier --
	------------------------------------------------------------------------------------------
	Strings.PluginProfTier1 = "Lehrling";
	Strings.PluginProfTier2 = "Geselle";
	Strings.PluginProfTier3 = "Experte";
	Strings.PluginProfTier4 = "Virtuose";
	Strings.PluginProfTier5 = "Meister";
	Strings.PluginProfTier6 = "\195\156berragend";
	Strings.PluginProfTier7 = "Westfold";
	Strings.PluginProfTier8 = "Ost-Emnet";
	Strings.PluginProfTier9 = "West-Emnet";
	Strings.PluginProfTier10 = "An\195\179rien";
	Strings.PluginProfTier11 = "Unheilskluft";
	Strings.PluginProfTier12 = "Eisenbruch";
	Strings.PluginProfTier13 = "Minas Ithil";
	Strings.PluginProfTier14 = "Gundabad";
	Strings.PluginProfTier15 = "Umbar";
	Strings.PluginProfTier16 = "Sul Mad\195\161sh";
	------------------------------------------------------------------------------------------
	-- options window --
	------------------------------------------------------------------------------------------
	Strings.PluginOptionsText = "WhereToPlay Optionen";
	Strings.PluginOption1 = "Stufe der sammelbaren Materialien anzeigen";
	Strings.PluginOption2 = "Symbol anzeigen";
	Strings.PluginOption3 = "Weltinstanzen anzeigen";
	Strings.PluginOptionValidate = "Speichern";
	Strings.PluginOptionShowWindow = "Optionen werden angezeigt";
	------------------------------------------------------------------------------------------
	-- zones --
	------------------------------------------------------------------------------------------
	ZonesNamesAndLevel = {
        zones1 = {mapHex = 0x41008137, texte = "Auenland", lvl = "1 - 15", souCat = false, farmTier = 1},
        zones2 = {mapHex =  0x4100812c, texte = "Ered Luin", lvl = "1 - 15", souCat = false, farmTier = 1},

		zones3 = {mapHex = 0x4121ea2e, texte = "Schwanenfleet", lvl = "1 - 15", souCat = false, farmTier = 1}, -- new in U34

        zones4 = {mapHex =  0x41008136, texte = "Breeland", lvl = "1 - 25, 30", souCat = false, farmTier = 1},
        zones5 = {mapHex =  0x41008136, texte = "Archet, Schlucht, Stadel", lvl = "1 - 15", souCat = true, farmTier = 1},
        zones6 = {mapHex =  0x41008136, texte = "Breeland (Norden), Nen Harn", lvl = "15 - 21", souCat = true, farmTier = 1},
		zones7 = {mapHex =  0x4110a842, texte = "Die H\195\188gelgr\195\164ber", lvl = "20 - 25", souCat = true, farmTier = 2},

		zones8 = {mapHex = 0x41220239, texte = "Cardolan", lvl = "20 - 25", souCat = true, farmTier = 2}, -- new in U34

		zones9 = {mapHex =  0x4121994d, texte = "Die Fernen Auen", lvl = "20 - 23", souCat = false, farmTier = 2},
        zones10 = {mapHex =  0x41008130, texte = "Einsame Lande", lvl = "20 - 35", souCat = false, farmTier = 2},
        zones11 = {mapHex =  0x41008130, texte = "Verlassene Herberge", lvl = "18 - 23", souCat = true, farmTier = 2},
		zones12 = {mapHex =  0x41008130, texte = "Feste Guruth", lvl = "20 - 30", souCat = true, farmTier = 2},
		zones13 = {mapHex =  0x41008130, texte = "Garth Agarwen", lvl = "31 - 35", souCat = true, farmTier = 2},
		zones14 = {mapHex = 0x41008132, texte = "Nordh\195\182hen", lvl = "20 - 35", souCat = false, farmTier = 2},
		zones15 = {mapHex = 0x41008132, texte = "Esteldin (westlich)", lvl = "20 - 25", souCat = true, farmTier = 3},
		zones16 = {mapHex = 0x41008132, texte = "Esteldin (\195\182stlich)", lvl = "25 - 35", souCat = true, farmTier = 3},
		zones17 = {mapHex = 0x41008132, texte = "Fornost", lvl = "25 - 35", souCat = true, farmTier = 3},
		zones18 = {mapHex = 0x4101f084, texte = "Evendim", lvl = "30 - 40", souCat = false, farmTier = 3},
		zones19 = {mapHex = 0x412169ae, texte = "Trollh\195\182hen", lvl = "35 - 40", souCat = false, farmTier = 4},
		zones20 = {mapHex = 0x4100812f, texte = "Nebelgebirge", lvl = "40 - 45", souCat = false, farmTier = 4},
		zones21 = {mapHex = 0x41216d0e, texte = "Der Bogen von Mitheithel", lvl = "40 - 45", souCat = false, farmTier = 4},
		zones22 = {mapHex = 0x41008131, texte = "Angmar", lvl = "40 - 50", souCat = false, farmTier = 5},
		zones23 = {mapHex = 0x4122f2ed, texte = "Carn D\195\187m", lvl = "40 - 50", souCat = false, farmTier = 5},
		zones24 = {mapHex = 0x410e3f46, texte = "Forochel", lvl = "44 - 50", souCat = false, farmTier = 5},
		zones25 = {mapHex =  0x4120c7c8, texte = "Der Wildwald", lvl = "45 - 50", souCat = false, farmTier = 5},
		zones26 = {mapHex =  0x410e8686, texte = "Eregion", lvl = "48 - 53", souCat = false, farmTier = 5},
		zones27 = {mapHex =  0x410e8708, texte = "Moria", lvl = "51 - 60", souCat = false, farmTier = 6},
		zones28 = {mapHex =  0x410e871c, texte = "Die Großbinge", lvl = "51", souCat = true, farmTier = 6},
		zones29 = {mapHex =  0x410e8719, texte = "Die Silberzinne-Adern", lvl = "52", souCat = true, farmTier = 6},
		zones30 = {mapHex =  0x410e871d, texte = "Durins Weg", lvl = "53", souCat = true, farmTier = 6},
		zones31 = {mapHex =  0x410e871e, texte = "Zirakzigil", lvl = "53 - 54", souCat = true, farmTier = 6},
		zones32 = {mapHex =  0x410e8717, texte = "Das Wasserwerk", lvl = "54", souCat = true, farmTier = 6},
		zones33 = {mapHex =  0x410e871b, texte = "Zelem-Melek", lvl = "55", souCat = true, farmTier = 6},
		zones34 = {mapHex =  0x410e8718, texte = "Rothorn-Adern", lvl = "56", souCat = true, farmTier = 6},
		zones35 = {mapHex =  0x410e8716, texte = "Lodernde Tiefen", lvl = "57", souCat = true, farmTier = 6},
		zones36 = {mapHex =  0x410e871a, texte = "Nud-Melek", lvl = "58", souCat = true, farmTier = 6},
		zones37 = {mapHex =  0x410e8715, texte = "Steinfundament", lvl = "59", souCat = true, farmTier = 6},
		zones38 = {mapHex =  0x410e8707, texte = "Lothl\195\179rien", lvl = "60", souCat = false, farmTier = 6},
		zones39 = {mapHex =  0x41100DF2, texte = "D\195\188sterwald", lvl = "61 - 65", souCat = false, farmTier = 6},
		zones40 = {mapHex =  0x411041a4, texte = "Enedwaith", lvl = "61 - 65", souCat = false, farmTier = 6},
		zones41 = {mapHex =  0x4111961d, texte = "Dunland", lvl = "65 - 75", souCat = false, farmTier = 7},
		zones42 = {mapHex =  0x4111961d, texte = "Trum Dreng", lvl = "66", souCat = true, farmTier = 7},
		zones43 = {mapHex =  0x4111961d, texte = "Knochental", lvl = "66", souCat = true, farmTier = 7},
		zones44 = {mapHex =  0x4111961d, texte = "Pren Gwydh", lvl = "67", souCat = true, farmTier = 7},
		zones45 = {mapHex =  0x4111b941, texte = "T\195\162l Methedras", lvl = "68 - 72", souCat = true, farmTier = 7},
		zones46 = {mapHex =  0x4111961d, texte = "Starkmoor", lvl = "69 - 71", souCat = true, farmTier = 7},
		zones47 = {mapHex =  0x4111961d, texte = "Dunmoor", lvl = "70", souCat = true, farmTier = 7},
		zones48 = {mapHex =  0x4111961d, texte = "Carreglyn", lvl = "71", souCat = true, farmTier = 7},
		zones49 = {mapHex =  0x4111961d, texte = "Trauerh\195\182he", lvl = "72", souCat = true, farmTier = 7},
		zones50 = {mapHex =  0x41116d55, texte = "Pforte von Rohan", lvl = "73 - 74", souCat = false, farmTier = 7},
		zones51 = {mapHex =  0x41116d55, texte = "Isental", lvl = "73", souCat = true, farmTier = 7},
		zones52 = {mapHex =  0x41116d55, texte = "Heidefall", lvl = "74", souCat = true, farmTier = 7},
		zones53 = {mapHex =  0x41119607, texte = "Nan Curun\195\173r", lvl = "72 - 75", souCat = false, farmTier = 7},
		zones54 = {mapHex =  0x4111e1c0, texte = "Der große Fluss", lvl = "70 - 75", souCat = false, farmTier = 7},
		zones55 = {mapHex =  0x41129eb7, texte = "Ost-Rohan", lvl = "75 - 85", souCat = false, farmTier = 8},
		zones56 = {mapHex =  0x4112d1de, texte = "Die Steppe", lvl = "75 - 76", souCat = true, farmTier = 8},
		zones57 = {mapHex =  0x4112d1dc, texte = "Ostwall", lvl = "76 - 77", souCat = true, farmTier = 8},
		zones58 = {mapHex =  0x4112d1e0, texte = "Norhofen", lvl = "78 - 80", souCat = true, farmTier = 8},
		zones59 = {mapHex =  0x4112d1e1, texte = "Entwasser-Tal", lvl = "80 - 82", souCat = true, farmTier = 8},
		zones60 = {mapHex =  0x4112d1df, texte = "Suthofen", lvl = "83 - 85", souCat = true, farmTier = 8},
		zones61 = {mapHex =  0x411375af, texte = "Wildermark", lvl = "85", souCat = true, farmTier = 8},
		zones62 = {mapHex =  0x4113C325, texte = "West-Rohan", lvl = "85 - 95", souCat = false, farmTier = 9},
		zones63 = {mapHex =  0x4113C31F, texte = "K\195\182nigsstatt", lvl = "85 - 88", souCat = true, farmTier = 9},
		zones64 = {mapHex =  0x4113C321, texte = "Ostfold", lvl = "88 - 90", souCat = true, farmTier = 9},
		zones65 = {mapHex =  0x4113C320, texte = "Weite Mark", lvl = "90 - 91", souCat = true, farmTier = 9},
		zones66 = {mapHex =  0x4113C322, texte = "Felssenke", lvl = "91 - 93", souCat = true, farmTier = 9},
		zones67 = {mapHex =  0x4113C324, texte = "Westfold", lvl = "93 - 95", souCat = true, farmTier = 9},
		zones68 = {mapHex =  0x4114BEAA, texte = "Entwald", lvl = "95", souCat = true, farmTier = 9},
		zones69 = {mapHex =  0x411538df, texte = "West-Gondor", lvl = "95 - 100", souCat = false, farmTier = 9},
		zones70 = {mapHex =  0x41154eed, texte = "Schwarzgrundtal", lvl = "95 - 97", souCat = true, farmTier = 9},
		zones71 = {mapHex =  0x41154eec, texte = "Lamedon", lvl = "97 - 98", souCat = true, farmTier = 9},
		zones72 = {mapHex =  0x41154eeb, texte = "Anfurten von Belfalas", lvl = "98 - 100", souCat = true, farmTier = 9},
		zones73 = {mapHex =  0x41158979, texte = "Die Totens\195\188mpfe", lvl = "100", souCat = false, farmTier = 101},
		zones74 = {mapHex =  0x4115b943, texte = "Zentrum Gondors", lvl = "100", souCat = false, farmTier = 9},
		zones75 = {mapHex =  0x4115b93f, texte = "Ringl\195\179tal", lvl = "100", souCat = true, farmTier = 9},
		zones76 = {mapHex =  0x4115b945, texte = "Dor-en-Ernil", lvl = "100", souCat = true, farmTier = 9},
		zones77 = {mapHex =  0x4115b944, texte = "Lebennin", lvl = "100", souCat = true, farmTier = 9},
		zones78 = {mapHex =  0x4115ee35, texte = "Ost-Gondor", lvl = "100", souCat = false, farmTier = 10},
		zones79 = {mapHex =  0x4115ee38, texte = "Ober-Lebennin", lvl = "100", souCat = true, farmTier = 10},
		zones80 = {mapHex =  0x4115ee3c, texte = "Lossarnach", lvl = "100", souCat = true, farmTier = 10},
		zones81 = {mapHex =  0x4115ee3a, texte = "S\195\188d-Ithilien", lvl = "100", souCat = true, farmTier = 10},
		zones82 = {mapHex =  0x4115ee41, texte = "Osgiliath", lvl = "100", souCat = true, farmTier = 10},
		zones83 = {mapHex =  0x411656f1, texte = "Alt-An\195\179rien", lvl = "100", souCat = false, farmTier = 10},
		zones84 = {mapHex =  0x411656ee, texte = "Talath Anor", lvl = "100", souCat = true, farmTier = 10},
		zones85 = {mapHex =  0x411656f0, texte = "Pelennor", lvl = "100", souCat = true, farmTier = 10},
		zones86 = {mapHex =  0x411656ef, texte = "Minas Tirith", lvl = "100", souCat = true, farmTier = 10},
		zones87 = {mapHex =  0x4116af91, texte = "Weites An\195\179rien", lvl = "100 - 104", souCat = false, farmTier = 10},
		zones88 = {mapHex =  0x4116af90, texte = "Taur Dr\195\186adan", lvl = "101 - 102", souCat = true, farmTier = 10},
		zones89 = {mapHex =  0x4116af8b, texte = "Die Leuchtfeuerberge", lvl = "103 - 104", souCat = true, farmTier = 10},
		zones90 = {mapHex =  0x4116B18E, texte = "Die Schlacht auf dem Pelennor", lvl = "105", souCat = true, farmTier = 10},
		zones91 = {mapHex =  0x411656f1, texte = "An\195\179rien (Schlachtgezeichnet)", lvl = "105", souCat = false, farmTier = 10},
		zones92 = {mapHex =  0x4119389d, texte = "Minas Tirith (Schlachtgezeichnet)", lvl = "105", souCat = true, farmTier = 10},
		zones93 = {mapHex =  0x411a42e8, texte = "Pelennor (Schlachtgezeichnet)", lvl = "105", souCat = true, farmTier = 10},
		zones94 = {mapHex =  0x411a42e5, texte = "Osgiliath (Schlachtgezeichnet)", lvl = "105", souCat = true, farmTier = 10},
		zones95 = {mapHex =  0x411a42e7, texte = "Ithilien", lvl = "105", souCat = false, farmTier = 10},
		zones96 = {mapHex =  0x411a42e7, texte = "Nord-Ithilien", lvl = "105", souCat = true, farmTier = 10},
		zones97 = {mapHex =  0x411b84d4, texte = "Die Ebene von Gorgoroth", lvl = "105 - 115", souCat = false, farmTier = 11},
		zones98 = {mapHex =  0x411b9591, texte = "Ud\195\187n", lvl = "106 -108", souCat = true, farmTier = 11},
		zones99 = {mapHex =  0x411b958d, texte = "Dor Amarth", lvl = "108 -109", souCat = true, farmTier = 11},
		zones100 = {mapHex =  0x411b958e, texte = "Lhingris", lvl = "110 - 111", souCat = true, farmTier = 11},
		zones101 = {mapHex =  0x411b9590, texte = "Talath Urui", lvl = "112 - 113", souCat = true, farmTier = 11},
		zones102 = {mapHex =  0x411b958c, texte = "Agarnaith", lvl = "114 - 115", souCat = true, farmTier = 11},
		zones103 = {mapHex =  0x411c2de2, texte = "Eryn Lasgalen und das Thalland", lvl = "115", souCat = false, farmTier = 11},
		zones104 = {mapHex =  0x411c2de2, texte = "Eryn Lasgalen", lvl = "115", souCat = true, farmTier = 11},
		zones105 = {mapHex =  0x411c2de2, texte = "Das Thalland", lvl = "115", souCat = true, farmTier = 11},
		zones106 = {mapHex =  0x411CD4B8, texte = "Zwergenfestungen", lvl = "115 - 120", souCat = false, farmTier = 12},
		zones107 = {mapHex =  0x411CD4B8, texte = "Eisenberge", lvl = "115 - 117", souCat = true, farmTier = 12},
		zones108 = {mapHex =  0x411c8da9, texte = "Ered Mithrin", lvl = "117 - 120", souCat = true, farmTier = 12},
		zones109 = {mapHex =  0x411da4a0, texte = "Die T\195\164ler des Anduin", lvl = "120", souCat = false, farmTier = 12},
		zones110 = {mapHex =  0x411e9a41, texte = "Das Morgultal", lvl = "120 - 130", souCat = false, farmTier = 13},
		zones111 = {mapHex =  0x411e9a43, texte = "Belagertes Mordor", lvl = "120 - 122", souCat = true, farmTier = 13},
		zones112 = {mapHex =  0x411e9a41, texte = "Rath D\195\186ath", lvl = "123 - 124", souCat = true, farmTier = 13},
		zones113 = {mapHex =  0x411e9a41, texte = "Cirith Ungol", lvl = "125", souCat = true, farmTier = 13},
		zones114 = {mapHex =  0x411e9a42, texte = "Minas Morgul", lvl = "126 - 130", souCat = true, farmTier = 13},
		zones115 = {mapHex =  0x411ee769, texte = "Quellen des Langflut", lvl = "130", souCat = false, farmTier = 131},
		zones116 = {mapHex =  0x411fb86f, texte = "\195\132ltestental", lvl = "130", souCat = false, farmTier = 13},
		zones117 = {mapHex =  0x41008133, texte = "Ettenn\195\182den (PvMP)", lvl = "130", souCat = false, farmTier = 13},
		zones118 = {mapHex =  0x41162479, texte = "Die Spaltung Osgiliaths (PvMP)", lvl = "130", souCat = false, farmTier = 13},
		zones119 = {mapHex =  0x4121166a, texte = "Berg Gundabad", lvl = "130 - 140", souCat = false, farmTier = 14},
		zones120 = {mapHex =  0x4121166f, texte = "Bingen des Gundabad", lvl = "130 - 131", souCat = true, farmTier = 14},
		zones121 = {mapHex =  0x41211669, texte = "M\195\161ttugard", lvl = "130 - 132", souCat = true, farmTier = 14},
		zones122 = {mapHex =  0x4121166d, texte = "Tiefengier", lvl = "133 - 134", souCat = true, farmTier = 14},
		zones123 = {mapHex =  0x4121166c, texte = "Steinschlundloch", lvl = "134 - 135", souCat = true, farmTier = 14},
		zones124 = {mapHex =  0x41211668, texte = "C\195\162r Bronach", lvl = "135 - 136", souCat = true, farmTier = 14},
		zones125 = {mapHex =  0x41211670, texte = "D\195\188sterting", lvl = "137 - 138", souCat = true, farmTier = 14},
		zones126 = {mapHex =  0x4121166b, texte = "Spaltkluft", lvl = "138 - 139", souCat = true, farmTier = 14},
		zones127 = {mapHex =  0x4121166e, texte = "Welkinspeich", lvl = "139 - 140", souCat = true, farmTier = 14},
		zones128 = {mapHex =  0x41231343, texte = "K\195\182nigreich Gondor", lvl = "140 - 143", souCat = false, farmTier = 15},
		zones129 = {mapHex =  0x41231342, texte = "Lossarnach", lvl = "140", souCat = true, farmTier = 15},
		zones130 = {mapHex =  0x4123145a, texte = "Ober-Lebennin", lvl = "140", souCat = true, farmTier = 15},
		zones131 = {mapHex =  0x4123145b, texte = "Nieder-Lebennin", lvl = "140 - 141", souCat = true, farmTier = 15},
		zones132 = {mapHex =  0x4123145c, texte = "Pelargir", lvl = "140", souCat = true, farmTier = 15},
		zones133 = {mapHex =  0x412460a2, texte = "Ringl\195\179tal", lvl = "140 - 141", souCat = true, farmTier = 15},
		zones134 = {mapHex =  0x412460ab, texte = "Schwarzgrundtal", lvl = "141 - 142", souCat = true, farmTier = 15},
		zones135 = {mapHex =  0x412460a6, texte = "Lamedon", lvl = "141 - 142", souCat = true, farmTier = 15},
		zones136 = {mapHex =  0x412460aa, texte = "Belfalas", lvl = "142", souCat = true, farmTier = 15},
		zones137 = {mapHex =  0x412460a7, texte = "Dor En Ernil", lvl = "142 - 143", souCat = true, farmTier = 15},
		zones138 = {mapHex =  0x41239767, texte = "Dol Amroth", lvl = "142 - 143", souCat = true, farmTier = 15},
		zones139 = {mapHex =  0x4124848f, texte = "\195\132u\195\159eres Gondor", lvl = "143 - 145", souCat = false, farmTier = 15},
		zones140 = {mapHex =  0x41248492, texte = "Anfalas", lvl = "142 - 144", souCat = true, farmTier = 15},
		zones141 = {mapHex =  0x41248491, texte = "Pinnath Gelin", lvl = "142 - 144", souCat = true, farmTier = 15},
		zones142 = {mapHex =  0x41248399, texte = "Die Schildinseln", lvl = "145 - 147", souCat = false, farmTier = 15},
		zones143 = {mapHex =  0x41248399, texte = "Zamarz\195\174r", lvl = "145", souCat = true, farmTier = 15},
		zones144 = {mapHex =  0x41248399, texte = "Bakhj\195\162d", lvl = "145 - 146", souCat = true, farmTier = 15},
		zones145 = {mapHex =  0x41248399, texte = "Jeb Kh\195\162tel", lvl = "146 - 147", souCat = true, farmTier = 15},
		zones146 = {mapHex =  0x41248eef, texte = "Kap von Umbar", lvl = "147 - 150", souCat = false, farmTier = 15},
		zones147 = {mapHex =  0x41248eef, texte = "Khaph\195\162r", lvl = "147", souCat = true, farmTier = 15},
		zones148 = {mapHex =  0x41248eef, texte = "Bej M\195\162gha", lvl = "148 - 149", souCat = true, farmTier = 15},
		zones149 = {mapHex =  0x41248eef, texte = "Arad\195\162r", lvl = "149 - 150", souCat = true, farmTier = 15},
		zones150 = {mapHex =  0x41248eee, texte = "Umbar Baharb\195\170l", lvl = "148 - 150", souCat = true, farmTier = 15},
		zones151 = {mapHex =  0x41258005, texte = "Ikorb\195\162n-Tal", lvl = "150", souCat = false, farmTier = 15},
		zones152 = {mapHex =  0x41258014, texte = "Ambar\195\187l", lvl = "150", souCat = true, farmTier = 15},
		zones153 = {mapHex =  0x41258011, texte = "Kh\195\187d Zagin", lvl = "150", souCat = true, farmTier = 15},
		zones154 = {mapHex =  0x41258013, texte = "Imh\195\187lar", lvl = "150", souCat = true, farmTier = 15},
		zones155 = {mapHex =  0x41258009, texte = "Urash D\195\162r", lvl = "150", souCat = true, farmTier = 15},
		zones156 = {mapHex =  0x41267a39, texte = "M\195\187r Ghala (Der Grat des \195\156berflusses)", lvl = "151 - 160", souCat = false, farmTier = 16},
		zones157 = {mapHex =  0x41268397, texte = "Adag\195\173m", lvl = "151 - 152", souCat = true, farmTier = 16},
		zones158 = {mapHex =  0x4126838e, texte = "Kigh\195\162n", lvl = "153 - 155", souCat = true, farmTier = 16},
		zones159 = {mapHex =  0x41268388, texte = "An Sh\195\170ru", lvl = "156 - 158", souCat = true, farmTier = 16},
		zones160 = {mapHex =  0x41267a38, texte = "Idag\195\162l", lvl = "159 - 160", souCat = true, farmTier = 16},
		zones161 = {mapHex =  0x4127182a, texte = "Hatok\195\161li-H\195\188gel", lvl = "160", souCat = true, farmTier = 16}
        };
end