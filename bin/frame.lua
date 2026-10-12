-- Shows the emulated frame number, which (unlike the OSD one) goes back when a savestate loads.
local buf = console:createBuffer("Frame")
callbacks:add("frame", function()
  buf:clear()
  buf:print(tostring(emu:currentFrame()))
end)
