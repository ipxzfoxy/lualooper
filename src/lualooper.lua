local tclone = require("src.tclone")

local LuaLooper <const> = {};

local EventLoop <const> = {
    running = false;
    listeners = {};
}

local Listener <const> = {
    name="";
    listener=function()end;
}

function LuaLooper:create()
    return tclone(EventLoop);
end

function EventLoop:run()
    self.running=true;
end

function EventLoop:emit(eventname, args)
    if not self.running then return end
    for _, t in ipairs(self.listeners) do
        if t.name == eventname then
            t.listener(table.unpack(args))
        end;
    end
end

function EventLoop:on(n, l)
    table.insert(self.listeners, {
        name=n;
        listener=l;
    });
end

return LuaLooper;