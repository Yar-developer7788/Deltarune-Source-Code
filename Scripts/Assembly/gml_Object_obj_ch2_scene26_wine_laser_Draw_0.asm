.localvar 2 arguments
.localvar 33167 _wine_color 16717
.localvar 33168 _swerveleft 16718
.localvar 33169 _swerveright 16719
.localvar 33170 bombdepth 16720
.localvar 33171 xincrease 16721
.localvar 33172 yincrease 16722
.localvar 33173 last_angle 16723
.localvar 33174 current_angle 16724
.localvar 33175 angleOffset 16725
.localvar 33176 _beam_length 16728
.localvar 33177 ybeam 16729

:[0]
push.i 96850
pop.v.i self.depth
push.v self.x
pushi.e 27
push.v self.image_xscale
mul.v.i
add.v.v
pop.v.v self.laserx
push.v self.y
pushi.e 6
push.v self.image_yscale
mul.v.i
sub.v.v
pop.v.v self.lasery
pushi.e 0
pop.v.i self.beam_power
push.v self.timer
pushi.e 0
cmp.i.v LT
bf [4]

:[1]
push.v self.timer
push.d 1.25
add.d.v
pop.v.v self.timer
push.v self.timer
pushi.e -10
cmp.i.v LT
bf [3]

:[2]
exit.i

:[3]
push.i 1959605
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 20
conv.i.v
push.v self.lasery
push.v self.timer
pushi.e 10
add.i.v
pushi.e 25
mul.i.v
sub.v.v
push.v self.laserx
call.i draw_circle(argc=4)
popz.v

:[4]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v self.beam_power
pushi.e 2
conv.i.d
div.d.v
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
call.i clamp(argc=3)
pop.v.v self.beam_power

:[6]
push.v self.trailstart
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
push.v self.trailend
pushi.e 640
cmp.i.v LT
b [9]

:[8]
push.e 0

:[9]
bf [19]

:[10]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.timer
pushi.e 45
conv.i.v
pushi.e 35
conv.i.v
call.i gml_Script_scr_remapvalue(argc=5)
call.i clamp(argc=3)
push.i 16777215
conv.i.v
push.i 1959605
conv.i.v
call.i merge_color(argc=3)
pop.v.v local._wine_color
pushloc.v local._wine_color
call.i draw_set_color(argc=1)
popz.v
push.v self.trailend
call.i gml_Script_camerax(argc=0)
add.v.v
push.v self.noelle_x
pushi.e 80
sub.i.v
cmp.v.v LT
bf [12]

:[11]
pushi.e 0
conv.b.v
pushi.e 314
conv.i.v
push.v self.trailstart
call.i gml_Script_camerax(argc=0)
add.v.v
push.v self.noelle_x
pushi.e 80
sub.i.v
call.i min(argc=2)
pushi.e 310
conv.i.v
push.v self.trailend
call.i gml_Script_camerax(argc=0)
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[12]
pushi.e 160
conv.i.v
pushi.e 0
conv.i.v
push.v self.trailend
call.i gml_Script_camerax(argc=0)
add.v.v
push.v self.noelle_x
pushi.e 80
sub.i.v
sub.v.v
call.i clamp(argc=3)
pop.v.v local._swerveleft
pushi.e 160
pushloc.v local._swerveleft
sub.v.i
pushi.e 0
conv.i.v
push.v self.trailstart
call.i gml_Script_camerax(argc=0)
add.v.v
push.v self.noelle_x
pushi.e 80
sub.i.v
sub.v.v
call.i clamp(argc=3)
pop.v.v local._swerveright
pushloc.v local._swerveleft
pushi.e 160
cmp.i.v LT
bf [14]

:[13]
pushloc.v local._swerveright
pushi.e 0
cmp.i.v GT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 1
conv.i.v
pushloc.v local._wine_color
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 272
conv.i.v
push.v self.noelle_x
pushi.e 80
sub.i.v
pushloc.v local._swerveleft
add.v.v
pushi.e 160
conv.i.v
pushloc.v local._swerveright
pushi.e 0
conv.i.v
pushloc.v local._swerveleft
pushi.e 0
conv.i.v
pushi.e 1633
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[17]
push.v self.trailstart
call.i gml_Script_camerax(argc=0)
add.v.v
push.v self.noelle_x
pushi.e 80
add.i.v
cmp.v.v GT
bf [19]

:[18]
pushi.e 0
conv.b.v
pushi.e 314
conv.i.v
push.v self.trailstart
call.i gml_Script_camerax(argc=0)
add.v.v
pushi.e 310
conv.i.v
push.v self.noelle_x
pushi.e 80
add.i.v
push.v self.trailend
call.i gml_Script_camerax(argc=0)
add.v.v
call.i max(argc=2)
call.i draw_rectangle(argc=5)
popz.v

