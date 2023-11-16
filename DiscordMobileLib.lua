
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

local function Notif(Title, Text, Response)
	DiscordLib:Notification(Title, Text, Response)
end

Button(c1, "Button", function()
	Notif("This buttons works", "are you shocked?", "yes 100%")
end)

Tab(c1)

Toggle(c1, "Toggle", false, function(v)
	Notif("Toggle value change",  "Value is " .. (v), "Okay")
end)
