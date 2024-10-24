local process = Process("team")

process:onStart(function(this)

    local bubble = this:bubble()

    local t1 = Team("小小吃饭队")
        :nameSync(true)
        :colorSync(true)
        :members({ 2, 3, 4, 5, 6 })
        :color(2)

    bubble.t1 = t1

    time.setTimeout(3, function()
        t1:name("小小吐饭队"):color(PLAYER_COLOR_GREEN)
    end)

    for i = 1, 20 do
        local u = t1:unit(TPL_UNIT.Footman, 0, 0)
        bubble["u" .. i] = u
    end

end)