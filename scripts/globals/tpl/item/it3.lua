local a = AbilityTpl()
    :targetType(ABILITY_TARGET_TYPE.pas)
    :attributes({ { "defend", 10, 2 } })

TPL_ITEM.IT3 = ItemTpl()
    :name("物品3")
    :icon(TEAM_COLOR_BLP_BROWN)
    :levelMax(5)
    :ability(a)