.localvar 2 arguments
.localvar 11458 _pal_sprite 3085
.localvar 11459 _pal_index 3086
.localvar 11460 mode 3087
.localvar 11467 tex 3092
.localvar 11469 UVs 3093
.localvar 11473 texel_x 3096
.localvar 11475 texel_y 3097
.localvar 11476 texel_hx 3098
.localvar 11477 texel_hy 3099

:[0]
b [13]

> gml_Script_pal_swap_set (locals=9, argc=3)
:[1]
push.v arg.argument0
pop.v.v local._pal_sprite
push.v arg.argument1
pop.v.v local._pal_index
pushloc.v local._pal_index
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
exit.i

:[3]
push.l 0
pop.v.l local.mode
push.v arg.argument2
conv.v.b
not.b
bf [8]

:[4]
pushglb.v global.Pal_HTML5
conv.v.b
bf [6]

:[5]
pushglb.v global.Pal_HTML5_Sprite
call.i shader_set(argc=1)
popz.v
push.l 1
pop.v.l local.mode
b [7]

:[6]
pushglb.v global.Pal_Shader
call.i shader_set(argc=1)
popz.v

:[7]
pushi.e 1
pop.v.b global.Pal_Shader_Is_Set
pushi.e 0
conv.i.v
pushloc.v local._pal_sprite
call.i sprite_get_texture(argc=2)
pop.v.v local.tex
pushi.e 0
conv.i.v
pushloc.v local._pal_sprite
call.i sprite_get_uvs(argc=2)
pop.v.v local.UVs
pushloc.v local.tex
pushi.e -5
pushloc.v local.mode
conv.v.i
push.v [array]self.Pal_Texture
call.i texture_set_stage(argc=2)
popz.v
pushloc.v local.tex
call.i texture_get_texel_width(argc=1)
pop.v.v local.texel_x
pushloc.v local.tex
call.i texture_get_texel_height(argc=1)
pop.v.v local.texel_y
pushloc.v local.texel_x
push.d 0.5
mul.d.v
pop.v.v local.texel_hx
pushloc.v local.texel_y
push.d 0.5
mul.d.v
pop.v.v local.texel_hy
pushloc.v local.texel_y
pushloc.v local.texel_x
pushi.e -5
pushloc.v local.mode
conv.v.i
push.v [array]self.Pal_Texel_Size
call.i shader_set_uniform_f(argc=3)
popz.v
pushi.e -7
pushi.e 3
push.v [array]self.UVs
pushi.e -7
pushi.e 2
push.v [array]self.UVs
pushi.e -7
pushi.e 1
push.v [array]self.UVs
pushloc.v local.texel_hy
add.v.v
pushi.e -7
pushi.e 0
push.v [array]self.UVs
pushloc.v local.texel_hx
add.v.v
pushi.e -5
pushloc.v local.mode
conv.v.i
push.v [array]self.Pal_UVs
call.i shader_set_uniform_f(argc=5)
popz.v
pushloc.v local._pal_index
pushi.e -5
pushloc.v local.mode
conv.v.i
push.v [array]self.Pal_Index
call.i shader_set_uniform_f(argc=2)
popz.v
b [12]

:[8]
pushglb.v global.Pal_HTML5
conv.v.b
bf [10]

:[9]
pushglb.v global.Pal_HTML5_Surface
call.i shader_set(argc=1)
popz.v
push.l 2
pop.v.l local.mode
b [11]

:[10]
pushglb.v global.Pal_Shader
call.i shader_set(argc=1)
popz.v

:[11]
pushi.e 1
pop.v.b global.Pal_Shader_Is_Set
pushloc.v local._pal_sprite
call.i surface_get_texture(argc=1)
pop.v.v local.tex
pushloc.v local.tex
pushi.e -5
pushloc.v local.mode
conv.v.i
push.v [array]self.Pal_Texture
call.i texture_set_stage(argc=2)
popz.v
pushloc.v local.tex
call.i texture_get_texel_width(argc=1)
pop.v.v local.texel_x
pushloc.v local.tex
call.i texture_get_texel_height(argc=1)
pop.v.v local.texel_y
pushloc.v local.texel_x
push.d 0.5
mul.d.v
pop.v.v local.texel_hx
pushloc.v local.texel_y
push.d 0.5
mul.d.v
pop.v.v local.texel_hy
pushloc.v local.texel_y
pushloc.v local.texel_x
pushi.e -5
pushloc.v local.mode
conv.v.i
push.v [array]self.Pal_Texel_Size
call.i shader_set_uniform_f(argc=3)
popz.v
pushi.e 1
pushloc.v local.texel_hy
add.v.i
pushi.e 1
pushloc.v local.texel_hx
add.v.i
pushloc.v local.texel_hy
pushloc.v local.texel_hx
pushi.e -5
pushloc.v local.mode
conv.v.i
push.v [array]self.Pal_UVs
call.i shader_set_uniform_f(argc=5)
popz.v
pushloc.v local._pal_index
pushi.e -5
pushloc.v local.mode
conv.v.i
push.v [array]self.Pal_Index
call.i shader_set_uniform_f(argc=2)
popz.v

:[12]
exit.i

:[13]
push.i [function]gml_Script_pal_swap_set
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.pal_swap_set
popz.v

:[end]