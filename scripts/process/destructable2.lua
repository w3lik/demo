local process = Process("destructable2")

process:onStart(function(this)

    local bubble = this:bubble()

    ---@type Destructable[]
    for i = 1, 10, 1 do
        local d = Destructable("WTst", 0, -500 + i * 100, 0, 0, 1, 0)
        bubble["tree" .. i] = d
    end

    time.setTimeout(3, function()
        local g = Group():catch(DestructableClass, {
            circle = { x = 0, y = -500, radius = 700, }
        })
        if (#g > 0) then
            for _, d in ipairs(g) do
                destructable.kill(d)
            end
            time.setTimeout(3, function()
                for _, d in ipairs(g) do
                    destructable.reborn(d, true)
                end
            end)
        end
    end)

    ---@param deadData noteOnDestructableDeadData
    event.reactRegister(EVENT.Destructable.Dead, function(deadData)
        local id, name, x, y = deadData.triggerDestructable, deadData.name, deadData.x, deadData.y
        local o = h2d(id)
        if (isClass(o, DestructableClass)) then
            id = o:id()
        else
            id = J.I2C(J.GetDestructableTypeId(id))
        end
        print("DEAD:", id, name, x, y)
    end)

end)