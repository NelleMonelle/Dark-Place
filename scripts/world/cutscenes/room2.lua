return {
	chan = function(cutscene, event)
		cutscene:showNametag("Kris-Chan")
		cutscene:text("* Go! Sonichu! Go out and zap to the extreme!")
		cutscene:text("* Sonichu! Use EXPLOSION!!!")
		cutscene:hideNametag()

        local explosion = event:explode()
        cutscene:wait(function() return explosion:isRemoved() end)

        local susie = cutscene:getCharacter("susie")
        if susie then
            cutscene:wait(3)
            cutscene:showNametag("Susie")
            cutscene:setSpeaker(susie)
            cutscene:text("* What?", "shock")
            cutscene:hideNametag()
        end
	end,

    poseur = function(cutscene, event)
        cutscene:text("* It's a mannequin.[wait:10] Do you want to fight it?")
        if cutscene:choicer({"Yes", "No"}) == 2 then
            return
        end

        cutscene:startEncounter("poseur", true, {{"poseur", event}})

        cutscene:wait(2)
        event:explode()
        cutscene:wait(5)

        if cutscene:getCharacter("susie") then
            cutscene:showNametag("Susie")
            cutscene:text("* ...", "nervous_side", "susie")
            cutscene:text("* That was weird.", "nervous", "susie")
            cutscene:hideNametag()
        end
    end
}