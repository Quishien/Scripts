local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Quish Hub | 3008 [2.71]", HidePremium = true, IntroEnabled = true, IntroText = "Quish Hub", SaveConfig = true, ConfigFolder = "QuishConfig"})
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
        Min = 12,
        Max = 500,
        Default = 12,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "Walkspeed",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
        end    
    })
    
    LocalTab:AddSlider({
        Name = "Jumppower",
        Min = 40,
        Max = 500,
        Default = 40,
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
        Name = "Player Esp",
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
        Name = "God Mode",
        Callback = function()
            game.Players.LocalPlayer.Character.Stat:Destroy()
            game.Players.LocalPlayer.Character.Health:Destroy()
            game.Players.LocalPlayer.Character.FallDamage:Destroy()
          end    
    })

    -- BUTTONS
    MainTab:AddButton({
        Name = "Day Time",
        Callback = function()
            game:GetService("Lighting").Brightness = 1
            game:GetService("Lighting").ClockTime = 12
            game:GetService("Lighting").FogEnd = 300
            game:GetService("Lighting").GlobalShadows = true
            game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(0.47, 0.47, 0.47)
            OrionLib:MakeNotification({
                Name = "Notification",
                Content = "Click on daytime when it turns night.",
                Image = "rbxassetid://4483345998",
                Time = 10
            })

          end    
    })

    -- BUTTONS
    MainTab:AddButton({
        Name = "Employee ESP",
        Callback = function()
            for __,v in pairs(game:GetService("Workspace").GameObjects.Physical.Employees:GetChildren()) do
                if v:IsA("Model") then
                  local a = Instance.new("BillboardGui",v)
                  a.Name = "Lol"
                  a.Size = UDim2.new(7,0,7,0)
                  a.AlwaysOnTop = true
                  a.MaxDistance = 250
                  local b = Instance.new("Frame",a)
                  b.Size = UDim2.new(1,0, 1,0)
                  b.BackgroundTransparency = 1
                  b.BorderSizePixel = 0
                  b.BackgroundColor3 = Color3.new(0, 0, 0)
                  local c = Instance.new('TextLabel',b)
                  c.TextColor3 = Color3.new(1, 0, 0)
                  c.Size = UDim2.new(2,0,2,0)
                  c.BorderSizePixel = 0
                  c.TextSize = 15
                  c.Text = v.Name
                  c.BackgroundTransparency = 1
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
    WipTab:AddParagraph("Upcoming Features","Adding more features soon. (Wanted to get this one quick.)")

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