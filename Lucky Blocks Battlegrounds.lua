local Name = game.Players.LocalPlayer.Name
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Spawn = game.Players.LocalPlayer.SpawnCFrame
local Window = OrionLib:MakeWindow({Name = "Quish Hub | Lucky Blocks Battlegrounds", HidePremium = true, IntroEnabled = true, IntroText = "Quish Hub", SaveConfig = true, ConfigFolder = "QuishConfig"})
local P = game:GetService'Players'
local HRP = P.LocalPlayer.Character.HumanoidRootPart
local ReplicatedStorage = game:GetService("ReplicatedStorage")
-- TABS
local LocalTab = Window:MakeTab({
    Name = "Local Player",
    Icon = "rbxassetid://11464378104",
    PremiumOnly = false
})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://11465887529",
	PremiumOnly = false
})
local Tab2 = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://11477286363",
	PremiumOnly = false
})
local Tab3 = Window:MakeTab({
	Name = "Keybinds",
	Icon = "rbxassetid://11635851771",
	PremiumOnly = false
})
-- LABELS
LocalTab:AddLabel("Local Player Stuff")

-- SLIDERS
LocalTab:AddSlider({
    Name = "Walkspeed",
    Min = 16,
    Max = 500,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Walkspeed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
    end    
})

LocalTab:AddSlider({
    Name = "Jumppower",
    Min = 50,
    Max = 500,
    Default = 1,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Jumppower",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
    end    
})
-- LABELS
LocalTab:AddLabel("Other Stuff")

-- BUTTONS
LocalTab:AddButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'), true))()
      end    
})
  
-- BUTTONS
LocalTab:AddButton({
    Name = "Esp",
    Callback = function()
        local Esp = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/x114/RobloxScripts/main/OpenSourceEsp"))()
        -- Boxes --
        Esp.Box = true
        Esp.BoxColor = Color3.fromRGB(255,255,255)
        Esp.BoxOutline = true
        Esp.BoxOutlineColor = Color3.fromRGB(0,0,0)
        -- HealthBars --
        Esp.HealthBar = true
        Esp.HealthBarSide = "Left" -- Left,Bottom,Right
        -- Names --
        Esp.Names = true
        Esp.NamesColor = Color3.fromRGB(255,255,255)
        Esp.NamesOutline = true
        Esp.NamesFont = 2
        Esp.NamesSize = 13
      end    
})

-- LABELS
Tab:AddLabel("Main Stuff")

---//SPAWNER
Tab:AddDropdown({
	Name = "Spawn 1 Block",
	Default = "Select Block",
	Options = {"Select Block", "Lucky Block", "Super Block", "Diamond Block", "Rainbow Block","Galaxy Block"},
	Callback = function(Value)
		if Value == 'Lucky Block' then
			ReplicatedStorage.SpawnLuckyBlock:FireServer()
		end
		if Value == 'Super Block' then
			ReplicatedStorage.SpawnSuperBlock:FireServer()
		end
		if Value == 'Diamond Block' then
			ReplicatedStorage.SpawnDiamondBlock:FireServer()
		end
		if Value == 'Rainbow Block' then
			ReplicatedStorage.SpawnRainbowBlock:FireServer()
		end
		if Value == 'Galaxy Block' then
			ReplicatedStorage.SpawnGalaxyBlock:FireServer()
		end
	end})
Tab:AddDropdown({
	Name = "Spawn 5 Blocks",
	Default = "Select Block",
	Options = {"Select Block", "Lucky Block", "Super Block", "Diamond Block", "Rainbow Block","Galaxy Block"},
	Callback = function(Value)
		if Value == 'Lucky Block' then
			for _ = 1,5 do
				ReplicatedStorage.SpawnLuckyBlock:FireServer()
			end
		end
		if Value == 'Super Block' then
			for _ = 1,5 do
				ReplicatedStorage.SpawnSuperBlock:FireServer()
			end
		end
		if Value == 'Diamond Block' then
			for _ = 1,5 do
				ReplicatedStorage.SpawnDiamondBlock:FireServer()
			end
		end
		if Value == 'Rainbow Block' then
			for _ = 1,5 do
				ReplicatedStorage.SpawnRainbowBlock:FireServer()
			end
		end
		if Value == 'Galaxy Block' then
			for _ = 1,5 do
				ReplicatedStorage.SpawnGalaxyBlock:FireServer()
			end
		end
	end})
	
Tab:AddDropdown({
	Name = "Spawn 10 Blocks",
	Default = "Select Block",
	Options = {"Select Block", "Lucky Block", "Super Block", "Diamond Block", "Rainbow Block","Galaxy Block"},
	Callback = function(Value)
		if Value == 'Lucky Block' then
			for _ = 1,5 do
				ReplicatedStorage.SpawnLuckyBlock:FireServer()
			end
		end
		if Value == 'Super Block' then
			for _ = 1,10 do
				ReplicatedStorage.SpawnSuperBlock:FireServer()
			end
		end
		if Value == 'Diamond Block' then
			for _ = 1,10 do
				ReplicatedStorage.SpawnDiamondBlock:FireServer()
			end
		end
		if Value == 'Rainbow Block' then
			for _ = 1,10 do
				ReplicatedStorage.SpawnRainbowBlock:FireServer()
			end
		end
		if Value == 'Galaxy Block' then
			for _ = 1,10 do
				ReplicatedStorage.SpawnGalaxyBlock:FireServer()
			end
		end
	end})

