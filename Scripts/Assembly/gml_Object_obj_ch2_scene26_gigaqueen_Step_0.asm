.localvar 2 arguments
.localvar 33250 deepsnd 16821

:[0]
push.v self.release
conv.v.b
bf [9]

:[1]
push.v self.head_init
conv.v.b
not.b
bf [3]

:[2]
pushi.e 1
pop.v.b self.head_init

:[3]
push.v self.head_x_pos
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 261
conv.i.v
call.i sprite_get_width(argc=1)
sub.v.v
pop.v.v self.head_x_pos

:[5]
push.v self.head_y_pos
pushi.e -1
cmp.i.v EQ
bf [7]

:[6]
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 100
add.i.v
pop.v.v self.head_y_pos

:[7]
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 100
add.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 15
sub.i.v
push.v self.head_y_pos
pushi.e 10
sub.i.v
call.i clamp(argc=3)
pop.v.v self.head_y_pos
push.v self.head_y_pos
call.i gml_Script_cameray(argc=0)
pushi.e 15
sub.i.v
cmp.v.v LTE
bf [9]

:[8]
pushi.e 0
pop.v.b self.release

:[9]
push.v self.release_fast
conv.v.b
bf [12]

:[10]
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 100
add.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 15
sub.i.v
push.v self.head_y_pos
pushi.e 35
sub.i.v
call.i clamp(argc=3)
pop.v.v self.head_y_pos
push.v self.head_y_pos
call.i gml_Script_cameray(argc=0)
pushi.e 15
sub.i.v
cmp.v.v LTE
bf [12]

:[11]
pushi.e 0
pop.v.b self.release_fast

:[12]
push.v self.leave
conv.v.b
bf [15]

:[13]
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 100
add.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 15
sub.i.v
push.v self.head_y_pos
pushi.e 10
add.i.v
call.i clamp(argc=3)
pop.v.v self.head_y_pos
push.v self.head_y_pos
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 100
add.i.v
cmp.v.v GTE
bf [15]

:[14]
pushi.e 0
pop.v.b self.leave

:[15]
push.v self.leave_fast
conv.v.b
bf [18]

:[16]
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 100
add.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 15
sub.i.v
push.v self.head_y_pos
pushi.e 30
add.i.v
call.i clamp(argc=3)
pop.v.v self.head_y_pos
push.v self.head_y_pos
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 100
add.i.v
cmp.v.v GTE
bf [18]

:[17]
pushi.e 0
pop.v.b self.leave

:[18]
push.v self.laugh
conv.v.b
bf [25]

:[19]
push.v self.animsiner
push.e 1
add.i.v
pop.v.v self.animsiner
push.v self.pilot_alpha
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.i self.pilot_alpha

:[21]
push.v self.damaged
conv.v.b
bf [23]

:[22]
pushi.e 350
conv.i.v
b [24]

:[23]
pushi.e 264
conv.i.v

:[24]
pop.v.v self.head_sprite
push.v self.animsiner
pushi.e 4
conv.i.d
div.d.v
pop.v.v self.anim_index
b [26]

:[25]
pushi.e 0
pop.v.i self.animsiner
pushi.e 0
pop.v.i self.anim_index

:[26]
push.v self.surprised
conv.v.b
bf [29]

:[27]
pushi.e 0
pop.v.b self.surprised
pushi.e 347
pop.v.i self.head_sprite
pushi.e 0
pop.v.i self.pilot_alpha
push.v self.damaged
conv.v.b
not.b
bf [29]

:[28]
pushi.e 332
pop.v.i self.head_sprite

:[29]
push.v self.unhappy
conv.v.b
bf [31]

:[30]
pushi.e 0
pop.v.b self.unhappy
pushi.e 2557
pop.v.i self.head_sprite
pushi.e 273
pop.v.i self.pilot_sprite
pushi.e 1
pop.v.i self.pilot_alpha

:[31]
push.v self.static_start
conv.v.b
bf [35]

:[32]
pushi.e 0
pop.v.b self.static_start
pushi.e 345
pop.v.i self.head_sprite
pushi.e 0
pop.v.i self.pilot_alpha
pushi.e 1
pop.v.b self.static_happened
pushi.e 1068
conv.i.v
pushi.e 123
conv.i.v
pushi.e 252
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.my_static
push.v self.my_static
pushi.e -9
pushenv [34]

:[33]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[34]
popenv [33]
pushi.e 351
conv.i.v
push.v self.my_static
pushi.e -9
push.v [stacktop]self.y
push.v self.my_static
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.crack
push.v self.my_static
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
sub.i.v
push.v self.crack
pushi.e -9
pop.v.v [stacktop]self.depth

:[35]
push.v self.static_stop
conv.v.b
bf [38]

