function ReverseTable(report)
	ReverseReport = {}
	Max = 0
	for index = #report, 1, -1 do
		print(report[index])
		table.insert(ReverseReport, report[index])
	end
	return ReverseReport
end
