local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Quish Hub | Natural Disaster Survival", HidePremium = true, IntroEnabled = true, IntroText = "Quish Hub", SaveConfig = true, ConfigFolder = "QuishConfig"})

    -- TABS
    local LocalTab = Window:MakeTab({
        Name = "Local Player",
        Icon = "rbxassetid://11464378104",
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

    -- TABS
    local MainTab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://11465887529",
        PremiumOnly = false
    })

    -- LABELS
    MainTab:AddLabel("Main Stuff")

    -- TOGGLES
    MainTab:AddToggle({
        Name = "Autofarm Wins",
        Default = false,
        Callback = function(Value)
            getgenv().Autofarm = Value
            while getgenv().Autofarm == true do
                wait(0.0000000000000000000000001)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-225.228165, 179.59996, 325.649109, -0.2571868, 7.12485418e-11, 0.966361701, -1.14957528e-08, 1, -3.13319992e-09, -0.966361701, -1.19148735e-08, -0.2571868)
            end
        end    
    })

    -- TOGGLES
    MainTab:AddToggle({
        Name = "Walk on Water",
        Default = false,
        Callback = function(bool)
            if bool == false then do game.Workspace.WaterLevel.CanCollide = false
			
                game.Workspace.WaterLevel.Size = Vector3.new(10, 1, 10)
			
            end
		
        end
		
        if bool == true then do game.Workspace.WaterLevel.CanCollide = true
		
            game.Workspace.WaterLevel.Size = Vector3.new(1000, 1, 1000)
		
        end
		
    end
	
    end    

    })

    -- TOGGLES
    MainTab:AddToggle({
        Name = "Choose Map",
        Default = false,
        Callback = function(bool)
            if bool == false then do game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = false
			
            end
		
        end
		
        if bool == true then do game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = true
		
        end
		
    end
	end
        
    })

    -- TOGGLES
    MainTab:AddToggle({
        Name = "Solid Island",
        Default = false,
        Callback = function(bool)
            for i, v in pairs (game.workspace:GetDescendants())do
                if v.Name == 'LowerRocks' then -- change part to the name you want to look for
                    v.CanCollide = bool
                end
            end
        end    
    })

    -- LABELS
    MainTab:AddLabel("Other Stuff")

    -- BUTTONS
    MainTab:AddButton({
        Name = "Disable Fall Damage",
        Callback = function()
            game.Players.LocalPlayer.Character.FallDamageScript:Destroy()
        end   
    })

     -- TABS
     local MiscTab = Window:MakeTab({
        Name = "Misc.",
        Icon = "rbxassetid://11477286363",
        PremiumOnly = false
    })

    -- LABELS
    MiscTab:AddLabel("Main Stuff")

    -- BUTTONS
    MiscTab:AddButton({
        Name = "Display Name Remover",
        Callback = function()
            local Players = game:FindService("Players")



            require(game:GetService("Chat"):WaitForChild("ClientChatModules").ChatSettings).PlayerDisplayNamesEnabled = false



            local function rename(character,name)

                repeat task.wait() until character:FindFirstChildWhichIsA("Humanoid")

                character:FindFirstChildWhichIsA("Humanoid").DisplayName = name

            end



            for i,v in next, Players:GetPlayers() do

                if v.Character then

                    v.DisplayName = v.Name

                    rename(v.Character,v.Name)

                end

                v.CharacterAdded:Connect(function(char)

                    rename(char,v.Name)

                end)

            end



            Players.PlayerAdded:Connect(function(plr)

                plr.DisplayName = plr.Name

                plr.CharacterAdded:Connect(function(char)

                    rename(char,plr.Name)

                end)

            end)

        end    
    })


    -- BUTTONS
    MiscTab:AddButton({
        Name = "Remove Sandstorm GUI",
        Callback = function()
            game.Players.LocalPlayer.PlayerGui.SandStormGui:destroy()
          end    
    })
    
    -- BUTTONS
    MiscTab:AddButton({
        Name = "Remove Blizzard GUI",
        Callback = function()
            game.Players.LocalPlayer.PlayerGui.BlizzardGui:destroy()
          end    
    })

    -- LABELS
    MiscTab:AddLabel("Other Stuff")

    -- BUTTONS
    MiscTab:AddButton({
        Name = "Current Disaster",
        Callback = function()
            OrionLib:MakeNotification({
                Name = "Current Disaster is:",
                Content = game.Players.LocalPlayer.Character.SurvivalTag.Value,
                Image = "rbxassetid://11477316029",
                Time = 3
            })
          end    
    })

    -- TABS
    local FunTab = Window:MakeTab({
        Name = "Fun",
        Icon = "rbxassetid://11477211478",
        PremiumOnly = false
    })
    -- LABELS
    FunTab:AddLabel("Main Stuff")
    
    -- ADAPTIVE INPUTS
    FunTab:AddTextbox({
        Name = "Bring Player",
        Default = "",
        TextDisappear = true,
        Callback = function(Value)
            ---- Made By David/Divine#6170
            local CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

            local Target = Value

            for i,x in pairs(game.Players:GetPlayers()) do

                if x.Name == Target then

                    game:GetService("Players").LocalPlayer.Character.Humanoid:UnequipTools()

                    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid:Clone()

                    Humanoid.BreakJointsOnDeath = false

                    game.Players.LocalPlayer.Character.Animate.Disabled = true

                    game:GetService("Players").LocalPlayer.Character.Humanoid:Destroy()

                    Humanoid.Parent = game:GetService("Players").LocalPlayer.Character

                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

                        if v:IsA("Tool") then

                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool"))

                            firetouchinterest(v.Handle,x.Character.HumanoidRootPart,0)

                        end

                    end

                end

            end

            game.Players.LocalPlayer.CharacterAdded:Wait():WaitForChild("Humanoid")

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
        end	  
    })

    -- BUTTONS
    FunTab:AddButton({
        Name = "Say Current Disaster",
        Callback = function()
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(game.Players.LocalPlayer.Character.SurvivalTag.Value, "All")
          end    
    })
    
    -- BUTTONS
    FunTab:AddButton({
        Name = "Remove Ads",
        Callback = function()
            game:GetService("Workspace").BillboardAd:Destroy()
            game:GetService("Workspace").ForwardPortal:Destroy()
            game:GetService("Workspace").ReturnPortal:Destroy()
        end
    })

    -- LABELS
    FunTab:AddLabel("Random Stuff")

    -- DROPDOWNS
    FunTab:AddDropdown({
        Name = "Water Color",
        Default = "Normal",
        Options = {"Black", "White", "Purple", "Cyan", "Normal"},
        Callback = function(bool)
            if bool == "Black" then do
				game.Workspace.WaterLevel.BrickColor = BrickColor.new("Black")
				game.Workspace.Structure.FloodLevel.BrickColor = BrickColor.new("Black")
				local Children = game.Workspace.TsunamiWave:GetChildren()
				for a = 1, #Children do
					Children[a].BrickColor = BrickColor.new("Black")
				end
			end
		end
		if bool == "White" then do
				game.Workspace.WaterLevel.BrickColor = BrickColor.new("White")
				game.Workspace.Structure.FloodLevel.BrickColor = BrickColor.new("White")
				local Children = game.Workspace.TsunamiWave:GetChildren()
				for a = 1, #Children do
					Children[a].BrickColor = BrickColor.new("White")
				end
			end
		end
		if bool == "Purple" then do
				game.Workspace.WaterLevel.BrickColor = BrickColor.new("Bright violet")
				game.Workspace.Structure.FloodLevel.BrickColor = BrickColor.new("Bright violet")
				local Children = game.Workspace.TsunamiWave:GetChildren()
				for a = 1, #Children do
					Children[a].BrickColor = BrickColor.new("Bright violet")
				end
			end
		end
		if bool == "Cyan" then do
				game.Workspace.WaterLevel.BrickColor = BrickColor.new("Cyan")
				game.Workspace.Structure.FloodLevel.BrickColor = BrickColor.new("Cyan")
				local Children = game.Workspace.TsunamiWave:GetChildren()
				for a = 1, #Children do
					Children[a].BrickColor = BrickColor.new("Cyan")
				end
			end
		end
		if bool == "Reset" then do
				game.Workspace.WaterLevel.BrickColor = BrickColor.new("Bright blue")
				game.Workspace.Structure.FloodLevel.BrickColor = BrickColor.new("Bright blue")
				local Children = game.Workspace.TsunamiWave:GetChildren()
				for a = 1, #Children do
					Children[a].BrickColor = BrickColor.new("Bright blue")
				end
			end
		end
		end
        
    })

    -- TABS
    local TeleportTab = Window:MakeTab({
        Name = "Teleports",
        Icon = "rbxassetid://11464378091",
        PremiumOnly = false
    })

    -- LABELS
    TeleportTab:AddLabel("Main Teleports")

    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Island",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108, 49, 0)
          end    
    })

    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Tower",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-264, 196, 288)
          end    
    })


    -- TABS
    local WipTab = Window:MakeTab({
        Name = "W.I.P",
        Icon = "rbxassetid://11464378096",
        PremiumOnly = false
    })
    
    -- PARAGRAPHS
    WipTab:AddParagraph("Upcoming Features","None yet.")

    -- TABS
    local UpdateTab = Window:MakeTab({
        Name = "Updates",
        Icon = "rbxassetid://11464394258",
        PremiumOnly = false
    })

     -- LABELS
     UpdateTab:AddLabel("11/20/2022")
    
     -- PARAGRAPHS
     UpdateTab:AddParagraph("Updates","Added autofarm wins.")

    -- LABELS
    UpdateTab:AddLabel("11/05/2022")
    
    -- PARAGRAPHS
    UpdateTab:AddParagraph("Updates","Made Script. Added Bring Player.")

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