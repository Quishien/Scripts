game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
wait(1)
local WorkspacePlayers = game:GetService("Workspace").Game.Players
local Players = game:GetService('Players')
local localplayer = Players.LocalPlayer
local GuiService = game:GetService("GuiService")
local Light = game:GetService("Lighting")
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Quish Hub | 🎟️ Evade", HidePremium = true, IntroEnabled = true, IntroText = "Quish Hub", SaveConfig = true, ConfigFolder = "QuishConfig"})

getgenv().autojumpmpt = false
getgenv().Fakemoney = false
getgenv().revivedie = false
getgenv().autowistle = false
getgenv().autochat = false
getgenv().AutoDrink = false
getgenv().Settings = {
    moneyfarm = false,
    afkfarm = false,
    NoCameraShake = false,
    Speed = 1450,
    Jump = 3,
    reviveTime = 3,
    TicketFarm = false,
}

local FindAI = function()
    for _,v in pairs(WorkspacePlayers:GetChildren()) do
        if not Players:FindFirstChild(v.Name) then
            return v
        end
    end
end

local GetDownedPlr = function()
    for i,v in pairs(WorkspacePlayers:GetChildren()) do
        if v:GetAttribute("Downed") then
            return v
        end
    end
end

local revive = function()
    local downedplr = GetDownedPlr()
    if downedplr ~= nil and downedplr:FindFirstChild('HumanoidRootPart') then
        task.spawn(function()
            while task.wait(0) do
                if localplayer.Character then
                    workspace.Game.Settings:SetAttribute("ReviveTime", 2.2)
                    localplayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(downedplr:FindFirstChild('HumanoidRootPart').Position.X, downedplr:FindFirstChild('HumanoidRootPart').Position.Y - 5, downedplr:FindFirstChild('HumanoidRootPart').Position.Z)
                    task.wait(0)
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), false)
                    task.wait(4.5)
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), true)
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), true)
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), true)
                    break
                end
            end
        end)
    end
end

task.spawn(function()
    while task.wait() do
        if Settings.TicketFarm then
            for i,v in pairs(game:GetService("Workspace").Game.Effects.Tickets:GetChildren()) do
                if game.Players.LocalPlayer:GetAttribute('InMenu') ~= true then
                    localplayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:WaitForChild('HumanoidRootPart').Position)
                end
            end
        end
    end
end)

task.spawn(function()
    while task.wait() do
        if Settings.AutoRespawn then
             if localplayer.Character and localplayer.Character:GetAttribute("Downed") then
                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
             end
        end

        if Settings.NoCameraShake then
            localplayer.PlayerScripts.CameraShake.Value = CFrame.new(0,0,0) * CFrame.new(0,0,0)
        end
        if Settings.moneyfarm then
            if localplayer.Character and localplayer.Character:GetAttribute("Downed") then
                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
                task.wait(2)
            else
                revive()
                task.wait(0)
            end
        end
        if Settings.moneyfarm == false and Settings.afkfarm and localplayer.Character:FindFirstChild('HumanoidRootPart') ~= nil then
            localplayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(6007, 7005, 8005)
        end
    end
end)

task.spawn(function()
    while task.wait(6) do
        if AutoDrink == true then
            local ohString1 = "Cola"
            game:GetService("ReplicatedStorage").Events.UseUsable:FireServer(ohString1)
        end
    end
end)

task.spawn(function()
    while task.wait(5) do
       if autowistle == true then
        local ohString1 = "Whistle"
        local ohBoolean2 = true
        game:GetService("Players").LocalPlayer.PlayerScripts.Events.KeybindUsed:Fire(ohString1, ohBoolean2)
        game:GetService("ReplicatedStorage").Events.Whistle:FireServer()
       end 
    end
end)

task.spawn(function()
    while task.wait(1) do
       if Fakemoney == true then
        local ohString1 = "Free money <font color=\"rgb(100,255,100)\">($99999)</font>"
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.Messages.Use:Fire(ohString1)
       end 
    end
end)

