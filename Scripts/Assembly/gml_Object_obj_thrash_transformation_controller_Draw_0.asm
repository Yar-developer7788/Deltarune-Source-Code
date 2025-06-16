.localvar 2 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
call.i draw_self(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 1077
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 1077.state
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[5]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [7]

:[6]
push.v self.text_state
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 0
pop.v.i self.text_state

:[10]
push.v self.text_state
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer

:[12]
push.v self.timer
pushi.e 32
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [14]

:[13]
push.v self.timer
pushi.e 38
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 1
push.v self.shouler_l
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.shouler_l
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 9
sub.i.v
pop.i.v [stacktop]self.x
push.v self.shouler_l
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 9
sub.i.v
pop.i.v [stacktop]self.y
push.v self.shouler_l
pushi.e -9
dup.i 4
push.v [stacktop]self.image_xscale
push.d 0.2
add.d.v
pop.i.v [stacktop]self.image_xscale
push.v self.shouler_l
pushi.e -9
dup.i 4
push.v [stacktop]self.image_yscale
push.d 0.2
add.d.v
pop.i.v [stacktop]self.image_yscale
pushi.e 1
push.v self.shouler_r
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.shouler_r
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 9
add.i.v
pop.i.v [stacktop]self.x
push.v self.shouler_r
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 9
sub.i.v
pop.i.v [stacktop]self.y
push.v self.shouler_r
pushi.e -9
dup.i 4
push.v [stacktop]self.image_xscale
push.d 0.2
add.d.v
pop.i.v [stacktop]self.image_xscale
push.v self.shouler_r
pushi.e -9
dup.i 4
push.v [stacktop]self.image_yscale
push.d 0.2
add.d.v
pop.i.v [stacktop]self.image_yscale

:[17]
push.v self.timer
pushi.e 38
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [19]

:[18]
pushi.e 60
conv.i.d
push.v self.f
div.v.d
pop.v.v self.timer

:[19]
push.v self.timer
pushi.e 40
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [21]

:[20]
push.v self.timer
pushi.e 50
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
b [22]

:[21]
push.e 0

:[22]
bf [23]

:[23]
push.v self.timer
pushi.e 60
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [25]

:[24]
pushi.e 1
pop.v.i self.text_state
pushi.e 100
conv.i.v
pushi.e 20
conv.i.v
push.s "Kris is the head"@36320
conv.s.v
push.v self.y
pushi.e 120
sub.i.v
push.v self.x
call.i draw_text_ext(argc=5)
popz.v

:[25]
push.v self.timer
pushi.e 62
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [27]

:[26]
push.v self.timer
pushi.e 82
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.v self.arm_l
pushi.e -9
dup.i 4
push.v [stacktop]self.image_xscale
push.d 0.2
add.d.v
pop.i.v [stacktop]self.image_xscale
push.v self.arm_l
pushi.e -9
dup.i 4
push.v [stacktop]self.image_yscale
push.d 0.2
add.d.v
pop.i.v [stacktop]self.image_yscale
pushi.e 1
push.v self.arm_l
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.arm_r
pushi.e -9
dup.i 4
push.v [stacktop]self.image_xscale
push.d 0.2
add.d.v
pop.i.v [stacktop]self.image_xscale
push.v self.arm_r
pushi.e -9
dup.i 4
push.v [stacktop]self.image_yscale
push.d 0.2
add.d.v
pop.i.v [stacktop]self.image_yscale
pushi.e 1
push.v self.arm_r
pushi.e -9
pop.v.i [stacktop]self.visible

:[30]
push.v self.timer
pushi.e 84
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i self.text_state
pushi.e 100
conv.i.v
pushi.e 20
conv.i.v
push.s "I'll be tha arms"@36321
conv.s.v
push.v self.y
pushi.e 25
sub.i.v
push.v self.x
pushi.e 126
sub.i.v
call.i draw_text_ext(argc=5)
popz.v

:[32]
push.v self.timer
pushi.e 86
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [34]

:[33]
pushi.e 92
conv.i.d
push.v self.f
div.v.d
pop.v.v self.timer

:[34]
push.v self.timer
pushi.e 92
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [36]

:[35]
push.v self.timer
pushi.e 98
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
push.v self.leg_l
pushi.e -9
dup.i 4
push.v [stacktop]self.image_xscale
push.d 0.6
add.d.v
pop.i.v [stacktop]self.image_xscale
push.v self.leg_l
pushi.e -9
dup.i 4
push.v [stacktop]self.image_yscale
push.d 0.6
add.d.v
pop.i.v [stacktop]self.image_yscale
pushi.e 1
push.v self.leg_l
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.leg_r
pushi.e -9
dup.i 4
push.v [stacktop]self.image_xscale
push.d 0.6
add.d.v
pop.i.v [stacktop]self.image_xscale
push.v self.leg_r
pushi.e -9
dup.i 4
push.v [stacktop]self.image_yscale
push.d 0.6
add.d.v
pop.i.v [stacktop]self.image_yscale
pushi.e 1
push.v self.leg_r
pushi.e -9
pop.v.i [stacktop]self.visible

:[39]
push.v self.timer
pushi.e 100
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [41]

:[40]
push.v self.leg_l
pushi.e -9
push.v [stacktop]self.x
push.v self.leg_l
pushi.e -9
pop.v.v [stacktop]self.basex
push.v self.leg_l
pushi.e -9
push.v [stacktop]self.y
push.v self.leg_l
pushi.e -9
pop.v.v [stacktop]self.basey
push.v self.leg_r
pushi.e -9
push.v [stacktop]self.x
push.v self.leg_r
pushi.e -9
pop.v.v [stacktop]self.basex
push.v self.leg_r
pushi.e -9
push.v [stacktop]self.y
push.v self.leg_r
pushi.e -9
pop.v.v [stacktop]self.basey

:[41]
push.v self.timer
pushi.e 102
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [43]

:[42]
push.v self.timer
pushi.e 140
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
push.v self.leg_l
pushi.e -9
push.v [stacktop]self.basex
pushi.e 2
sub.i.v
pushi.e 4
conv.i.v
call.i irandom(argc=1)
add.v.v
push.v self.leg_l
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.leg_l
pushi.e -9
push.v [stacktop]self.basey
pushi.e 2
sub.i.v
pushi.e 4
conv.i.v
call.i irandom(argc=1)
add.v.v
push.v self.leg_l
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.leg_r
pushi.e -9
push.v [stacktop]self.basex
pushi.e 2
sub.i.v
pushi.e 4
conv.i.v
call.i irandom(argc=1)
add.v.v
push.v self.leg_r
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.leg_r
pushi.e -9
push.v [stacktop]self.basey
pushi.e 2
sub.i.v
pushi.e 4
conv.i.v
call.i irandom(argc=1)
add.v.v
push.v self.leg_r
pushi.e -9
pop.v.v [stacktop]self.y

:[46]
push.v self.timer
pushi.e 140
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [48]

:[47]
push.v self.timer
pushi.e 150
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
push.v self.leg_l
pushi.e -9
dup.i 4
push.v [stacktop]self.image_xscale
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_xscale
push.v self.leg_l
pushi.e -9
dup.i 4
push.v [stacktop]self.image_yscale
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_yscale
push.v self.leg_r
pushi.e -9
dup.i 4
push.v [stacktop]self.image_xscale
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_xscale
push.v self.leg_r
pushi.e -9
dup.i 4
push.v [stacktop]self.image_yscale
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_yscale

:[51]
push.v self.timer
pushi.e 162
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [53]

:[52]
pushi.e 1
pop.v.i self.text_state
pushi.e 100
conv.i.v
pushi.e 20
conv.i.v
push.s "I'll be the legs"@36322
conv.s.v
push.v self.y
pushi.e 150
add.i.v
push.v self.x
call.i draw_text_ext(argc=5)
popz.v

:[53]
push.v self.timer
pushi.e 164
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [59]

:[54]
pushi.e 817
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flash
push.v self.sprite_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.i 16777215
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.d 0.2
push.v self.flash
pushi.e -9
pop.v.d [stacktop]self.rate
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.hasboss
push.v self.depth
pushi.e 1
sub.i.v
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.id
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.boss
pushi.e 1
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.white_silhouette
pushi.e 817
conv.i.v
push.v 1077.heady
push.v 1077.x
pushi.e 36
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flash
pushi.e 519
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v 1077.head_xscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v 1077.head_yscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v 1077.head_angle
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.i 16777215
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.d 0.2
push.v self.flash
pushi.e -9
pop.v.d [stacktop]self.rate
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.hasboss
push.v self.depth
pushi.e 4
sub.i.v
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.white_silhouette
pushi.e 1079
pushenv [56]

:[55]
pushi.e 817
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flash
push.v self.sprite_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.i 16777215
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.image_angle
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.d 0.2
push.v self.flash
pushi.e -9
pop.v.d [stacktop]self.rate
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.hasboss
push.v self.depth
pushi.e 1
sub.i.v
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.id
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.boss
pushi.e 1
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.white_silhouette

:[56]
popenv [55]
pushi.e 1077
pushenv [58]

:[57]
pushi.e 817
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flash
push.v self.sprite_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.i 16777215
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.d 0.2
push.v self.flash
pushi.e -9
pop.v.d [stacktop]self.rate
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.hasboss
push.v self.depth
pushi.e 1
sub.i.v
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.id
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.boss
pushi.e 1
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.white_silhouette

:[58]
popenv [57]

:[59]
push.v self.timer
pushi.e 200
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [61]

:[60]
push.v self.timer
pushi.e 210
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
b [62]

:[61]
push.e 0

:[62]
bf [64]

:[63]
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
div.v.v
pop.v.v self.ratio
push.i 68031
setowner.e
pushi.e -6
pushi.e 0
dup.i 1
push.v [array]self.view_wport
pushi.e 24
sub.i.v
pop.i.v [array]self.view_wport
push.i 68032
setowner.e
pushi.e -6
pushi.e 0
dup.i 1
push.v [array]self.view_hport
pushi.e 24
push.v self.ratio
mul.v.i
sub.v.v
pop.i.v [array]self.view_hport
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_set_view_size(argc=3)
popz.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 12
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 24
push.v self.ratio
mul.v.i
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[64]
push.v self.timer
pushi.e 250
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [70]

:[65]
pushi.e -80
conv.i.d
push.v self.f
div.v.d
pop.v.v self.vspeed
pushi.e 1
pop.v.i self.state
pushi.e 817
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flash
push.v self.sprite_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.i 16777215
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.d 0.1
push.v self.flash
pushi.e -9
pop.v.d [stacktop]self.rate
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.hasboss
push.v self.depth
pushi.e 1
sub.i.v
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.id
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.boss
pushi.e 1
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.black_silhouette
pushi.e 1079
pushenv [67]

:[66]
pushi.e -80
conv.i.d
push.v self.f
div.v.d
pop.v.v self.vspeed
pushi.e 817
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flash
push.v self.sprite_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.i 16777215
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.d 0.1
push.v self.flash
pushi.e -9
pop.v.d [stacktop]self.rate
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.hasboss
push.v self.depth
pushi.e 1
sub.i.v
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.id
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.boss
pushi.e 1
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.black_silhouette

:[67]
popenv [66]
pushi.e 1077
pushenv [69]

:[68]
pushi.e -80
conv.i.d
push.v self.f
div.v.d
pop.v.v self.vspeed
pushi.e 817
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flash
push.v self.sprite_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.i 16777215
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.d 0.1
push.v self.flash
pushi.e -9
pop.v.d [stacktop]self.rate
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.hasboss
push.v self.depth
pushi.e 1
sub.i.v
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.id
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.boss
pushi.e 1
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.black_silhouette

:[69]
popenv [68]

:[70]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
push.v self.black_alpha
push.d 0.02
add.d.v
pop.v.v self.black_alpha

:[72]
push.v self.black_alpha
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2166
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.black_alpha
push.d 1.9
cmp.d.v GT
bf [74]

:[73]
pushi.e 1080
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 276
conv.i.v
call.i room_goto(argc=1)
popz.v

:[74]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[end]