local actor, super = Class(Actor, "brandon")

function actor:init()
    super.init(self)

    -- Display name (optional)
    self.name = "Brandon"

    -- Width and height for this actor, used to determine its center
    self.width = 26
    self.height = 46

    -- Hitbox for this actor in the overworld (optional, uses width and height by default)
    self.hitbox = {4, 34, 19, 14}

    -- Color for this actor used in outline areas (optional, defaults to red)
    self.color = {0, 1, 1}

    -- Path to this actor's sprites (defaults to "")
    local costume = Game:getFlag("brandon_costume")
    if costume ~= nil then
        if costume == 0 or costume > 2 then
            self.path = "party/brandon/dark"
        elseif costume == 1 then
            self.path = "party/brandon/dark"
        elseif costume == 2 then
            self.path = "party/brandon/light"
        end
    else
        self.path = "party/brandon/dark"
    end
    -- This actor's default sprite or animation, relative to the path (defaults to "")
    self.default = "walk"

    -- Sound to play when this actor speaks (optional)
    self.voice = "brandon"
    -- Path to this actor's portrait for dialogue (optional)
    self.portrait_path = "face/brandon"
    -- Offset position for this actor's portrait (optional)
    self.portrait_offset = {-10, -15}

    -- Whether this actor as a follower will blush when close to the player
    self.can_blush = false

    -- Table of sprite animations
    self.animations = {
        -- Movement animations
        ["slide"]               = {"slide", 4/30, true},

        -- Battle animations
        ["battle/idle"]         = {"battle/idle", 0.2, true},

        ["battle/attack"]       = {"battle/attack", 1/15, false},
        ["battle/act"]          = {"battle/act", 1/15, false},
        ["battle/spell"]        = {"battle/spell", 0.15, false},
        ["battle/item"]         = {"battle/item", 1/12, false, next="battle/idle"},
        ["battle/spare"]        = {"battle/act", 1/15, false, next="battle/idle"},

        ["battle/attack_ready"] = {"battle/attackready", 0.1, false},
        ["battle/act_ready"]    = {"battle/actready", 0.2, true},
        ["battle/spell_ready"]  = {"battle/spellready", 0.2, true},
        ["battle/item_ready"]   = {"battle/itemready", 0.2, true},
        ["battle/defend_ready"] = {"battle/defend", 1/15, false},

        ["battle/act_end"]      = {"battle/actend", 1/15, false, next="battle/idle"},

        ["battle/hurt"]         = {"battle/hurt", 1/15, false, temp=true, duration=0.5},
        ["battle/defeat"]       = {"battle/defeat", 1/15, false},

        ["battle/intro"]        = {"battle/attackready", 0.1, false},
        ["battle/victory"]      = {"battle/victory", 1/10, false}
    }

    -- Table of sprite offsets (indexed by sprite name)
    self.offsets = {
        -- Movement offsets
        ["walk/left"] = {0, 0},
        ["walk/right"] = {0, 0},
        ["walk/up"] = {0, 0},
        ["walk/down"] = {0, 0},

        ["slide"] = {0, 0},

        -- Battle offsets
        ["battle/idle"] = {-5, -1},

        ["battle/attack"] = {-5, -2},
        ["battle/attackready"] = {-5, -2},
        ["battle/act"] = {-6, -6},
        ["battle/actend"] = {-6, -6},
        ["battle/actready"] = {-6, -6},
        ["battle/spell"] = {-6, -2},
        ["battle/spellready"] = {-6, -2},
        ["battle/item"] = {-6, -6},
        ["battle/itemready"] = {-6, -6},
        ["battle/defend"] = {-13, -1},

        ["battle/defeat"] = {-8, -5},
        ["battle/hurt"] = {-5, -6},

        ["battle/intro"] = {-8, -9},
        ["battle/victory"] = {-3, 0}
    }

    self.mirror_sprites = {
        ["walk/down"] = "walk/up",
        ["walk/up"] = "walk/down",
        ["walk/left"] = "walk/left",
        ["walk/right"] = "walk/right",
    }

    self.taunt_sprites = {"box"}
end

return actor