task.spawn(function()
    while task.wait(1) do
        if autochat == true then
            local ohString1 = "Quish Hub on top!"
            local ohString2 = "All"
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
        end
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
        Name = "Speed",
        Min = 0,
        Max = 250,
        Default = 0,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "Walkspeed",
        Callback = function(Value)
            TargetWalkspeed = Value
        end    
    })

    LocalTab:AddSlider({
        Name = "JumpPower",
        Min = 3,
        Max = 120,
        Default = 3,
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 1,
        ValueName = "Jumppower",
        Callback = function(Value)
            Settings.Jump = Value
        end
    })

    -- TABS
    local MainTab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://11465887529",
        PremiumOnly = false
    })

    MainTab:AddLabel("Auto Farms")

    MainTab:AddToggle({
        Name = "Money Farm",
        Default = false,
        Callback = function(Value)
            Settings.moneyfarm = Value
        end    
    })
     
    MainTab:AddToggle({
        Name = "Afk Farm",
        Default = false,
        Callback = function(Value)
            Settings.afkfarm = Value
        end    
    })

    MainTab:AddLabel("Sliders")

    -- SLIDERS
    MainTab:AddSlider({
        Name = "Fov Slider",
        Min = 1,
        Max = 120,
        Default = 70,
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 1,
        ValueName = "Fov",
        Callback = function(Fov)
            local ohString1 = "FieldOfView"
            local ohNumber2 = Fov
            game:GetService("ReplicatedStorage").Events.UpdateSetting:FireServer(ohString1, ohNumber2)
        end
    })
    -- Labels
    MainTab:AddLabel("Other Stuff")
    
    MainTab:AddToggle({
        Name = "No Camera Shake",
        Default = false,
        Callback = function(Value)
            Settings.NoCameraShake = Value
        end    
    })
     
    MainTab:AddToggle({
        Name = "Auto Drink Cola (Drinks everytime it runs out)",
        Default = false,
        Callback = function(Value)
            AutoDrink = Value
        end    
    })

    MainTab:AddToggle({
        Name = "Auto Respawn",
        Default = false,
        Callback = function(Value)
            Settings.AutoRespawn = Value
        end    
    })

    local MiscTab = Window:MakeTab({
        Name = "Misc.",
        Icon = "rbxassetid://11477286363",
        PremiumOnly = false
    })
     
    MiscTab:AddLabel("Sliders")


    MiscTab:AddSlider({
        Name = "Day & night Slider",
        Min = 0,
        Max = 24,
        Default = 14,
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 0.1,
        ValueName = "Time",
        Callback = function(Time)
            game.Lighting.ClockTime = Time
        end
    })

    MiscTab:AddLabel("Buttons")

    MiscTab:AddButton({
        Name = "Chat Spy",
        Callback = function()
            enabled = true
    spyOnMyself = false
    public = false
    publicItalics = true
    privateProperties = {
        Color = Color3.fromRGB(0,255,255); 
        Font = Enum.Font.SourceSansBold;
        TextSize = 18;
    }
    local StarterGui = game:GetService("StarterGui")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
    local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
    local instance = (_G.chatSpyInstance or 0) + 1
    _G.chatSpyInstance = instance
     
    local function onChatted(p,msg)
        if _G.chatSpyInstance == instance then
            if p==player and msg:lower():sub(1,4)=="/spy" then
                enabled = not enabled
                wait(0.3)
                privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
                StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
            elseif enabled and (spyOnMyself==true or p~=player) then
                msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
                local hidden = true
                local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
                    if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==player.Team)) then
                        hidden = false
                    end
                end)
                wait(1)
                conn:Disconnect()
                if hidden and enabled then
                    if public then
                        saymsg:FireServer((publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
                    else
                        privateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
                        StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
                    end
                end
            end
        end
    end
     
    for _,p in ipairs(Players:GetPlayers()) do
        p.Chatted:Connect(function(msg) onChatted(p,msg) end)
    end
    Players.PlayerAdded:Connect(function(p)
        p.Chatted:Connect(function(msg) onChatted(p,msg) end)
    end)
    privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
    StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
    local chatFrame = player.PlayerGui.Chat.Frame
    chatFrame.ChatChannelParentFrame.Visible = true
    chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
          end    
    })

    MiscTab:AddButton({
        Name = "Inf Jump",
        Callback = function()
            local InfiniteJumpEnabled = true
            game:GetService("UserInputService").JumpRequest:connect(function()
                if InfiniteJumpEnabled then
                    game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
                end
            end)
          end    
    })
     
    MiscTab:AddButton({
        Name = "Q to Teleport",
        Callback = function()
            plr = game.Players.LocalPlayer 
            hum = plr.Character.HumanoidRootPart 
            mouse = plr:GetMouse()
            mouse.KeyDown:connect(function(key)
                if key == "q" then
                if mouse.Target then
                    hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
                    end
                end
            end)
        end    
    })
     
    MiscTab:AddButton({
        Name = "Full Bright",
        Callback = function()
            Light.Ambient = Color3.new(1, 1, 1)
            Light.ColorShift_Bottom = Color3.new(1, 1, 1)
            Light.ColorShift_Top = Color3.new(1, 1, 1)
            game.Lighting.FogEnd = 100000
            game.Lighting.FogStart = 0
            game.Lighting.ClockTime = 14
            game.Lighting.Brightness = 2
            game.Lighting.GlobalShadows = false
        end,
    })

    -- BUTTONS (MiscTab) 
    MiscTab:AddButton({
        Name = "Third Person",
        Callback = function()
            local ohString1 = "ThirdPerson"
            local ohBoolean2 = true
            game:GetService("Players").LocalPlayer.PlayerScripts.Events.KeybindUsed:Fire(ohString1, ohBoolean2)
        end,   
    })
     
    MiscTab:AddButton({
        Name = "Return To Main Menu",
        Callback = function()
            game:GetService("ReplicatedStorage").Events.ReturnToMenu:FireServer()
          end    
    })
     
    MiscTab:AddButton({
        Name = "Low Quality",
        Callback = function()
            local ohString1 = "LowQuality"
            local ohBoolean2 = true
            game:GetService("ReplicatedStorage").Events.UpdateSetting:FireServer(ohString1, ohBoolean2)
          end    
    })

    MiscTab:AddLabel("Item Giver")
     
    MiscTab:AddButton({
        Name = "Test Emote (Permanant)",
        Callback = function()
            game:GetService("ReplicatedStorage").Events.UI.Purchase:InvokeServer("Emotes", "Test")
          end    
    })

    MiscTab:AddLabel("Keybinds")


    getgenv().autojumpmpt = true
