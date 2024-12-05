local function reverseTable(report)
	local ReverseReport = {}
	Max = 0
	for index = #report, 1, -1 do
		print(report[index])
		table.insert(ReverseReport, report[index])
	end
	return ReverseReport
end

local function printTable(t)
	for i = 1, #t, 1 do
		print(i .. " " .. tostring(t[i]))
	end
end

local function copyTable(t)
	local result = {}
	for _, v in pairs(t) do
		table.insert(result, v)
	end
	return result
end

return {
	reverse = reverseTable,
	print = printTable,
	copy = copyTable,
}
