return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.1",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 6,
  nextobjectid = 20,
  properties = {
    ["music"] = "road_secret"
  },
  tilesets = {
    {
      name = "castle_path",
      firstgid = 1,
      filename = "../../tilesets/castle_path.tsx",
      exportfilename = "../../tilesets/castle_path.lua"
    },
    {
      name = "other-objects",
      firstgid = 25,
      filename = "../../tilesets/other-objects.tsx",
      exportfilename = "../../tilesets/other-objects.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      id = 1,
      name = "Calque de Tuiles 1",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 4, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 5, 5, 2, 5, 5, 5, 5, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 1, 5, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 2, 5, 3, 5, 5, 5, 5, 5, 5, 5, 2,
        0, 0, 0, 0, 0, 5, 5, 5, 5, 4, 5, 2, 5, 5, 5, 5,
        0, 0, 0, 0, 0, 5, 1, 5, 5, 5, 5, 5, 5, 5, 5, 3,
        0, 0, 0, 0, 0, 5, 5, 5, 5, 3, 5, 5, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 5, 5, 2, 5, 5, 5, 1, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 5, 5, 5, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 5, 1, 5, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      id = 2,
      name = "Calque de Tuiles 2",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 15, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 19, 19, 19, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 9, 8, 8, 8, 8, 8, 10, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 17, 8, 8, 8, 8,
        0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 11, 7, 7, 7, 7,
        0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 14, 13, 13, 13, 13,
        0, 0, 0, 0, 0, 15, 7, 12, 0, 11, 7, 16, 19, 19, 19, 19,
        0, 0, 0, 0, 0, 13, 13, 20, 0, 14, 13, 13, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 19, 19, 20, 0, 14, 19, 19, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "collisions",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 80,
          width = 280,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 80,
          width = 40,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 400,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 400,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 320,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = 520,
          y = 320,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 160,
          width = 160,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 440,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 440,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 200,
          width = 40,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "castle_path/"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 245,
          y = 110,
          width = 32,
          height = 37,
          rotation = 0,
          gid = 75,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 238.333,
          y = 72.3333,
          width = 42,
          height = 24.3333,
          rotation = 0,
          visible = true,
          properties = {
            ["text1"] = "* (IMPORTANT MESSAGE:)",
            ["text2"] = "* (An unknown object has fallen somewhere around the castle!)",
            ["text3"] = "* (If you find it, bring it immediately to the king!)"
          }
        },
        {
          id = 14,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 480,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "castle_path/in_between",
            ["marker"] = "entry_up"
          }
        },
        {
          id = 17,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 560,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "smb_goomba"
          }
        },
        {
          id = 18,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 560,
          y = 280,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "smb_goomba"
          }
        },
        {
          id = 19,
          name = "script",
          type = "",
          shape = "rectangle",
          x = 587,
          y = 200,
          width = 12.5027,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "castle_path.unfinished",
            ["once"] = false
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 13,
          name = "entry_down",
          type = "",
          shape = "point",
          x = 340,
          y = 425,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "spawn",
          type = "",
          shape = "point",
          x = 280,
          y = 320,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
