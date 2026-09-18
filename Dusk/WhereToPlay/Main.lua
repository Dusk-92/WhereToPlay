------------------------------------------------------------------------------------------
-- Main file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Import librarys --
------------------------------------------------------------------------------------------
import "Dusk.WhereToPlay.Librarys";
------------------------------------------------------------------------------------------
-- Load the datas --
------------------------------------------------------------------------------------------
CreateLocalizationInfo();
NbrEntries = tablelength(ZonesNamesAndLevel);
------------------------------------------------------------------------------------------
-- create the main window
------------------------------------------------------------------------------------------
CreateMainWindow();
------------------------------------------------------------------------------------------
-- handle minimized icon
------------------------------------------------------------------------------------------
WhereToPlay:SetVisible(settings["isWindowVisible"]["isWindowVisible"]);

MainMinimizedIcon = MinimizedIcon(Images.MinimizedIcon, 32, 32);
local iconX, iconY = ClampToScreen(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"], 32, 32);
MainMinimizedIcon:SetPosition(iconX, iconY);
settings["IconPosition"]["xPosIcon"] = iconX;
settings["IconPosition"]["yPosIcon"] = iconY;
MainMinimizedIcon:SetVisible(settings["isMinimizeEnabled"]["isMinimizeEnabled"]);
MainMinimizedIcon.PositionChanged = function()
	settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon:GetLeft();
	settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon:GetTop();
end