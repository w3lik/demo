local process = Process("timerAsync")

process:onStart(function(this)

    async.call(Player(1), function()
        local t1 = time.setInterval(1, function(curTimer)
            print("t1")
        end)
        -- 异步bubble必须异步调用，同异步交互调用应当禁止
        this:bubble().t1 = t1
    end)

    async.call(Player(2), function()
        local t2 = time.setInterval(1, function(curTimer)
            print("t2")
        end)
        this:bubble().t2 = t2
    end)

end)

process:onOver(function(this)
    async.call(Player(1), function()
        -- 异步bubble数据需手动划域清理
        this:buffClear()
    end)
    async.call(Player(2), function()
        this:buffClear()
    end)
end)

