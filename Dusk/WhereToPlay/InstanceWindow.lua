------------------------------------------------------------------------------------------
-- InstanceWindow file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- create the window
------------------------------------------------------------------------------------------
function CreateInstanceWindow(i)
    local width = 500;
    local height = 800;
	local title = "Instances"

    local windowWidth, windowHeight = Turbine.UI.Display:GetSize();

    InstanceWindow=Turbine.UI.Lotro.GoldWindow(); 
    InstanceWindow:SetSize(windowWidth, windowHeight); 
    InstanceWindow:SetPosition(windowWidth / 2 - width / 2, (windowHeight / 2 - height / 2) - 20);
    InstanceWindow:SetSize(width, height);
    InstanceWindow:SetBlendMode(Turbine.UI.BlendMode.Undefined);
    --InstanceWindow:SetBackColor(Turbine.UI.Color(1, 0, 0, 0));
    InstanceWindow:SetText(ZonesNamesAndLevel["zones" .. i].texte .. "    lvl : " .. ZonesNamesAndLevel["zones" .. i].lvl);
    InstanceWindow:SetVisible(false);
    settings["isInstanceWindowVisible"]["value"] = true;
    InstanceWindow:SetWantsKeyEvents(true);

    local posx = 0;
    local posy = 5;

	local listbox = Turbine.UI.ListBox();
    listbox:SetParent( InstanceWindow );
    --listbox:SetBackColor( Turbine.UI.Color.Red );
	listbox:SetSize(width - 45, height - 110);
	listbox:SetPosition(10, 70);
	listbox:SetMouseVisible(true);
	listbox:SetZOrder(10);
	------------------------------------------------------------------------------------------
	-- define the diferent title from tier
	------------------------------------------------------------------------------------------
	if(i == 3 or i == 5 or i == 6 or i == 7 or i == 8 or i == 9)then

		for idx=1, 6 do
			local listItem = Turbine.UI.Control();
			listItem:SetSize( 455, 200 );
			listItem:SetMouseVisible(true);

			local name = datasInstances[idx][1];
			local Abreviation = datasInstances[idx][2];
			local region = datasInstances[idx][3];
			local level = datasInstances[idx][4];
			local tier = datasInstances[idx][5];
			local group = datasInstances[idx][6];
			local availability = datasInstances[idx][7];
			local prerequis = datasInstances[idx][8];
			local daily = datasInstances[idx][9];
			local note = datasInstances[idx][10];

			TitleDisplayer(listItem, InstanceWindow:GetWidth()/2 - 230, posy, name, Turbine.UI.Color.White, Turbine.UI.Color.Gold);


			local WhereToPlayInstancePlace=Turbine.UI.Label(); 
			WhereToPlayInstancePlace:SetParent(listItem); 
			WhereToPlayInstancePlace:SetSize(455,32); 
			WhereToPlayInstancePlace:SetPosition(InstanceWindow:GetWidth()/2 - 230, posy + 20); 
			WhereToPlayInstancePlace:SetText( Abreviation ); 
			WhereToPlayInstancePlace:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold19);
			WhereToPlayInstancePlace:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter);
			WhereToPlayInstancePlace:SetForeColor(Turbine.UI.Color.White);

			local WhereToPlayInstancePlace=Turbine.UI.Label(); 
			WhereToPlayInstancePlace:SetParent(listItem); 
			WhereToPlayInstancePlace:SetSize(100,32); 
			WhereToPlayInstancePlace:SetPosition(InstanceWindow:GetWidth() - 155, posy + 20); 
			WhereToPlayInstancePlace:SetText( availability ); 
			WhereToPlayInstancePlace:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold19);
			WhereToPlayInstancePlace:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleRight);
			WhereToPlayInstancePlace:SetForeColor(Turbine.UI.Color.White);

			local WhereToPlayInstancePlace=Turbine.UI.Label(); 
			WhereToPlayInstancePlace:SetParent(listItem); 
			WhereToPlayInstancePlace:SetSize(150,32); 
			WhereToPlayInstancePlace:SetPosition(20, posy + 20); 
			WhereToPlayInstancePlace:SetText( region ); 
			WhereToPlayInstancePlace:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold19);
			WhereToPlayInstancePlace:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleLeft);
			WhereToPlayInstancePlace:SetForeColor(Turbine.UI.Color.White);

			local WhereToPlayInstancePlace=Turbine.UI.Label(); 
			WhereToPlayInstancePlace:SetParent(listItem); 
			WhereToPlayInstancePlace:SetSize(20,32); 
			WhereToPlayInstancePlace:SetPosition(20, posy + 50); 
			WhereToPlayInstancePlace:SetText( "T" .. tier ); 
			WhereToPlayInstancePlace:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold19);
			WhereToPlayInstancePlace:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter);
			WhereToPlayInstancePlace:SetForeColor(Turbine.UI.Color.White);

			local WhereToPlayInstancePlace=Turbine.UI.Label(); 
			WhereToPlayInstancePlace:SetParent(listItem); 
			WhereToPlayInstancePlace:SetSize(80,32); 
			WhereToPlayInstancePlace:SetPosition(50, posy + 50); 
			WhereToPlayInstancePlace:SetText( "lvl " .. level ); 
			WhereToPlayInstancePlace:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold19);
			WhereToPlayInstancePlace:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter);
			WhereToPlayInstancePlace:SetForeColor(Turbine.UI.Color.White);

			local WhereToPlayInstancePlace=Turbine.UI.Label(); 
			WhereToPlayInstancePlace:SetParent(listItem); 
			WhereToPlayInstancePlace:SetSize(20, 20); 
			WhereToPlayInstancePlace:SetPosition(150, posy + 56); 
			WhereToPlayInstancePlace:SetText( "" ); 
			WhereToPlayInstancePlace:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold19);
			WhereToPlayInstancePlace:SetBackground(ResourcePath .. "Instances.tga");
			WhereToPlayInstancePlace:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter);
			WhereToPlayInstancePlace:SetForeColor(Turbine.UI.Color.White);

			local WhereToPlayInstancePlace=Turbine.UI.Label(); 
			WhereToPlayInstancePlace:SetParent(listItem); 
			WhereToPlayInstancePlace:SetSize(180,32); 
			WhereToPlayInstancePlace:SetPosition(160, posy + 50); 
			WhereToPlayInstancePlace:SetText( prerequis ); 
			WhereToPlayInstancePlace:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold19);
			WhereToPlayInstancePlace:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter);
			WhereToPlayInstancePlace:SetForeColor(Turbine.UI.Color.White);

			local WhereToPlayInstancePlace=Turbine.UI.Label(); 
			WhereToPlayInstancePlace:SetParent(listItem); 
			WhereToPlayInstancePlace:SetSize(70,32); 
			WhereToPlayInstancePlace:SetPosition(InstanceWindow:GetWidth() - 125, posy + 50); 
			WhereToPlayInstancePlace:SetText( daily ); 
			WhereToPlayInstancePlace:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold19);
			WhereToPlayInstancePlace:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleRight);
			WhereToPlayInstancePlace:SetForeColor(Turbine.UI.Color.White);

			local WhereToPlayInstancePlace=Turbine.UI.Label(); 
			WhereToPlayInstancePlace:SetParent(listItem); 
			WhereToPlayInstancePlace:SetSize(440,60); 
			WhereToPlayInstancePlace:SetPosition(InstanceWindow:GetWidth()/2 - 240, posy + 80); 
			WhereToPlayInstancePlace:SetText( note ); 
			WhereToPlayInstancePlace:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold19);
			WhereToPlayInstancePlace:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter);
			WhereToPlayInstancePlace:SetForeColor(Turbine.UI.Color.White);

			listbox:AddItem( listItem );
		end
	end



	local vscrollListBox=Turbine.UI.Lotro.ScrollBar();
	vscrollListBox:SetParent(InstanceWindow);
	vscrollListBox:SetOrientation(Turbine.UI.Orientation.Vertical);
	vscrollListBox:SetPosition(width - 20, 70);
	vscrollListBox:SetSize(10, height - 110); -- set width to 12 since it's a "Lotro" style scrollbar and the height is set to match the control that we will be scrolling
	vscrollListBox:SetBackColor(Turbine.UI.Color(.1,.1,.2)); -- just to give it a little style
	vscrollListBox:SetMinimum(0);
	vscrollListBox:SetMaximum(math.max(0, (6 * 200) - (height - 110))); -- we will allow scrolling the height of the map-the viewport height
	vscrollListBox:SetValue(0); -- set the initial value
	------------------------------------------------------------------------------------------
	-- set the ValueChanged event handler to take an action when our value changes, in this case, change the map position relative to the viewport
	------------------------------------------------------------------------------------------
	vscrollListBox.ValueChanged=function()
		listbox:SetTop(0-vscrollListBox:GetValue());
	end

	listbox:SetVerticalScrollBar(vscrollListBox);



	------------------------------------------------------------------------------------------
	-- Button to close the window
	------------------------------------------------------------------------------------------
    local buttonValider = Turbine.UI.Lotro.GoldButton();
	buttonValider:SetParent( InstanceWindow );
	buttonValider:SetPosition(InstanceWindow:GetWidth()/2 - 125, InstanceWindow:GetHeight() - 35);
	buttonValider:SetSize( 300, 34 );
	buttonValider:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	buttonValider:SetText( Strings.PluginCloseButton );
	buttonValider:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	buttonValider:SetVisible(true);
	buttonValider:SetMouseVisible(true);
    buttonValider:SetZOrder(10);

    buttonValider.MouseClick = function(sender, args)
        CloseInstanceWindow();
    end

    InstanceWindow.KeyDown=function(sender, args)
		if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
			settings["isInstanceWindowVisible"]["value"] = false;
			InstanceWindow:SetVisible(false);
		end
	end

end