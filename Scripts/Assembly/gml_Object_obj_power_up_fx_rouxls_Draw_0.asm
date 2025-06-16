.localvar 2 arguments
.localvar 14099 centerX 6504
.localvar 14098 centerY 6505
.localvar 14726 __prog 6506
.localvar 14727 __circlesize 6507
.localvar 14728 __circlewidth 6508
.localvar 11064 __alpha 6509
.localvar 14488 ripple 6510
.localvar 14493 __flash 6511
.localvar 14494 _thinindex 6512
.localvar 14318 _progress 6513
.localvar 14497 _circlesize 6514
.localvar 14498 _circlewidth 6515

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.pivotx
pushi.e -999
cmp.i.v EQ
bf [3]

:[2]
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_index
call.i sprite_get_xoffset(argc=1)
push.v self.image_xscale
mul.v.v
sub.v.v
pop.v.v self.pivotx

:[3]
push.v self.pivoty
pushi.e -999
cmp.i.v EQ
bf [5]

:[4]
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_index
call.i sprite_get_yoffset(argc=1)
push.v self.image_yscale
mul.v.v
sub.v.v
pop.v.v self.pivoty

:[5]
pushi.e 1
pop.v.i self.init
pushi.e 2533
push.v self.fadebg
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.fadebg
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushbltn.v builtin.room_width
pushi.e 4
conv.i.d
div.d.v
pushi.e 20
add.i.v
push.v self.fadebg
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushbltn.v builtin.room_height
pushi.e 4
conv.i.d
div.d.v
pushi.e 20
add.i.v
push.v self.fadebg
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 0
push.v self.fadebg
pushi.e -9
pop.v.i [stacktop]self.image_alpha

:[6]
push.v 730.depth
pushi.e 2
add.i.v
push.v self.fadebg
pushi.e -9
pop.v.v [stacktop]self.depth
push.d 0.6
conv.d.v
pushi.e 0
conv.i.v
push.v self.poweruptime
pushi.e 15
sub.i.v
push.v self.poweruptime
pushi.e 2
conv.i.d
div.d.v
push.v self.timer
call.i gml_Script_remap_clamped(argc=5)
push.v self.fadebg
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.effecttimer
push.e 1
add.i.v
pop.v.v self.effecttimer
push.v self.timer
pushi.e 35
cmp.i.v EQ
bt [8]

:[7]
push.v self.timer
pushi.e 60
cmp.i.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
pushi.e 15
pop.v.i self.ring_timer

