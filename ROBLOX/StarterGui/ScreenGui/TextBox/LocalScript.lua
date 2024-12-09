local textEvent = game:GetService("ReplicatedStorage").RemoteEvents.RemoteEvent
local textBox = script.Parent.Text
local usrName = game.Players.LocalPlayer.Name

--script.Parent.FocusLost:Connect(function(enter)
--	if enter then
--		_G.sky = script.Parent.Text
--	end
--end)

--textEvent:FireServer(textBox)




script.Parent.FocusLost:Connect(function(enter)
	if enter then
		textEvent:FireServer(usrName .. ": " .. script.Parent.Text)
		print("test")
	end
end)

