local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Quish Hub | Build A Boat For Treasure", HidePremium = true, IntroEnabled = true, IntroText = "Quish Hub", SaveConfig = true, ConfigFolder = "QuishConfig"})
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
        Name = "Win the game once",
        Callback = function()
            local DarknessPart1 = game.workspace.BoatStages.NormalStages.CaveStage1.DarknessPart
            local DarknessPart2 = game.workspace.BoatStages.NormalStages.CaveStage2.DarknessPart
            local DarknessPart3 = game.workspace.BoatStages.NormalStages.CaveStage3.DarknessPart
            local DarknessPart4 = game.workspace.BoatStages.NormalStages.CaveStage4.DarknessPart
            local DarknessPart5 = game.workspace.BoatStages.NormalStages.CaveStage5.DarknessPart
            local DarknessPart6 = game.workspace.BoatStages.NormalStages.CaveStage6.DarknessPart
            local DarknessPart7 = game.workspace.BoatStages.NormalStages.CaveStage7.DarknessPart
            local DarknessPart8 = game.workspace.BoatStages.NormalStages.CaveStage8.DarknessPart
            local DarknessPart9 = game.workspace.BoatStages.NormalStages.CaveStage9.DarknessPart
            local DarknessPart10 = game.workspace.BoatStages.NormalStages.CaveStage10.DarknessPart
            local FinalPart = game.workspace.BoatStages.NormalStages.TheEnd.GoldenChest.Trigger
            
            -- Function, do not change!
            
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart1.Position)
            wait(3)
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart1.Position)
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart2.Position)
            wait(0.7)
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart2.Position)
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart3.Position)
            wait(0.7)
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart3.Position)
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart4.Position)
            wait(0.7)
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart4.Position)
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart5.Position)
            wait(0.7)
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart6.Position)
            wait(0.7)
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart6.Position)
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart7.Position)
            wait(0.7)
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart7.Position)
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart8.Position)
            wait(0.7)
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart8.Position)
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart9.Position)
            wait(0.7)
            game.Players.LocalPlayer.Character:MoveTo(DarknessPart9.Position)
            game.Players.LocalPlayer.Character:MoveTo(FinalPart.Position)
            wait(0.4)
            game.Players.LocalPlayer.Character:MoveTo(FinalPart.Position)
            wait(0.1)
            game.Players.LocalPlayer.Character:MoveTo(FinalPart.Position)
            game.Players.LocalPlayer.Character:MoveTo(FinalPart.Position)
            
            wait(20)
            workspace.ClaimRiverResultsGold:FireServer()
            game.Players.LocalPlayer.PlayerGui.LaunchBoatGui.PromptLaunch.Visible = true
            wait(1)
            -- The function that takes place when the button is pressed
          end    
    })

    -- BUTTONS
    MainTab:AddButton({
        Name = "Auto Play",
        Callback = function()
            repeat
                local DarknessPart1 = game.workspace.BoatStages.NormalStages.CaveStage1.DarknessPart
                local DarknessPart2 = game.workspace.BoatStages.NormalStages.CaveStage2.DarknessPart
                local DarknessPart3 = game.workspace.BoatStages.NormalStages.CaveStage3.DarknessPart
                local DarknessPart4 = game.workspace.BoatStages.NormalStages.CaveStage4.DarknessPart
                local DarknessPart5 = game.workspace.BoatStages.NormalStages.CaveStage5.DarknessPart
                local DarknessPart6 = game.workspace.BoatStages.NormalStages.CaveStage6.DarknessPart
                local DarknessPart7 = game.workspace.BoatStages.NormalStages.CaveStage7.DarknessPart
                local DarknessPart8 = game.workspace.BoatStages.NormalStages.CaveStage8.DarknessPart
                local DarknessPart9 = game.workspace.BoatStages.NormalStages.CaveStage9.DarknessPart
                local FinalPart = game.workspace.BoatStages.NormalStages.TheEnd.GoldenChest.Trigger
                
                -- Function, do not change!
                
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart1.Position)
                wait(3)
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart1.Position)
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart2.Position)
                wait(0.7)
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart2.Position)
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart3.Position)
                wait(0.7)
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart3.Position)
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart4.Position)
                wait(0.7)
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart4.Position)
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart5.Position)
                wait(0.7)
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart6.Position)
                wait(0.7)
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart6.Position)
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart7.Position)
                wait(0.7)
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart7.Position)
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart8.Position)
                wait(0.7)
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart8.Position)
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart9.Position)
                wait(0.7)
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart9.Position)
                game.Players.LocalPlayer.Character:MoveTo(FinalPart.Position)
                wait(0.4)
                game.Players.LocalPlayer.Character:MoveTo(FinalPart.Position)
                wait(0.1)
                game.Players.LocalPlayer.Character:MoveTo(FinalPart.Position)
                game.Players.LocalPlayer.Character:MoveTo(FinalPart.Position)
                
                wait(20)
                workspace.ClaimRiverResultsGold:FireServer()
                game.Players.LocalPlayer.PlayerGui.LaunchBoatGui.PromptLaunch.Visible = true
                wait(1)
                OrionLib:MakeNotification({
                    Name = "Rebound",
                    Content = "Finished game. Re-wining.",
                    Image = "rbxassetid://4483362458",
                    Time = 2
                })
                until false
                -- The function that takes place when the button is pressed
          end    
    })

    -- BUTTONS
    MainTab:AddButton({
        Name = "Auto-Farm gold blocks only",
        Callback = function()
            repeat
                game.Players.LocalPlayer.Character:MoveTo(DarknessPart1.Position)
        wait(5)
        game.Players.LocalPlayer.Character:MoveTo(FinalPart.Position)
        wait(15)
        until false-- The function that takes place when the button is pressed
          end    
    })

    -- PARAGRAPHS
    MainTab:AddParagraph("Quest Autofarm","Working on it. Will take a while.")

    -- TABS
    local UtilityTab = Window:MakeTab({
        Name = "Utility",
        Icon = "rbxassetid://11511709555",
        PremiumOnly = false
    })
    
    -- LABELS
    UtilityTab:AddLabel("Main Stuff")
    
    -- BUTTONS
    UtilityTab:AddButton({
        Name = "Launch boat bypass",
        Callback = function()
            game.Players.LocalPlayer.PlayerGui.LaunchBoatGui.PromptLaunch.Visible = true
          end    
    })

    -- BUTTONS
    UtilityTab:AddButton({
        Name = "Walk on water",
        Callback = function()
            while true do
                LocalPlayerName = game:GetService("Players").LocalPlayer.Name
                LocalPlayerWorkspace = game:GetService("Workspace")[LocalPlayerName]
                LocalPlayerWorkspace.WaterDetector:Destroy()
                print("Water Godmode Enabled")
                wait(1)
            end
        end    
    })
    
    -- LABELS
    UtilityTab:AddLabel("Other Stuff")

    -- BUTTONS
    UtilityTab:AddButton({
        Name = "Fox Character",
        Callback = function()
            CC = game:GetService("Workspace").ChangeCharacter
            CC:FireServer("FoxCharacter")
            print("Successfully Changed To Fox Character")
          end    
    })

    -- BUTTONS
    UtilityTab:AddButton({
        Name = "Chicken Character",
        Callback = function()
            CC = game:GetService("Workspace").ChangeCharacter
            CC:FireServer("ChickenCharacter")
            print("Successfully Changed To Chicken Character")
          end    
    })

    -- BUTTONS
    UtilityTab:AddButton({
        Name = "Penguin Character",
        Callback = function()
            CC = game:GetService("Workspace").ChangeCharacter
            CC:FireServer("PenguinCharacter")
            print("Successfully Changed To Penguin Character")
          end    
    })

     -- PARAGRAPHS
     UtilityTab:AddParagraph("Characters","Going to fix soon.")
    
    -- TABS
    local WipTab = Window:MakeTab({
        Name = "W.I.P",
        Icon = "rbxassetid://11464378096",
        PremiumOnly = false
    })
    
    -- PARAGRAPHS
    WipTab:AddParagraph("Upcoming Features","Bug fixing random things.")

    -- TABS
    local UpdateTab = Window:MakeTab({
        Name = "Updates",
        Icon = "rbxassetid://11464394258",
        PremiumOnly = false
    })

     -- LABELS
     UpdateTab:AddLabel("11/10/2022")
    
     -- PARAGRAPHS
     UpdateTab:AddParagraph("Updates","Added characters (Buggy) fixed water walker not working on other stages.")

    -- LABELS
    UpdateTab:AddLabel("11/09/2022")
    
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