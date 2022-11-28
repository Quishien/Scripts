local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Quish Hub | Doomspire Brickbattle", HidePremium = true, IntroEnabled = true, IntroText = "Quish Hub", SaveConfig = true, ConfigFolder = "QuishConfig"})
    

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
    
    -- BUTTONS
    MainTab:AddButton({
        Name = "Kill All",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Rollimonster/roblox-tp-all-head/main/roblox%20tp%20all%20head", true))()
          end    
    })

    -- ADAPTIVE INPUTS
    MainTab:AddTextbox({
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

    -- LABELS
    MainTab:AddLabel("Other Stuff")

    -- BUTTONS
    MainTab:AddButton({
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

    -- TABS
    local TeleportTab = Window:MakeTab({
        Name = "Teleports",
        Icon = "rbxassetid://11464378091",
        PremiumOnly = false
    })

    -- LABELS
    TeleportTab:AddLabel("Teleport To Bases Bottom")
    
    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Red Base Bottom",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-131.069504, 24.8000183, 0.276372671, -0.959334731, 5.83265738e-08, -0.282270849, 5.69691103e-08, 1, 1.30163107e-08, 0.282270849, -3.59372065e-09, -0.959334731)
          end    
    })
    
    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Blue Base Bottom",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.1439531, 24.8000412, 131.298996, 0.999866605, 5.7359113e-09, 0.0163331814, -5.96680838e-09, 1, 1.4087945e-08, -0.0163331814, -1.41835228e-08, 0.999866605)
          end    
    })
    
    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Green Base Bottom",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.101770692, 24.8000412, -131.207291, -0.999731362, -2.6844611e-09, 0.0231771767, -1.54334412e-09, 1, 4.9252403e-08, -0.0231771767, 4.9203404e-08, -0.999731362)
          end    
    })

    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Yellow Base Bottom",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(131.039841, 24.8000031, -0.0567275621, 0.0115916021, -9.45887706e-08, 0.999932826, 3.1841914e-08, 1, 9.4226003e-08, -0.999932826, 3.07475467e-08, 0.0115916021)
          end    
    })

    -- LABELS
    TeleportTab:AddLabel("Teleport To Bases Top")

    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Red Base Top",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-131.140808, 197.999985, 0.00911667198, 0.00188814104, 8.91873881e-08, -0.999998212, 1.20506325e-08, 1, 8.9210296e-08, 0.999998212, -1.22190524e-08, 0.00188814104)
          end    
    })

    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Blue Base Top",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.129003137, 198, 131.05455, 0.999993861, 1.06086368e-07, 0.00349878403, -1.06076669e-07, 1, -2.95809377e-09, -0.00349878403, 2.58693622e-09, 0.999993861)
          end    
    })

    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Green Base Top",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.0126046082, 198, -130.915649, -0.999850214, -9.99891654e-08, 0.0173071902, -9.93777789e-08, 1, 3.61856927e-08, -0.0173071902, 3.44603244e-08, -0.999850214)
          end    
    })

    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Yellow Base Top",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(130.974442, 197.999985, -0.0792194381, -0.00202631298, -4.52805331e-08, 0.999997973, 5.37355405e-09, 1, 4.52915145e-08, -0.999997973, 5.46531798e-09, -0.00202631298)
          end    
    })

    -- LABELS
    TeleportTab:AddLabel("Other Teleports")
    
    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Teleport To Spectate",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.182455927, 518.999817, -0.701554537, -0.00837930664, 5.06705744e-09, -0.999964893, 2.85036439e-09, 1, 5.04335063e-09, 0.999964893, -2.8080045e-09, -0.00837930664)
          end    
    })

    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Teleport To The Edge",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3070.44702, 518.999817, 3070.94751, 0.717104375, 8.4546727e-08, -0.696965814, -3.32338708e-08, 1, 8.71127028e-08, 0.696965814, -3.93060269e-08, 0.717104375)
          end    
    })

    -- LABELS
    TeleportTab:AddLabel("Teleport To Player")
    
    -- ADAPTIVE INPUTS
    TeleportTab:AddTextbox({
	Name = "Teleport to player",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
		local p2 = (Value)
		local pos = p1.CFrame
		
		p1.CFrame = game.Players[p2].Character.HumanoidRootPart.CFrame
	end	  
    })
    
    -- TABS
    local WipTab = Window:MakeTab({
        Name = "W.I.P",
        Icon = "rbxassetid://11464378096",
        PremiumOnly = false
    })
    
    -- PARAGRAPHS
    WipTab:AddParagraph("Upcoming Features","Thinking about adding some QOL features.")

    -- TABS
    local UpdateTab = Window:MakeTab({
        Name = "Updates",
        Icon = "rbxassetid://11464394258",
        PremiumOnly = false
    })

    -- LABELS
    UpdateTab:AddLabel("11/19/2022")
    
    -- PARAGRAPHS
    UpdateTab:AddParagraph("Updates","Deleted spawnpoint esp. (Insanely buggy)")

    -- LABELS
    UpdateTab:AddLabel("11/08/2022")
    
    -- PARAGRAPHS
    UpdateTab:AddParagraph("Updates","Added spawnpoint esp.")

    -- LABELS
    UpdateTab:AddLabel("11/05/2022")
    
    -- PARAGRAPHS
    UpdateTab:AddParagraph("Updates","Added kill all, bring player and display name remover to the main tab. Added more teleports to the teleports tab.")

    -- LABELS
    UpdateTab:AddLabel("11/03/2022")
    
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