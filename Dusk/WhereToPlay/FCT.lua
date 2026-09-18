------------------------------------------------------------------------------------------
-- FCT file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Initialize datas
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- function to update the lvl of the player --
------------------------------------------------------------------------------------------
function RebuildMainWindow()
	local shouldBeVisible = settings["isWindowVisible"]["isWindowVisible"];
	if(WhereToPlay ~= nil)then
		WhereToPlay:SetVisible(false);
		WhereToPlay:SetWantsUpdates(false);
	end
	CreateMainWindow();
	WhereToPlay:SetVisible(shouldBeVisible);
end

function UpdateLvl()
	local currentLvl = Player:GetLevel();

	if(settings["playerLvl"]["value"] ~= currentLvl)then
		settings["playerLvl"]["value"] = currentLvl;
		RebuildMainWindow();
	end
end
------------------------------------------------------------------------------------------
-- Position changed window
------------------------------------------------------------------------------------------
function PositionChangedWindow()
	------------------------------------------------------------------------------------------
	-- if the position changes, save the new window location
	------------------------------------------------------------------------------------------
	WhereToPlay.PositionChanged = function( sender, args )
    	local x,y = WhereToPlay:GetPosition();
    	settings["windowPosition"]["xPos"] = x;
    	settings["windowPosition"]["yPos"] = y;
	end
end
------------------------------------------------------------------------------------------
-- split strings function
------------------------------------------------------------------------------------------
function Split(s, delimiter)
    local result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end
------------------------------------------------------------------------------------------
-- event handling
------------------------------------------------------------------------------------------
function EscapeKeyHandler()
	local hudHidden = false;
	WhereToPlay.KeyDown=function(sender, args)
		if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
			if(settings["escEnable"]["escEnable"] == true) then
				WhereToPlay:SetVisible(false);
				settings["isWindowVisible"]["isWindowVisible"] = false;
			end
		end
	
		-- https://www.lotro.com/forums/showthread.php?493466-How-to-hide-a-window-on-F12&p=6581962#post6581962
		if ( args.Action == 268435635 ) then
			hudHidden = not hudHidden;
			if hudHidden then
				WhereToPlay:SetVisible(false);
				MainMinimizedIcon:SetVisible(false);
			else
				WhereToPlay:SetVisible(settings["isWindowVisible"]["isWindowVisible"]);
				MainMinimizedIcon:SetVisible(settings["isMinimizeEnabled"]["isMinimizeEnabled"]);
			end
		end
	end
end
------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
function ClosingTheWindow()
	function WhereToPlay:Closing(sender, args)
		settings["isWindowVisible"]["isWindowVisible"] = false;
	end
end
function ClosingTheWindowOptions()
	function OptionsWindow:Closing(sender, args)
		settings["isOptionsWindowVisible"]["isOptionsWindowVisible"] = false;
	end
end
function CloseInstanceWindow()
	if(InstanceWindow ~= nil)then
		InstanceWindow:SetVisible(false);
	end
    settings["isInstanceWindowVisible"]["value"] = false;
end
function CloseFarmWindow()
	if(FarmWindow ~= nil)then
		FarmWindow:SetVisible(false);
	end
    settings["isFarmWindowVisible"]["value"] = false;
end
------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
function commandsHelp()
	notification(
		rgb["start"] .. 
		Strings.PluginHelp1 ..
		rgb["clear"] ..
		Strings.PluginHelp2 ..
		Strings.PluginHelp3 ..
		Strings.PluginHelp4 ..
		Strings.PluginHelp5 ..
		Strings.PluginHelp6 ..
		Strings.PluginHelp7 ..
		Strings.PluginHelp8 ..
		Strings.PluginHelp9 ..
		Strings.PluginHelp10 ..
		Strings.PluginHelp11 ..
		Strings.PluginHelp12
	);
end
------------------------------------------------------------------------------------------
-- returning the value of the level
------------------------------------------------------------------------------------------
function ReturnValueLevel(i)
	local lvlNeeded = {};
	local lvlNeeded2 = {};
	local val1 = "";
	local val2 = "";

	lvlNeeded = Split(ZonesNamesAndLevel["zones" .. i].lvl, "-");

	val1 = string.gsub(tostring(lvlNeeded[1]), "%s+", "");
	if(lvlNeeded[2] ~= nil)then
		val2 = string.gsub(tostring(lvlNeeded[2]), "%s+", "");
	end

	if(val2 == "")then
		val2 = val1;
	else
		lvlNeeded2 = Split(val2, ",");
		val2 = lvlNeeded2[1];
	end

	lvlNeeded[1] = val1;
	lvlNeeded[2] = val2;
	return lvlNeeded;
