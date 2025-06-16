.localvar 2 arguments
.localvar 14197 t 14946

:[0]
push.v self.fresh
pushi.e 0
cmp.i.v EQ
bf [9]

:[1]
pushi.e 1
pop.v.i self.image_alpha
push.v self.skipsound
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 202
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[3]
pushi.e -5
pushi.e 55
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [5]

:[4]
pushi.e -5
pushi.e 56
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.i self.returntoxy

:[8]
pushi.e 2
pop.v.i self.fresh

:[9]
push.v self.fresh
pushi.e 1
cmp.i.v EQ
bf [14]

:[10]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.id
call.i gml_Script_scr_lerpvar_instance(argc=5)
popz.v
pushi.e 1
pop.v.i self.timer
pushi.e 2
pop.v.i self.fresh
push.v self.depth
pushi.e 1000
cmp.i.v LT
bf [12]

:[11]
call.i gml_Script_scr_depth_alt(argc=0)
popz.v

:[12]
push.v self.skipsolid
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
call.i gml_Script_scr_create_hitbox_solid(argc=0)
pop.v.v self.mysolid

:[14]
pushglb.v global.fighting
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v self.fresh
pushi.e 2
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [31]

:[18]
pushi.e 3
pop.v.i self.fresh
push.v self.returntoxy
pushi.e 1
cmp.i.v EQ
bf [31]

:[19]
pushi.e 5
pop.v.i self.fresh
pushi.e -5
pushi.e 55
push.v [array]self.flag
pop.v.v self.remx
pushi.e -5
pushi.e 56
push.v [array]self.flag
pop.v.v self.remy
push.v self.sprite_index
pushi.e 1799
cmp.i.v EQ
bf [21]

:[20]
pushbltn.v builtin.room
pushi.e 127
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 224
pop.v.i self.remx
pushi.e 72
pop.v.i self.remy

:[24]
push.v self.sprite_index
pushi.e 1799
cmp.i.v EQ
bf [26]

:[25]
pushbltn.v builtin.room
pushi.e 124
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 1000
pop.v.i self.remx
pushi.e 588
pop.v.i self.remy

:[29]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 55
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 56
pop.v.v [array]self.flag
push.v self.remx
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
push.v self.fresh
pushi.e 5
cmp.i.v EQ
bf [34]

:[32]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [34]

:[33]
pushi.e 6
pop.v.i self.fresh

:[34]
push.v self.fresh
pushi.e 6
cmp.i.v EQ
bf [39]

:[35]
push.v self.remx
pop.v.v self.x
push.v self.remy
pop.v.v self.y
push.v self.depth
pushi.e 1000
cmp.i.v LT
bf [37]

:[36]
call.i gml_Script_scr_depth_alt(argc=0)
popz.v

:[37]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [39]

:[38]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha

:[39]
call.i draw_self(argc=0)
popz.v
push.v self.timer
pushi.e 1
cmp.i.v LT
bf [41]

:[40]
push.v self.timer
push.d 0.05
add.d.v
pop.v.v self.timer

:[41]
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.timer
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
mul.v.v
sub.v.v
pop.v.v local.t
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.specialcolor
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.sprite_index
call.i sprite_get_yoffset(argc=1)
push.v self.image_yscale
mul.v.v
neg.v
pop.v.v self.yoffset
push.v self.sprite_index
call.i sprite_get_xoffset(argc=1)
push.v self.image_xscale
mul.v.v
neg.v
pop.v.v self.xoffset
push.v self.image_alpha
push.d 0.8
mul.d.v
push.i 16711680
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 2
sub.i.v
pushloc.v local.t
pushi.e 2
mul.i.v
add.v.v
push.v self.yoffset
add.v.v
push.v self.x
pushi.e 2
sub.i.v
push.v self.xoffset
add.v.v
push.v self.sprite_height
pushloc.v local.t
sub.v.v
push.v self.sprite_width
pushloc.v local.t
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.image_alpha
push.d 0.4
mul.d.v
push.i 16711680
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 2
sub.i.v
pushloc.v local.t
pushi.e 2
mul.i.v
add.v.v
push.v self.yoffset
add.v.v
push.v self.x
pushi.e 2
add.i.v
push.v self.xoffset
add.v.v
push.v self.sprite_height
pushloc.v local.t
sub.v.v
push.v self.sprite_width
pushloc.v local.t
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.image_alpha
push.d 0.4
mul.d.v
push.i 16711680
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 2
add.i.v
pushloc.v local.t
pushi.e 2
mul.i.v
add.v.v
push.v self.yoffset
add.v.v
push.v self.x
pushi.e 2
sub.i.v
push.v self.xoffset
add.v.v
push.v self.sprite_height
pushloc.v local.t
sub.v.v
push.v self.sprite_width
pushloc.v local.t
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.image_alpha
push.d 0.8
mul.d.v
push.i 16711680
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 2
add.i.v
pushloc.v local.t
pushi.e 2
mul.i.v
add.v.v
push.v self.yoffset
add.v.v
push.v self.x
pushi.e 2
add.i.v
push.v self.xoffset
add.v.v
push.v self.sprite_height
pushloc.v local.t
sub.v.v
push.v self.sprite_width
pushloc.v local.t
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.image_alpha
push.d 0.4
mul.d.v
push.v self.specialcolor
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.t
pushi.e 2
mul.i.v
add.v.v
push.v self.yoffset
add.v.v
push.v self.x
push.v self.xoffset
add.v.v
push.v self.sprite_height
pushloc.v local.t
sub.v.v
push.v self.sprite_width
pushloc.v local.t
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
pushbltn.v builtin.room
pushi.e 138
cmp.i.v EQ
bf [end]

:[42]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 60
cmp.i.v GT
bf [44]

:[43]
push.d 0.1
conv.d.v
pushi.e 0
conv.i.v
push.v self.image_alpha
call.i lerp(argc=3)
pop.v.v self.image_alpha

:[44]
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [end]

:[45]
call.i instance_destroy(argc=0)
popz.v

:[end]