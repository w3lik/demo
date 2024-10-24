local process = Process("image")

process:onStart(function(this)
    
    local img = Image("square\\build.tga", 16, 16)
    
    local r, status = 16, 16, false
    japi.AsyncRefresh("img", function()
        local tx = japi.DZ_GetMouseTerrainX()
        local ty = japi.DZ_GetMouseTerrainY()
        img:size(r, r)
        img:position(tx, ty)
        if (status) then
            if (r > 16) then
                r = r - 1
            else
                status = not status
            end
        else
            if (r < 256) then
                r = r + 1
            else
                status = not status
            end
        end
    end)
end)
