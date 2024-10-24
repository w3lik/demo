local process = Process("camera")

process:onStart(function(this)

    async.call(Player(1), function()
        camera.shake(10, 0.2, 10)
        camera.quake(10, 5)

        print(japi.CameraIsShaking()) -- true
        print(japi.CameraIsQuaking()) -- true

        time.setTimeout(7.5, function()
            print(japi.CameraIsShaking())  -- true
            print(japi.CameraIsQuaking())  -- false
        end)
    end)

end)

