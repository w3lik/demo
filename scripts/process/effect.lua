local process = Process("effect")

process:onStart(function(this)

    local bubble = this:bubble()

    local eff = Effect("GlaiveMissile", 0, 0, 100, -1)
    bubble.eff = eff
    local status = false
    local size = 0.5
    mouse.onMove("eff", 3, function(_)
        if (status) then
            size = size - 0.02
            if (size <= 0.5) then
                status = not status
            end
        else
            size = size + 0.02
            if (size > 5) then
                status = not status
            end
        end
        eff:size(size)
        eff:position(japi.DZ_GetMouseTerrainX(), japi.DZ_GetMouseTerrainY(), japi.DZ_GetMouseTerrainZ() + 100)
    end)

end)

process:onOver(function(this)
    mouse.onMove("eff", 3, nil)
end)

