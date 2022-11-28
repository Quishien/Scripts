local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Quish Hub | Work at a Pizza Place", HidePremium = true, IntroEnabled = true, IntroText = "Quish Hub", SaveConfig = true, ConfigFolder = "QuishConfig"})
    
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
        Name = "Load Autofarm Script",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/yMKng0hE",true))()
          end    
    })
    
    -- BUTTONS
    MainTab:AddButton({
        Name = "Drop Trucks Contents",
        Callback = function()
            game.Workspace.Trucks.Truck2.LeverBounds.ClickDetector.Detector:FireServer()
            game.Workspace.Trucks.Truck1.LeverBounds.ClickDetector.Detector:FireServer()
          end    
    })

    -- LABELS
    MainTab:AddLabel("Other Stuff")

    -- DROPDOWNS
    MainTab:AddDropdown({
        Name = "Locations",
        Default = "",
        Options = {"Spawn", "Cashier", "Cook", "Pizza Boxer", "Delivery", "Supplier", "Manager"},
        Callback = function(bool)
            if bool == "Spawn" then do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47, 4, 185)
                   end
                   end
                         if bool == "Cashier" then do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49, 5, 82)
                   end
                   end
                         if bool == "Cook" then do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36, 5, 62)
                   end
                   end
                         if bool == "Pizza Boxer" then do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(55, 5, 18)
                   end
                   end
                         if bool == "Delivery" then do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(59, 5, -21)
                   end
                   end
                         if bool == "Supplier" then do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8, 14, -1033)
                   end
                   end
                         if bool == "Manager" then do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(24, 5, 6)
                   end
                   end
        end    
    })

    -- TABS
    local WipTab = Window:MakeTab({
        Name = "W.I.P",
        Icon = "rbxassetid://11464378096",
        PremiumOnly = false
    })

    -- PARAGRAPHS
    WipTab:AddParagraph("Upcoming Features","Adding more random things.")

    -- TABS
    local UpdateTab = Window:MakeTab({
        Name = "Updates",
        Icon = "rbxassetid://11464394258",
        PremiumOnly = false
    })

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