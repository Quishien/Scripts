local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Quish Hub | Obby Creator", HidePremium = true, IntroEnabled = true, IntroText = "Quish Hub", SaveConfig = true, ConfigFolder = "QuishConfig"})
-- Tabs
local LocalPlayerTab = Window:MakeTab({
	Name = "Local Player",
	Icon = "rbxassetid://11464378104",
	PremiumOnly = false
})

-- Labels
LocalPlayerTab:AddLabel("Local Player Stuff")

-- Sliders
LocalPlayerTab:AddSlider({
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

LocalPlayerTab:AddSlider({
	Name = "Jumppower",
	Min = 50,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Jumppower",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
	end
})

-- Labels
LocalPlayerTab:AddLabel("Other Stuff")

-- Buttons
LocalPlayerTab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'), true))()
  	end
})

LocalPlayerTab:AddButton({
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

-- Sections
local Section = LocalPlayerTab:AddSection({
	Name = "Esp is not toggleable!"
})

-- Tabs
local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://11465887529",
	PremiumOnly = false
})

-- Labels
MainTab:AddLabel("Main Stuff")

-- Adaptive Inputs
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

-- Labels
MainTab:AddLabel("Other Stuff")

-- Adaptive Input
MainTab:AddTextbox({
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


-- Tabs
local TrollTab = Window:MakeTab({
	Name = "Troll",
	Icon = "rbxassetid://11464409331",
	PremiumOnly = false
})

-- Labels
TrollTab:AddLabel("Main Stuff")

-- Buttons
TrollTab:AddButton({
	Name = "Flipping Script",
	Callback = function()
		wait(5)

		--[[ Info ]]--
		
		local ver = "2.00"
		local scriptname = "feFlip"
		
		
		--[[ Keybinds ]]--
		
		local FrontflipKey = Enum.KeyCode.Z
		local BackflipKey = Enum.KeyCode.X
		local AirjumpKey = Enum.KeyCode.C
		
		
		--[[ Dependencies ]]--
		
		local ca = game:GetService("ContextActionService")
		local zeezy = game:GetService("Players").LocalPlayer
		local h = 0.0174533
		local antigrav
		
		
		--[[ Functions ]]--
		
		function zeezyFrontflip(act,inp,obj)
			if inp == Enum.UserInputState.Begin then
				zeezy.Character.Humanoid:ChangeState("Jumping")
				wait()
				zeezy.Character.Humanoid.Sit = true
				for i = 1,360 do 
					delay(i/720,function()
					zeezy.Character.Humanoid.Sit = true
						zeezy.Character.HumanoidRootPart.CFrame = zeezy.Character.HumanoidRootPart.CFrame * CFrame.Angles(-h,0,0)
					end)
				end
				wait(0.55)
				zeezy.Character.Humanoid.Sit = false
			end
		end
		
		function zeezyBackflip(act,inp,obj)
			if inp == Enum.UserInputState.Begin then
				zeezy.Character.Humanoid:ChangeState("Jumping")
				wait()
				zeezy.Character.Humanoid.Sit = true
				for i = 1,360 do
					delay(i/720,function()
					zeezy.Character.Humanoid.Sit = true
						zeezy.Character.HumanoidRootPart.CFrame = zeezy.Character.HumanoidRootPart.CFrame * CFrame.Angles(h,0,0)
					end)
				end
				wait(0.55)
				zeezy.Character.Humanoid.Sit = false
			end
		end
		
		function zeezyAirjump(act,inp,obj)
			if inp == Enum.UserInputState.Begin then
				zeezy.Character:FindFirstChildOfClass'Humanoid':ChangeState("Seated")
				wait()
				zeezy.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")	
			end
		end
		
		
		--[[ Binds ]]--
		
		ca:BindAction("zeezyFrontflip",zeezyFrontflip,false,FrontflipKey)
		ca:BindAction("zeezyBackflip",zeezyBackflip,false,BackflipKey)
		ca:BindAction("zeezyAirjump",zeezyAirjump,false,AirjumpKey)
		
		--[[ Load Message ]]--
		
		print(scriptname .. " " .. ver .. " loaded successfully")
		print("made by Quish#4198")
		
		local notifSound = Instance.new("Sound",workspace)
		notifSound.PlaybackSpeed = 1.5
		notifSound.Volume = 0.15
		notifSound.SoundId = "rbxassetid://170765130"
		notifSound.PlayOnRemove = true
		notifSound:Destroy()
		game.StarterGui:SetCore("SendNotification", {Title = "Flipping Script", Text = "Flipping Script loaded successfully!", Icon = "rbxassetid://505845268", Duration = 3.5, Button1 = "Okay"})
		print(scriptname .. " " .. ver .. " loaded successfully")
		print("made by Quish#4198")
		

		wait(4)

		local notifSound = Instance.new("Sound",workspace)
		notifSound.PlaybackSpeed = 1.5
		notifSound.Volume = 0.15
		notifSound.SoundId = "rbxassetid://170765130"
		notifSound.PlayOnRemove = true
		notifSound:Destroy()
		game.StarterGui:SetCore("SendNotification", {Title = "Keybinds", Text = "Backflip = X, Frontflip = Y, Infinite Jump = C", Icon = "rbxassetid://11464312986", Duration = 5})
  	end    
})

-- Buttons
TrollTab:AddButton({
	Name = "Chat Bypass",
	Callback = function()
		getgenv().method = "fn" -- put the two letters (method) here. available ones are pq, bj, dq and hu. fn is recommended by default.
		loadstring(game:HttpGet("https://raw.githubusercontent.com/daddysyn/synergy/additional/betterbypasser",true))()
  	end    
})

-- Sections
local Section = TrollTab:AddSection({
	Name = "Chat bypass may not work! (I didn't make this)"
})

-- Tabs
local WipTab = Window:MakeTab({
	Name = "W.I.P",
	Icon = "rbxassetid://11464378096",
	PremiumOnly = false
})

-- Paragraphs
WipTab:AddParagraph("Upcoming Features","Adding QOL features soon.")

-- Tabs
local UpdateTab = Window:MakeTab({
	Name = "Updates",
	Icon = "rbxassetid://11464394258",
	PremiumOnly = false
})

-- Labels
UpdateTab:AddLabel("11/05/2022")

-- Paragraphs
UpdateTab:AddParagraph("Updates","Added bring player, a display name remover and a main tab.")

-- Labels
UpdateTab:AddLabel("11/04/2022")

-- Paragraphs
UpdateTab:AddParagraph("Updates","Made Script.")


-- TABS
local CreditsTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://11464378093",
	PremiumOnly = false
})

-- PARAGRAPHS
CreditsTab:AddParagraph("Made By:", "Quish#4198")
CreditsTab:AddParagraph("Quish:", "Feel free to DM me for any Suggestions or Bugs")

-- BUTTONS
CreditsTab:AddButton({
	Name = "Copy My Discord To Clipboard",
	Callback = function()
		setclipboard("Quish#4198")
	  end    
})






OrionLib:Init()