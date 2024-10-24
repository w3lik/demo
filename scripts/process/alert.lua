local process = Process("alert")

process:onStart(function(this)
    
    time.setInterval(3, function()
        alerter.message(Player(1), true, string.rand(10))
    end)

end)