--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local v0=game:GetService("UserInputService");local v1=game:GetService("Players");local v2=game:GetService("RunService");local v3=v1.LocalPlayer;local v4=v3:GetMouse();local v5=false;local v6=nil;local function v7() local v10=nil;local v11=math.huge;for v14,v15 in pairs(v1:GetPlayers()) do if ((v15~=v3) and v15.Character) then local v18=v15.Character:FindFirstChild("Head");if v18 then local v21=workspace.CurrentCamera:WorldToScreenPoint(v18.Position);local v22=Vector2.new(v4.X,v4.Y);local v23=(v22-Vector2.new(v21.X,v21.Y)).Magnitude;if (v23<v11) then v11=v23;v10=v15;end end end end return v10;end local function v8() local v12=v7();if (v12 and v12.Character) then local v16=v12.Character:FindFirstChild("Head");if v16 then v6=v12;v5=true;end end end local function v9() if (v6 and v6.Character) then local v17=v6.Character:FindFirstChild("Head");if v17 then local v19=workspace.CurrentCamera;v19.CFrame=CFrame.new(v19.CFrame.Position,v17.Position);end end end v0.InputBegan:Connect(function(v13) if (v13.KeyCode==Enum.KeyCode.T) then if  not v5 then v8();else v6=nil;v5=false;end end end);v2.RenderStepped:Connect(function() if v5 then v9();end end);