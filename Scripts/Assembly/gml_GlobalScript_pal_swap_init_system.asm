.localvar 2 arguments

:[0]
b [7]

> gml_Script_pal_swap_init_system (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.b global.Pal_HTML5
pushglb.v global.Pal_HTML5
conv.v.b
not.b
bf [3]

:[2]
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v global.Pal_Shader
push.i 37391663
setowner.e
push.s "u_pixelSize"@11486
conv.s.v
pushglb.v global.Pal_Shader
call.i shader_get_uniform(argc=2)
pushi.e -5
push.l 0
conv.l.i
pop.v.v [array]self.Pal_Texel_Size
push.i 37391664
setowner.e
push.s "u_Uvs"@11488
conv.s.v
pushglb.v global.Pal_Shader
call.i shader_get_uniform(argc=2)
pushi.e -5
push.l 0
conv.l.i
pop.v.v [array]self.Pal_UVs
push.i 37391665
setowner.e
push.s "u_paletteId"@11489
conv.s.v
pushglb.v global.Pal_Shader
call.i shader_get_uniform(argc=2)
pushi.e -5
push.l 0
conv.l.i
pop.v.v [array]self.Pal_Index
push.i 37391658
setowner.e
push.s "u_palTexture"@11490
conv.s.v
pushglb.v global.Pal_Shader
call.i shader_get_sampler_index(argc=2)
pushi.e -5
push.l 0
conv.l.i
pop.v.v [array]self.Pal_Texture
pushi.e 0
pop.v.b global.Pal_Shader_Is_Set
b [6]

:[3]
pushbltn.v builtin.argument_count
pushi.e 3
cmp.i.v LT
bf [5]

:[4]
push.s "Must provide pal_swap_init_system() with 2 additional arguments for HTML5 Compatible Sprite and Surface Shaders"@11492
conv.s.v
call.i show_message(argc=1)
popz.v
call.i game_end(argc=0)
popz.v

:[5]
pushi.e 1
pop.v.b global.Pal_HTML5
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v global.Pal_HTML5_Sprite
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v global.Pal_HTML5_Surface
push.i 37391663
setowner.e
push.s "u_pixelSize"@11486
conv.s.v
pushglb.v global.Pal_HTML5_Sprite
call.i shader_get_uniform(argc=2)
pushi.e -5
push.l 1
conv.l.i
pop.v.v [array]self.Pal_Texel_Size
push.i 37391664
setowner.e
push.s "u_Uvs"@11488
conv.s.v
pushglb.v global.Pal_HTML5_Sprite
call.i shader_get_uniform(argc=2)
pushi.e -5
push.l 1
conv.l.i
pop.v.v [array]self.Pal_UVs
push.i 37391665
setowner.e
push.s "u_paletteId"@11489
conv.s.v
pushglb.v global.Pal_HTML5_Sprite
call.i shader_get_uniform(argc=2)
pushi.e -5
push.l 1
conv.l.i
pop.v.v [array]self.Pal_Index
push.i 37391658
setowner.e
push.s "u_palTexture"@11490
conv.s.v
pushglb.v global.Pal_HTML5_Sprite
call.i shader_get_sampler_index(argc=2)
pushi.e -5
push.l 1
conv.l.i
pop.v.v [array]self.Pal_Texture
push.i 37391663
setowner.e
push.s "u_pixelSize"@11486
conv.s.v
pushglb.v global.Pal_HTML5_Surface
call.i shader_get_uniform(argc=2)
pushi.e -5
push.l 2
conv.l.i
pop.v.v [array]self.Pal_Texel_Size
push.i 37391664
setowner.e
push.s "u_Uvs"@11488
conv.s.v
pushglb.v global.Pal_HTML5_Surface
call.i shader_get_uniform(argc=2)
pushi.e -5
push.l 2
conv.l.i
pop.v.v [array]self.Pal_UVs
push.i 37391665
setowner.e
push.s "u_paletteId"@11489
conv.s.v
pushglb.v global.Pal_HTML5_Surface
call.i shader_get_uniform(argc=2)
pushi.e -5
push.l 2
conv.l.i
pop.v.v [array]self.Pal_Index
push.i 37391658
setowner.e
push.s "u_palTexture"@11490
conv.s.v
pushglb.v global.Pal_HTML5_Surface
call.i shader_get_sampler_index(argc=2)
pushi.e -5
push.l 2
conv.l.i
pop.v.v [array]self.Pal_Texture

:[6]
call.i ds_priority_create(argc=0)
pop.v.v global.Pal_Layer_Priority
call.i ds_priority_create(argc=0)
pop.v.v global.Pal_Layer_Temp_Priority
call.i ds_map_create(argc=0)
pop.v.v global.Pal_Layer_Map
exit.i

:[7]
push.i [function]gml_Script_pal_swap_init_system
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.pal_swap_init_system
popz.v

:[end]