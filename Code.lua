mon = peripheral.wrap("top")


local function SpawnerCables()	
	
	write("Enter Spawner #: ")

	input = read()
	
	if input == "1" then
	rs.setBundledOutput("back",1)
	elseif input == "2" then
	rs.setBundledOutput("back",2)
	elseif input == "3" then
	rs.setBundledOutput("back",5)
	elseif input == "4" then
	rs.setBundledOutput("back",16)
	else 
	print("You are dumb")
	end
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


