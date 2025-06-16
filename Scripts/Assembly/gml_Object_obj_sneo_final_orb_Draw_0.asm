.localvar 2 arguments
.localvar 14723 blend_color 12820
.localvar 25693 _conewidth 12821
.localvar 14785 _x2 12822
.localvar 14786 _y2 12823
.localvar 25694 _x3 12824
.localvar 25695 _y3 12825

:[0]
push.v self.flashsiner
push.e 1
add.i.v
pop.v.v self.flashsiner
push.d 0.25
push.v self.flashsiner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.25
mul.d.v
add.v.d
push.i 16776960
conv.i.v
push.i 15245824
conv.i.v
call.i merge_color(argc=3)
pop.v.v local.blend_color
call.i draw_self(argc=0)
popz.v
push.v self.image_angle
pushi.e 10
push.v self.timer
pushi.e 2
mul.i.v
add.v.i
add.v.v
pop.v.v self.image_angle
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.timer
add.v.v
push.v self.image_xscale
push.v self.timer
pushi.e 2
mul.i.v
add.v.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2023
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
call.i clamp(argc=3)
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 220
conv.i.v
pushi.e 220
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 20
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2533
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.hp
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v self.i

:[3]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [8]

:[4]
push.v self.i
pushi.e 1
sub.i.v
pushi.e 3
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 14
conv.i.v
b [7]

:[6]
pushi.e 4
conv.i.v

:[7]
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._conewidth
push.v self.i
call.i sin(argc=1)
pushi.e 1
add.i.v
pushi.e 180
mul.i.v
pushloc.v local._conewidth
sub.v.v
pushi.e 999
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v local._x2
push.v self.i
call.i sin(argc=1)
pushi.e 1
add.i.v
pushi.e 180
mul.i.v
pushloc.v local._conewidth
sub.v.v
pushi.e 999
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v local._y2
push.v self.i
call.i sin(argc=1)
pushi.e 1
add.i.v
pushi.e 180
mul.i.v
pushloc.v local._conewidth
add.v.v
pushi.e 999
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v local._x3
push.v self.i
call.i sin(argc=1)
pushi.e 1
add.i.v
pushi.e 180
mul.i.v
pushloc.v local._conewidth
add.v.v
pushi.e 999
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v local._y3
pushi.e 0
conv.i.v
pushloc.v local._y3
pushloc.v local._x3
pushloc.v local._y2
pushloc.v local._x2
push.v self.y
push.v self.x
call.i draw_triangle(argc=7)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [3]

:[8]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]