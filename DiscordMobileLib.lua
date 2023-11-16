local a = loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/ESPTagLib/main/ESPLib.lua"))(()

local b = a:CreateESPTag({
    		Text = "ExampleName",
    		Part = game.Workspace.Items.Arrow.Handle, -- Replace 'Part' with the actual reference to your part
    		TextSize = 7,
    		TextColor = Color3.new(255, 255, 255),
    		BoxColor = Color3.new(255, 255, 255),
			TracerColor = Color3.new(255,255,255)
		  })
