if game.PlaceId == 2768379856 then
    local LoadingScreen = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local TextLabel = Instance.new("TextLabel")
    local Bar = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local Inside = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local E = Instance.new("Frame")
    local UICorner_4 = Instance.new("UICorner")
    
    --Properties:
    
    LoadingScreen.Name = "Loading Screen"
    LoadingScreen.Parent = game.CoreGui
    LoadingScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    LoadingScreen.ResetOnSpawn = false
    
    Frame.Parent = LoadingScreen
    Frame.BackgroundColor3 = Color3.fromRGB(18, 20, 23)
    Frame.Position = UDim2.new(0.367160767, 0, 0.402578801, 0)
    Frame.Size = UDim2.new(0.264538199, 0, 0.194842413, 0)
    
    UICorner.Parent = Frame
    
    Title.Name = "Title"
    Title.Parent = Frame
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Position = UDim2.new(0.0182889588, 0, 0, 0)
    Title.Size = UDim2.new(0.393678159, 0, 0.198529407, 0)
    Title.Font = Enum.Font.SourceSansSemibold
    Title.Text = "Chixs Hub Loader"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextSize = 24.000
    Title.TextWrapped = true
    Title.TextXAlignment = Enum.TextXAlignment.Left
    
    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0.0585188605, 0, 0.260454297, 0)
    TextLabel.Size = UDim2.new(0.890804589, 0, 0.242647052, 0)
    TextLabel.Font = Enum.Font.SourceSansSemibold
    TextLabel.Text = "Checking if game Supported..."
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 25.000
    TextLabel.TextWrapped = true
    
    Bar.Name = "Bar"
    Bar.Parent = Frame
    Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Bar.Position = UDim2.new(0.026580615, 0, 0.598065794, 0)
    Bar.Size = UDim2.new(0.945402324, 0, 0.191176474, 0)
    
    UICorner_2.CornerRadius = UDim.new(0, 3)
    UICorner_2.Parent = Bar
    
    Inside.Name = "Inside"
    Inside.Parent = Bar
    Inside.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
    Inside.Size = UDim2.new(0, 0, 1, 0)
    
    UICorner_3.CornerRadius = UDim.new(0, 3)
    UICorner_3.Parent = Inside
    
    E.Name = "E"
    E.Parent = Frame
    E.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
    E.BorderSizePixel = 0
    E.Position = UDim2.new(0.0155988811, 0, 0.181817025, 0)
    E.Size = UDim2.new(0.968390822, 0, 0.0147058824, 0)
    
    UICorner_4.CornerRadius = UDim.new(0, 20)
    UICorner_4.Parent = E
    
    -- Scripts:
    
    local function DTBNJ_fake_script() -- LoadingScreen.LocalScript 
        local script = Instance.new('LocalScript', LoadingScreen)
    
        -- Variables.
        local frame = script.Parent.Frame
        local bar = frame.Bar
        local inside = bar.Inside
        
        local player = game.Players.LocalPlayer
        
        -- Functions.
        local function ResizeBar(percent)
            inside:TweenSize(UDim2.new(percent/100, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 1, true)
            wait(1)
        end
        
        -- Start loading.
        frame.Visible = true
        
        -- sizes
        frame.TextLabel.Text = "Checking if game is supported."
        ResizeBar(0)
        frame.TextLabel.Text = "Checking if game is supported.."
        ResizeBar(10)
        frame.TextLabel.Text = "Checking if game is supported..."
        ResizeBar(20)
        frame.TextLabel.Text = "Checking if game is supported."
        ResizeBar(30)
        frame.TextLabel.Text = "Checking if game is supported.."
        ResizeBar(40)
        frame.TextLabel.Text = "Checking if game is supported..."
        ResizeBar(50)
        frame.TextLabel.Text = "Checking if game is supported."
        ResizeBar(60)
        frame.TextLabel.Text = "Checking if game is supported.."
        ResizeBar(70)
        frame.TextLabel.Text = "Checking if game is supported..."
        ResizeBar(80)
        frame.TextLabel.Text = "Checking if game is supported."
        ResizeBar(90)
        frame.TextLabel.Text = "Checking if game is supported.."
        ResizeBar(100)
        frame.TextLabel.Text = "Checking if game is supported..."
        
        
        
        -- Hide screen.
        frame.TextLabel.Text = "Game Found - 3008 [2.7]"
        wait(3)
        
        script.Parent:Destroy()
    end
    coroutine.wrap(DTBNJ_fake_script)()wait(14)

-- ESP
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/F3XS/3007/main/releases/ESP.lua"))()
ESP:Toggle(true)
ESP.Players = false
ESP.Tracers = false
ESP.Boxes = false
ESP.Names = false

-- notify function
local function notify(message)
   game.StarterGui:SetCore("SendNotification", {
       Title = "Chixs";
       Text = message;
       Icon = "";
       Duration = 2;
   })
end

local function teleportToItem(itemName)
   local donesearch = false
   for i,v in pairs(game:GetService("Workspace").GameObjects.Physical.Items:GetDescendants()) do
       if v.Name == "Root" and v.Parent.Name == itemName then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
           donesearch = true
           break
       end
   end
   if donesearch == false then
       notify("Item position not defined")
   end
end

ESP:AddObjectListener(game:GetService("Workspace").GameObjects.Physical.Items, {
   Type = "Model",
   Color = Color3.fromRGB(0, 119, 255),
   IsEnabled = "itemESP"
})

ESP:AddObjectListener(game:GetService("Workspace").GameObjects.Physical.Employees, {
   Type = "Model",
   CustomName = "Employee",
   Color = Color3.fromRGB(255, 0, 4),
   IsEnabled = "employeeToggle"
})
    


    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Chixs Hub - 3008 [2.7]", "Ocean")
    
    -- Home
    local Home = Window:NewTab("Home")
    local HomeSection = Home:NewSection("Home")
    HomeSection:NewButton("Join Discord Server", "Yes Please 👉👈", function()
        local json = {
            ["cmd"] = "INVITE_BROWSER",
            ["args"] = {
            ["code"] = "fQcSXQXSUp"
            },
            ["nonce"] = 'a'
            }
            spawn(function()
            print(request({
            Url = 'http://127.0.0.1:6463/rpc?v=1',
            Method = 'POST',
            Headers = {
            ['Content-Type'] = 'application/json',
            ['Origin'] = 'https://discord.com'
            },
            Body = game:GetService('HttpService'):JSONEncode(json),
            }).Body)
            end)
                -- discord invite workspace folder save
                if http then
               if isfolder("Chixs") then
               else
                   makefolder("ChixsCool")
               end
            end
            
            if http then
               if isfile('Chixslol.lua') then
               else
                   _G.invite = [[
                local json = {
                ["cmd"] = "INVITE_BROWSER",
                ["args"] = {
                ["code"] = "fQcSXQXSUp"
                },
                ["nonce"] = 'a'
                }
                spawn(function()
                print(request({
                Url = 'http://127.0.0.1:6463/rpc?v=1',
                Method = 'POST',
                Headers = {
                ['Content-Type'] = 'application/json',
                ['Origin'] = 'https://discord.com'
                },
                Body = game:GetService('HttpService'):JSONEncode(json),
                }).Body)
                end)
                setclipboard("https://discord.gg/fQcSXQXSUp")
                   ]]
                   writefile("Chixs.lua", (_G.invite))
               end
            end
            rconsoleclear('s')
    end)
    
    
    -- Main
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("ESP")
    MainSection:NewToggle("Box", "ESP ofc", function(Value)
        ESP.Boxes = Value 
    end)

    MainSection:NewToggle("Tracers", "Tracers ofc", function(Value)
        ESP.Tracers = Value 
    end)

    MainSection:NewToggle("Nametags", "Nametags esp", function(Value)
        ESP.Names = Value
    end)

    MainSection:NewToggle("Player ESP", "ofc u idiot", function(Value)
        ESP.Players = Value 
    end)

    MainSection:NewToggle("Employees ESP", "Employees", function(Value)
        ESP.employeeToggle = Value
    end)

    MainSection:NewToggle("Items ESP", "Items", function(Value)
        ESP.itemESP = Value 
    end)

    local MainSection = Main:NewSection("Others")
    MainSection:NewSlider("WalkSpeed", "WalkSpeed", 200, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    MainSection:NewSlider("JumpPower", "JumpPower", 200, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    MainSection:NewButton("No Fall Damage", "No Fall Damage no more pain on your life :)", function()
        local a = getrawmetatable(game)
local b = a.__namecall
setreadonly(a, false)
a.__namecall = newcclosure(function(name, ...)
       local muhammed = {...}
       if getnamecallmethod() == "FireServer" and tostring(name) == "RemoteEvent" and type(unpack(muhammed[1])) == "number" then
           muhammed[1] = 0
           muhammed[2] = true
           muhammed[3] = false
           muhammed[4] = nil
           muhammed[5] = 0
           muhammed[6] = 0
       end
       return b(name, unpack(muhammed))
   end)
    end)


    MainSection:NewButton("Third Person", "lol", function()
                game.Players.LocalPlayer.CameraMaxZoomDistance = 50
        game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
    end)


    MainSection:NewButton("No Fog", "No more Fog LOL", function()
        game.Lighting.FogEnd = 50000
    end)

    MainSection:NewButton("Full Brightness ", "lol", function()
        game.Lighting.Brightness = 10
    end)
    
    
    local Teleports = Window:NewTab("Teleports")
    local TeleportsSection = Teleports:NewSection("Teleports")
    TeleportsSection:NewButton("Teleport to HotDog", "Hot dogss", function()
        teleportToItem("Hotdog")
    end)

    TeleportsSection:NewButton("Teleport to Pizza", "Pizzassss", function()
        teleportToItem("Pizza")
    end)

    TeleportsSection:NewButton("Teleport to Burger", "Burger", function()
        teleportToItem("Burger")
    end)

    TeleportsSection:NewButton("Teleport to Medkit", "Medkit", function()
        teleportToItem("Medkit")
    end)

    
    -- Credits
    local Credits = Window:NewTab("Credits")
    local CreditsSection = Credits:NewSection("Credits")
    CreditsSection:NewLabel("                        Made By Chixs#9092")
    
    -- Settings
    local Settings = Window:NewTab("Settings")
    local SettingsSection = Settings:NewSection("Settings")
    SettingsSection:NewKeybind("UI Keybind", "Close The UI with Keybinds", Enum.KeyCode.RightShift, function()
        Library:ToggleUI()
    end)
end