:[36]
pushi.e 0
pop.v.b self.static_stop
pushi.e 0
pop.v.b self.static_start
pushi.e 0
pop.v.b self.static_happened
pushi.e 1
pop.v.i self.pilot_alpha
pushi.e 1068
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [38]

:[37]
pushi.e 1068
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.v self.crack
call.i instance_destroy(argc=1)
popz.v

:[38]
push.v self.damagedfx
conv.v.b
bf [53]

:[39]
push.v self.smoketimer
push.e 1
add.i.v
pop.v.v self.smoketimer
push.v self.smoketimer
pushi.e 3
cmp.i.v GTE
bf [41]

:[40]
pushi.e 353
conv.i.v
push.v self.head_y_pos
pushi.e 120
add.i.v
push.v self.head_x_pos
pushi.e 300
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.smoke
push.v self.depth
pushi.e 200
add.i.v
push.v self.smoke
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1033
push.v self.smoke
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d -0.5
push.v self.smoke
pushi.e -9
pop.v.d [stacktop]self.gravity
pushi.e 2
push.v self.smoke
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 2
conv.i.v
call.i random(argc=1)
push.v self.smoke
pushi.e -9
pop.v.v [stacktop]self.hspeed
pushi.e 2
push.v self.smoke
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.smoke
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.smoke
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 353
conv.i.v
push.v self.head_y_pos
pushi.e 180
add.i.v
push.v self.head_x_pos
pushi.e 330
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.smoke
push.v self.depth
pushi.e 200
add.i.v
push.v self.smoke
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1033
push.v self.smoke
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d -0.5
push.v self.smoke
pushi.e -9
pop.v.d [stacktop]self.gravity
push.d 1.6
push.v self.smoke
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 2
add.i.v
push.v self.smoke
pushi.e -9
pop.v.v [stacktop]self.hspeed
pushi.e 0
push.v self.smoke
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 0
push.v self.smoke
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.smoke
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
pop.v.i self.smoketimer

:[41]
push.v self.climb
pushi.e 0
cmp.i.v GT
bf [43]

:[42]
pushi.e 0
pop.v.i self.shaketimer
b [44]

:[43]
push.v self.shaketimer
push.e 1
add.i.v
pop.v.v self.shaketimer

:[44]
push.v self.shaketimer
pushi.e 53
cmp.i.v EQ
bf [46]

:[45]
pushi.e 353
conv.i.v
push.v self.head_y_pos
pushi.e 180
add.i.v
push.v self.head_x_pos
pushi.e 240
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.smoke
push.v self.depth
pushi.e 10
sub.i.v
push.v self.smoke
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1727
push.v self.smoke
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -2
push.v self.smoke
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.d -0.5
push.v self.smoke
pushi.e -9
pop.v.d [stacktop]self.gravity
push.d 1.6
push.v self.smoke
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 0
push.v self.smoke
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.smoke
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 0
push.v self.smoke
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.smoke
pushi.e -9
pop.v.i [stacktop]self.visible

:[46]
push.v self.shaketimer
pushi.e 55
cmp.i.v GTE
bf [48]

:[47]
push.v self.shaketimer
pushi.e 60
cmp.i.v LTE
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
push.v self.rem_head_x_pos
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.head_x_pos
push.v self.rem_head_y_pos
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.head_y_pos

:[51]
push.v self.shaketimer
pushi.e 61
cmp.i.v EQ
bf [53]

:[52]
pushi.e 0
pop.v.i self.shaketimer

:[53]
push.v self.climb
pushi.e 1
cmp.i.v EQ
bf [end]

:[54]
push.v self.head_init
conv.v.b
not.b
bf [56]

:[55]
pushi.e 1
pop.v.b self.head_init

:[56]
push.v self.climbtimer
push.e 1
add.i.v
pop.v.v self.climbtimer
push.v self.climbtimer
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
push.v self.head_y_pos
pop.v.v self.rem_head_y_pos

:[58]
push.v self.climbtimer
pushi.e 2
cmp.i.v EQ
bf [60]

:[59]
push.s "out"@14331
conv.s.v
pushi.e -3
conv.i.v
pushi.e 30
conv.i.v
push.v self.rem_head_y_pos
pushi.e 120
sub.i.v
push.v self.rem_head_y_pos
push.s "head_y_pos"@32953
conv.s.v
push.v self.id
call.i gml_Script_scr_lerpvar_instance(argc=7)
popz.v

:[60]
push.v self.climbtimer
pushi.e 10
cmp.i.v EQ
bf [62]

:[61]
pushi.e 236
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v local.deepsnd
push.d 0.5
conv.d.v
pushloc.v local.deepsnd
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[62]
push.v self.climbtimer
pushi.e 40
cmp.i.v EQ
bf [end]

:[63]
pushi.e 0
pop.v.i self.climbtimer
pushi.e 0
pop.v.i self.climb
push.v self.head_y_pos
pop.v.v self.rem_head_y_pos

:[end]