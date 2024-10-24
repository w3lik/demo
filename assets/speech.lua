--【 语音模版 】
-- 如配置model，对应alias的assets_model须前行定义
-- 如下面的 HeroFlameLord 和 Footman

--无语音
assets_speech('', {
    immovable = { spd = 0, turnRate = 0 },
    building = { isbldg = 1, spd = 0, pathTex = "PathTextures\\4x4SimpleSolid.tga", buildingShadow = "", selCircOnWater = 1, occH = 0, uberSplat = "", canFlee = 0, campaign = 0, collision = 72, hideOnMinimap = 1, canFlee = 0 },
})
--圣骑士
assets_speech("HeroPaladin")
--大魔法师
assets_speech("HeroArchMage")
--山丘之王
assets_speech("HeroMountainKing")
--血魔法师
assets_speech("HeroBloodElf")
--阿尔塞斯
assets_speech("Arthas")
--海军上将普洛德摩尔
assets_speech("Proudmoore")
--吉安娜
assets_speech("Jaina")
--加理瑟斯
assets_speech("Garithos")
--追风之西尔瓦娜斯
assets_speech("Sylvanus")
--火凤凰
assets_speech("Phoenix")
--剑圣
assets_speech("HeroBladeMaster")
--地狱咆哮
assets_speech("Grom")
--先知
assets_speech("HeroFarSeer")
--萨尔
assets_speech("Thrall")
--牛头人酋长
assets_speech("HeroTaurenChieftain")
--暗影猎手
assets_speech("HeroShadowHunter")
--兽王
assets_speech("Beastmaster")
--死骑
assets_speech("HeroDeathKnight")
--巫妖
assets_speech("HeroLich")
--恐惧魔王
assets_speech("HeroDreadLord")
--地穴领主
assets_speech("HeroCryptLord")
--克尔苏加德
assets_speech("KelthuzadNecro")
--克尔苏加德 (幽灵)
assets_speech("KelThuzadLich")
--深渊魔王
assets_speech("PitLord")
--阿克蒙德
assets_speech("Warlock")
--基尔加丹
assets_speech("Tichondrius")
--丛林守护者
assets_speech("HeroKeeperoftheGrove")
--月之女祭司
assets_speech("HeroMoonPriestess")
--守望者
assets_speech("herowarden")
--恶魔猎手
assets_speech("HeroDemonHunter")
--恶魔猎手(邪恶)
assets_speech("EvilIllidan")
--法里奥
assets_speech("Furion")
--玛尔法里奥
assets_speech("MalFurion")
--黑暗游侠
assets_speech("DarkRanger")
--火焰巨魔
assets_speech("HeroFireLord", { "HeroFlameLord" })
--炼金术士
assets_speech("HEROGoblinALCHEMIST")
--美杜莎
assets_speech("SeaWitch")
--修补匠
assets_speech("HeroTinker")
--阿卡玛
assets_speech("Akama")
--熊猫酒仙
assets_speech("PandarenBrewmaster")
--熊猫大地
assets_speech("EarthPandarenBrewmaster")
--熊猫雷暴
assets_speech("StormPandarenBrewmaster")
--熊猫烈焰
assets_speech("FirePandarenBrewmaster")
--农民
assets_speech("Peasant")
--步兵
assets_speech("Footman", {
    avatar = assets_speech_extra({ model = "Footman" }),
    immovable = assets_speech_extra({ spd = 0, turnRate = 0 }),
    building = assets_speech_extra({ isbldg = 1, spd = 0, pathTex = "PathTextures\\4x4SimpleSolid.tga", buildingShadow = "", selCircOnWater = 1, occH = 0, uberSplat = "", canFlee = 0, campaign = 0, collision = 72, hideOnMinimap = 1, canFlee = 0 }),
    buildingMove = assets_speech_extra({ isbldg = 1, spd = 100, pathTex = "PathTextures\\4x4SimpleSolid.tga", buildingShadow = "", selCircOnWater = 1, occH = 0, uberSplat = "", canFlee = 0, campaign = 0, collision = 72, hideOnMinimap = 1, canFlee = 0 }),
})
--骑士
assets_speech("Knight")
--矮人火枪手
assets_speech("Rifleman")
--迫击炮小队
assets_speech("MortarTeam")
--飞行机器
assets_speech("Gyrocopter")
--狮鹫骑士
assets_speech("GryphonRider")
--牧师
assets_speech("Priest")
--女巫
assets_speech("Sorceress")
--蒸汽机车
assets_speech("SteamTank")
--魔法破坏者
assets_speech("SpellBreaker")
--龙鹰骑士
assets_speech("BloodElfDragonHawk")
--水元素
assets_speech("WaterElemental")
--剑士
assets_speech("HighElfSwordsman")
--牧师使者
assets_speech("HumanMage")
--高级精灵男
assets_speech("BloodElfWorker")
--麦迪文
assets_speech("Medivh")
--苦工
assets_speech("Peon")
--兽族步兵
assets_speech("Grunt")
--兽族步兵(邪恶)
assets_speech("ChaosGrunt")
--掠夺者
assets_speech("WolfRider")
--牛头人
assets_speech("Tauren")
--巨魔猎头者
assets_speech("HeadHunter")
--粉碎者
assets_speech("Catapult")
--科多兽
assets_speech("KotoBeast")
--科多兽(无驾驶员)
assets_speech("KotoBeastNoRider")
--风骑士
assets_speech("WyvernRider")
--巨魔蝙蝠骑士
assets_speech("TrollBatrider")
--巨魔萨满
assets_speech("WitchDoctor")
--萨满
assets_speech("Shaman")
--灵魂行者
assets_speech("SpiritWalker")
--幽魂之狼
assets_speech("SpiritWolf")
--毒蛇守卫
assets_speech("SerpentWard")
--岗哨守卫
assets_speech("SentryWard")
--静止陷阱
assets_speech("StasisTotem")
--治疗守卫
assets_speech("HealingWard")
--兽族战争首领
assets_speech("ChaosWarlord")
--德拉克苏尔
assets_speech("ShamanX")
--侍僧
assets_speech("Acolyte")
--阴影
assets_speech("Shade")
--食尸鬼
assets_speech("Ghoul")
--憎恶
assets_speech("Abomination")
--绞肉车
assets_speech("MeatWagon")
--穴居恶魔
assets_speech("CryptFiend")
--石像鬼
assets_speech("Gargoyle")
--女妖
assets_speech("Banshee")
--女妖(灵魂)
assets_speech("BansheeGhost")
--不死族巫师
assets_speech("Necromancer")
--十胜石雕像
assets_speech("ObsidianStatue")
--冰霜巨龙
assets_speech("FrostWyrm")
--蝗虫
assets_speech("Locust")
--疾病云雾
assets_speech("PlagueCloud")
--骷髅战兵
assets_speech("Skeleton")
--骷髅弓箭手
assets_speech("SkeletonArcher")
--腐尸甲虫
assets_speech("Scarab")
--僵尸
assets_speech("Zombie")
--小精灵
assets_speech("Wisp")
--弓箭手
assets_speech("Archer")
--女猎手
assets_speech("Huntress")
--树妖
assets_speech("Dryad")
--投刃车
assets_speech("Ballista")
--角鹰兽
assets_speech("Hippogryph")
--角鹰兽骑士
assets_speech("RiddenHippogryph")
--奇美拉
assets_speech("Chimaera")
--猛禽德鲁伊
assets_speech("DruidoftheTalon")
--利爪德鲁伊
assets_speech("DruidoftheClaw")
--山岭巨人
assets_speech("MountainGiant")
--精灵龙
assets_speech("FaerieDragon")
--猫头鹰侦察者
assets_speech("owl")
--树人
assets_speech("Ent")
--复仇天神
assets_speech("SpiritOfVengeance")
--复仇之魂
assets_speech("Vengeance")
--守望者(暗杀)
assets_speech("Assassin")
--飞蛇
assets_speech("WindSerpent")
--娜迦海妖
assets_speech("NagaSiren")
--飞龙
assets_speech("SnapDragon")
--娜迦暴徒
assets_speech("NagaMyrmidon")
--娜迦皇家卫兵
assets_speech("NagaRoyalGuard")
--口袋工厂
assets_speech("PocketFactory")
--口袋工厂(人工地精)
assets_speech("ClockwerkGoblin")
--炎魔
assets_speech("LavaSpawn")
--米纱熊
assets_speech("GrizzlyBear")
--战鹰
assets_speech("WarEagle")
--海龟
assets_speech("GiantSeaTurtle")
--小鱼人
assets_speech("Murloc")
--龙
assets_speech("AzureDragon")
--耐瑟龙
assets_speech("NetherDragon")
--小蜘蛛
assets_speech("Spider")
--蛛网怪
assets_speech("Nerubian")
--鹰女妖
assets_speech("Harpy")
--虚空假面(红)
assets_speech("Unbroken")
--虚空假面(紫)
assets_speech("ObsidianDestroyer")
--地狱火
assets_speech("Infernal")
--毁灭守卫
assets_speech("DoomGuard")
--刺蛇
assets_speech("Hydralisk")
--灵兽
assets_speech("Felhound")
--淤泥怪
assets_speech("SludgeMonster")
--岩石傀儡
assets_speech("RockGolem")
--灵肉傀儡
assets_speech("abomination")
--阿卡那瑟德蝎子
assets_speech("Archnathid")
--强盗
assets_speech("Bandit")
--龙卵战士
assets_speech("DragonSpawn")
--半人马战士
assets_speech("Centaur")
--半人马弓箭手
assets_speech("CentaurArcher")
--森林巨魔
assets_speech("ForestTroll")
--森林巨魔牧师
assets_speech("ForestTrollShadowPriest")
--冰原巨魔战士
assets_speech("IceTroll")
--冰原巨魔牧师
assets_speech("IceTrollShadowPriest")
--熊怪
assets_speech("Furbolg")
--深海巨猎人
assets_speech("SeaGiant")
--豺狼
assets_speech("Gnoll")
--豺狼猎手
assets_speech("GnollArcher")
--狗头人
assets_speech("Kobold")
--巨虾
assets_speech("Lobstrokk")
--猛犸
assets_speech("Mammoth")
--玛格战士
assets_speech("Magnataur")
--食人鬼
assets_speech("Ogre")
--鹰嘴野兽
assets_speech("Owlbear")
--豪猪
assets_speech("Bristleback")
--死亡幽魂
assets_speech("Revenant")
--赛特斯地狱使者
assets_speech("Satyr")
--女妖精
assets_speech("Demoness")
--图斯卡
assets_speech("Tuskarr")
--野人
assets_speech("Wendigo")
--海豹
assets_speech("Seal")
--浣熊
assets_speech("Raccoon")
--老鼠
assets_speech("Rat")
--绵羊
assets_speech("Sheep")
--企鹅
assets_speech("Penguin")
--青蛙
assets_speech("Frog")
--秃鹰
assets_speech("Vulture")
--兔子
assets_speech("Rabbit")
--小鸡
assets_speech("Chicken")
--小蜥蜴
assets_speech("Skink")
--信天翁
assets_speech("Albatross")
--雪鹰
assets_speech("SnowOwl")
--鬃狼
assets_speech("Wolf")
--豪猪
assets_speech("QuillBeast")
--野猪
assets_speech("Pig")
--虫族小狗
assets_speech("Zergling")
--船
assets_speech("Boat")
--囚车
assets_speech("PrisonWagon")
--地狱机关人
assets_speech("InfernalMachine")
--地精地雷
assets_speech("GoblinLandMine")
--地精飞艇
assets_speech("GoblinZeppelin")
--地精工兵
assets_speech("GoblinSapper")
--地精撕裂者
assets_speech("IronGolem")
--马里恩(冲锋枪小哥)
assets_speech("TerranMarine")
--邪恶空间兽人(冲锋枪兽人)
assets_speech("ChaosSpaceOrc")
--村民男1
assets_speech("VillagerMan1")
--村民男2
assets_speech("VillagerMan2")
--村民女1
assets_speech("VillagerWoman")
--村民小孩
assets_speech("VillagerKid")