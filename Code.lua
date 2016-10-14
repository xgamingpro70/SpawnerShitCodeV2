mon = peripheral.wrap("top")


local function SpawnerCables()	

	input = read()
	
	if input == "1" then
	rs.setBundleOutput("back",colors.white)
	elseif input == "2" then
	rs.setBundleOutput("back",colors.orange)
	elseif input == "3" then
	rs.setBundleOutput("back",colors.yellow)
	elseif input == "4" then
	rs.setBundleOutput("back",colors.black)
	else 
	print("You are dumb")
end

local function spawnerStatus()

    local cableColor = redstone.testBundledInput(side,color)
        if cableColor == true then
            local status = "On"
        else
            local status = "Off"
        end
	local mobs = {"Wither Skeleton","Enderman","Blaze","Zombie Pigman","Not Bound","Not Bound","Not Bound","Not Bound"}
	mon.clear()
	mon.setCursorPos(1,1)
    for i=1,#mobs do
	local mon1 = term.redirect(mon)
        print( i .. " = " .. mobs[i] )
	term.redirect(mon1)
    end
	
end

while true do
SpawnerCables()
spawnerStatus()
end


