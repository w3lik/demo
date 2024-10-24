local process = Process("reborn")

process:onStart(function(this)

    local bubble = this:bubble()

    for i = 1, 10 do
        local u1 = Unit(TPL_UNIT.Footman, Player(1), 0, -1000, 66.6):reborn(2)
        u1:period(1)
        bubble["u" .. i] = u1
    end

end)