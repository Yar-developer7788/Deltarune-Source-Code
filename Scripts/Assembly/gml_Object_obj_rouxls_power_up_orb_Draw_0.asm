.localvar 2 arguments
.localvar 11594 _distance 13931
.localvar 14318 _progress 13932
.localvar 26864 _drawalpha 13933

:[0]
push.v self.parenttarget
pushi.e -1
cmp.i.v NEQ
bf [2]

:[1]
push.v self.parenttarget
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[5]
push.v self.parenttarget
pushi.e -1
cmp.i.v NEQ
bf [7]

:[6]
push.v self.parenttarget
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.parenttarget
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.xstart
push.v self.parenttarget
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.ystart

:[10]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [18]

:[11]
pushi.e 1
pop.v.i self.init
push.v self.thin
conv.v.b
bf [13]

:[12]
push.v self.lifetime
pushi.e 2
div.i.v
pop.v.v self.lifetime

:[13]
push.v self.track_target
pushi.e -4
cmp.i.v NEQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.xstart
pushi.e 0
pop.v.i self.ystart

:[15]
pushi.e 90
conv.i.v
pushi.e 70
conv.i.v
call.i random_range(argc=2)
push.v self.distance_multiplier
mul.v.v
pop.v.v local._distance
push.v self._type
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 45
conv.i.v
pushi.e 40
conv.i.v
call.i random_range(argc=2)
pop.v.v local._distance

:[17]
push.v self.xstart
push.v self.direction
pushloc.v local._distance
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.xx
push.v self.xx
pop.v.v self.x
push.v self.ystart
push.v self.direction
pushloc.v local._distance
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.yy
push.v self.yy
pop.v.v self.y

:[18]
push.v self.track_target
pushi.e -4
cmp.i.v NEQ
bf [20]

:[19]
push.v self.track_target
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.xoff
push.v self.track_target
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.yoff

:[20]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.lifetime
cmp.v.v GT
bf [22]

:[21]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[22]
push.v self.timer
push.v self.lifetime
div.v.v
pop.v.v local._progress
pushi.e 1
pop.v.i self.image_alpha
push.v self.thin
conv.v.b
bf [24]

:[23]
push.i 16777215
pop.v.i self.image_blend
push.d 0.25
pop.v.d self.image_yscale
push.v self.direction
pop.v.v self.image_angle
call.i draw_self(argc=0)
popz.v
pushi.e 2
conv.i.v
pushloc.v local._progress
call.i gml_Script_scr_ease_in(argc=2)
push.v self.xstart
push.v self.xx
call.i lerp(argc=3)
push.v self.xoff
add.v.v
pop.v.v self.x
pushi.e 2
conv.i.v
pushloc.v local._progress
call.i gml_Script_scr_ease_in(argc=2)
push.v self.ystart
push.v self.yy
call.i lerp(argc=3)
push.v self.yoff
add.v.v
pop.v.v self.y
b [end]

:[24]
call.i draw_get_alpha(argc=0)
pop.v.v local._drawalpha
push.v self.image_blend
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.radius
pushi.e 2
sub.i.v
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 2
conv.i.v
pushloc.v local._progress
call.i gml_Script_scr_ease_in(argc=2)
push.v self.xstart
push.v self.xx
call.i lerp(argc=3)
push.v self.xoff
add.v.v
pop.v.v self.x
pushi.e 2
conv.i.v
pushloc.v local._progress
call.i gml_Script_scr_ease_in(argc=2)
push.v self.ystart
push.v self.yy
call.i lerp(argc=3)
push.v self.yoff
add.v.v
pop.v.v self.y
pushi.e 0
conv.i.v
push.v self.radius
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
push.v self.radius
pushi.e 3
sub.i.v
pushi.e 0
cmp.i.v GT
bf [26]

:[25]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.radius
pushi.e 2
sub.i.v
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v

:[26]
pushloc.v local._drawalpha
call.i draw_set_alpha(argc=1)
popz.v
pushloc.v local._progress
pushi.e 1
conv.i.v
push.v self.max_radius
call.i lerp(argc=3)
pop.v.v self.radius

:[end]