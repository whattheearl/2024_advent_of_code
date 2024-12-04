local file = io.open("./data.csv", "r")
io.input(file)

Line = io.read()
-- Line = "25 26 30 32 34 35 36 40"
Result = 0

while Line ~= nil do
	-- is increasing
	print(Line)
	Prev = nil
	IsIncreasing = true
	for cur in string.gmatch(Line, "([^ ]+)") do
		if Prev == nil then
			goto continue
		end

		if tonumber(cur) <= tonumber(Prev) or (cur - Prev) > 3 then
			IsIncreasing = false
			break
		end
		::continue::
		Prev = cur
	end
	if IsIncreasing == true then
		print("increasing")
		Result = Result + 1
	end

	-- is descreasing
	print(Line)
	Prev = nil
	IsDecreasing = true
	for cur in string.gmatch(Line, "([^ ]+)") do
		if Prev == nil then
			goto continue
		end

		if tonumber(Prev) <= tonumber(cur) or (Prev - cur) > 3 then
			IsDecreasing = false
			break
		end
		::continue::
		Prev = cur
	end
	if IsDecreasing == true then
		print("decreasing")
		Result = Result + 1
	end
	-- break
	Line = io.read()
	print("")
end

print(Result)
