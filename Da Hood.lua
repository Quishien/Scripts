local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Quish Hub | Da Hood 🎃", HidePremium = true, IntroEnabled = true, IntroText = "Quish Hub", SaveConfig = true, ConfigFolder = "QuishConfig"})

local Aiming = loadstring(game:HttpGet("https://pastebin.com/raw/xMYubpbC"))()
Aiming.ShowFOV = false
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(true)
ESP.Boxes = false
ESP.Names = false
ESP.Tracers = false
ESP.FaceCamera = true

Aiming.TeamCheck(false)
Aiming.VisibleCheck = true
-- // Dependencies
 
-- // Services
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
 
-- // Vars
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = Workspace.CurrentCamera

local DaHoodSettings = {
    SilentAim = false,
    AimLock = false,
    Prediction = 0.178
}

getgenv().DaHoodSettings = DaHoodSettings


targetplr = ""

_G.AutoKill = false

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
        Name = "CFrame Speed [V]",
        Min = 16,
        Max = 500,
        Default = 16,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "Walkspeed",
        Callback = function(t)
            local plr = game.Players.LocalPlayer
	down = false

	function onButton1Down(mouse)
		down = true
		while down do
			if not down then break end
			local char = plr.Character

			char.HumanoidRootPart.Velocity = char.HumanoidRootPart.CFrame.lookVector * t
			wait()
		end
	end

	function onButton1Up(mouse)
		down = false
	end

	function onSelected(mouse)
		mouse.KeyDown:connect(function(k) if k:lower()=="v"then onButton1Down(mouse)end end)
		mouse.KeyUp:connect(function(k) if k:lower()=="v"then onButton1Up(mouse)end end)
	end
	onSelected(game.Players.LocalPlayer:GetMouse())
        end    
    })
    
    -- LABELS
    LocalTab:AddLabel("Other Stuff")

    -- BUTTONS
    LocalTab:AddButton({
        Name = "Fly [Q]",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/tq8DujdT"))()
          end    
    })

    -- BUTTONS
    LocalTab:AddButton({
        Name = "God Mode (V1)",
        Callback = function()
            local Client = game:GetService"Players".LocalPlayer

            function Godmode()
               local Attacking = Client.Character:FindFirstChild"BodyEffects".Attacking
               
                if Attacking then
                    Attacking:Destroy()
            end   
    end
    Godmode()
    end
    })

    -- BUTTONS
    LocalTab:AddButton({
        Name = "God Mode (V2)",
        Callback = function()
            local localPlayer = game:GetService('Players').LocalPlayer;
            local localCharacter = localPlayer.Character;
            localCharacter:FindFirstChildOfClass('Humanoid').Health = 0;
            local newCharacter = localPlayer.CharacterAdded:Wait();
            local spoofFolder = Instance.new('Folder');
            spoofFolder.Name = 'FULLY_LOADED_CHAR';
            spoofFolder.Parent = newCharacter;
            newCharacter:WaitForChild('BodyEffects').Dead:Destroy();
            local spoofValue = Instance.new('BoolValue', newCharacter.BodyEffects);
            spoofValue.Name = 'Dead';
            wait()
            --godblock/godbullet
            local ps = game:GetService("Players")
            local lp = ps.LocalPlayer
            local char = lp.Character

            char.BodyEffects.Armor:Destroy()
            char.BodyEffects.Defense:Destroy()

            local Clone1 = Instance.new("IntValue")
            Clone1.Name = "Armor"
            Clone1.Parent = char.BodyEffects

            local Clone2 = Instance.new("NumberValue")
            Clone2.Name = "Defense"
            Clone2.Parent = char.BodyEffects
            wait()
            --walspeed
            local d = {}
            local e = {}
            local g = {}
            local h = {}
            local j = {}
            local k = {}
            local function l()
                local m = 3
                local n = checkcaller
                local o = getrawmetatable(game)
                setreadonly(o, false)
                local p = o.__index
                local q = o.__newindex
                local r = o.__namecall
                o.__index =
                    newcclosure(
                        function(s, t)
                        if n() then
                            return p(s, t)
                        end
                        if d[s] and d[s][t] then
                            local u = d[s][t]
                            if u["IsCallback"] == true then
                                return u["Value"](s)
                            else
                                return u["Value"]
                            end
                        end
                        if g[t] then
                            local v = g[t]
                            if v["IsCallback"] == true then
                                return v["Value"](s)
                            else
                                return v["Value"]
                            end
                        end
                        if j[s] and j[s][t] then
                            return k[s][t]
                        end
                        return p(s, t)
                    end
                    )
                o.__newindex =
                    newcclosure(
                        function(w, x, y)
                        if n() then
                            return q(w, x, y)
                        end
                        if e[w] and e[w][x] then
                            local z = e[w][x]
                            if z["Callback"] == nil then
                                return
                            else
                                z["Callback"](w, y)
                                return
                            end
                        end
                        if h[x] then
                            local A = h[x]
                            if A["Callback"] == nil then
                                return
                            else
                                A["Callback"](w, y)
                                return
                            end
                        end
                        if j[w] and j[w][x] then
                            local B = j[w][x]
                            if type(y) ~= B["Type"] then
                                error("bad argument #3 to '" .. x .. "' (" .. B["Type"] .. " expected, got " .. type(x) .. ")")
                            end
                            k[w][x] = y
                            return
                        end
                        return q(w, x, y)
                    end
                    )
                local D = game.Players.LocalPlayer.Character.Humanoid
                local function A(_)
                    local a0 = p(D, _)
                    local a1 = type(a0)
                    if not j[D] then
                        j[D] = {}
                    end
                    if not k[D] then
                        k[D] = {}
                    end
                    j[D][_] = {Type = a1}
                    k[D][_] = p(D, _)
                    local a2 = function()
                        j[D][_] = nil
                        k[D][_] = nil
                    end
                    return {remove = a2, Remove = a2}
                end
                A("WalkSpeed")
                A("JumpPower")
            end
            l()
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 22
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            wait()
            while wait() do
                game.ReplicatedStorage.MainEvent:FireServer("Block", true)
                wait()
                for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                    if (v.Animation.AnimationId:match("rbxassetid://2788354405")) then
                        v:Stop();
                    end;
                end;
            end
            wait()
            while wait() do
                pcall(function()
                    for i, v in pairs(game.Players:GetPlayers()) do
                        if (workspace.Players[game.Players.LocalPlayer.Name].HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude < 1 then
                            game.ReplicatedStorage.MainEvent:FireServer("Block", true)
                    end
                end
            end)
         end
    end    
    })

    -- BUTTONS
    LocalTab:AddButton({
        Name = "God Mode (V3)",
        Callback = function()
            local localPlayer = game:GetService('Players').LocalPlayer;
            local localCharacter = localPlayer.Character;
            localCharacter:FindFirstChildOfClass('Humanoid').Health = 0;
            local newCharacter = localPlayer.CharacterAdded:Wait();
            local spoofFolder = Instance.new('Folder');
            spoofFolder.Name = 'FULLY_LOADED_CHAR';
            spoofFolder.Parent = newCharacter;
            newCharacter:WaitForChild('RagdollConstraints'):Destroy();
            local spoofValue = Instance.new('BoolValue', newCharacter);
            spoofValue.Name = 'RagdollConstraints';
            local name = game.Players.LocalPlayer.Name
            local lol =    game.Workspace:WaitForChild(name)
            local money = Instance.new("Folder",game.Players.LocalPlayer.Character);money.Name = "FULLY_LOADED_CHAR"
            lol.Parent = game.Workspace.Players
            game.Players.LocalPlayer.Character:WaitForChild("BodyEffects")
            game.Players.LocalPlayer.Character.BodyEffects.BreakingParts:Destroy()
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
        Name = "Aimbot",
        Default = false,
        Callback = function(t)
            DaHoodSettings.AimLock = t
        end    
    })

    -- TOGGLES
    MainTab:AddToggle({
        Name = "Silent Aim",
        Default = false,
        Callback = function(t)
            DaHoodSettings.SilentAim = t
        end    
    })

    -- TOGGLES
    MainTab:AddToggle({
        Name = "Visible Check",
        Default = false,
        Callback = function(t)
            Aiming.VisibleCheck = t
        end    
    })
    
    -- LABELS
    MainTab:AddLabel("Other Stuff")

    -- COLOR PICKER
    MainTab:AddColorpicker({
        Name = "FOV Color",
        Default = Color3.fromRGB(255, 255, 255),
        Callback = function(t)
            Aiming.FOVColour = t
        end	  
    })

    -- TOGGLES
    MainTab:AddToggle({
        Name = "Fov Circle",
        Default = false,
        Callback = function(t)
            Aiming.ShowFOV = t
        end    
    })

    -- SLIDERS
    MainTab:AddSlider({
        Name = "FOV Circle Value",
        Min = 25,
        Max = 250,
        Default = 25,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "Value",
        Callback = function(t)
            Aiming.FOV = t
        end    
    })

    -- SLIDERS
    MainTab:AddSlider({
        Name = "FOV Value (How Many Corners It Has)",
        Min = 1,
        Max = 250,
        Default = 0,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "Value",
        Callback = function(t)
            Aiming.FOVSides = t
        end    
    })

    -- TABS
    local VisualsTab = Window:MakeTab({
        Name = "Visuals",
        Icon = "rbxassetid://11465873040",
        PremiumOnly = false
    })

    -- LABELS
    VisualsTab:AddLabel("Visuals")

    -- TOGGLES
    VisualsTab:AddToggle({
        Name = "Box",
        Default = false,
        Callback = function(t)
            ESP.Boxes = t
        end    
    })

    -- TOGGLES
    VisualsTab:AddToggle({
        Name = "Tracers",
        Default = false,
        Callback = function(t)
            ESP.Tracers = t
        end    
    })

    -- TOGGLES
    VisualsTab:AddToggle({
        Name = "Names",
        Default = false,
        Callback = function(t)
            ESP.Names = t
        end    
    })

    -- COLOR PICKER
    VisualsTab:AddColorpicker({
        Name = "Esp Color",
        Default = Color3.fromRGB(255, 255, 255),
        Callback = function(t)
            ESP.Color = t
        end	  
    })

    -- LABELS
    VisualsTab:AddLabel("Other Visuals")

    -- SLIDERS
    VisualsTab:AddSlider({
        Name = "Thickness",
        Min = 0,
        Max = 15,
        Default = 0,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "Thickness",
        Callback = function(t)
            ESP.Thickness = t
        end    
    })

    -- TABS
    local PlayerTab = Window:MakeTab({
        Name = "Player",
        Icon = "rbxassetid://11484828244",
        PremiumOnly = false
    })

    -- LABELS
    PlayerTab:AddLabel("Main Player Stuff")

    -- BUTTONS
    PlayerTab:AddButton({
        Name = "Headless [FE]",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/94d4cyWv"))()
          end    
    })
    
    -- BUTTONS
    PlayerTab:AddButton({
        Name = "Headless [Visual]",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/MTu0r4tm"))()
          end    
    })

    -- BUTTONS
    PlayerTab:AddButton({
        Name = "Korblox [Visual]",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/06mYS048"))()
          end    
    })

    -- BUTTONS
    PlayerTab:AddButton({
        Name = "Ball [FE]",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/E4PZ2dAH"))()
          end    
    })

    -- BUTTONS
    PlayerTab:AddButton({
        Name = "Fist Reach",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/aZHK690D"))()
          end    
    })

    -- BUTTONS
    PlayerTab:AddButton({
        Name = "Animation Pack",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/uXv3wtvc"))()
          end    
    })

    -- BUTTONS
    PlayerTab:AddButton({
        Name = "Chat Spy",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/yuaPqDW8"))()
          end    
    })

    -- LABELS
    PlayerTab:AddLabel("Other Player Stuff")

    -- BUTTONS
    PlayerTab:AddButton({
        Name = "Mind Control (Carry then uncarry then hold with mouse)",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/AQXmLAm3"))()
          end    
    })

    -- ADAPTIVE INPUTS
    PlayerTab:AddTextbox({
        Name = "Enter user here for Korblox [FE]",
        Default = "",
        TextDisappear = true,
        Callback = function(t)
            game.Players[t].Character['RightUpperLeg']:remove()
        end	  
    })

    -- ADAPTIVE INPUTS
    PlayerTab:AddTextbox({
        Name = "Enter FOV Here",
        Default = "",
        TextDisappear = true,
        Callback = function(t)
            game:GetService'Workspace'.Camera.FieldOfView = t
        end	  
    })

    -- TABS
    local TeleportTab = Window:MakeTab({
        Name = "Teleports",
        Icon = "rbxassetid://11464378091",
        PremiumOnly = false
    })

    -- LABELS
    TeleportTab:AddLabel("Teleport to Location")

    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Teleport to Bank",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/sA2VHRHB"))()
          end    
    })

    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Teleport to Police",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/9enax2vC"))()
          end    
    })

    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Teleport to Shoe Shop",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/3uJcXTCQ"))()
          end    
    })

    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Teleport to Admin Base",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/2jiaCDey"))()
          end    
    })

    -- BUTTONS
    TeleportTab:AddButton({
        Name = "Teleport to Nearest Cash",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/4V2ZAjVL"))()
          end    
    })

    -- LABELS
    TeleportTab:AddLabel("Teleport to Someone")

    -- ADAPTIVE INPUTS
    TeleportTab:AddTextbox({
        Name = "Teleport to Player",
        Default = "",
        TextDisappear = true,
        Callback = function(t)
            local Players = game.Players
	            local Player = Players.LocalPlayer
	            function telePlr()
		                Player.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.Players[t].Head.Position)
	        end
	        telePlr()
    end	  
    })

    -- TABS
    local AntiAimTab = Window:MakeTab({
        Name = "Anti Aim",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- LABELS
    AntiAimTab:AddLabel("Main Stuff")
    
    -- TOGGLES
    AntiAimTab:AddToggle({
        Name = "Anti-Aim",
        Default = false,
        Callback = function(t)
            enabled = t
	
	        if enabled == t then
		            while enabled == true do
                        wait()
                        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 6
                        wait()
                        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2
		            end
	        end
    end    
    })

    -- TOGGLES
    AntiAimTab:AddToggle({
        Name = "Anti-Stomp (Buggy but works)",
        Default = false,
        Callback = function(t)
            enabled = t

	        if enabled == t then
		            while enabled == true do
			                task.wait()
			                if game.Players.LocalPlayer.Character.Humanoid.Health < 55 then
				                    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-729.895, -37.642, -885.8)
			                end
		            end
	        end
    end    
    })

    -- TABS
    local TargetTab = Window:MakeTab({
        Name = "Targets",
        Icon = "rbxassetid://11484997640",
        PremiumOnly = false
    })

    -- LABELS
    TargetTab:AddLabel("Main Stuff")

    -- TOGGLES
    TargetTab:AddToggle({
        Name = "Annoy",
        Default = false,
        Callback = function(t)
            enabled = t

	        if enabled == t then
		            while enabled == true do
			                task.wait()
			                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.Players[targetplr].HumanoidRootPart.Position)
		            end
	        end
    end    
    })

    -- ADAPTIVE INPUTS
    TargetTab:AddTextbox({
        Name = "Player to target",
        Default = "",
        TextDisappear = true,
        Callback = function(t)
            targetplr = t
    end	  
    })

    -- TABS
    local WipTab = Window:MakeTab({
        Name = "W.I.P",
        Icon = "rbxassetid://11464378096",
        PremiumOnly = false
    })
    
    -- PARAGRAPHS
    WipTab:AddParagraph("Upcoming Features","Thinking about adding flinging and more stuff for annoying other players.")

    -- TABS
    local UpdateTab = Window:MakeTab({
        Name = "Updates",
        Icon = "rbxassetid://11464394258",
        PremiumOnly = false
    })

    -- LABELS
    UpdateTab:AddLabel("11/06/2022")
    
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
    
