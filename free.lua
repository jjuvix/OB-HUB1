_G.ToggleColor = Color3.fromRGB(255,0,0)
_G.ButtonColor = Color3.fromRGB(0,255,0)
_G.SliderColor = Color3.fromRGB(0,0,255)

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("OB HUB | OUTDOOR BRAWLING")

local b = w:CreateFolder("MAIN")

b:Button("Auto Gloves",function()
    fireclickdetector(game.Workspace.Glovess.ClickDetector)
end)

b:Button("Inf Hunger", function()
    local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if method == "FireServer" and tostring(self) == "HungerUpdate" then
        
       return
    end
    return namecall(self, table.unpack(args))
end) 
end)

b:Button("No Stun", function()
    while wait() do
    for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v.Name == "Stun" or v.Name == "Stunned" then
            v:Destroy() 
        end    
    end
end
end)

b:Button("No Jump Cd", function()
    while wait() do
    for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
        if v.Name == "JumpCooldown" then
            v:Destroy()    
        end
        
    end
end
end)

b:Button("Jump Height", function()
    local cd; cd = hookfunction(time, function(v)
    v = 0;
    return cd(v);
end);
end)

b:Slider("Walkspeed",{
    
    16,
    100,
    precise = true,
    },function(value) --MinValue,MaxValue,Precise
    while wait() do
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.Value = value 
    end
end)

b:Button("No Kill Bricks", function()
    print("no kill bricks") 
end)
