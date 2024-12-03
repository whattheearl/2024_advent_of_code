local file = io.open("./data.csv", "r")
io.input(file)

FirstList = {}
SecondList = {}
Line = io.read()

while Line do
	local first = tonumber(string.sub(Line, 0, 5))
	local second = tonumber(string.sub(Line, -5))
	if FirstList[first] == nil then
		FirstList[first] = 1
	else
		FirstList[first] = FirstList[first] + 1
	end
	if SecondList[second] == nil then
		SecondList[second] = 1
	else
		SecondList[second] = SecondList[second] + 1
	end
	Line = io.read()
end

io.close(file)

Result = 0
for key, firstCount in pairs(FirstList) do
	local secondCount = SecondList[key]
	if secondCount ~= nil then
		Result = Result + key * firstCount * secondCount
	end
end

print(Result)
