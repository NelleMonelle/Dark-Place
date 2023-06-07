return function(cutscene, event, player, facing)
    --event.interacted = true

    local kris = cutscene:getCharacter("kris")
    local susie = cutscene:getCharacter("susie")
    local ralsei = cutscene:getCharacter("ralsei")
    local noelle = cutscene:getCharacter("noelle")

    if Game.money <= 0 and not event.interacted then
        cutscene:showShop()
        local shopbox = cutscene.shopbox
        Game.world.music:pause()
        
        cutscene:text("* Lmao you're broke as\n          [func:remove][color:yellow]fuck[noskip][wait:1.2s]", {functions = {
            remove = function()
                Game.money = Game.money - 1
                Assets.playSound("locker")

                local fx = shopbox:addFX(ColorMaskFX({1, 1, 0}, 0.5))
                Game.stage.timer:tween(1, fx, {amount = 0}, "out-quad", function()
                    shopbox:removeFX(fx)
                end)

                Game.world.fader:fadeIn(nil, {speed = 0.8, color = {1, 1, 1}, alpha = 1})

                if kris then
                    kris:setSprite("fell")
                end
                susie:setSprite("fell")
                if ralsei then ralsei:setSprite("splat") end
                if noelle then
                    noelle:setSprite("collapsed")
                    noelle.sprite.flip_x = true
                end
            end
        }})
        
        cutscene:hideShop()
        cutscene:wait(0.5)
        if noelle then
            noelle.sprite.flip_x = false
            noelle:resetSprite()
            noelle:shake(4)
            Assets.playSound("wing")
            cutscene:wait(0.5)
        end
        if ralsei then
            ralsei:resetSprite()
            ralsei:shake(4)
            Assets.playSound("wing")
            cutscene:wait(0.5)
        end
        if kris then
            susie:resetSprite()
            susie:shake(4)
            Assets.playSound("wing")
            cutscene:wait(0.5)
            kris:resetSprite()
            kris:shake(4)
            Assets.playSound("wing")
        else
            cutscene:wait(0.5)
            susie:resetSprite()
            susie:shake(4)
            Assets.playSound("wing")
        end
        cutscene:wait(0.1)
        Game.world.music:resume()
        cutscene:wait(0.4)
        return
    end

    if not event.interacted then
        event.interacted = true
        cutscene:showShop()
        cutscene:setSpeaker(event)
        
        cutscene:text("* These [color:yellow]bananas[color:reset] are [color:yellow]Pissing[color:reset] me\noff...")
        
        while Game.money > 0 do
            Game.money = math.floor(Utils.lerp(Game.money, 0, 0.33))
            cutscene:wait(1/30)
        end
        
        cutscene:text("* I'm a   [color:yellow]Starwalker[color:reset]")
        
        cutscene:setSpeaker()
        cutscene:hideShop()
        cutscene:wait(0.25)
        Assets.playSound("save")
        cutscene:wait(0.5)
        Game:saveQuick(Game.world.player:getPosition())
        
        cutscene:text("* (The   [color:yellow]Starwalker[color:reset][wait:6]\n   somehow saved your game...)")
        
    else
        --Game.world.music:stop()
        
        cutscene:text("* [color:yellow]You[color:reset] are [color:yellow]Pissing[color:reset] me off...", nil, event)
        
        cutscene:text("* I,[wait:5] uh,[wait:5] what?", "sus_nervous", "susie")
        cutscene:text("* Well,[wait:5] hey,[wait:5] you know\nwhat?", "annoyed", "susie")
        cutscene:text("* You piss us off too.", "smirk", "susie")
        Game.world.music:fade(0,1)
        local cutscene_music = Music()
        cutscene_music:play("susie")
        cutscene:detachFollowers()
        if kris then
            cutscene:walkTo(kris, kris.x, kris.y - 40, 1, "down", true)
            cutscene:wait(cutscene:walkTo(susie, kris.x, kris.y, 1, facing))
        end
        cutscene:text("* If you have a problem\nwith us,[wait:5] then we have\na problem with you.", "smirk", "susie")
        cutscene:text("* Do you know what we do\nwith problems?", "smirk", "susie")
        cutscene:text("* We stomp.[wait:10] Them.[wait:10] Into.[wait:10]\nThe.[wait:10] Ground.", "smile", "susie")
        cutscene_music:stop()
        Assets.playSound("boost")

        event.sprite:set("wings")

        local offset = event.sprite:getOffset()

        local flash_x = event.x - (event.actor:getWidth() / 2 - offset[1]) * 2
        local flash_y = event.y - (event.actor:getHeight() - offset[2]) * 2

        local flash = FlashFade("npcs/starwalker/starwalker_wings", flash_x, flash_y)
        flash.flash_speed = 0.5
        flash:setScale(2, 2)
        flash.layer = event.layer + 1
        event.parent:addChild(flash)

        cutscene:wait(1)
        cutscene:text("* Uh,[wait:5] what-", "surprise_frown", "susie", {auto=true})

        local encounter = cutscene:startEncounter("og_starwalker", true, {{"og_starwalker", event}})

        local defeated_enemies = encounter:getDefeatedEnemies()

        if defeated_enemies then
            local done_state = defeated_enemies[1].done_state

            if done_state then
                if done_state == "VIOLENCED" or done_state == "KILLED" or done_state == "FROZEN" then
                    event.sprite:resetSprite()
                    event.interacted = false
                    Game.world.map:getEvent(45):remove()
                    cutscene:wait(1)
                    cutscene:text("* Hey,[wait:5] uh.", "neutral", "susie")
                    cutscene:text("* I know they were in our way,[wait:5] but...", "annoyed_down", "susie")
                    susie:setFacing("up")
                    cutscene:text("* What happened to the ACTing thing?", "neutral", "susie")
                    cutscene:text("* ...", "annoyed_down", "susie")
                    Assets.playSound("ominous")
                    cutscene:wait(1.5)
                    Game:setFlag("weird", true)
                    Game:setFlag("killedTRUEOriginalStarwalkerInAlley2", true)
                    Game.world.music:play("cybercity_alt")
                    Game.world.music.volume = 1
                    Game.world.player:setFacing("down")
                else
                    cutscene:text("* Wow, con grats on [color:yellow]beating[color:reset] my [color:yellow]ass[color:reset]")
                    cutscene:text("* I will give you the keys of my\n          [color:yellow]house[color:reset]")
                    if not Kristal.libCall("achievements", "hasAch", "unoriginalstarwalker") then
                        Kristal.callEvent("completeAchievement", "unoriginalstarwalker")
                    end
                    Game:setFlag("unlockedStarwalkerValley", true)
                    cutscene:text("* (You got the keys to the\n          [color:yellow]starwalker[color:reset]\n                    valley)")
                end
            end
        end

        --[color:yellow]Starwalker[color:reset]

        

        cutscene:interpolateFollowers()
        cutscene:attachFollowers()

        


    end

end