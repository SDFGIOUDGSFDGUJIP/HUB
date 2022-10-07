-- Gui to Lua
-- Version: 3.2

-- Instances:

local Frame = Instance.new("Frame")
local Script1 = Instance.new("TextButton")
local Script2 = Instance.new("TextButton")
local Script3 = Instance.new("TextButton")
local Script4 = Instance.new("TextButton")
local Script5 = Instance.new("TextButton")

--Properties:

Frame.Parent = game.StarterGui.ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.BorderColor3 = Color3.fromRGB(35, 35, 35)
Frame.Position = UDim2.new(0.111363634, 0, 0.129629627, 0)
Frame.Size = UDim2.new(0, 751, 0, 574)

Script1.Name = "Script1"
Script1.Parent = Frame
Script1.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Script1.Position = UDim2.new(0.00133155787, 0, 0.0017421603, 0)
Script1.Size = UDim2.new(0, 200, 0, 50)
Script1.Font = Enum.Font.SourceSans
Script1.Text = "CMD-X"
Script1.TextColor3 = Color3.fromRGB(4, 255, 0)
Script1.TextScaled = true
Script1.TextSize = 14.000
Script1.TextWrapped = true
Script1.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
end)

Script2.Name = "Script2"
Script2.Parent = Frame
Script2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Script2.Position = UDim2.new(0.266311586, 0, 0.0017421603, 0)
Script2.Size = UDim2.new(0, 200, 0, 50)
Script2.Font = Enum.Font.SourceSans
Script2.Text = "PET SIMULATOR X SCRIPT"
Script2.TextColor3 = Color3.fromRGB(4, 255, 0)
Script2.TextScaled = true
Script2.TextSize = 14.000
Script2.TextWrapped = true
Script2.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/TurfuGoldy/GoldenScripts/main/EzPets.lua", true))()
end)

Script3.Name = "Script3"
Script3.Parent = Frame
Script3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Script3.Position = UDim2.new(0.539280951, 0, 0.0017421603, 0)
Script3.Size = UDim2.new(0, 200, 0, 50)
Script3.Font = Enum.Font.SourceSans
Script3.Text = "OWL HUB"
Script3.TextColor3 = Color3.fromRGB(4, 255, 0)
Script3.TextScaled = true
Script3.TextSize = 14.000
Script3.TextWrapped = true
Script3.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
end)

Script4.Name = "Script4"
Script4.Parent = Frame
Script4.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Script4.Position = UDim2.new(0.802929401, 0, 0.0017421603, 0)
Script4.Size = UDim2.new(0, 148, 0, 52)
Script4.Font = Enum.Font.SourceSans
Script4.Text = "DARK HUB"
Script4.TextColor3 = Color3.fromRGB(4, 255, 0)
Script4.TextScaled = true
Script4.TextSize = 14.000
Script4.TextWrapped = true
Script4.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init", true))()
end)

Script5.Name = "Script5"
Script5.Parent = Frame
Script5.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Script5.Position = UDim2.new(0.00399467396, 0, 0.0958188176, 0)
Script5.Size = UDim2.new(0, 200, 0, 66)
Script5.Font = Enum.Font.SourceSans
Script5.Text = "Backdoor.exe aka backdoor scaner"
Script5.TextColor3 = Color3.fromRGB(4, 255, 0)
Script5.TextScaled = true
Script5.TextSize = 14.000
Script5.TextWrapped = true
Script5.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua"))();
end)

-- Scripts:

local function NMLFEAD_fake_script() -- Frame.Dragify 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(NMLFEAD_fake_script)()
