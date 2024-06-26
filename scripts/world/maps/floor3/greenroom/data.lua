return {
  version = "1.9",
  luaversion = "5.1",
  tiledversion = "1.9.0",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 36,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 19,
  nextobjectid = 190,
  properties = {
    ["border"] = "undertale/dog",
    ["music"] = "greenroom",
    ["name"] = "Green Room"
  },
  tilesets = {
    {
      name = "greenroom",
      firstgid = 1,
      filename = "../../../tilesets/greenroom.tsx",
      exportfilename = "../../../tilesets/greenroom.lua"
    },
    {
      name = "floor3_objects",
      firstgid = 120,
      filename = "../../../tilesets/floor3-objects.tsx",
      exportfilename = "../../../tilesets/floor3-objects.lua"
    }
  },
  layers = {
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 10,
      name = "objects_bg",
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
          id = 68,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 480,
          width = 1437,
          height = 480,
          rotation = 0,
          gid = 140,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 36,
      height = 12,
      id = 1,
      name = "tiles",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "collision",
      class = "",
      visible = true,
      opacity = 0.5,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 105,
          name = "",
          class = "",
          shape = "rectangle",
          x = 1080,
          y = 120,
          width = 240,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 108,
          name = "",
          class = "",
          shape = "polygon",
          x = 80,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -40, y = 40 },
            { x = -40, y = 0 }
          },
          properties = {}
        },
        {
          id = 110,
          name = "",
          class = "",
          shape = "polygon",
          x = 120,
          y = 160,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -40, y = 40 },
            { x = -40, y = 0 }
          },
          properties = {}
        },
        {
          id = 111,
          name = "",
          class = "",
          shape = "polygon",
          x = 1400,
          y = 240,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -40, y = -40 },
            { x = 0, y = -40 }
          },
          properties = {}
        },
        {
          id = 112,
          name = "",
          class = "",
          shape = "polygon",
          x = 1360,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -40, y = -40 },
            { x = 0, y = -40 }
          },
          properties = {}
        },
        {
          id = 114,
          name = "",
          class = "",
          shape = "rectangle",
          x = 40,
          y = 240,
          width = 240,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 115,
          name = "",
          class = "",
          shape = "rectangle",
          x = 240,
          y = 280,
          width = 40,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 116,
          name = "",
          class = "",
          shape = "rectangle",
          x = 1160,
          y = 240,
          width = 240,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 118,
          name = "",
          class = "",
          shape = "rectangle",
          x = 240,
          y = 440,
          width = 960,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 119,
          name = "",
          class = "",
          shape = "rectangle",
          x = 1160,
          y = 280,
          width = 40,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 120,
          name = "",
          class = "",
          shape = "rectangle",
          x = 940,
          y = 120,
          width = 60,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 121,
          name = "",
          class = "",
          shape = "rectangle",
          x = 120,
          y = 120,
          width = 430,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 123,
          name = "",
          class = "",
          shape = "rectangle",
          x = 550,
          y = 120,
          width = 390,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 14,
      name = "controllers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 16,
      name = "objects_door",
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
          id = 161,
          name = "hiddendoor",
          class = "",
          shape = "rectangle",
          x = 40,
          y = 240,
          width = 82,
          height = 204,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
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
          id = 168,
          name = "spawn",
          class = "",
          shape = "point",
          x = 720,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 169,
          name = "fakespawn",
          class = "",
          shape = "point",
          x = 1280,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 170,
          name = "entrydown",
          class = "",
          shape = "point",
          x = 1040,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 189,
          name = "entry_left",
          class = "",
          shape = "point",
          x = 160,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
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
          id = 69,
          name = "",
          class = "",
          shape = "rectangle",
          x = 760,
          y = 340,
          width = 280,
          height = 100,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {}
        },
        {
          id = 70,
          name = "",
          class = "",
          shape = "rectangle",
          x = 400,
          y = 340,
          width = 280,
          height = 100,
          rotation = 0,
          gid = 141,
          visible = true,
          properties = {}
        },
        {
          id = 71,
          name = "",
          class = "",
          shape = "rectangle",
          x = 800,
          y = 440,
          width = 116,
          height = 102,
          rotation = 0,
          gid = 126,
          visible = true,
          properties = {}
        },
        {
          id = 72,
          name = "",
          class = "",
          shape = "rectangle",
          x = 520,
          y = 440,
          width = 116,
          height = 102,
          rotation = 0,
          gid = 126,
          visible = true,
          properties = {}
        },
        {
          id = 73,
          name = "",
          class = "",
          shape = "rectangle",
          x = 1100,
          y = 440,
          width = 60,
          height = 80,
          rotation = 0,
          gid = 131,
          visible = true,
          properties = {}
        },
        {
          id = 74,
          name = "",
          class = "",
          shape = "rectangle",
          x = 280,
          y = 440,
          width = 63,
          height = 80,
          rotation = 0,
          gid = 130,
          visible = true,
          properties = {}
        },
        {
          id = 75,
          name = "",
          class = "",
          shape = "rectangle",
          x = 660,
          y = 440,
          width = 120,
          height = 72,
          rotation = 0,
          gid = 136,
          visible = true,
          properties = {}
        },
        {
          id = 76,
          name = "",
          class = "",
          shape = "rectangle",
          x = 660,
          y = 440,
          width = 120,
          height = 72,
          rotation = 0,
          gid = 137,
          visible = true,
          properties = {}
        },
        {
          id = 175,
          name = "interactable",
          class = "",
          shape = "rectangle",
          x = 584,
          y = 110,
          width = 100,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = false,
            ["text1"] = "* (There's a lot of glass bottles.)"
          }
        },
        {
          id = 125,
          name = "interactable",
          class = "",
          shape = "rectangle",
          x = 400,
          y = 272,
          width = 80,
          height = 68,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* (It's a green sofa.[wait:10] It looks soft and comfortable.)"
          }
        },
        {
          id = 126,
          name = "interactable",
          class = "",
          shape = "rectangle",
          x = 480,
          y = 272,
          width = 200,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* (It's a green sofa.[wait:10] It looks soft and comfortable.)"
          }
        },
        {
          id = 129,
          name = "interactable",
          class = "",
          shape = "rectangle",
          x = 960,
          y = 272,
          width = 80,
          height = 68,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* (It's a rugged sofa.[wait:10] It doesn't look too comfortable,[wait:5] but it does its job.)"
          }
        },
        {
          id = 127,
          name = "interactable",
          class = "",
          shape = "rectangle",
          x = 760,
          y = 272,
          width = 200,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* (It's a rugged sofa.[wait:10] It doesn't look too comfortable,[wait:5] but it does its job.)"
          }
        },
        {
          id = 130,
          name = "interactable",
          class = "",
          shape = "rectangle",
          x = 520,
          y = 400,
          width = 116,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* (It's a TV. It's turned off.)"
          }
        },
        {
          id = 131,
          name = "interactable",
          class = "",
          shape = "rectangle",
          x = 800,
          y = 400,
          width = 116,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* (It's a TV. It's turned off.)"
          }
        },
        {
          id = 132,
          name = "interactable",
          class = "",
          shape = "rectangle",
          x = 660,
          y = 400,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "floor3.greenroomplatter",
            ["once"] = false,
            ["solid"] = true
          }
        },
        {
          id = 180,
          name = "",
          class = "",
          shape = "rectangle",
          x = 400,
          y = 170,
          width = 62,
          height = 88,
          rotation = 0,
          gid = 122,
          visible = true,
          properties = {}
        },
        {
          id = 182,
          name = "transition",
          class = "",
          shape = "rectangle",
          x = 1000,
          y = 138,
          width = 80,
          height = 20,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "floor3/corridors1",
            ["marker"] = "entry4"
          }
        },
        {
          id = 188,
          name = "transition",
          class = "",
          shape = "rectangle",
          x = 80,
          y = 160,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "floor3/corridors3",
            ["marker"] = "entry_greenroom"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 17,
      name = "objects_platter",
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
          id = 177,
          name = "npc",
          class = "",
          shape = "point",
          x = 720,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "ch3_platter"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 18,
      name = "objects_fg",
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
          id = 185,
          name = "greenroom_sparkles",
          class = "",
          shape = "rectangle",
          x = 940,
          y = 40,
          width = 380,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 187,
          name = "greenroom_sparkles",
          class = "",
          shape = "rectangle",
          x = 120,
          y = 40,
          width = 430,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
