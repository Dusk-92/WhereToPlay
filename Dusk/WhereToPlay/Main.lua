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
------------------------------------------------------------------------------------------
-- create the main window
------------------------------------------------------------------------------------------
CreateMainWindow();
------------------------------------------------------------------------------------------
-- handle minimized icon
------------------------------------------------------------------------------------------
WhereToPlay:SetVisible(settings["isWindowVisible"]["isWindowVisible"]);

MainMinimizedIcon = MinimizedIcon(Images.MinimizedIcon, 32, 32);
MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
MainMinimizedIcon:SetVisible(settings["isMinimizeEnabled"]["isMinimizeEnabled"]);
MainMinimizedIcon.PositionChanged = function()
	settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon:GetLeft();
	settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon:GetTop();
end

------------------------------------------------------------------------------------------
-- Event-driven player updates (no permanent per-frame polling)
------------------------------------------------------------------------------------------
if(type(WhereToPlayAttachPlayerEvents) == "function")then
	WhereToPlayAttachPlayerEvents();
end
