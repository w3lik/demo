--- 火焰巨魔
TPL_UNIT.HeroFlameLord = UnitTpl("HeroFireLord")
    :modelAlias("HeroFlameLord")
    :scale(1.2)
    :icon("unit\\HeroAvatarOfFlame")
    :abilitySlot({ TPL_ABILITY.AB1, TPL_ABILITY.AB2, TPL_ABILITY.AB3, TPL_ABILITY.AB4, TPL_ABILITY.AB4 })
    :itemSlot({ TPL_ITEM.IT1, TPL_ITEM.IT2, TPL_ITEM.IT1, TPL_ITEM.IT2, TPL_ITEM.IT1, TPL_ITEM.IT2 })
    :level(1)
    :reborn(2)
    :hp(1000)
    :hpRegen(150)
    :mp(100)
    :mpRegen(10)
    :move(522)
    :attack(300)
    :attackMode(AttackMode():mode("missile"):missileModel("FaerieDragonMissile"):homing(true):height(200):speed(1200))
    :attackSpaceBase(2)
    :attackRange(800)
    :attackSpeed(100)
    :crit(10)
    :odds("crit", 10)
    :hpSuckAttack("+=10")
    :mpSuckAttack("+=10")