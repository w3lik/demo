local process = Process("timer")

process:onStart(function(this)

    local bubble = this:bubble()

    local t1 = time.setTimeout(100, function(curTimer)
        destroy(curTimer)
    end)
    bubble.t1 = t1

    local tt = FrameText("timer-test", FrameGameUI)
        :relation(FRAME_ALIGN_CENTER, FrameGameUI, FRAME_ALIGN_CENTER, 0, 0)
        :textAlign(TEXT_ALIGN_CENTER)
        :fontSize(10)
    bubble.tt = tt

    local t2 = time.setInterval(0.2, function(curTimer)
        if (isDestroy(t1)) then
            destroy(curTimer)
            tt:text("Destroyed")
            return
        end
        tt:text(t1:remain() .. '/' .. t1:period())
        if (t1:remain() == 110) then
            t1:remain("-=55")
            t1:pause()
            time.setTimeout(3, function()
                t1:resume()
            end)
        end
        if (t1:remain() == 95) then
            t1:remain("+=20")
            t1:period("+=25")
        end
        if (t1:remain() == 50) then
            t1:remain("-=40")
            t1:period("-=40")
        end
        if (t1:remain() == 5) then
            t1:remain("-=55")
        end
    end)

    bubble.t2 = t2

end)