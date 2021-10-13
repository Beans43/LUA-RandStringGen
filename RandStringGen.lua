--To use this simply put this code in a module, require the module in a variable and do variable.func.Generate() then to get the string do variable["String"]

local stringGen = {["String"] = "", ["Length"] = 16, func = {}}

local chars = "abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ"

function stringGen.func.Generate()
	stringGen["String"] = ""
	
	local completeString = ""
	
	for i = 1, stringGen["Length"] do
		local num = math.random(1, string.len(chars))
		local char = chars:sub(num, num)
		
		completeString = completeString.. char
	end
	
	stringGen["String"] = completeString
end

return stringGen
