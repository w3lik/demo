local process = Process("synthesis")

process:onStart(function(this)
    
    local bubble = this:bubble()
    bubble.u1 = Unit(TPL_UNIT.DarkRanger, Player(1), 0, -200, 270)
    
    synthesis.formula(TPL_ITEM.HC2, TPL_ITEM.HC1, TPL_ITEM.HC1, TPL_ITEM.HC1)
    synthesis.formula(TPL_ITEM.HC4, TPL_ITEM.HC2, TPL_ITEM.HC3)
    synthesis.formula(TPL_ITEM.HCR, TPL_ITEM.HC1, TPL_ITEM.HC4)
    
    dump({
        s2f = synthesis._s2f,
        f2s = synthesis._f2s,
        sqr = synthesis._sqr,
    })
    
    print("conflate->unit->")
    local it1, it2, it3 = Item(TPL_ITEM.HC1), Item(TPL_ITEM.HC1), Item(TPL_ITEM.HC1)
    it1:position(-100, -200)
    it2:position(0, -200)
    it3:position(100, -200)
    time.setTimeout(3, function()
        print(bubble.u1, it1, it2, it3)
        local c = synthesis.conflate(bubble.u1, it1, it2, it3)
        for _, v in ipairs(c) do
            print("##", v:name())
        end
    end)
    
    print("conflate:")
    local c = synthesis.conflate(nil, TPL_ITEM.HC2, TPL_ITEM.HC3, TPL_ITEM.HC1, TPL_ITEM.HC1, TPL_ITEM.HC1, TPL_ITEM.HC1)
    for _, v in ipairs(c) do
        print("::", v:name())
    end
    
    print("separate:", TPL_ITEM.HCR:name())
    local s = synthesis.separate(nil, TPL_ITEM.HCR)
    for _, v in ipairs(s) do
        print("::", v:name())
    end
    
    print("separate-re:", TPL_ITEM.HCR:name())
    local s2 = synthesis.separate(nil, TPL_ITEM.HCR, true)
    for _, v in ipairs(s2) do
        print("::", v:name())
    end
    
    print("conflate-unit")
    bubble.u = Unit(TPL_UNIT.DarkRanger, Player(1), 0, -500, 270)
    bubble.u:itemSlot():insert(TPL_ITEM.HC1)
    synthesis.conflate(bubble.u, TPL_ITEM.HC2, TPL_ITEM.HC3)
    
    -- change formulas at any time
    synthesis.formula(TPL_ITEM.HCR, TPL_ITEM.HC1, TPL_ITEM.HC3, TPL_ITEM.HC3, TPL_ITEM.HC4)
    
    time.setTimeout(5, function()
        print("separate-unit-new")
        local s3 = synthesis.separate(bubble.u, TPL_ITEM.HCR, true)
        local x, y = bubble.u:x(), bubble.u:y()
        for _, v in ipairs(s3) do
            print("::", v:name())
            -- The logic used here: Items that exceed are created in the game map
            Item(v):position(x, y)
        end
    end)

end)