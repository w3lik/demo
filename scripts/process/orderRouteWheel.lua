local process = Process("orderRouteWheel")

process:onStart(function(this)

    local bubble = this:bubble()

    local path = {
        {
            -500, -1000,
            ---@param orderUnit Unit
            function(orderUnit)
                orderUnit:effect("HCancelDeath")
                orderUnit:orderRouteResume()
            end
        },
        { 500, -1000, },
        { 500, -2000, },
        { -500, -2000 },
    }
    local routes = {}
    for i = 1, #path do
        routes[i] = table.wheel(path, 1 * (i - 1))
    end

    for i = 1, #routes do
        local r = routes[i]
        local u = Unit(TPL_UNIT.HeroFlameLord, Player(i), r[1][1], r[1][2], 0)
        bubble["u" .. i] = u
        u:orderRoute(true, r)
        u:period(5)
    end

end)