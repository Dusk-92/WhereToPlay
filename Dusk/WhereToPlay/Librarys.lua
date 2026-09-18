------------------------------------------------------------------------------------------
-- librarys file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- define librairies
------------------------------------------------------------------------------------------
import "Turbine";
import "Turbine.UI";
import "Turbine.UI.Lotro";
import "Turbine.UI.Extensions";
import "Turbine.Gameplay";
------------------------------------------------------------------------------------------
-- Import Globals --
------------------------------------------------------------------------------------------
if Turbine.Engine.GetLanguage() == Turbine.Language.German then
	import "Dusk.WhereToPlay.GlobalsDE";
	GLocale = "de";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.French then
	import "Dusk.WhereToPlay.GlobalsFR";
	GLocale = "fr";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.English then
	import "Dusk.WhereToPlay.GlobalsEN";
	GLocale = "en";
end
------------------------------------------------------------------------------------------
-- Import Utility --
------------------------------------------------------------------------------------------
import "Dusk.WhereToPlay.Notification";
import "Dusk.WhereToPlay.LoadAndSave";
import "Dusk.WhereToPlay.MinimizedIcon";
import "Dusk.WhereToPlay.VindarPatch";
import "Dusk.WhereToPlay.FCT";
------------------------------------------------------------------------------------------
-- Import initialization --
------------------------------------------------------------------------------------------
import "Dusk.WhereToPlay.Init";
import "Dusk.WhereToPlay.Activation";
import "Dusk.WhereToPlay.PlayerStats";
------------------------------------------------------------------------------------------
-- Import Scripts --
------------------------------------------------------------------------------------------
import "Dusk.WhereToPlay.Main";
------------------------------------------------------------------------------------------
-- Import UI elements --
------------------------------------------------------------------------------------------
import "Dusk.WhereToPlay.UI";
import "Dusk.WhereToPlay.UIInfos";
import "Dusk.WhereToPlay.OptionsWindow";
import "Dusk.WhereToPlay.MapWindow";
if Turbine.Engine.GetLanguage() == Turbine.Language.German then
	import "Dusk.WhereToPlay.DATA_DE";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.French then
	import "Dusk.WhereToPlay.DATA_FR";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.English then
	import "Dusk.WhereToPlay.DATA_EN";
end
import "Dusk.WhereToPlay.FarmWindow";
import "Dusk.WhereToPlay.InstanceWindow";
------------------------------------------------------------------------------------------
-- Import Commands --
------------------------------------------------------------------------------------------
import "Dusk.WhereToPlay.Commands";