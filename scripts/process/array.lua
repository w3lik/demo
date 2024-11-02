local process = Process("array")

process:onStart(function(this)
    
    local a = Array()
    a:set("q", 1)
    a:set("w", 2)
    a:set("e", 3)
    a:set("r", 4)
    
    print("========")
    dump(a)
    a:forEach(function(key, value)
        print("1=", key, value)
        a:forEach(function(k2, v2)
            print("2=", k2, v2)
            --a:set(k2, nil)
        end)
        a:set(key, nil)
    end, true)
    dump(a)
    
    destroy(a)
    
    local a2 = Array()
    for i = 1, 10 do
        local k = "A" .. i
        a2:set(k, function()
            print(k, a2:count())
            a2:set(k, nil)
        end)
    end
    a2:forEach(function(_, val)
        val()
    end)
    print(" a2:count() = ", a2:count())
    
    local evt = "TempGameEvent"
    for i = 1, 10 do
        local k = "G" .. i
        Game():onEvent(evt, k, function(evtData)
            print(k, evtData.word)
            Game():onEvent(evt, k, nil)
        end)
    end
    event.syncTrigger(Game(), evt, { word = "hello world" })

end)