:[11]
push.v self.x
push.v self.pivotx
add.v.v
pop.v.v local.centerX
push.v self.y
push.v self.pivoty
add.v.v
pop.v.v local.centerY
push.v self.ring_timer
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
push.v self.ring_timer
pushi.e 15
conv.i.d
div.d.v
call.i gml_Script_scr_ease_out(argc=2)
pop.v.v local.__prog
pushloc.v local.__prog
pushi.e 80
mul.i.v
pop.v.v local.__circlesize
pushi.e 5
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
pushloc.v local.__prog
sub.v.i
call.i lerp(argc=3)
pop.v.v local.__circlewidth
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
pushi.e 15
conv.i.v
push.v self.ring_timer
call.i gml_Script_remap_clamped(argc=5)
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 36
conv.i.v
pushloc.v local.__circlewidth
pushloc.v local.__circlesize
pushloc.v local.centerY
pushloc.v local.centerX
call.i gml_Script_scr_draw_circle_width_qb(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.ring_timer
push.e 1
sub.i.v
pop.v.v self.ring_timer

:[13]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.timer
push.v self.poweruptime
div.v.v
call.i clamp(argc=3)
pop.v.v local.__alpha
pushloc.v local.__alpha
pushi.e 2
mul.i.v
push.v self.image_blend
pushi.e 2
conv.i.v
call.i gml_Script_scr_draw_outline(argc=3)
popz.v
call.i draw_self(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_blend
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.flashtimer
push.e 1
add.i.v
pop.v.v self.flashtimer
push.v self.ripple_effect
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.v self.flashtimer
push.v self.flashspeed
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
b [16]

:[15]
push.e 0

:[16]
bf [23]

:[17]
pushi.e 1
pop.v.i self.ripple_effect
push.v 970.puddle
pushi.e -9
pushenv [22]

:[18]
pushi.e 205
conv.i.v
call.i gml_Script_scr_custom_afterimage(argc=1)
pop.v.v local.ripple
pushi.e 2072
pushloc.v local.ripple
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 6815715
pushloc.v local.ripple
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushloc.v local.ripple
pushi.e -9
dup.i 4
push.v [stacktop]self.yrate
pushi.e 5
mul.i.v
pop.i.v [stacktop]self.yrate
pushi.e 1
pushloc.v local.ripple
pushi.e -9
pop.v.b [stacktop]self.use_pivot
pushi.e 2
conv.i.v
push.d 0.1
conv.d.v
pushi.e 1
push.v self.y
pushi.e 90
sub.i.v
pushi.e 45
conv.i.d
div.d.v
sub.v.i
call.i clamp(argc=3)
pushloc.v local.ripple
pushi.e -9
pop.v.v [stacktop]self.maxsize
pushi.e 0
pushloc.v local.ripple
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v 970.thrash
pushi.e -9
pushi.e 0
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1
conv.i.v
b [21]

:[20]
pushi.e 0
conv.i.v

:[21]
pushloc.v local.ripple
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.depth
pushi.e 1
sub.i.v
pushloc.v local.ripple
pushi.e -9
pop.v.v [stacktop]self.depth

:[22]
popenv [18]

:[23]
push.v self.flashtimer
push.v self.flashspeed
cmp.v.v GTE
bf [25]

:[24]
pushi.e 0
pop.v.i self.ripple_effect
pushi.e 0
pop.v.i self.flashtimer
push.v self.flashspeed
pushi.e 2
mul.i.v
pushi.e 3
conv.i.d
div.d.v
pushi.e 4
conv.i.v
call.i max(argc=2)
pop.v.v self.flashspeed

:[25]
pushloc.v local.__alpha
push.v self.flashtimer
push.v self.flashspeed
div.v.v
push.d 3.141592653589793
mul.d.v
call.i sin(argc=1)
add.v.v
pop.v.v local.__flash
push.v self.timer
pushi.e 15
add.i.v
push.v self.poweruptime
cmp.v.v GTE
bf [27]

:[26]
push.v self.timer
pushi.e 3
mod.i.v
pushi.e 3
conv.i.d
div.d.v
push.d 3.141592653589793
mul.d.v
call.i sin(argc=1)
pushi.e 4
conv.i.d
div.d.v
pop.v.v local.__flash

:[27]
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v local.__alpha
push.d 0.8
mul.d.v
pop.v.v local.__alpha
pushloc.v local.__flash
pushi.e 3
conv.i.d
div.d.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 3355
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushloc.v local.__alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
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
pushi.e 730
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [29]

:[28]
pushloc.v local.__flash
pushi.e 2
conv.i.d
div.d.v
pushloc.v local.__alpha
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v 730.rim_flash
pushloc.v local.__alpha
pushi.e 4
conv.i.d
div.d.v
pop.v.v 730.glow

:[29]
push.v self.effecttimer
push.v self.effectPause
cmp.v.v GTE
bf [38]

:[30]
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pop.v.v local._thinindex
pushi.e 0
pop.v.i self.i

:[31]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [35]

:[32]
pushi.e 753
conv.i.v
pushloc.v local.centerY
pushloc.v local.centerX
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 60
conv.i.v
call.i irandom(argc=1)
push.v self.i
pushi.e 60
mul.i.v
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.effectPause
pushi.e 2
mul.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.lifetime
push.v self.depth
pushi.e 1
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.i 16759739
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.v self.i
pushloc.v local._thinindex
cmp.v.v EQ
bf [34]

:[33]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.thin

:[34]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [31]

:[35]
push.v self.effectPause
pushi.e 4
cmp.i.v GT
bf [37]

:[36]
push.v self.effectPause
push.e 1
sub.i.v
pop.v.v self.effectPause

:[37]
pushi.e 0
pop.v.i self.effecttimer

:[38]
push.v self.timer
pushi.e 15
add.i.v
push.v self.poweruptime
cmp.v.v GTE
bf [40]

:[39]
push.v self.after_image_flash
pushi.e 1
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 205
conv.i.v
call.i gml_Script_scr_custom_afterimage(argc=1)
pop.v.v self.d
pushloc.v local.__alpha
push.d 0.1
conv.d.v
call.i max(argc=2)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.d 0.1
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.fade
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 2
add.i.v
pop.i.v [stacktop]self.depth
push.v self.image_blend
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.pivotx
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.pivotx
push.v self.pivoty
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.pivoty
pushi.e 0
pop.v.i self.after_image_flash
b [44]

:[43]
pushi.e 1
pop.v.i self.after_image_flash

:[44]
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.intensity
pushi.e 1
cmp.i.v EQ
bf [45]

:[45]
push.v self.intensity
pushi.e 2
cmp.i.v EQ
bf [end]

:[46]
push.v self.timer
pushi.e 15
add.i.v
push.v self.poweruptime
cmp.v.v GTE
bf [48]

:[47]
push.v self.timer
pushi.e 15
add.i.v
push.v self.poweruptime
pushi.e 30
add.i.v
cmp.v.v LTE
b [49]

:[48]
push.e 0

:[49]
bf [end]

:[50]
push.v self.image_blend
call.i draw_set_color(argc=1)
popz.v
push.v self.timer
pushi.e 15
add.i.v
push.v self.poweruptime
sub.v.v
pushi.e 30
conv.i.d
div.d.v
pop.v.v local._progress
pushi.e 5
conv.i.v
pushloc.v local._progress
call.i gml_Script_scr_ease_out(argc=2)
pushi.e 1
conv.i.v
push.d 0.75
conv.d.v
call.i lerp(argc=3)
pushi.e 120
mul.i.v
pop.v.v local._circlesize
pushi.e 5
conv.i.v
pushloc.v local._progress
call.i gml_Script_scr_ease_out(argc=2)
pushi.e 118
mul.i.v
pop.v.v local._circlewidth
pushi.e 1
pushi.e 4
conv.i.v
pushloc.v local._progress
call.i gml_Script_scr_ease_in(argc=2)
sub.v.i
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 36
conv.i.v
pushloc.v local._circlewidth
pushloc.v local._circlesize
pushloc.v local.centerY
pushloc.v local.centerX
call.i gml_Script_scr_draw_circle_width_radius(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushloc.v local._progress
pushi.e 0
cmp.i.v LTE
bf [end]

:[51]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 3345
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]