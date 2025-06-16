.localvar 2 arguments
.localvar 21139 orbit 9050
.localvar 21140 angle 9051
.localvar 21141 center_x 9052
.localvar 21142 center_y 9053
.localvar 21143 car_sn_x 9054
.localvar 21144 car_sn_y 9055
.localvar 107 i 9056
.localvar 21145 car_x 9057
.localvar 21146 car_y 9058

:[0]
push.v self.wheel_base_angle
push.v self.rotate_speed
sub.v.v
pop.v.v self.wheel_base_angle
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.wheel_base_angle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2888
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.car_angle
push.v self.rotate_speed
sub.v.v
pop.v.v self.car_angle
push.v self.car_angle
pushi.e 360
cmp.i.v GTE
bf [2]

:[1]
push.v self.car_angle
pushi.e 360
add.i.v
pop.v.v self.car_angle

:[2]
push.v self.car_orbit
pop.v.v local.orbit
push.v self.car_angle
pop.v.v local.angle
push.v self.x
pushi.e 10
sub.i.v
pop.v.v local.center_x
push.v self.y
pushi.e 15
sub.i.v
pop.v.v local.center_y
pushloc.v local.angle
pushloc.v local.orbit
call.i lengthdir_x(argc=2)
pushloc.v local.center_x
add.v.v
pop.v.v local.car_sn_x
pushloc.v local.angle
pushloc.v local.orbit
call.i lengthdir_y(argc=2)
pushloc.v local.center_y
add.v.v
pop.v.v local.car_sn_y
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.car_sn_y
pushloc.v local.car_sn_x
pushi.e 0
conv.i.v
pushi.e 2887
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
pop.v.i local.i

:[3]
pushloc.v local.i
pushi.e 15
cmp.i.v LT
bf [end]

:[4]
push.v self.car_angle
push.d 22.5
pushloc.v local.i
pushi.e 1
add.i.v
mul.v.d
sub.v.v
pop.v.v local.angle
pushloc.v local.angle
pushloc.v local.orbit
call.i lengthdir_x(argc=2)
pushloc.v local.center_x
add.v.v
pop.v.v local.car_x
pushloc.v local.angle
pushloc.v local.orbit
call.i lengthdir_y(argc=2)
pushloc.v local.center_y
add.v.v
pop.v.v local.car_y
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.car_y
pushloc.v local.car_x
pushi.e 0
conv.i.v
pushi.e 2886
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [3]

:[end]