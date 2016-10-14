mon = peripheral.wrap("top")


while true do

	input = read()
	
	if input == "1" then
	rs.setBundleOutput("back",2)
	elseif input == "2" then
	rs.setBundleOutput("back",colors.orange)
	elseif input == "3" then
	rs.setBundleOutput("back",colors.yellow)
	elseif input == "4" then
	rs.setBundleOutput("back",colors.black)
	else 
	print("You are dumb")
	terminal.redirect(mon1)
	





	end
end


