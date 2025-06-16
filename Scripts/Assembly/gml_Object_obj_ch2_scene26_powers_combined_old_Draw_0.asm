.localvar 2 arguments
.localvar 11594 _distance 16702
.localvar 33156 _rotation 16703
.localvar 33157 _yaw 16704

:[0]
push.v self.fade_in_out
conv.v.b
bf [2]

:[1]
pushi.e 1
conv.i.v
push.v self.color_lerp
push.v self.end_color
push.v self.start_color
call.i merge_color(argc=3)
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v
b [3]

:[2]
call.i draw_self(argc=0)
popz.v

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
push.v self.orb_count
cmp.v.v LT
bf [12]

:[5]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 200
push.v self.orbsiner
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.i
pop.v.v local._distance
push.v self.orb_spin
pop.v.v local._rotation
push.v self.orb_yaw
pop.v.v local._yaw
push.v self.i
push.v self.orb_count
pushi.e 1
sub.i.v
cmp.v.v EQ
bt [7]

:[6]
push.v self.orb_con
pushi.e 2
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
push.v local._distance
push.v self.orb_ease
mul.v.v
pop.v.v local._distance
push.v local._rotation
pushi.e 360
conv.i.d
push.v self.orb_count
div.v.d
push.v self.i
mul.v.v
add.v.v
pop.v.v local._rotation
push.v local._yaw
pushi.e 360
conv.i.d
push.v self.orb_count
div.v.d
push.v self.i
mul.v.v
add.v.v
pop.v.v local._yaw
b [11]

:[10]
push.v local._yaw
pushi.e 360
conv.i.d
push.v self.orb_count
pushi.e 1
push.v self.orb_ease
sub.v.i
sub.v.v
div.v.d
push.v self.i
mul.v.v
add.v.v
pop.v.v local._yaw
push.v local._rotation
pushi.e 360
conv.i.d
push.v self.orb_count
pushi.e 1
push.v self.orb_ease
sub.v.i
sub.v.v
div.v.d
push.v self.i
mul.v.v
add.v.v
pop.v.v local._rotation

:[11]
push.v self.x
pushloc.v local._rotation
pushi.e 180
conv.i.d
div.d.v
push.d 3.141592653589793
mul.d.v
call.i sin(argc=1)
pushloc.v local._distance
mul.v.v
add.v.v
pop.v.v self.xx
push.v self.y
pushloc.v local._yaw
pushi.e 180
conv.i.d
div.d.v
push.d 3.141592653589793
mul.d.v
call.i cos(argc=1)
pushloc.v local._distance
mul.v.v
add.v.v
pop.v.v self.yy
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 16
push.v self.i
push.v self.flicker_timer
add.v.v
pushi.e 2
mod.i.v
pushi.e 2
mul.i.v
add.v.i
push.v self.yy
push.v self.xx
call.i draw_circle(argc=4)
popz.v
push.i 15379086
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 20
push.v self.i
push.v self.flicker_timer
add.v.v
pushi.e 2
mod.i.v
pushi.e 2
mul.i.v
sub.v.i
push.v self.yy
push.v self.xx
call.i draw_circle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [4]

:[12]
push.v self.orb_spin
push.v self.spin_speed
sub.v.v
pushi.e 360
mod.i.v
pop.v.v self.orb_spin
push.v self.orb_siner
push.v self.spin_speed
add.v.v
pop.v.v self.orb_siner
push.v self.orb_spin
pop.v.v self.orb_yaw
pushi.e 1
push.v self.flicker_timer
sub.v.i
pop.v.v self.flicker_timer
push.v self.orb_con
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.orb_ease
pushi.e 1
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.v self.orb_ease
push.d 0.05
add.d.v
pop.v.v self.orb_ease
b [end]

:[17]
push.v self.orb_con
pushi.e 1
cmp.i.v EQ
bf [21]

:[18]
push.v self.spin_speed
push.d 0.5
add.d.v
pop.v.v self.spin_speed
push.v self.spin_speed
pushi.e 20
cmp.i.v GT
bf [20]

:[19]
pushi.e 2
pop.v.i self.orb_con

:[20]
b [end]

:[21]
push.v self.orb_con
pushi.e 2
cmp.i.v EQ
bf [end]

:[22]
push.v self.orb_ease
push.d 0.01
sub.d.v
pop.v.v self.orb_ease

:[end]