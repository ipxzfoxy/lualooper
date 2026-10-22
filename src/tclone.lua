return function (table)
    local instance = {};
    for k, v in pairs(table) do
        instance[k] = v;
    end

    return instance
end