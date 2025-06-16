.localvar 2 arguments
.localvar 38105 _cover 19688

:[0]
push.v self.target_char
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.visible
conv.v.b
not.b
bf [4]

:[3]
exit.i

:[4]
push.v self.target_char
pushi.e -4
cmp.i.v EQ
bf [6]

:[5]
exit.i

:[6]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [15]

:[7]
pushi.e 0
pop.v.i self.depth
push.v self.target_char
pushi.e 82
cmp.i.v NEQ
bf [14]

:[8]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.name
push.s "susie"@70
cmp.s.v EQ
bf [10]

:[9]
push.i 13138410
pop.v.i self.color

:[10]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.name
push.s "ralsei"@72
cmp.s.v EQ
bf [12]

:[11]
push.i 1959605
pop.v.i self.color

:[12]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.name
push.s "noelle"@74
cmp.s.v EQ
bf [14]

:[13]
push.i 65535
pop.v.i self.color
pushi.e 740
pop.v.i self.rsprite

:[14]
pushi.e 1
pop.v.i self.init

:[15]
push.v self.copy_sprite
conv.v.b
bf [17]

:[16]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v self.sprite_index
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
pop.v.v self.image_index
b [29]

:[17]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.target_char
pushi.e -9
push.v [stacktop]self.usprite
cmp.v.v EQ
bf [19]

:[18]
push.v self.usprite
pop.v.v self.sprite_index
b [29]

:[19]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.target_char
pushi.e -9
push.v [stacktop]self.dsprite
cmp.v.v EQ
bf [21]

:[20]
push.v self.dsprite
pop.v.v self.sprite_index
b [29]

:[21]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.target_char
pushi.e -9
push.v [stacktop]self.lsprite
cmp.v.v EQ
bf [23]

:[22]
push.v self.lsprite
pop.v.v self.sprite_index
b [29]

:[23]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.target_char
pushi.e -9
push.v [stacktop]self.rsprite
cmp.v.v EQ
bt [25]

:[24]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e 741
cmp.i.v EQ
b [26]

:[25]
push.e 1

:[26]
bf [28]

:[27]
pushi.e 1
pop.v.b 1304.outline
push.v self.rsprite
pop.v.v self.sprite_index
b [29]

:[28]
push.v self.target_char
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v self.sprite_index

:[29]
pushi.e 4000
pop.v.i self.depth
pushi.e 0
conv.b.v
call.i gpu_set_blendenable(argc=1)
popz.v
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
call.i gpu_set_colorwriteenable(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_blendenable(argc=1)
popz.v
pushi.e 1305
conv.i.v
call.i instance_number(argc=1)
pushi.e 0
cmp.i.v GT
bf [36]

:[30]
pushi.e 0
pop.v.i self.i

:[31]
push.v self.i
pushi.e 1305
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [36]

:[32]
push.v self.i
pushi.e 1305
conv.i.v
call.i instance_find(argc=2)
pop.v.v local._cover
push.v self.tiled_cover
conv.v.b
bf [34]

:[33]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.image_yscale
mul.v.v
add.v.v
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.sprite_index
call.i sprite_get_width(argc=1)
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.image_xscale
mul.v.v
add.v.v
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
b [35]

:[34]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.image_angle
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.image_yscale
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.image_xscale
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.image_index
pushloc.v local._cover
pushi.e -9
push.v [stacktop]self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[35]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [31]

:[36]
pushi.e 1
conv.b.v
call.i gpu_set_blendenable(argc=1)
popz.v
push.v self.outline
conv.v.b
bf [38]

:[37]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gpu_set_blendmode_ext(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[38]
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
call.i gpu_set_colorwriteenable(argc=4)
popz.v
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
call.i gpu_set_blendmode_ext(argc=2)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.color
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.outline
conv.v.b
bf [40]

:[39]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
sub.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
pushi.e 2
add.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
sub.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
pushi.e 2
add.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
b [41]

:[40]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[41]
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.target_char
pushi.e -9
push.v [stacktop]self.y
push.v self.target_char
pushi.e -9
push.v [stacktop]self.x
push.v self.target_char
pushi.e -9
push.v [stacktop]self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_alphatestenable(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v

:[end]