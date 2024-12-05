local function isIncreasing(report)
	local prev = nil
	local failureIndex = 0
	for index, cur in pairs(report) do
		if prev == nil then
			goto continue
		end

		if tonumber(cur) <= tonumber(prev) or (cur - prev) > 3 then
			failureIndex = index
			break
		end
		::continue::
		prev = cur
	end
	return failureIndex
end

return {
	isIncreasing = isIncreasing,
}
