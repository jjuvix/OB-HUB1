_G.ToggleColor = Color3.fromRGB(255,0,0)
_G.ButtonColor = Color3.fromRGB(0,255,0)
_G.SliderColor = Color3.fromRGB(0,0,255)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("OB HUB | OUTDOOR BRAWLING")

local b = w:CreateFolder("MAIN")

b:Label("NOT DONE!",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

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
b:Toggle("Toggle",function(bool)
    shared.toggle = bool
    print(shared.toggle)
end)

b:Slider("Walkspeed",16,100,true,function(value) --MinValue,MaxValue,Precise
    while wait() do
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.Value = value 
    end
end)

b:Slider("Jump Power",50, 200, true, function(value)
        while wait() do
       game.Players.LocalPlayer.Character.Humanoid.JumpHeight.Value = value 
       game.Players.LocalPlayer.Character.Humanoid.JumpPower.Value = value
    end 
end)

b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
    print(mob)
end)

b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
    print("Yes")
end)

b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color)
    print(color)
end)

b:Box("Box","number",function(value) -- "number" or "string"
    print(value)
end)

b:DestroyGUI()

b:GuiSettings()
