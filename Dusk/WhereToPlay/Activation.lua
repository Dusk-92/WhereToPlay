------------------------------------------------------------------------------------------
-- Activation file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Activate Plugin --
------------------------------------------------------------------------------------------
Plugins[pluginName].Load = function()
	notification("Version " .. Plugins[pluginName]:GetVersion() .. " " .. Strings.PluginText);
end
------------------------------------------------------------------------------------------
-- Unload Plugin --
------------------------------------------------------------------------------------------
Plugins[pluginName].Unload = function()	

	if(type(WhereToPlayDetachPlayerEvents) == "function")then
		WhereToPlayDetachPlayerEvents();
	end
	if(WhereToPlay ~= nil)then
		WhereToPlay:SetWantsUpdates(false);
	end

	SaveSettings();

	notification(Strings.PluginUnloaded or "Plugin unloaded");
end