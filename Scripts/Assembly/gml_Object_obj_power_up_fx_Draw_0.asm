.localvar 2 arguments
.localvar 11064 __alpha 7838
.localvar 14493 __flash 7839
.localvar 14099 centerX 7840
.localvar 14098 centerY 7841
.localvar 14494 _thinindex 7842
.localvar 14318 _progress 7843
.localvar 14497 _circlesize 7844
.localvar 14498 _circlewidth 7845

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [12]

:[1]
push.v self.use_pivot
conv.v.b
bf [7]

:[2]
push.v self.pivotx
pushi.e -999
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.pivotx

:[4]
push.v self.pivoty
pushi.e -999
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.pivoty

:[6]
b [11]

:[7]
push.v self.pivotx
pushi.e -999
cmp.i.v EQ
bf [9]

:[8]
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

:[9]
push.v self.pivoty
pushi.e -999
cmp.i.v EQ
bf [11]

:[10]
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

:[11]
pushi.e 1
pop.v.i self.init

:[12]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.effecttimer
push.e 1
add.i.v
pop.v.v self.effecttimer
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
push.v self.flashtimer
push.v self.flashspeed
cmp.v.v GTE
bf [14]

:[13]
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

:[14]
pushloc.v local.__alpha
push.v self.flashtimer
push.v self.flashspeed
div.v.v
push.d 3.141592653589793
mul.d.v
call.i sin(argc=1)
pushi.e 4
conv.i.d
div.d.v
add.v.v
pop.v.v local.__flash
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.ring_timer
pushi.e 0
cmp.i.v GT
bf [16]

:[15]
push.v self.ring_timer
push.e 1
sub.i.v
pop.v.v self.ring_timer

:[16]
pushloc.v local.__flash
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
push.v self.x
push.v self.pivotx
add.v.v
pop.v.v local.centerX
push.v self.y
push.v self.pivoty
add.v.v
pop.v.v local.centerY
push.v self.effecttimer
push.v self.effectPause
cmp.v.v GTE
bf [31]

:[17]
push.v self.timer
pushi.e 15
add.i.v
push.v self.poweruptime
cmp.v.v GTE
bf [19]

:[18]
pushi.e 205
conv.i.v
call.i gml_Script_scr_custom_afterimage(argc=1)
pop.v.v self.d
push.v self.depth
pushi.e 1
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushloc.v local.__alpha
push.d 0.1
conv.d.v
call.i max(argc=2)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_alpha
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.reverse
push.d 0.1
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.fade
push.v self.pivotx
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.pivotx
push.v self.pivoty
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.pivoty
push.v self.use_pivot
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.use_pivot
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
push.v self.image_blend
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.use_pivot
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.use_pivot
push.v self.pivotx
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.pivotx
push.v self.pivoty
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.pivoty

:[19]
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.intensity
pushi.e 2
cmp.i.v GTE
bf [21]

:[20]
push.v self.timer
push.v self.poweruptime
pushi.e 15
sub.i.v
cmp.v.v LT
b [22]

:[21]
push.e 0

:[22]
bf [28]

:[23]
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pop.v.v local._thinindex
pushi.e 0
pop.v.i self.i

:[24]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [28]

:[25]
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
push.v self.image_blend
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.i
pushloc.v local._thinindex
cmp.v.v EQ
bf [27]

:[26]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.thin

:[27]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [24]

:[28]
push.v self.effectPause
pushi.e 5
cmp.i.v GT
bf [30]

:[29]
push.v self.effectPause
push.e 1
sub.i.v
pop.v.v self.effectPause

:[30]
pushi.e 0
pop.v.i self.effecttimer

:[31]
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.intensity
pushi.e 1
cmp.i.v EQ
bf [32]

:[32]
push.v self.intensity
pushi.e 2
cmp.i.v EQ
bf [40]

:[33]
push.v self.timer
pushi.e 15
add.i.v
push.v self.poweruptime
cmp.v.v GTE
bf [35]

:[34]
push.v self.timer
pushi.e 15
add.i.v
push.v self.poweruptime
pushi.e 30
add.i.v
cmp.v.v LTE
b [36]

:[35]
push.e 0

:[36]
bf [39]

:[37]
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
pushi.e 80
mul.i.v
pop.v.v local._circlesize
pushi.e 5
conv.i.v
pushloc.v local._progress
call.i gml_Script_scr_ease_out(argc=2)
pushi.e 78
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
bf [39]

:[38]
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[39]
b [end]

:[40]
push.v self.intensity
pushi.e 3
cmp.i.v EQ
bf [end]

:[41]
push.v self.timer
push.v self.poweruptime
pushi.e 15
add.i.v
cmp.v.v GT
bf [end]

:[end]