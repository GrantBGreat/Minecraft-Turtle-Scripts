-- program to travel in a line for a specified # of blocks in the direction it's facing
print("\nHow far shall I travel?")
dist = tonumber(read())

print("Should I make a walkable tunnel? [y/N]")
local temp = read()
walkable = false
if string.lower(temp) == "y" or string.lower(temp) == "yes" then walkable = true end

turtle.select(1)
distGone = 0
while distGone < dist do 
    turtle.refuel()

    if turtle.detect() then turtle.dig() end
    turtle.forward()
    if walkable and turtle.detectUp() then turtle.digUp() end
    if distGone % 10 then print("Traveled " .. distGone .. " blocks.")

    distGone = distGone + 1
end

print("Finished traveling " .. dist .. " blocks.")