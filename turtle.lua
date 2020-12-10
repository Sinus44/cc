shell.run("clear")
print("Enter channel: ")
ch = io.read()
ch=tonumber(ch)

modem = peripheral.find("modem")
modem.open(ch)

while true do
  _,_,ch,rech,m,_=os.pullEvent("modem_message")
  if m=="w" then
    turtle.forward()
  elseif m=="s" then
    turtle.back()
  elseif m=="d" then
    turtle.turnRight()
  elseif m=="a" then
    turtle.turnLeft()
  end
end