-- // Overwrite to account downed
function Aiming.Check()
    -- // Check A
    if not (Aiming.Enabled == true and Aiming.Selected ~= LocalPlayer and Aiming.SelectedPart ~= nil) then
        return false
    end
 
    -- // Check if downed
    local Character = Aiming.Character(Aiming.Selected)
    local KOd = Character:WaitForChild("BodyEffects")["K.O"].Value
    local Grabbed = Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
 
    -- // Check B
    if (KOd or Grabbed) then
        return false
    end
 
    -- //
    return true
end
 
-- // Hook
local __index
__index = hookmetamethod(game, "__index", function(t, k)
    -- // Check if it trying to get our mouse's hit or target and see if we can use it
    if (t:IsA("Mouse") and (k == "Hit" or k == "Target") and Aiming.Check()) then
        -- // Vars
        local SelectedPart = Aiming.SelectedPart
 
        -- // Hit/Target
        if (DaHoodSettings.SilentAim and (k == "Hit" or k == "Target")) then
            -- // Hit to account prediction
            local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)
 
            -- // Return modded val
            return (k == "Hit" and Hit or SelectedPart)
        end
    end
 
    -- // Return
    return __index(t, k)
end)
 
local LMFAO = false
 
UserInputService.InputBegan:Connect(function(Key, Is)
    if Key.UserInputType == Enum.UserInputType.MouseButton2 and not Is then
        LMFAO = true
    end
end)
 
UserInputService.InputEnded:Connect(function(Key, Is)
    if Key.UserInputType == Enum.UserInputType.MouseButton2 and not Is then
        LMFAO = false
    end
end)
 
 
-- // Aimlock
RunService:BindToRenderStep("AimLock", 0, function()
    if (DaHoodSettings.AimLock and Aiming.Check() and LMFAO) then
        -- // Vars
        local SelectedPart = Aiming.SelectedPart
 
        -- // Hit to account prediction
        local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)
 
        -- // Set the camera to face towards the Hit
        CurrentCamera.CFrame = CFrame.lookAt(CurrentCamera.CFrame.Position, Hit.Position)
    end
end)
OrionLib:Init()