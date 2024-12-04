function IsIncreasing(report)
	Prev = nil
	FailureIndex = 0
	for index, cur in pairs(report) do
		if Prev == nil then
			goto continue
		end

		if tonumber(cur) <= tonumber(Prev) or (cur - Prev) > 3 then
			FailureIndex = index
			break
		end
		::continue::
		Prev = cur
	end
	return FailureIndex
end
