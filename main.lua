local module = {}

function module:CreateNewTab(tabid)
	local TabScripts = {}
	local ScreenGui0 = Instance.new("ScreenGui")
	local Frame1 = Instance.new("Frame")
	local UICorner2 = Instance.new("UICorner")
	ScreenGui0.Parent = game.Players.LocalPlayer.PlayerGui
	ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui0.ResetOnSpawn = false
	Frame1.Parent = ScreenGui0
	Frame1.Position = UDim2.new(0, 0, 0, 0)
	Frame1.Size = UDim2.new(0, 440, 0, 259)
	Frame1.BackgroundColor = BrickColor.new("Really black")
	Frame1.BackgroundColor3 = Color3.new(0.0705882, 0.0705882, 0.0705882)
	Frame1.BackgroundTransparency = 0.4000000059604645
	Frame1.BorderColor = BrickColor.new("Really black")
	Frame1.BorderColor3 = Color3.new(0, 0, 0)
	Frame1.BorderSizePixel = 0
	local UserInputService = game:GetService("UserInputService")

	local gui = Frame1
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
	local TextButton0 = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	TextButton0.Name = "smaller"
	TextButton0.Parent = Frame1
	TextButton0.Position = UDim2.new(0.925000012, 0, 0, 0)
	TextButton0.Size = UDim2.new(0, 22, 0, 22)
	TextButton0.BackgroundColor = BrickColor.new("Dark grey")
	TextButton0.BackgroundColor3 = Color3.new(0.415686, 0.415686, 0.415686)
	TextButton0.BackgroundTransparency = 0.4000000059604645
	TextButton0.BorderColor = BrickColor.new("Really black")
	TextButton0.BorderColor3 = Color3.new(0, 0, 0)
	TextButton0.BorderSizePixel = 0
	TextButton0.Font = Enum.Font.Gotham
	TextButton0.FontSize = Enum.FontSize.Size14
	TextButton0.Text = "-"
	TextButton0.TextColor = BrickColor.new("Institutional white")
	TextButton0.TextColor3 = Color3.new(1, 1, 1)
	TextButton0.TextScaled = true
	TextButton0.TextSize = 14
	TextButton0.TextWrap = true
	TextButton0.TextWrapped = true
	UICorner.Parent = TextButton0
	TextButton0.MouseButton1Click:Connect(function()
		Frame1.Visible = false
	end)
	UICorner2.Parent = Frame1

	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if not gameProcessed and input.KeyCode == Enum.KeyCode.LeftControl then
			Frame1.Visible = not Frame1.Visible
		end
	end)
	local title = nil
	function TabScripts:NewTitle(name) 
		local TextLabel1 = Instance.new("TextLabel")
		TextLabel1.Name = "title"
		TextLabel1.Parent = Frame1
		TextLabel1.Position = UDim2.new(0.0227272734, 0, 0, 0)
		TextLabel1.Size = UDim2.new(0, 381, 0, 22)
		TextLabel1.BackgroundColor = BrickColor.new("Institutional white")
		TextLabel1.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel1.BackgroundTransparency = 1
		TextLabel1.BorderColor = BrickColor.new("Really black")
		TextLabel1.BorderColor3 = Color3.new(0, 0, 0)
		TextLabel1.BorderSizePixel = 0
		TextLabel1.Font = Enum.Font.Gotham
		TextLabel1.FontSize = Enum.FontSize.Size14
		TextLabel1.Text = name
		TextLabel1.TextColor = BrickColor.new("Institutional white")
		TextLabel1.TextColor3 = Color3.new(1, 1, 1)
		TextLabel1.TextScaled = true
		TextLabel1.TextSize = 14
		TextLabel1.TextWrap = true
		TextLabel1.TextWrapped = true
		TextLabel1.TextXAlignment = Enum.TextXAlignment.Left
		title = TextLabel1
	end
	function TabScripts:ChangeTitleName(new)
		if title then
			title.Text = new
		else
			warn("\n:ChangeTitleName()\nWarning: Applies not applied.\n	|- Warning 1: title not found.\n	|_ Warning 2: Please install the title with :NewTitle(name)")
		end
	end
	local sections = {
		left = nil,
		right = nil
	}
	--[[
AddSections()
The Tool to make sections. For the tabs.
	]]
	function TabScripts:AddSections()
		local Frame0 = Instance.new("Frame")
		sections.right = Frame0
		local Frame1T = Instance.new("Frame")
		sections.left = Frame1T
		local UICorner1 = Instance.new("UICorner")
		local UICorner2 = Instance.new("UICorner")
		local UIListLayout = Instance.new("UIListLayout")
		UIListLayout.Parent = Frame1T
		UIListLayout.Padding = UDim.new(0, 5)
		Frame0.Name = "TAB2"
		Frame0.Parent = Frame1
		Frame0.Position = UDim2.new(0.300000012, 0, 0.0849420875, 0)
		Frame0.Size = UDim2.new(0, 297, 0, 224)
		Frame0.BackgroundColor = BrickColor.new("Dark grey metallic")
		Frame0.BackgroundColor3 = Color3.new(0.32549, 0.32549, 0.32549)
		Frame0.BackgroundTransparency = 0.4000000059604645
		Frame0.BorderColor = BrickColor.new("Really black")
		Frame0.BorderColor3 = Color3.new(0, 0, 0)
		Frame0.BorderSizePixel = 0
		Frame1T.Name = "TAB1"
		Frame1T.Parent = Frame1
		Frame1T.Position = UDim2.new(0.0227272734, 0, 0.0849420875, 0)
		Frame1T.Size = UDim2.new(0, 110, 0, 224)
		Frame1T.BackgroundColor = BrickColor.new("Dark grey metallic")
		Frame1T.BackgroundColor3 = Color3.new(0.32549, 0.32549, 0.32549)
		Frame1T.BackgroundTransparency = 0.4000000059604645
		Frame1T.BorderColor = BrickColor.new("Really black")
		Frame1T.BorderColor3 = Color3.new(0, 0, 0)
		Frame1T.BorderSizePixel = 0
		UICorner1.Parent = Frame0
		UICorner2.Parent = Frame1T
		print("Add Sections complete")
	end
	
	--[[
		AddTab(tabname: string, imageid: number, vis: boolean)	
		Adds a tab.
	]]
	local tabs = {}
	function TabScripts:AddTab(tabname: string, imageid: number, vis: boolean)
		if sections.left then
		local Frame0 = Instance.new("Frame")
		local TextLabel1 = Instance.new("TextLabel")
		local ImageLabel2 = Instance.new("ImageLabel")
		local TextButton3 = Instance.new("TextButton")
		local UICorner4 = Instance.new("UICorner")
		Frame0.Name = tabname
		Frame0.Parent = sections.left
		Frame0.Size = UDim2.new(0, 110, 0, 35)
		Frame0.BackgroundColor = BrickColor.new("Dark grey metallic")
		Frame0.BackgroundColor3 = Color3.new(0.352941, 0.352941, 0.352941)
		Frame0.BackgroundTransparency = 0.4000000059604645
		Frame0.BorderColor = BrickColor.new("Really black")
		Frame0.BorderColor3 = Color3.new(0, 0, 0)
		Frame0.BorderSizePixel = 0
		TextLabel1.Parent = Frame0
		TextLabel1.Position = UDim2.new(0.336363643, 0, 0.22857143, 0)
		TextLabel1.Size = UDim2.new(0, 73, 0, 18)
		TextLabel1.BackgroundColor = BrickColor.new("Institutional white")
		TextLabel1.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel1.BackgroundTransparency = 1
		TextLabel1.BorderColor = BrickColor.new("Really black")
		TextLabel1.BorderColor3 = Color3.new(0, 0, 0)
		TextLabel1.BorderSizePixel = 0
		TextLabel1.Font = Enum.Font.Gotham
		TextLabel1.FontSize = Enum.FontSize.Size14
		TextLabel1.Text = tabname
		TextLabel1.TextColor = BrickColor.new("Institutional white")
		TextLabel1.TextColor3 = Color3.new(1, 1, 1)
		TextLabel1.TextSize = 14
		TextLabel1.TextXAlignment = Enum.TextXAlignment.Left
		ImageLabel2.Parent = Frame0
		ImageLabel2.Position = UDim2.new(0.0500000007, 0, 0.140000001, 0)
		ImageLabel2.Size = UDim2.new(0, 26, 0, 26)
		ImageLabel2.BackgroundColor = BrickColor.new("Institutional white")
		ImageLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
		ImageLabel2.BackgroundTransparency = 1
		ImageLabel2.BorderColor = BrickColor.new("Really black")
		ImageLabel2.BorderColor3 = Color3.new(0, 0, 0)
		ImageLabel2.BorderSizePixel = 0
		if imageid ~= nil then ImageLabel2.Image = "rbxassetid://" .. imageid end
		TextButton3.Name = "Active"
		TextButton3.Parent = Frame0
		TextButton3.Size = UDim2.new(1, 0, 1, 0)
		TextButton3.BackgroundColor = BrickColor.new("Institutional white")
		TextButton3.BackgroundColor3 = Color3.new(1, 1, 1)
		TextButton3.BackgroundTransparency = 1
		TextButton3.BorderColor = BrickColor.new("Really black")
		TextButton3.BorderColor3 = Color3.new(0, 0, 0)
		TextButton3.BorderSizePixel = 0
		TextButton3.Font = Enum.Font.SourceSans
		TextButton3.FontSize = Enum.FontSize.Size14
		TextButton3.Text = ""
		TextButton3.TextColor = BrickColor.new("Really black")
		TextButton3.TextColor3 = Color3.new(0, 0, 0)
		TextButton3.TextSize = 14
		UICorner4.Parent = Frame0
			local ScrollingFrame0 = Instance.new("ScrollingFrame")
			local UIListLayout1 = Instance.new("UIListLayout")
			
			ScrollingFrame0.Name = "Tab"
			ScrollingFrame0.Parent = sections.right
			ScrollingFrame0.Size = UDim2.new(1, 0, 1, 0)
			ScrollingFrame0.Active = true
			ScrollingFrame0.BackgroundColor = BrickColor.new("Institutional white")
			ScrollingFrame0.BackgroundColor3 = Color3.new(1, 1, 1)
			ScrollingFrame0.BackgroundTransparency = 1
			ScrollingFrame0.BorderColor = BrickColor.new("Really black")
			ScrollingFrame0.BorderColor3 = Color3.new(0, 0, 0)
			ScrollingFrame0.BorderSizePixel = 0
			ScrollingFrame0.CanvasSize = UDim2.new(0, 0, 0, 0)
			ScrollingFrame0.Visible = vis
			tabs[tabname] = {
				ScrollingFrame = ScrollingFrame0,
				Button = Frame0,
				UIListLayout = UIListLayout1
			}
			UIListLayout1.Parent = ScrollingFrame0
			UIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout1.Padding = UDim.new(0, 10)
			TextButton3.MouseButton1Click:Connect(function()
				for i, v in pairs(tabs) do
					v.ScrollingFrame.Visible = false
				end
				tabs[tabname].ScrollingFrame.Visible = true
			end)
		else
			warn("Use addsections() first!")
		end
	end
	--[[
		AddNewHackToList
	]]
	function TabScripts:AddNewHackToList(tabname: string, id: string, properties: {}, name: string, desc: string)
		if not tabs[tabname] then warn("Tab "..tabname.." not found."); return end
		if not properties.OnEnabled then warn("properties.OnEnabled() isnt made!"); return end
		if not properties.OnDisabled then warn("properties.OnDisabled() isnt made!"); return end
		local Frame0 = Instance.new("Frame")
		local TextLabel1 = Instance.new("TextLabel")
		local Frame2 = Instance.new("Frame")
		local Frame3 = Instance.new("Frame")
		local TextButton4 = Instance.new("TextButton")
		local TextLabel5 = Instance.new("TextLabel")
		local UICorner6 = Instance.new("UICorner")
		local UICorner7 = Instance.new("UICorner")
		local UICorner8 = Instance.new("UICorner")
		Frame0.Name = "Hack"
		Frame0.Parent = tabs[tabname].ScrollingFrame
		Frame0.Size = UDim2.new(0, 297, 0, 60)
		Frame0.BackgroundColor = BrickColor.new("Dark grey metallic")
		Frame0.BackgroundColor3 = Color3.new(0.34902, 0.34902, 0.34902)
		Frame0.BackgroundTransparency = 0.4000000059604645
		Frame0.BorderColor = BrickColor.new("Really black")
		Frame0.BorderColor3 = Color3.new(0, 0, 0)
		Frame0.BorderSizePixel = 0
		TextLabel1.Name = "text"
		TextLabel1.Parent = Frame0
		TextLabel1.Position = UDim2.new(0.0235690232, 0, 0, 0)
		TextLabel1.Size = UDim2.new(0, 217, 0, 26)
		TextLabel1.BackgroundColor = BrickColor.new("Institutional white")
		TextLabel1.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel1.BackgroundTransparency = 1
		TextLabel1.BorderColor = BrickColor.new("Really black")
		TextLabel1.BorderColor3 = Color3.new(0, 0, 0)
		TextLabel1.BorderSizePixel = 0
		TextLabel1.Font = Enum.Font.Gotham
		TextLabel1.FontSize = Enum.FontSize.Size14
		TextLabel1.Text = name or "Top Text"
		TextLabel1.TextColor = BrickColor.new("Institutional white")
		TextLabel1.TextColor3 = Color3.new(1, 1, 1)
		TextLabel1.TextScaled = true
		TextLabel1.TextSize = 14
		TextLabel1.TextWrap = true
		TextLabel1.TextWrapped = true
		TextLabel1.TextXAlignment = Enum.TextXAlignment.Left
		Frame2.Parent = Frame0
		Frame2.Position = UDim2.new(0.791245818, 0, 0.266666681, 0)
		Frame2.Size = UDim2.new(0, 53, 0, 27)
		Frame2.BackgroundColor = BrickColor.new("Medium brown")
		Frame2.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
		Frame2.BorderColor = BrickColor.new("Really black")
		Frame2.BorderColor3 = Color3.new(0, 0, 0)
		Frame2.BorderSizePixel = 0
		Frame3.Parent = Frame2
		Frame3.Position = UDim2.new(0.452830195, 0, 0, 0)
		Frame3.Size = UDim2.new(0, 29, 0, 27)
		Frame3.BackgroundColor = BrickColor.new("Sand green")
		Frame3.BackgroundColor3 = Color3.new(0.486275, 0.486275, 0.486275)
		Frame3.BorderColor = BrickColor.new("Really black")
		Frame3.BorderColor3 = Color3.new(0, 0, 0)
		Frame3.BorderSizePixel = 0
		TextButton4.Name = "Toggle"
		TextButton4.Parent = Frame2
		TextButton4.Size = UDim2.new(1, 0, 1, 0)
		TextButton4.BackgroundColor = BrickColor.new("Institutional white")
		TextButton4.BackgroundColor3 = Color3.new(1, 1, 1)
		TextButton4.BackgroundTransparency = 1
		TextButton4.BorderColor = BrickColor.new("Really black")
		TextButton4.BorderColor3 = Color3.new(0, 0, 0)
		TextButton4.BorderSizePixel = 0
		TextButton4.Font = Enum.Font.SourceSans
		TextButton4.FontSize = Enum.FontSize.Size14
		TextButton4.Text = ""
		TextButton4.TextColor = BrickColor.new("Really black")
		TextButton4.TextColor3 = Color3.new(0, 0, 0)
		TextButton4.TextSize = 14
		TextLabel5.Name = "desc"
		TextLabel5.Parent = Frame0
		TextLabel5.Position = UDim2.new(0.0235690232, 0, 0.433333337, 0)
		TextLabel5.Size = UDim2.new(0, 217, 0, 28)
		TextLabel5.BackgroundColor = BrickColor.new("Institutional white")
		TextLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel5.BackgroundTransparency = 1
		TextLabel5.BorderColor = BrickColor.new("Really black")
		TextLabel5.BorderColor3 = Color3.new(0, 0, 0)
		TextLabel5.BorderSizePixel = 0
		TextLabel5.Font = Enum.Font.Gotham
		TextLabel5.FontSize = Enum.FontSize.Size14
		TextLabel5.Text = desc or "Youll see this desc if you didnt set one."
		TextLabel5.TextColor = BrickColor.new("Institutional white")
		TextLabel5.TextColor3 = Color3.new(1, 1, 1)
		TextLabel5.TextScaled = true
		TextLabel5.TextSize = 14
		TextLabel5.TextWrap = true
		TextLabel5.TextWrapped = true
		TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
		UICorner6.Parent = Frame0
		UICorner7.Parent = Frame2
		UICorner7.CornerRadius = UDim.new(0, 25)
		UICorner8.Parent = Frame3
		UICorner8.CornerRadius = UDim.new(0, 25)
		local enabled = false
		Frame3.Position = UDim2.new(0, 0, 0, 0)
		
		TextButton4.MouseButton1Click:Connect(function()
			enabled = not enabled
			if enabled then
				Frame3.Position = UDim2.new(0.452830195, 0, 0, 0)
				properties.OnEnabled()
			else
				Frame3.Position = UDim2.new(0, 0, 0, 0)
				properties.OnDisabled()
			end
		end)
		tabs[tabname].ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, tabs[tabname].UIListLayout.AbsoluteContentSize.Y)
	end
	return TabScripts
