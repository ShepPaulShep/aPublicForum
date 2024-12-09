local textEvent = game:GetService("ReplicatedStorage").RemoteEvents.RemoteEvent

local plr = script.Parent.Parent
local httpService = game:GetService("HttpService")
local URL = "put your Flask server domain here, should have /submit at the end"


textEvent.OnServerEvent:Connect(function(x, y)
	print(y)
	
	local userPost = y
	
	local data = {
		["sky"] = userPost
	}
	
	local json = httpService:JSONEncode(data)
	
	local post = httpService:PostAsync(URL, json)
end)
