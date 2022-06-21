loadfile = "speed-m.lua"
    io.write("Loaded speed-m.lua")
loadfile = "kb.lua"
    io.write("Loaded kb.lua")

    local Loader = Instance.new("Frame")
    local Title = Instance.new("Loader config")

Title.Name("Distray Scripts")
Title.Parent("List")


local function Distray() -- ScreenGui
    local script = Instance.new('Load', ScreenGui)
     
    frame = script.Parent.Loader
    frame.Draggable = true
    frame.Active = true
    frame.Selectable = true
    end
    coroutine.wrap(distray)()

-- Incomplete // Do not install or use.