end
------------------------------------------------------------------------------------------
-- check whether a player level belongs to a zone range
-- Supports both continuous ranges ("20 - 35") and comma-separated values ("1 - 25, 30").
------------------------------------------------------------------------------------------
function IsLevelInZoneRange(level, rangeText)
	level = tonumber(level);
	if(level == nil or rangeText == nil)then
		return false;
	end

	for part in string.gmatch(tostring(rangeText), "[^,]+") do
		part = string.gsub(part, "^%s*(.-)%s*$", "%1");
		local first, last = string.match(part, "^(%d+)%s*%-%s*(%d+)$");
		if(first ~= nil and last ~= nil)then
			first = tonumber(first);
			last = tonumber(last);
			if(level >= first and level <= last)then
				return true;
			end
		else
			local cleanPart = string.gsub(part, "%s+", "");
			local single = tonumber(cleanPart);
			if(single ~= nil and level == single)then
				return true;
			end
		end
	end

	return false;
end
------------------------------------------------------------------------------------------
-- display the race of the players
------------------------------------------------------------------------------------------
function DisplayRace(windowWidth)
	local centerLabelB5 = Turbine.UI.Label();
	centerLabelB5:SetParent(WhereToPlay);
	centerLabelB5:SetPosition( windowWidth/2, 35 );
	centerLabelB5:SetSize( 32, 32  );

	if(PlayerRace == 81)then
		centerLabelB5:SetBackground(0x4110894A);
	end
	if(PlayerRace == 23)then
		centerLabelB5:SetBackground(0x41108945);
	end
	if(PlayerRace == 65)then
		centerLabelB5:SetBackground(0x41108947);
	end
	if(PlayerRace == 114)then
		centerLabelB5:SetBackground(0x4115920D);
	end
	if(PlayerRace == 120)then
		centerLabelB5:SetBackground(0x411DAE7E);
	end
	if(PlayerRace == 73)then
		centerLabelB5:SetBackground(0x41108946);
	end
	if(PlayerRace == 117)then
		centerLabelB5:SetBackground(0x411C8D6B);
	end
	if(PlayerRace == 125)then --hobbit des rivieres
		centerLabelB5:SetBackground(0x4110894A);
	end
	centerLabelB5:SetBlendMode(Turbine.UI.BlendMode.Overlay);
end
------------------------------------------------------------------------------------------
-- display the class of the players
------------------------------------------------------------------------------------------
function DisplayClass(windowWidth)
	local centerLabelB6 = Turbine.UI.Control();
	centerLabelB6:SetParent(WhereToPlay);
	centerLabelB6:SetPosition( windowWidth/2 + 35, 35 );
	centerLabelB6:SetSize( 32, 32  );

	if(PlayerClass == 162)then
		centerLabelB6:SetBackground(0x410095C2);
		end
	if(PlayerClass == 31)then
		centerLabelB6:SetBackground(0x4110867A);
	end
	if(PlayerClass == 214)then
		centerLabelB6:SetBackground(0x41153604);
	end
	if(PlayerClass == 24)then
		centerLabelB6:SetBackground(0x410095C5);
	end
	if(PlayerClass == 193)then
		centerLabelB6:SetBackground(0x4110867B);
	end
	if(PlayerClass == 40)then
		centerLabelB6:SetBackground(0x410095BB);
	end
	if(PlayerClass == 185)then
		centerLabelB6:SetBackground(0x410095BF);
	end
	if(PlayerClass == 23)then
		centerLabelB6:SetBackground(0x410095B8);
	end
	if(PlayerClass == 172)then
		centerLabelB6:SetBackground(0x410095B5);
	end
	if(PlayerClass == 194)then
		centerLabelB6:SetBackground(0x41108673);
	end
	if(PlayerClass == 215)then
		centerLabelB6:SetBackground(0x4120fcd9);
	end
	if(PlayerClass == 216)then -- mariner
		centerLabelB6:SetBackground(0x4122f860);
	end
	centerLabelB6:SetBlendMode(Turbine.UI.BlendMode.Overlay);
