local actor, super = Class(Actor, "notypee")

function actor:init()
    super.init(self)

    -- Display name (optional)
    self.name = "Notypee"

    -- Width and height for this actor, used to determine its center
    self.width = 21
    self.height = 30

    -- Hitbox for this actor in the overworld (optional, uses width and height by default)
    self.hitbox = {-2, 17, 24, 13}

    -- Color for this actor used in outline areas (optional, defaults to red)
    self.color = {0.5, 0, 0}

    -- Whether this actor flips horizontally (optional, values are "right" or "left", indicating the flip direction)
    self.flip = nil

    -- Path to this actor's sprites (defaults to "")
    self.path = "world/npcs/notypee"
    -- This actor's default sprite or animation, relative to the path (defaults to "")
    self.default = "idle"

    local date = os.date("*t")
    print(date.day, date.month, Game:getFlag("notypee_saw_debt"))
    if date.day == 23 and date.month == 12 and not Game:getFlag("notypee_saw_debt") then
        self.debt = true
        self.default = "debt"
    end

    -- Sound to play when this actor speaks (optional)
    self.voice = nil
    -- Path to this actor's portrait for dialogue (optional)
    self.portrait_path = nil
    -- Offset position for this actor's portrait (optional)
    self.portrait_offset = nil

    -- Whether this actor as a follower will blush when close to the player
    self.can_blush = false

    -- Table of talk sprites and their talk speeds (default 0.25)
    self.talk_sprites = {}

    -- Table of sprite animations
    self.animations = {
        -- Looping animation with 0.25 seconds between each frame
        -- (even though there's only 1 idle frame)
        ["idle"] = {"idle", 0.25, true},
    }

    -- Table of sprite offsets (indexed by sprite name)
    self.offsets = {
        -- Since the width and height is the idle sprite size, the offset is 0,0
        ["idle"] = {0, 0},
        ["gymbag"] = {-1.5, 0},
        ["tutel"] = {-6, 9},
        ["the_swarm"] = {-2, 0}
    }

    self.taunt_sprites = {"gymbag", "tutel", "the_swarm"}
end

return actor