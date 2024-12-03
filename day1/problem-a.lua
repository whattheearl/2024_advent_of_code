local file = io.open("./data.csv", "r")
io.input(file)

FirstList = {}
SecondList = {}
Line = io.read()
I = 0
while Line do
	local first = string.sub(Line, 0, 5)
	local second = string.sub(Line, -5)
	table.insert(FirstList, first)
	table.insert(SecondList, second)
	Line = io.read()
end
io.close(file)

table.sort(SecondList)
table.sort(FirstList)

Result = 0

for i, second in ipairs(SecondList) do
	local first = FirstList[i]
	if first > second then
		Result = Result + first - second
	else
		Result = Result + second - first
	end
end

print(Result)