end



local test = module
local a = test:CreateNewTab("a")
local esp = {
	itemsenabled = false
}
a:NewTitle("Dandy's World Hack")
a:AddSections()
a:AddTab("ESP", 90234209088161, true)
a:AddNewHackToList("ESP", "esp-items", {
	OnEnabled = function()
		esp.itemsenabled = true
		while task.wait(0.02) do
			if not esp.itemsenabled then
				break
			end
			for _, room in pairs(game.Workspace.CurrentRoom:GetChildren()) do
				local items = room:FindFirstChild("Items")
				if items then
					for i, item in pairs(items:GetChildren()) do
						if not item:FindFirstChild("Highlight") then
							print("no highlight")
							local highlight = Instance.new("Highlight")
							highlight.FillColor = Color3.fromRGB(255, 208, 0)
							highlight.FillTransparency = 0.5
							highlight.OutlineTransparency = 1
							highlight.Parent = item
						else
							print("highlight")
						end  
					end
				end
			end
		end
	end,
	OnDisabled = function()
		esp.itemsenabled = false
	end
}, "ESP Items", "Enables ESP for items.")
a:AddNewHackToList("ESP", "esp-monsters", {
	OnEnabled = function()
		esp.monsterenabled = true
		while task.wait(0.02) do
			if not esp.monsterenabled then
				break
			end
			for _, room in pairs(game.Workspace.CurrentRoom:GetChildren()) do
				local items = room:FindFirstChild("Monsters")
				if items then
					for i, item in pairs(items:GetChildren()) do
						if not item:FindFirstChild("Highlight") then
							print("no highlight")
							local highlight = Instance.new("Highlight")
							highlight.FillColor = Color3.fromRGB(255, 0, 0)
							highlight.FillTransparency = 0.5
							highlight.OutlineTransparency = 1
							highlight.Parent = item
						else
							print("highlight")
						end  
					end
				end
			end
		end
	end,
	OnDisabled = function()
		esp.machineenabled = false
	end
}, "ESP Monsters", "Enables ESP for monsters.")
a:AddNewHackToList("ESP", "esp-generators", {
	OnEnabled = function()
		esp.generatorenabled = true
		while task.wait(0.02) do
			if not esp.generatorenabled then
				break
			end
			for _, room in pairs(game.Workspace.CurrentRoom:GetChildren()) do
				local generators = room:FindFirstChild("Generators")
				if generators then 
					for i, generator in pairs(generators:GetChildren()) do
						print(generator.Name, i)
						-- If generator is completed, remove any existing highlight
						if generator.Stats.Completed.Value then
							print("complete")
							if generator:FindFirstChild("Highlight") then
								generator.Highlight:Destroy()
							end
						else
							-- If not completed, ensure it has a highlight
							if not generator:FindFirstChild("Highlight") then
								print("no highlight")
								local highlight = Instance.new("Highlight")
								highlight.FillColor = Color3.fromRGB(0, 0, 255)
								highlight.FillTransparency = 0.5
								highlight.OutlineTransparency = 1
								highlight.Parent = generator
							else
								print("highlight")
							end
						end
					end
				end
			end
		end
	end,
	OnDisabled = function()
		esp.itemsenabled = false
	end
}, "ESP Generators", "Enables ESP for generators.")
a:AddTab("Speed", 90234209088161, false)
local characterSpeeds = {
	pebble = {
		speed = 30,
		call = "Pebble"
	},
	razzledazzle_odd = {
		speed = 30,
		call = "Razzle & Dazzle (on odd numbered floors)"
	},
	looey_1hp = {
		speed = 30,
		call = "Looey (when at one heart)"
	},
	bobette = {
		speed = 27.5,
		call = "Bobette"
	},
	flutter = {
		speed = 27.5,
		call = "Flutter"
	},
	goob = {
		speed = 27.5,
		call = "Goob"
	},
	tisha = {
		speed = 27.5,
		call = "Tisha"
	},
	coal = {
		speed = 27.5,
		call = "Coal"
	},
	boxten = {
		speed = 25,
		call = "Boxten"
	},
	poppy = {
		speed = 25,
		call = "Poppy"
	},
	finn = {
		speed = 25,
		call = "Finn"
	},
	shelly = {
		speed = 25,
		call = "Shelly"
	},
	sprout = {
		speed = 25,
		call = "Sprout"
	},
	teagan = {
		speed = 25,
		call = "Teagan"
	},
	astro = {
		speed = 25,
		call = "Astro"
	},
	rodger = {
		speed = 25,
		call = "Rodger"
	},
	glisten = {
		speed = 25,
		call = "Glisten"
	},
	gigi = {
		speed = 25,
		call = "Gigi"
	},
	scraps = {
		speed = 25,
		call = "Scraps"
	},
	vee = {
		speed = 25,
		call = "Vee"
	},
	rudie = {
		speed = 25,
		call = "Rudie"
	},
	ginger = {
		speed = 25,
		call = "Ginger"
	},
	brightney = {
		speed = 22.5,
		call = "Brightney"
	},
	cosmo = {
		speed = 22.5,
		call = "Cosmo"
	},
	connie = {
		speed = 22.5,
		call = "Connie"
	},
	toodles = {
		speed = 22.5,
		call = "Toodles"
	},
	shrimpo = {
		speed = 20,
		call = "Shrimpo"
	},
	razzledazzle_even = {
		speed = 20,
		call = "Razzle & Dazzle (on even numbered floors)"
	}
}

for i, item in pairs(characterSpeeds) do
	local enabled = false
	local oldspeed = nil
	a:AddNewHackToList("Speed", characterSpeeds.call, {
		OnEnabled = function()
			oldspeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
			enabled = true
			while task.wait(0.02) do
				if enabled then
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = item.speed
				else
					break
				end
			end
		end,
		OnDisabled = function()
			enabled = false
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = oldspeed
		end,
	}, item.call .. " Speed", "Speed: "..item.speed)
end
