------------------------------------------------------------------------------------------
-- LoadAndSave file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- create or load the settings
------------------------------------------------------------------------------------------
function LoadSettings()
	local loadedSettings = PatchDataLoad(Turbine.DataScope.Character, settingsFileName or "WhereToPlay_Settings", settings);
	if(type(loadedSettings) == "table")then
		settings = loadedSettings;
	end

	local previousSettingsVersion = tonumber(settings.settingsVersion) or 0;

	if(type(settings.windowPosition) ~= "table")then settings.windowPosition = {}; end
	if(settings.windowPosition.xPos == nil)then settings.windowPosition.xPos = 500; end
	if(settings.windowPosition.yPos == nil)then settings.windowPosition.yPos = 500; end

	if(type(settings.IconPosition) ~= "table")then settings.IconPosition = {}; end
	if(settings.IconPosition.xPosIcon == nil)then settings.IconPosition.xPosIcon = 500; end
	if(settings.IconPosition.yPosIcon == nil)then settings.IconPosition.yPosIcon = 500; end

	if(type(settings.isMinimizeEnabled) ~= "table")then settings.isMinimizeEnabled = {}; end
	if(settings.isMinimizeEnabled.isMinimizeEnabled == nil)then settings.isMinimizeEnabled.isMinimizeEnabled = true; end
	-- Older versions always displayed the icon regardless of this saved value.
	if(previousSettingsVersion < 140)then
		settings.isMinimizeEnabled.isMinimizeEnabled = true;
	end

	if(type(settings.isWindowVisible) ~= "table")then settings.isWindowVisible = {}; end
	if(settings.isWindowVisible.isWindowVisible == nil)then settings.isWindowVisible.isWindowVisible = true; end

	if(type(settings.isOptionsWindowVisible) ~= "table")then settings.isOptionsWindowVisible = {}; end
	if(settings.isOptionsWindowVisible.isOptionsWindowVisible == nil)then settings.isOptionsWindowVisible.isOptionsWindowVisible = false; end

	if(type(settings.isMapWindowVisible) ~= "table")then settings.isMapWindowVisible = {}; end
	if(settings.isMapWindowVisible.value == nil)then settings.isMapWindowVisible.value = false; end

	if(type(settings.isFarmWindowVisible) ~= "table")then settings.isFarmWindowVisible = {}; end
	if(settings.isFarmWindowVisible.value == nil)then settings.isFarmWindowVisible.value = false; end

	if(type(settings.isInstanceWindowVisible) ~= "table")then settings.isInstanceWindowVisible = {}; end
	if(settings.isInstanceWindowVisible.value == nil)then settings.isInstanceWindowVisible.value = false; end

	if(type(settings.displayInstances) ~= "table")then settings.displayInstances = {}; end
	settings.displayInstances.value = false;

	if(type(settings.verbose) ~= "table")then settings.verbose = {}; end
	if(settings.verbose.value == nil)then settings.verbose.value = false; end

	if(type(settings.escEnable) ~= "table")then settings.escEnable = {}; end
	if(settings.escEnable.escEnable == nil)then settings.escEnable.escEnable = true; end

	if(type(settings.altEnable) ~= "table")then settings.altEnable = {}; end
	if(settings.altEnable.altEnable == nil)then settings.altEnable.altEnable = true; end

	if(type(settings.playerLvl) ~= "table")then settings.playerLvl = {}; end
	if(settings.playerLvl.value == nil)then settings.playerLvl.value = 0; end

	settings.settingsVersion = 140;

	-- Transient windows are recreated on demand and must never persist as open.
	settings.isOptionsWindowVisible.isOptionsWindowVisible = false;
	settings.isMapWindowVisible.value = false;
	settings.isFarmWindowVisible.value = false;
	settings.isInstanceWindowVisible.value = false;
end

------------------------------------------------------------------------------------------
-- save settings
------------------------------------------------------------------------------------------
function SaveSettings()
	if(WhereToPlay ~= nil)then
		settings.windowPosition.xPos = WhereToPlay:GetLeft();
		settings.windowPosition.yPos = WhereToPlay:GetTop();
	end
	if(MainMinimizedIcon ~= nil)then
		settings.IconPosition.xPosIcon = MainMinimizedIcon:GetLeft();
		settings.IconPosition.yPosIcon = MainMinimizedIcon:GetTop();
	end

	PatchDataSave(Turbine.DataScope.Character, settingsFileName or "WhereToPlay_Settings", settings);
end