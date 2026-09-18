------------------------------------------------------------------------------------------
-- PlayerStats file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
-- define player stats
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Define vars --
------------------------------------------------------------------------------------------
Player = Turbine.Gameplay.LocalPlayer.GetInstance();
PlayerName = Player:GetName();
PlayerAlign = Player:GetAlignment(); --1: Free People / 2: Monster Play
PlayerLvl = Player:GetLevel();
PlayerRace = Player:GetRace();
PlayerClass = Player:GetClass();

settings["playerLvl"]["value"] = PlayerLvl;

NbrEntries = 161;

local WTP_LevelChangedHandler = nil;

local function AddPlayerCallback(object, eventName, callback)
	if(object == nil or callback == nil)then return; end
	local current = object[eventName];
	if(current == nil)then
		object[eventName] = callback;
	elseif(type(current) == "table")then
		table.insert(current, callback);
	else
		object[eventName] = { current, callback };
	end
end

local function RemovePlayerCallback(object, eventName, callback)
	if(object == nil or callback == nil)then return; end
	local current = object[eventName];
	if(current == callback)then
		object[eventName] = nil;
	elseif(type(current) == "table")then
		for i = table.getn(current), 1, -1 do
			if(current[i] == callback)then
				table.remove(current, i);
				break;
			end
		end
	end
end

function WhereToPlayAttachPlayerEvents()
	if(WTP_LevelChangedHandler ~= nil or Player == nil)then return; end
	WTP_LevelChangedHandler = function(sender, args)
		UpdateLvl();
	end
	AddPlayerCallback(Player, "LevelChanged", WTP_LevelChangedHandler);
end

function WhereToPlayDetachPlayerEvents()
	if(WTP_LevelChangedHandler == nil)then return; end
	RemovePlayerCallback(Player, "LevelChanged", WTP_LevelChangedHandler);
	WTP_LevelChangedHandler = nil;
end