function autojump()
   local plr = game:GetService'Players'.LocalPlayer
   repeat wait() until plr.Character ~= nil
plr.Character:WaitForChild'Humanoid'.StateChanged:Connect(function(old,new)
   if new == Enum.HumanoidStateType.Landed and autojumpmpt then
       plr.Character:WaitForChild'Humanoid':ChangeState("Jumping")
   end
end)
end
autojump()
game:GetService'Players'.LocalPlayer.CharacterAdded:Connect(autojump)
MiscTab:AddBind({
Name = "Toggle Auto BHop",
Default = Enum.KeyCode.Q,
Hold = false,
Callback = function()
if getgenv().autojumpmpt == true then
   getgenv().autojumpmpt = false
   else
       getgenv().autojumpmpt = true
end
end    
})

    MiscTab:AddBind({
        Name = "Drink Cola",
        Default = Enum.KeyCode.H,
        Hold = false,
        Callback = function()
            local ohString1 = "Cola"
            game:GetService("ReplicatedStorage").Events.UseUsable:FireServer(ohString1)
        end    
    })
     
    MiscTab:AddBind({
        Name = "Rejoin Server",
        Default = Enum.KeyCode.B,
        Hold = false,
        Callback = function()
            OrionLib:MakeNotification({
                Name = "You Pressed the Rejoin Keybind.",
                Content = "Rejoining in 5 seconds",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(1)
            OrionLib:MakeNotification({
                Name = "Quish Hub",
                Content = "Rejoining in 4 seconds",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(1)
            OrionLib:MakeNotification({
                Name = "Quish Hub",
                Content = "Rejoining in 3 seconds",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(1)
            OrionLib:MakeNotification({
                Name = "Quish Hub",
                Content = "Rejoining in 2 seconds",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(1)
            OrionLib:MakeNotification({
                Name = "Quish Hub",
                Content = "Rejoining in 1 seconds",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(1)
            OrionLib:MakeNotification({
                Name = "Quish Hub",
                Content = "Rejoining",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            local ts = game:GetService("TeleportService")
            local p = game:GetService("Players").LocalPlayer
            ts:Teleport(game.PlaceId, p)
        end    
    })

    MiscTab:AddBind({
        Name = "Random Vote",
        Default = Enum.KeyCode.X,
        Hold = false,
        Callback = function()
            local RandomVote = math.random(3)
            local ohNumber1 = (RandomVote)
            game:GetService("ReplicatedStorage").Events.Vote:FireServer(ohNumber1)
            OrionLib:MakeNotification({
                Name = "Quish Hub",
                Content = "Pressed on the Random Vote Keybind",
                Image = "rbxassetid://4483345998",
                Time = 2
            }) 
        end    
    })
     
    MiscTab:AddBind({
        Name = "Respawn",
        Default = Enum.KeyCode.R,
        Hold = false,
        Callback = function()
            game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
            OrionLib:MakeNotification({
                Name = "Respawning...",
                Content = "You pressed the respawn keybind",
                Image = "rbxassetid://4483345998",
                Time = 5
                })
        end    
    })
     
    local ESPTab = Window:MakeTab({
        Name = "Visuals",
        Icon = "rbxassetid://11465873040",
        PremiumOnly = false
    })

    ESPTab:AddLabel("Main Visuals")

    -- BUTTONS (LocalTab)  
    ESPTab:AddButton({
        Name = "Better Player Esp",
        Callback = function()
            local dwEntities = game:GetService("Players")
            local dwLocalPlayer = dwEntities.LocalPlayer 
            local dwRunService = game:GetService("RunService")
            
            local settings_tbl = {
                ESP_Enabled = true,
                ESP_TeamCheck = false,
                Chams = true,
                Chams_Color = Color3.fromRGB(255, 255, 255),
                Chams_Transparency = 0.9,
                Chams_Glow_Color = Color3.fromRGB(0, 0, 0)
            }
            
            function destroy_chams(char)
                for k,v in next, char:GetChildren() do 
                    if v:IsA("BasePart") and v.Transparency ~= 1 then
                        if v:FindFirstChild("Glow") and 
                        v:FindFirstChild("Chams") then
                            v.Glow:Destroy()
                            v.Chams:Destroy() 
                        end 
                    end 
                end 
            end
            
            dwRunService.Heartbeat:Connect(function()
                if settings_tbl.ESP_Enabled then
                    for k,v in next, dwEntities:GetPlayers() do 
                        if v ~= dwLocalPlayer then
                            if v.Character and
                            v.Character:FindFirstChild("HumanoidRootPart") and 
                            v.Character:FindFirstChild("Humanoid") and 
                            v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                                if settings_tbl.ESP_TeamCheck == false then
                                    local char = v.Character 
                                    for k,b in next, char:GetChildren() do 
                                        if b:IsA("BasePart") and 
                                        b.Transparency ~= 1 then
                                            if settings_tbl.Chams then
                                                if not b:FindFirstChild("Glow") and
                                                not b:FindFirstChild("Chams") then
                                                    local chams_box = Instance.new("BoxHandleAdornment", b)
                                                    chams_box.Name = "Chams"
                                                    chams_box.AlwaysOnTop = true 
                                                    chams_box.ZIndex = 4 
                                                    chams_box.Adornee = b 
                                                    chams_box.Color3 = settings_tbl.Chams_Color
                                                    chams_box.Transparency = settings_tbl.Chams_Transparency
                                                    chams_box.Size = b.Size + Vector3.new(0.02, 0.02, 0.02)
                                                    local glow_box = Instance.new("BoxHandleAdornment", b)
                                                    glow_box.Name = "Glow"
                                                    glow_box.AlwaysOnTop = false 
                                                    glow_box.ZIndex = 3 
                                                    glow_box.Adornee = b 
                                                    glow_box.Color3 = settings_tbl.Chams_Glow_Color
                                                    glow_box.Size = chams_box.Size + Vector3.new(0.13, 0.13, 0.13)
                                                end
                                            else
                                                destroy_chams(char)
                                            end
                                        end
                                    end
                                else
                                    if v.Team == dwLocalPlayer.Team then
                                        destroy_chams(v.Character)
                                    end
                                end
                            else
                                destroy_chams(v.Character)
                            end
                        end
                    end
                else 
                    for k,v in next, dwEntities:GetPlayers() do 
                        if v ~= dwLocalPlayer and 
                        v.Character and 
                        v.Character:FindFirstChild("HumanoidRootPart") and 
                        v.Character:FindFirstChild("Humanoid") and 
                        v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                            destroy_chams(v.Character)
                        end
                    end
                end
            end)
          end    
    })


    ESPTab:AddLabel("Other Visuals")


    ESPTab:AddToggle({
        Name = "Bots tracers",
        Default = true,
        Callback = function(Value)
            getgenv().toggleespmpt = Value
        end    
    })
 
    ESPTab:AddColorpicker({
        Name = "Colour",
        Default = Color3.fromRGB(255, 255, 255),
        Callback = function(Value)
            getgenv().mptespcolour = Value
        end  
    })

     
    local TeleportTab = Window:MakeTab({
        Name = "Teleport",
        Icon = "rbxassetid://11464378091",
        PremiumOnly = false
    })

    TeleportTab:AddLabel("Game Teleports")

    TeleportTab:AddButton({
        Name = "Main Game",
        Callback = function()
            local TeleportService = game:GetService('TeleportService')
            GameId = 9872472334
            TeleportService:Teleport(GameId, game.Players.LocalPlayer)
          end    
    })
     
     
    TeleportTab:AddButton({
        Name = "Casual",
        Callback = function()
            local TeleportService = game:GetService('TeleportService')
            GameId = 10662542523
            TeleportService:Teleport(GameId, game.Players.LocalPlayer)
          end    
    })
     
    TeleportTab:AddButton({
        Name = "Social Space",
        Callback = function()
            local TeleportService = game:GetService('TeleportService')
            GameId = 10324347967
            TeleportService:Teleport(GameId, game.Players.LocalPlayer)
          end    
    })
     
    TeleportTab:AddButton({
        Name = "Big Team",
        Callback = function()
            local TeleportService = game:GetService('TeleportService')
            GameId = 10324346056
            TeleportService:Teleport(GameId, game.Players.LocalPlayer)
          end    
    })
     
    TeleportTab:AddButton({
        Name = "Team DeathMatch",
        Callback = function()
            local TeleportService = game:GetService('TeleportService')
            GameId = 110539706691
            TeleportService:Teleport(GameId, game.Players.LocalPlayer)
          end    
    })
     
    TeleportTab:AddButton({
        Name = "Vc Only",
        Callback = function()
            local TeleportService = game:GetService('TeleportService')
            GameId = 10808838353
            TeleportService:Teleport(GameId, game.Players.LocalPlayer)
          end    
    })

    TeleportTab:AddLabel("Teleports in game")

    TeleportTab:AddButton({
        Name = "Teleport To Generator Objective",
        Callback = function()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Game.Map.Parts.Objectives.Generator.Part.CFrame
        end,   
    })

    TeleportTab:AddButton({
        Name = "Teleport To Lever Objective",
        Callback = function()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Game.Map.Parts.Objectives.Switch.Mover.CFrame
        end,   
    })

    TeleportTab:AddButton({
        Name = "Teleport To Transportation Objective",
        Callback = function()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Game.Map.Parts.Objectives.Transportation.Part.CFrame
        end,   
    })

    TeleportTab:AddButton({
        Name = "Teleport To Key Objective",
        Callback = function()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Game.Map.Parts.Objectives.Key.Key.CFrame
        end,   
    })
     
    local FunTab = Window:MakeTab({
        Name = "Fun",
        Icon = "rbxassetid://11477211478",
        PremiumOnly = false
    })

    FunTab:AddLabel("Toggles")
     
    FunTab:AddToggle({
        Name = "Fake Money Giver",
        Default = false,
        Callback = function(Value)
            Fakemoney = Value
        end    
    })
     
    FunTab:AddToggle({
        Name = "Auto Whistle",
        Default = false,
        Callback = function(Value)
            autowistle = Value
        end    
    })

    FunTab:AddLabel("Buttons")

    FunTab:AddButton({
        Name = "Free Cam (Shift + P)",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Robobo2022/script/main/Freecam.lua"))()
          end    
    })
     
    FunTab:AddLabel("Keybinds")
     
    MiscTab:AddBind({
        Name = "Random Emote",
        Default = Enum.KeyCode.Z,
        Hold = false,
        Callback = function()
            local number = math.random(4)
            local ohString1 = (number)
            game:GetService("ReplicatedStorage").Events.Emote:FireServer(ohString1)
            RandomEmote()
        end    
    })

    --test

    local cam = workspace.CurrentCamera
    local rs = game:GetService'RunService'
 
    getgenv().toggleespmpt = true
    function esp(plr)
        if game:GetService'Players':GetPlayerFromCharacter(plr) == nil then
            local rat = Drawing.new("Line")
                rs.RenderStepped:Connect(function()
                    if plr:FindFirstChild'HumanoidRootPart' then
                        local vector,screen = cam:WorldToViewportPoint(plr.HumanoidRootPart.Position)
                            if screen then
                    rat.Visible = toggleespmpt
                    rat.From = Vector2.new(cam.ViewportSize.X / 2,cam.ViewportSize.Y / 1)
                    rat.To = Vector2.new(vector.X,vector.Y)
                    rat.Color = getgenv().mptespcolour
                    rat.Thickness = getgenv().mptespthickness
                    else
                        rat.Visible = false
                end
                else
                    pcall(function()
                    rat.Visible = false
                    end)
            end
                if not plr:FindFirstChild'HumanoidRootPart' or not plr:FindFirstChild'HumanoidRootPart':IsDescendantOf(game:GetService'Workspace') then
                    pcall(function()
                    rat:Remove()
                    end)
            end
        end)
   end
end
 
for i,v in pairs(game:GetService'Workspace'.Game.Players:GetChildren()) do
    esp(v)
end
 
game:GetService'Workspace'.Game.Players.ChildAdded:Connect(function(plr)
    esp(plr)
end)
 
local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local Args = {...}
    local method = getnamecallmethod()
    if tostring(self) == 'Communicator' and method == "InvokeServer" and Args[1] == "update" then
        return Settings.Speed, Settings.Jump 
    end
    return old(self,...)
end))
 
game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/100)
        end
    end)
end)

    -- TABS
    local WipTab = Window:MakeTab({
        Name = "W.I.P",
        Icon = "rbxassetid://11464378096",
        PremiumOnly = false
    })
    
    -- PARAGRAPHS
    WipTab:AddParagraph("Upcoming Features","Going to fix some features soon.")

    -- TABS
    local UpdateTab = Window:MakeTab({
        Name = "Updates",
        Icon = "rbxassetid://11464394258",
        PremiumOnly = false
    })

    -- LABELS
    UpdateTab:AddLabel("11/26/2022")
    
    -- PARAGRAPHS
    UpdateTab:AddParagraph("Updates","Improved money farm.")

    -- LABELS
    UpdateTab:AddLabel("11/23/2022")
    
    -- PARAGRAPHS
    UpdateTab:AddParagraph("Updates","Added auto bhop.")

    -- LABELS
    UpdateTab:AddLabel("11/22/2022")
    
    -- PARAGRAPHS
    UpdateTab:AddParagraph("Updates","Removed halloween shit and added teleports to objectives.")

    -- LABELS
    UpdateTab:AddLabel("11/10/2022")
    
    -- PARAGRAPHS
    UpdateTab:AddParagraph("Updates","Added ticket autofarm and added a bunch of things.")

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

    