end
------------------------------------------------------------------------------------------
-- display the separatoer and the title of the materials
------------------------------------------------------------------------------------------
function TitleDisplayer(windowToDisplay, posx, posy, textToDisplay, textColor, LineColor)
	local sizex = 360;
	windowToDisplay.Message=Turbine.UI.Label(); 
	windowToDisplay.Message:SetParent(windowToDisplay); 
	windowToDisplay.Message:SetSize(380, 30); 
	windowToDisplay.Message:SetPosition(windowToDisplay:GetWidth()/2 - 190, posy - 12); 
	windowToDisplay.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	windowToDisplay.Message:SetFont(Turbine.UI.Lotro.Font.BookAntiqua24);
	windowToDisplay.Message:SetText( textToDisplay ); 
	windowToDisplay.Message:SetForeColor(textColor);

	windowToDisplay.Message=Turbine.UI.Label(); 
	windowToDisplay.Message:SetParent(windowToDisplay); 
	if(windowToDisplay == InstanceWindow)then
		sizex = 460;
	end
	windowToDisplay.Message:SetSize(sizex, 30); 
	windowToDisplay.Message:SetPosition(windowToDisplay:GetWidth()/2 - (sizex / 2), posy - 5); 
	windowToDisplay.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	windowToDisplay.Message:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold22);
	windowToDisplay.Message:SetText("___________________________________________________________________________________"); 
	windowToDisplay.Message:SetForeColor(LineColor);
end
------------------------------------------------------------------------------------------
-- return table lenght
------------------------------------------------------------------------------------------
function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end
------------------------------------------------------------------------------------------
-- keep saved controls inside the current display
------------------------------------------------------------------------------------------
function ClampToScreen(x, y, width, height)
	local screenWidth, screenHeight = Turbine.UI.Display:GetSize();
	local maxX = math.max(0, screenWidth - (width or 0));
	local maxY = math.max(0, screenHeight - (height or 0));

	x = tonumber(x) or 0;
	y = tonumber(y) or 0;

	if(x < 0)then x = 0; end
	if(y < 0)then y = 0; end
	if(x > maxX)then x = maxX; end
	if(y > maxY)then y = maxY; end

	return x, y;
end
------------------------------------------------------------------------------------------
-- display the selected tier
------------------------------------------------------------------------------------------
-- !!!! to be modified when new zone is added !!!!
------------------------------------------------------------------------------------------
function ReturnTier(i)
	local zone = ZonesNamesAndLevel and ZonesNamesAndLevel["zones" .. tostring(i)];
	if(zone ~= nil and zone.farmTier ~= nil)then
		return tonumber(zone.farmTier) or 0;
	end
	return 0;