Tab:AddDropdown({
	Name = "Spawn 20 Blocks",
	Default = "Select Block",
	Options = {"Select Block", "Lucky Block", "Super Block", "Diamond Block", "Rainbow Block","Galaxy Block"},
	Callback = function(Value)
		if Value == 'Lucky Block' then
			for _ = 1,20 do
				ReplicatedStorage.SpawnLuckyBlock:FireServer()
			end
		end
		if Value == 'Super Block' then
			for _ = 1,20 do
				ReplicatedStorage.SpawnSuperBlock:FireServer()
			end
		end
		if Value == 'Diamond Block' then
			for _ = 1,20 do
				ReplicatedStorage.SpawnDiamondBlock:FireServer()
			end
		end
		if Value == 'Rainbow Block' then
			for _ = 1,20 do
				ReplicatedStorage.SpawnRainbowBlock:FireServer()
			end
		end
		if Value == 'Galaxy Block' then
			for _ = 1,20 do
				ReplicatedStorage.SpawnGalaxyBlock:FireServer()
			end
		end
	end})

-- LABELS
Tab:AddLabel("Other Stuff")
	
Tab:AddButton({
	Name = "Kill All (Requires Hex Spitter)",
	Callback = function()
		local HexSpitter = P.LocalPlayer.Character.HexSpitter
		local ServerControl = HexSpitter.Remotes.ServerControl
		for _ = 1,20 do
			for _, Child in next, game.Players:GetPlayers() do
				if Child ~= game.Players.LocalPlayer then
					ServerControl:InvokeServer('RayHit', {['Position'] = Vector3.new(0, 0, 0), ["Hit"] = Child.Character.Head})
				end
			end
		end
	OrionLib:MakeNotification({
		Name = "GUI",
		Content = "Killed everyone ;)",
		Image = "rbxassetid://4483345998",
		Time = 3
	})
	end    
})

-- LABELS
Tab2:AddLabel("Main Stuff")
	
Tab2:AddButton({
	Name = "Teleport to VoidBlock",
	Callback = function()
        local function GetNiggered()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.CenterBlocks.Givers.VoidGiver.GUI.CFrame
        end
        GetNiggered()
	end
})
Tab2:AddButton({
	Name = "Teleport to Safe spot",
	Callback = function()
        local function Cute()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Wedge.CFrame
        end
        Cute()
	end
})
Tab2:AddButton({
	Name = "Teleport to Base",
	Callback = function()
		local function Run()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Spawn.Value
		end
		Run()
	end
})

-- LABELS
Tab2:AddLabel("Other Stuff")

Tab2:AddButton({
	Name = "Delete Trees",
	Callback = function()
        for _, Tree in next, game.Workspace:GetChildren() do
            if Tree.Name == 'Tree' then
                Tree:Destroy()
            end
        end
	end
})

-- LABELS
Tab3:AddLabel("Main Keybinds")

---//Keybinds
Tab3:AddBind({
	Name = "Lucky Block",
	Default = Enum.KeyCode.Q,
	Callback = function()
		ReplicatedStorage.SpawnLuckyBlock:FireServer()
	end    
})
Tab3:AddBind({
	Name = "Super Block",
	Default = Enum.KeyCode.E,
	Callback = function()
		ReplicatedStorage.SpawnSuperBlock:FireServer()
	end    
})
Tab3:AddBind({
	Name = "Diamond Block",
	Default = Enum.KeyCode.R,
	Callback = function()
		ReplicatedStorage.SpawnDiamondBlock:FireServer()
	end    
})
Tab3:AddBind({
	Name = "Rainbow Block",
	Default = Enum.KeyCode.T,
	Callback = function()
		ReplicatedStorage.SpawnRainbowBlock:FireServer()
	end    
})
Tab3:AddBind({
	Name = "Galaxy Block",
	Default = Enum.KeyCode.Y,
	Callback = function()
		ReplicatedStorage.SpawnGalaxyBlock:FireServer()
	end    
})

    -- TABS
    local WipTab = Window:MakeTab({
        Name = "W.I.P",
        Icon = "rbxassetid://11464378096",
        PremiumOnly = false
    })
    
    -- PARAGRAPHS
    WipTab:AddParagraph("Upcoming Features","Nothing yet.")

    -- TABS
    local UpdateTab = Window:MakeTab({
        Name = "Updates",
        Icon = "rbxassetid://11464394258",
        PremiumOnly = false
    })

    -- LABELS
    UpdateTab:AddLabel("11/22/2022")
    
    -- PARAGRAPHS
    UpdateTab:AddParagraph("Updates","Made Script.")

    -- TABS
    local CreditsTab = Window:MakeTab({
        Name = "Credits",
        Icon = "rbxassetid://11464378093",
        PremiumOnly = false
    })
    
    -- PARAGRAPHS
    CreditsTab:AddParagraph("Made By:", "Quish#4198")
    CreditsTab:AddParagraph("Quish:", "Feel free to DM me for any Suggestions or Bugs.")

    -- BUTTONS
    CreditsTab:AddButton({
        Name = "Copy My Discord To Clipboard",
        Callback = function()
            setclipboard("Quish#4198")
          end    
    })



OrionLib:Init()