local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Quish Hub | Prison Life", HidePremium = true, IntroEnabled = true, IntroText = "Quish Hub", SaveConfig = true, ConfigFolder = "QuishConfig"})
local ownerId = game.CreatorId
game.Players.PlayerAdded:Connect(function(player)
    if player.UserId == ownerId then
        game.Players.LocalPlayer:Kick("Owner Joined")
    end
end)

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

    MainTab:AddDropdown({
        Name = "Gun",
        Default = "Choose Weapon",
        Options = {"M9", "AK-47", "M4A1", "Remington 870"},
        Callback = function(Value)
            game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver[Value].ITEMPICKUP)
        end    
    })
    
    MainTab:AddDropdown({
        Name = "Melee",
        Default = "Choose Weapon",
        Options = {"Hammer", "Crude Knife"},
        Callback = function(Value)
            local args = {
                [1] = workspace.Prison_ITEMS.single[Value].ITEMPICKUP}
            workspace.Remote.ItemHandler:InvokeServer(unpack(args))
        end    
    })
    
    -- LABELS
    MainTab:AddLabel("Weapon Stuff")
    
    MainTab:AddButton({
        Name = "Mod M9",
        Callback = function()
            s = game:GetService("Players").LocalPlayer.Backpack.M9.GunStates
            rs = require(s)
            rs.CurrentAmmo = math.huge
            rs.MaxAmmo = math.huge
            rs.ReloadTime = 0
          end    
    })
    
    MainTab:AddButton({
        Name = "Mod Ak-47",
        Callback = function()
            s = game:GetService("Players").LocalPlayer.Backpack["AK-47"].GunStates
            rs = require(s)
            rs.CurrentAmmo = math.huge
            rs.MaxAmmo = math.huge
            rs.ReloadTime = 0
          end    
    })
    
    MainTab:AddButton({
        Name = "Mod Remington 870",
        Callback = function()
            s = game:GetService("Players").RoBobo2008.Backpack["Remington 870"].GunStates
            rs = require(s)
            rs.CurrentAmmo = math.huge
            rs.MaxAmmo = math.huge
            rs.ReloadTime = 0
          end    
    })
    
    MainTab:AddButton({
        Name = "Mod Ak-47",
        Callback = function()
            s = game:GetService("Players").LocalPlayer.Backpack.M4A1.GunStates
            rs = require(s)
            rs.CurrentAmmo = math.huge
            rs.MaxAmmo = math.huge
            rs.ReloadTime = 0
          end    
    })
    
    -- LABELS
    MainTab:AddLabel("Other Stuff")
    
    MainTab:AddButton({
        Name = "Full Bright",
        Callback = function()
            Light.Ambient = Color3.new(1, 1, 1)
            Light.ColorShift_Bottom = Color3.new(1, 1, 1)
            Light.ColorShift_Top = Color3.new(1, 1, 1)
            game.Lighting.FogEnd = 100000
            game.Lighting.FogStart = 0
            game.Lighting.ClockTime = 14
            game.Lighting.Brightness = 10
            game.Lighting.GlobalShadows = false
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
    UpdateTab:AddLabel("11/16/2022")
    
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