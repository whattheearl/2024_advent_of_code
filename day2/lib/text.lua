local processLine = function(text)
	local i = 1
	local result = {}
	for cur in string.gmatch(text, "([^ ]+)") do
		result[i] = cur
		i = i + 1
	end
	return result
end

return {
	processLine = processLine,
}
