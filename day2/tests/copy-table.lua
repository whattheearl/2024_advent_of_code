function CopyTable(t)
	NewTable = {}
	for _, v in pairs(t) do
		table.insert(NewTable, v)
	end
	return NewTable
end
