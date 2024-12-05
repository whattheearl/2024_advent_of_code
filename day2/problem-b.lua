local tableUtils = require("lib/table-utils")
local eval = require("lib/is-increasing")
local textUtils = require("lib/text")
local file = io.open("./data.csv", "r")
io.input(file)

local line = io.read()
Result = 0
while line ~= nil do
	local report = textUtils.processLine(line)
	tableUtils.print(report)
	local failedIndex = eval.isIncreasing(report)
	if failedIndex == 0 then
		Result = Result + 1
		goto continue
	end
	print(failedIndex)

	Copy = tableUtils.copy(report)
	table.remove(Copy, failedIndex)
	tableUtils.print(Copy)
	failedIndex = eval.isIncreasing(Copy)
	if failedIndex == 0 then
		Result = Result + 1
		goto continue
	end
	print(failedIndex)

	Copy = tableUtils.copy(report)
	table.remove(Copy, failedIndex - 1)
	tableUtils.print(Copy)
	failedIndex = eval.isIncreasing(Copy)
	if failedIndex == 0 then
		Result = Result + 1
		goto continue
	end
	print(failedIndex)

	Copy = tableUtils.reverse(report)
	tableUtils.print(Copy)
	failedIndex = eval.isIncreasing(Copy)
	if failedIndex == 0 then
		Result = Result + 1
		goto continue
	end
	print(failedIndex)

	Copy = tableUtils.reverse(report)
	table.remove(Copy, failedIndex)
	tableUtils.print(Copy)
	failedIndex = eval.isIncreasing(Copy)
	if failedIndex == 0 then
		Result = Result + 1
		goto continue
	end

	Copy = tableUtils.reverse(report)
	table.remove(Copy, failedIndex - 1)
	tableUtils.print(Copy)
	failedIndex = eval.isIncreasing(Copy)
	if failedIndex == 0 then
		Result = Result + 1
		goto continue
	end
	::continue::
	line = io.read()
end

print(Result)