:[19]
push.v self.timer
pushi.e 40
cmp.i.v GTE
bf [44]

:[20]
push.v self.timer
pushi.e 40
cmp.i.v GTE
bf [22]

:[21]
push.v self.timer
pushi.e 41
cmp.i.v LT
b [23]

:[22]
push.e 0

:[23]
bf [28]

:[24]
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[25]
pushi.e 193
conv.i.v
b [27]

:[26]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)

:[27]
pop.v.v self.d
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakex
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakey
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.permashake

:[28]
pushi.e 5
conv.i.v
call.i irandom(argc=1)
pop.v.v local.bombdepth
pushi.e 459
conv.i.v
pushi.e 230
pushloc.v local.bombdepth
pushi.e 5
mul.i.v
add.v.i
call.i gml_Script_camerax(argc=0)
push.v self.timer
pushi.e 40
sub.i.v
pushi.e 50
mul.i.v
add.v.v
pushi.e 50
sub.i.v
pushi.e 15
conv.i.v
pushi.e -15
conv.i.v
call.i random_range(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.d
pushi.e -9
push.v [stacktop]self.x
pushi.e 30
sub.i.v
call.i gml_Script_camerax(argc=0)
sub.v.v
pop.v.v self.trailend
pushi.e 2293
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.explosioncount
pushi.e 3
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 142
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[30]
push.v self.explosioncount
push.e 1
add.i.v
pop.v.v self.explosioncount
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 0.75
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushloc.v local.bombdepth
pushi.e 1
add.i.v
sub.v.v
pop.i.v [stacktop]self.depth
push.v self.d
pushi.e -9
pushenv [32]

:[31]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[32]
popenv [31]
push.v self.d
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_camerax(argc=0)
pushi.e 680
add.i.v
cmp.v.v GT
bf [34]

:[33]
push.v self.explosioncount
pushi.e 24
cmp.i.v GTE
b [35]

:[34]
push.e 0

:[35]
bf [44]

:[36]
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [40]

:[37]
pushi.e 193
pushenv [39]

:[38]
call.i instance_destroy(argc=0)
popz.v

:[39]
popenv [38]

:[40]
push.v self.test_mode
conv.v.b
bf [43]

:[41]
pushi.e -60
pop.v.i self.timer
pushi.e 0
pop.v.i self.trailstart
pushi.e 0
pop.v.i self.trailend
pushi.e 0
pop.v.i self.explosioncount
exit.i

:[42]
b [44]

:[43]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[44]
push.v self.timer
pushi.e 50
cmp.i.v GTE
bf [50]

:[45]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 52
cmp.i.v LT
bf [49]

:[46]
pushi.e 80
conv.i.v
pushi.e 4
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v local.xincrease
pushi.e 80
conv.i.v
pushi.e 4
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v local.yincrease
pushi.e 0
pop.v.i self.i

:[47]
push.v self.i
pushi.e 40
cmp.i.v LT
bf [49]

:[48]
pushi.e 985
conv.i.v
push.v self.lasery
pushloc.v local.yincrease
push.v self.i
mul.v.v
add.v.v
push.v self.laserx
pushloc.v local.xincrease
push.v self.i
mul.v.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 80
pushi.e 5
conv.i.v
pushi.e -5
conv.i.v
call.i random_range(argc=2)
add.v.i
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.i
pushi.e 5
conv.i.d
div.d.v
push.d 0.5
add.d.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
push.d 0.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.gravity
push.d 0.25
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 1000001
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [47]

:[49]
exit.i

:[50]
pushi.e 6
conv.i.v
push.v self.timer
pushi.e 50
conv.i.d
div.d.v
call.i gml_Script_scr_ease_inout(argc=2)
pushi.e 440
conv.i.v
pushi.e 90
conv.i.v
call.i lerp(argc=3)
pop.v.v local.last_angle
push.v self.timer
pushi.e 0
cmp.i.v GTE
bf [57]

:[51]
push.v self.timer
pushi.e 40
cmp.i.v LTE
bf [53]

:[52]
push.v self.timer
pushi.e 49
cmp.i.v LT
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
push.v self.timer
push.d 1.75
add.d.v
pop.v.v self.timer
b [57]

:[56]
push.v self.timer
push.d 0.75
add.d.v
pop.v.v self.timer

:[57]
pushi.e 6
conv.i.v
push.v self.timer
pushi.e 50
conv.i.d
div.d.v
call.i gml_Script_scr_ease_inout(argc=2)
pushi.e 440
conv.i.v
pushi.e 90
conv.i.v
call.i lerp(argc=3)
pop.v.v local.current_angle
push.i 1959605
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.last_angle
pushloc.v local.current_angle
sub.v.v
call.i abs(argc=1)
pushi.e 10
conv.i.v
call.i min(argc=2)
pop.v.v local.angleOffset
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
pushi.e 6
conv.i.v
push.v self.timer
pushi.e 50
conv.i.d
div.d.v
call.i gml_Script_scr_ease_inout(argc=2)
sub.v.i
pushi.e 40
mul.i.v
call.i clamp(argc=3)
pop.v.v self.beam_power
push.v self.laser_surface
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [59]

:[58]
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
call.i surface_create(argc=2)
pop.v.v self.laser_surface

:[59]
push.v self.laser_surface
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
push.v self.laserx
call.i gml_Script_camerax(argc=0)
sub.v.v
pop.v.v self.laserx
pushi.e 0
pop.v.i self.i

:[60]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [80]

:[61]
pushi.e 5
conv.i.v
call.i draw_primitive_begin(argc=1)
popz.v
push.v self.laserx
pushloc.v local.current_angle
pushi.e 90
add.i.v
push.v self.beam_power
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.xx
push.v self.lasery
pushloc.v local.current_angle
pushi.e 90
add.i.v
push.v self.beam_power
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.yy
push.v self.yy
push.v self.xx
call.i draw_vertex(argc=2)
popz.v
push.v self.laserx
pushloc.v local.current_angle
pushi.e 90
sub.i.v
push.v self.beam_power
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.xx2
push.v self.lasery
pushloc.v local.current_angle
pushi.e 90
sub.i.v
push.v self.beam_power
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.yy2
push.v self.yy2
push.v self.xx2
call.i draw_vertex(argc=2)
popz.v
push.v self.timer
pushi.e 0
cmp.i.v LT
bf [63]

:[62]
push.v self.timer
pushi.e 10
add.i.v
pushi.e 25
mul.i.v
b [64]

:[63]
pushi.e 1200
conv.i.v

:[64]
pop.v.v local._beam_length
push.v self.trailstart
pushi.e 640
cmp.i.v LT
bf [76]

:[65]
pushloc.v local.current_angle
pushloc.v local.angleOffset
add.v.v
pushloc.v local._beam_length
call.i lengthdir_y(argc=2)
pop.v.v local.ybeam
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [68]

:[66]
pushloc.v local.ybeam
pushi.e 0
cmp.i.v GT
bf [68]

:[67]
push.v self.trailstart
pushi.e 640
cmp.i.v LT
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
push.v self.laserx
pushloc.v local.current_angle
pushloc.v local.angleOffset
add.v.v
pushloc.v local._beam_length
pushi.e 315
push.v self.yy
sub.v.i
pushloc.v local.ybeam
div.v.v
mul.v.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.trailstart
b [76]

:[71]
push.v self.trailstart
pushi.e 0
cmp.i.v GT
bf [73]

:[72]
push.v self.trailstart
pushi.e 640
cmp.i.v LT
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
pushi.e 700
pop.v.i self.trailstart

:[76]
push.v self.xx
pushloc.v local.current_angle
pushloc.v local.angleOffset
add.v.v
pushloc.v local._beam_length
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.xx
push.v self.yy
pushloc.v local.current_angle
pushloc.v local.angleOffset
add.v.v
pushloc.v local._beam_length
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.yy
push.v self.yy
push.v self.xx
call.i draw_vertex(argc=2)
popz.v
push.v self.timer
pushi.e 0
cmp.i.v LT
bf [78]

:[77]
push.v self.timer
pushi.e 10
add.i.v
pushi.e 25
mul.i.v
b [79]

:[78]
pushi.e 1200
conv.i.v

:[79]
pop.v.v local._beam_length
push.v self.xx2
pushloc.v local.last_angle
pushloc.v local.angleOffset
sub.v.v
pushloc.v local._beam_length
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.xx2
push.v self.yy2
pushloc.v local.last_angle
pushloc.v local.angleOffset
sub.v.v
pushloc.v local._beam_length
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.yy2
push.v self.yy2
push.v self.xx2
call.i draw_vertex(argc=2)
popz.v
call.i draw_primitive_end(argc=0)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i local.angleOffset
pushi.e 0
pop.v.i self.beam_power
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [60]

:[80]
pushi.e 3
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 480
conv.i.v
push.v self.noelle_x
call.i gml_Script_camerax(argc=0)
sub.v.v
pushi.e 80
sub.i.v
pushi.e 315
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 345
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 313
conv.i.v
push.v self.noelle_x
call.i gml_Script_camerax(argc=0)
sub.v.v
pushi.e 1
conv.i.v
pushi.e 1633
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
push.v self.laser_surface
call.i draw_surface(argc=3)
popz.v

:[end]