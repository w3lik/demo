local process = Process("terrain")

process:onStart(function(this)

    print(J.I2C(terrain.getType(0, 0)))
    print(terrain.isType(0, 0, TERRAIN_CITY_BLACKMARBLE))

    time.setTimeout(3, function()
        terrain.setType(0, 0, TERRAIN_DALARAN_BRICKTILES, 1024, 1, -1)
        print("TERRAIN_LORDS_DIRTROUGH=", terrain.isType(0, 0, TERRAIN_DALARAN_BRICKTILES))
    end)

end)