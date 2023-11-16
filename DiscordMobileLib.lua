
local DiscordLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord"))()
local win = DiscordLib:Window("ExampleWindow")
local serv = win:Server("so cool", "")

local c1 = serv:Channel("Channel 1")

local function Button(Channel, Text, Callback)
	Channel:Button(Text,Callback)
end

local function Tab(channel)
	channel:Seperator()
end

local function Toggle(Channel, Text, Default, Response)
	Channel:Toggle(Text, Default, Response)
end

local function Slider(Channel, Text, Max, Min, Default, Response)
    Channel:Slider(Text, Min, Max, Default, Response)
end

local function Dropdown(Channel, Text, Table, Response)
	Channel:Slider(Text, Table, Response)
end

local function Notif(Title, Text, Response)
	DiscordLib:Notification(Title, Text, Response)
end

Button(c1, "Button", function()
	Notif("This buttons works", "are you shocked?", "yes 100%")
end)

Tab(c1)

Toggle(c1, "Toggle", false, function(v)
	game.StarterGui:SetCore("SendNotification,{
		Title = "Value Change",
		Text = "Value changed to " .. v,
		Duration = 5
	})
end)

Tab(c1)

Slider(c1, "Slider", 100, 16, 16, function(v)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (v)
end)

Tab(c1)

local table1 = {thing1, thing2, thing3}

Dropdown(c1, "Dropdown", table1, function(v)
	Notif("Thingy", v, "okay")
end)

