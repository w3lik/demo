local process = Process("destructable")

process:onStart(function(this)

    local bubble = this:bubble()

    ---@type Destructable[]
    local ds = {}
    for i = 1, 3, 1 do
        local d = Destructable("Cage", 0, 0, 0, 0, nil, nil)
        table.insert(ds, d)
        bubble["ds" .. i] = d
    end

    bubble.tree = Destructable("WTst", 0, -500, 200, 0, 2, 0)
    time.setTimeout(3, function()
        bubble.tree:modelAlias("LTlt")
    end)

    bubble.timer = time.setInterval(0.5, function()
        for _, d in ipairs(ds) do
            d:position(math.rand(-300, 300), math.rand(-300, 300), math.rand(0, 100))
            d:facing(math.rand(0, 359))
             :scale(math.rand(30, 200) * 0.01)
            print(d:x(), d:y(), d:z(), d:facing(), d:scale())
        end
    end)

end)