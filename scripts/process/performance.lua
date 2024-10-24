local process = Process("performance")

process:onStart(function(this)
    
    -- missile
    --do
    --    local num = 150
    --    for _ = 1, num do
    --        local x1, y1 = math.rand(-3000, -1500), math.rand(-2000, 2000)
    --        local x2, y2 = math.rand(1500, 3000), math.rand(-2000, 2000)
    --        local h = math.rand(800, 1000)
    --        ability.missile({
    --            modelAlias = "ProcMissile",
    --            sourceVec = { x1, y1 },
    --            targetVec = { x2, y2 },
    --            speed = 1000,
    --            height = h,
    --            acceleration = 0,
    --        })
    --    end
    --end
    
    -- array
    --do
    --    collectgarbage("collect")
    --    local data = {}
    --    local x1 = os.clock()
    --    for _ = 1, 100000 do
    --        table.insert(data, Array())
    --    end
    --    for _, v in ipairs(data) do
    --        destroy(v)
    --    end
    --    data = nil
    --    print(string.format("Time: %.3f", os.clock() - x1))
    --end
    
    -- effect
    --do
    --    collectgarbage("collect")
    --    local data = {}
    --    local x1 = os.clock()
    --    for _ = 1, 10000 do
    --        table.insert(data, Effect("OrbVenomMissile", 0, 0, 0))
    --    end
    --    for _, v in ipairs(data) do
    --        destroy(v)
    --    end
    --    data = nil
    --    print(string.format("Time: %.3f", os.clock() - x1))
    --end
    
    -- obj
    --do
    --    collectgarbage("collect")
    --    local data = {}
    --    local x1 = os.clock()
    --    for _ = 1, 10000 do
    --        --table.insert(data, Unit(TPL_UNIT.Footman, Player(1), 0, 0, 0)) -- unit
    --        --table.insert(data, Item(TPL_ITEM.IT1)) -- item
    --        table.insert(data, Ability(TPL_ABILITY.AB1)) -- ability
    --    end
    --    for _, v in ipairs(data) do
    --        destroy(v)
    --    end
    --    data = nil
    --    print(string.format("Time: %.3f", os.clock() - x1))
    --end
    
    -- timer
    --do
    --    collectgarbage("collect")
    --    local x1 = os.clock()
    --    for _ = 1, 100000 do
    --        time.setTimeout(0.1, function()
    --            -- nothing
    --        end)
    --        time.setTimeout(0.5, function()
    --            -- nothing
    --        end)
    --        time.setTimeout(1.0, function()
    --            -- nothing
    --        end)
    --    end
    --    print(string.format("Time: %.3f", os.clock() - x1))
    --end
    
    -- attr
    --do
    --    local u = Unit(TPL_UNIT.Footman, Player(1), 0, 0, 0)
    --    u:level(1)
    --    u:levelMax(99999)
    --    collectgarbage("collect")
    --    local x1 = os.clock()
    --    for _ = 1, 100000 do
    --        -- defend(not jasscall)
    --        --local def = u:defend()
    --        --u:defend(def + 1)
    --        -- attack(with jasscall)
    --        local atk = u:attack()
    --        u:attack(atk + 1)
    --        -- exp(with data cale)
    --        --local exp = u:exp()
    --        --u:exp(exp + 1)
    --        -- buff
    --        --local b = u:buff("test_buff")
    --        --b:duration(1)
    --        --b:name("测试buff")
    --        --b:icon("ability/ChainLightning")
    --        --b:description("description")
    --        --b:purpose(function(buffObj) buffObj:str("+=1") end)
    --        --b:rollback(function(buffObj) buffObj:str("-=1") end)
    --        --b:name("测试buff")
    --        --u:buffClear({ key = "test_buff" })
    --    end
    --    destroy(u)
    --    print(string.format("Time: %.3f", os.clock() - x1))
    --end
    
    -- attr
    --do
    --    collectgarbage("collect")
    --    local u = Unit(TPL_UNIT.Footman, Player(1), 0, 0, 0)
    --    u:level(1)
    --    u:levelMax(99999)
    --    local x1 = os.clock()
    --    for _ = 1, 100000 do
    --        local exp = u:exp()
    --        u:exp(exp + 1)
    --    end
    --    destroy(u)
    --    print(string.format("Time: %.3f", os.clock() - x1))
    --end
    
    -- orderRoute
    --do
    --    local path = {
    --        { -500, -1000, },
    --        { 500, -1000, },
    --        { 500, -2000, },
    --        { -500, -2000 },
    --    }
    --    local routes = {}
    --    for i = 1, #path do
    --        routes[i] = table.wheel(path, 1 * (i - 1))
    --    end
    --    local bubble = this:bubble()
    --    time.setInterval(1, function()
    --        for i = 1, #routes do
    --            local r = routes[i]
    --            local u = Unit(TPL_UNIT.Footman, Player(i), r[1][1], r[1][2], 0)
    --            u:superposition("locust", 1)
    --            bubble[u:id()] = u
    --            u:orderRoute(true, r)
    --        end
    --    end)
    --end

end)