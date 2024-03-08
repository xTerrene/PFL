local pfl = {}

-- created by xTerrene
-- version v1.3

function pfl:findp(list,dtype)

	local players = game.Players
	
	if not ((dtype == 1) or (dtype == 2) or (dtype == 3)) then
		dtype = 3
	end
	
	if list == nil then
		return nil
	end	

	local t = {}

	for str in string.gmatch(list, "([^%s+]+)") do
		table.insert(t, str)
	end

	if dtype == 1 then

		local pt = {}

		for i,v in pairs(players:GetPlayers()) do
			if table.find(t,v.Name) then
				table.insert(pt,v.Name)
			elseif table.find(t,tostring(v.UserId)) then
				table.insert(pt,v.UserId)
			end
		end

		if #pt == 0 then
			return nil
		else
			return unpack(pt)
		end
	end
	
	if dtype == 2 then

		local pt = {}
		local plr
		local uid
		local name

		for i,v in pairs(players:GetPlayers()) do
			if table.find(t,v.Name) or table.find(t,tostring(v.UserId)) then
				uid = v.UserId
				name = players:GetNameFromUserIdAsync(v.UserId)
				plr = {["UserId"] = uid, ["Name"] = name}
				table.insert(pt,plr)
			end
		end

		if #pt == 0 then
			return {["UserId"] = nil, ["Name"] = nil}
		else
			return pt
		end
	end
		
	if dtype == 3 then

		local plr
		local uid
		local name
	
		for i,v in pairs(players:GetPlayers()) do
			if table.find(t,v.Name) or table.find(t,tostring(v.UserId)) then
				uid = v.UserId
				name = players:GetNameFromUserIdAsync(v.UserId)
				plr = {["UserId"] = uid, ["Name"] = name}
				return plr
			end
		end
		return {["UserId"] = nil, ["Name"] = nil}
	end
	
end

return pfl
