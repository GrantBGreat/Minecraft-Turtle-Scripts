-- This is a script to quickly fuel up your turtle. This way you don't need to worry about fuel while it's working.
-- For version 1.33 and earlier, change the '16' to 9
for i=1, 16, 1 do
    turtle.select(i)
    turtle.refuel()
end