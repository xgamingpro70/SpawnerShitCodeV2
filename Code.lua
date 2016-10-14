mon = peripheral.wrap("top")
 
 
local function SpawnerCables() 
 
    input = read()
   
    if input == "1" then
    rs.setBundleOutput("back",colors.white)
    else
    print("You are dumb")
    terminal.redirect(mon1)
end
 
 
while true do
SpawnerCables
end
