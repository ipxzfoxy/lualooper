# LuaLooper

A functional event loop built with **Lua 5.5**, inspired by **LoopLooper**.

## Usage

```lua
local LuaLooper = require("lualooper")

local loop = LuaLooper:create()
loop:run()

-- Register a listener
loop:on("ready", function(message)
    print("I'm ready! Message: " .. message)
end)

-- Emit the "ready" event
loop:emit("ready", {"Hi there!"})
```