end
------------------------------------------------------------------------------------------
-- display the small label hover the little bac button of the tier
------------------------------------------------------------------------------------------
function DisplaySmallLabel(i, tier, posx, posy, whereToDisplay)
	
	local ButtonPlusVoc = {};
	local centerLabelBVoc = {};
	local texte = "";

	local buttonDefineHouseLocationPersonalFaux = Turbine.UI.Control();
	buttonDefineHouseLocationPersonalFaux:SetParent( whereToDisplay );
	buttonDefineHouseLocationPersonalFaux:SetPosition(posx, posy);
	buttonDefineHouseLocationPersonalFaux:SetSize( 20, 20 );
	buttonDefineHouseLocationPersonalFaux:SetVisible(true);
	buttonDefineHouseLocationPersonalFaux:SetZOrder(19);

	ButtonPlusVoc[i] = Turbine.UI.Extensions.SimpleWindow();
	ButtonPlusVoc[i]:SetParent( whereToDisplay );
	ButtonPlusVoc[i]:SetPosition(posx + 30 , posy - 20);
	ButtonPlusVoc[i]:SetSize( 180, 30 );
	ButtonPlusVoc[i]:SetVisible(false);
	ButtonPlusVoc[i]:SetZOrder(100);
	ButtonPlusVoc[i]:SetBackground(ResourcePath .. "Cadre_180_30.tga");

	centerLabelBVoc[i] = Turbine.UI.Label();
	centerLabelBVoc[i]:SetParent(ButtonPlusVoc[i]);
	centerLabelBVoc[i]:SetPosition( 2, 2 );
	centerLabelBVoc[i]:SetSize( 176, 26  );
	centerLabelBVoc[i]:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold19);
	if(tier == 1)then
		texte = Strings.PluginProfTier1;
	elseif(tier == 2)then
		texte = Strings.PluginProfTier2;
	elseif(tier == 3)then
		texte = Strings.PluginProfTier3;
	elseif(tier == 4)then
		texte = Strings.PluginProfTier4;
	elseif(tier == 5)then
		texte = Strings.PluginProfTier5;
	elseif(tier == 6)then
		texte = Strings.PluginProfTier6;
	elseif(tier == 7)then
		texte = Strings.PluginProfTier7;
	elseif(tier == 8)then
		texte = Strings.PluginProfTier8;
	elseif(tier == 9)then
		texte = Strings.PluginProfTier9;
	elseif(tier == 10)then
		texte = Strings.PluginProfTier10;
	elseif(tier == 11)then
		texte = Strings.PluginProfTier11;
	elseif(tier == 12)then
		texte = Strings.PluginProfTier12;
	elseif(tier == 13)then
		texte = Strings.PluginProfTier13;
	elseif(tier == 14)then
		texte = Strings.PluginProfTier14;
	elseif(tier == 15)then
		texte = Strings.PluginProfTier15;
	elseif(tier == 16)then
		texte = Strings.PluginProfTier16;
	end
	centerLabelBVoc[i]:SetText( "T" .. tier .. " - " .. texte );
	centerLabelBVoc[i]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabelBVoc[i]:SetZOrder(101);
	centerLabelBVoc[i]:SetForeColor(Turbine.UI.Color.Gold);
	centerLabelBVoc[i]:SetBackColor( Turbine.UI.Color( .9, .1, .4, .9) );

	buttonDefineHouseLocationPersonalFaux.MouseEnter = function()
		ButtonPlusVoc[i]:SetVisible(true);
	end

	buttonDefineHouseLocationPersonalFaux.MouseLeave = function()
		ButtonPlusVoc[i]:SetVisible(false);
	end

	if(settings["verbose"]["value"] == true)then
		-- open the window of the farm place location
		if(i <= NbrEntries)then
			buttonDefineHouseLocationPersonalFaux.MouseClick = function()
				--Turbine.Shell.WriteLine("Click Numero " .. tostring(i));
				if(settings["isFarmWindowVisible"]["value"] == true)then
					FarmWindow:SetVisible(false);
				end
				CreateFarmWindow(i);
				FarmWindow:SetVisible(true);
			end
		end
	end
end
------------------------------------------------------------------------------------------
--function to define the label for the instance
------------------------------------------------------------------------------------------
function DisplaySmallLabelForInstanse(i, posx, posy, whereToDisplay)
	-- Legacy instance feature has no datasInstances table in the current package.
	if(type(datasInstances) ~= "table")then
		return;
	end


	local buttonDefineHouseLocationPersonalFaux = Turbine.UI.Control();
	buttonDefineHouseLocationPersonalFaux:SetParent( whereToDisplay );
	buttonDefineHouseLocationPersonalFaux:SetPosition(posx, posy);
	buttonDefineHouseLocationPersonalFaux:SetSize( 20, 20 );
	buttonDefineHouseLocationPersonalFaux:SetVisible(true);
	buttonDefineHouseLocationPersonalFaux:SetZOrder(21);

	if(settings["displayInstances"]["value"] == true)then
		-- open the window of the instances location
		if(i <= NbrEntries)then
			buttonDefineHouseLocationPersonalFaux.MouseClick = function()
				if(settings["isInstanceWindowVisible"]["value"] == true)then
					InstanceWindow:SetVisible(false);
				end
				CreateInstanceWindow(i);
				if(InstanceWindow ~= nil)then
					InstanceWindow:SetVisible(true);
				end
			end
		end
	end
end
------------------------------------------------------------------------------------------
--function to display the infos window --
------------------------------------------------------------------------------------------
function DisplayInfosWindow(posx, posy)
	local ButtonInfos = Turbine.UI.Extensions.SimpleWindow();
	ButtonInfos:SetParent( WhereToPlay );
	ButtonInfos:SetPosition(posx, posy);
	ButtonInfos:SetSize( 150, 20 );
	ButtonInfos:SetVisible(true);
	--ButtonInfos:SetBackground(ResourcePath .. "Help.tga");
	ButtonInfos:SetZOrder(2000);

	--ButtonInfos:SetBackColor(Turbine.UI.Color.Lime);

	CreateInfosWindow();

	ButtonInfos.MouseEnter = function()
		InfosWindow:SetVisible(true);
	end

	ButtonInfos.MouseLeave = function()
		InfosWindow:SetVisible(false);
	end
end