local process = Process("range")

process:onStart(function(this)

    local bubble = this:bubble()

    local u1 = Unit(TPL_UNIT.HeroFlameLord, Player(1), 0, -2500, 66.6)
    u1:abilitySlot():tail(6)

    ---@param damageData noteOnUnitDamageData
    u1:onEvent(EVENT.Unit.Damage, function(damageData)
        damageData.triggerUnit:exp("+=10")
    end)
    bubble.u1 = u1

    ---@type Unit[]
    for i = 1, 50 do
        local x1, y1 = math.rand(-500, 500), -500
        local u2 = Unit(TPL_UNIT.Footman, Player(2), x1, y1, 0)
        bubble["u2" .. i] = u2
    end

end)
