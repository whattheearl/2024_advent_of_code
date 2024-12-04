local file = io.open("./data.csv", "r")
io.input(file)

Line = io.read()
print(Line)
Result = 0

while Line ~= nil do
	local report = string.gmatch(Line, "([^ ]+)")
	print(report)
	local failIndex = IsIncreasing(report)
	if failIndex == 0 then
		Result = Result + 1
		goto continue
	end
	Copy = CopyTable(report)
	table.remove(Copy, failIndex)

	if IsIncreasing(Copy) == 0 then
		Result = Result + 1
		goto continue
	end

	Copy = CopyTable(report)
	table.remove(Copy, failIndex - 1)
	if IsIncreasing(Copy) == 0 then
		Result = Result + 1
		goto continue
	end

	::continue::
	Line = io.read()
	print("")
end

print(Result)
