package.path = "./?.lua;./?/init.lua;" .. package.path

local LuaLooper = require("src.lualooper")

local loop = LuaLooper:create()

loop:on("ready", function (message)
    print("I'm ready! message: ", message)
end)

loop:run()

loop:emit("ready", {"Hi there!"})