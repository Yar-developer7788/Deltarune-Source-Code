.localvar 2 arguments
.localvar 27010 randoffset 14068
.localvar 27011 new_bullet 14069
.localvar 27012 new_angle 14070
.localvar 27013 new_distance 14071
.localvar 27014 new_goal 14072

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 24
cmp.i.v LT
bf [2]

:[1]
push.v 761.image_speed
push.d 0.08
add.d.v
pop.v.v 761.image_speed
push.v self._pitch
push.d 0.02
add.d.v
pop.v.v self._pitch
push.v self._pitch
pushi.e 137
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[2]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.v self.timer
pushi.e 16
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 753
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 360
conv.i.v
call.i irandom(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 12
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.lifetime
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

:[7]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
push.v self.timer
pushi.e 24
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v self.image_xscale
push.d 0.025
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.025
add.d.v
pop.v.v self.image_yscale

:[12]
push.v self.timer
pushi.e 24
cmp.i.v EQ
bf [19]

:[13]
push.v self.goal
pushi.e 100
cmp.i.v EQ
bf [15]

:[14]
push.d 4.5
conv.d.v
push.v 872.y
push.v 631.y
call.i median(argc=2)
push.v 872.x
push.v 631.x
call.i median(argc=2)
call.i move_towards_point(argc=3)
popz.v
b [16]

:[15]
pushi.e 5
conv.i.v
push.v 631.y
push.v 631.x
call.i move_towards_point(argc=3)
popz.v

:[16]
pushi.e 360
conv.i.v
call.i irandom(argc=1)
pop.v.v local.randoffset
pushi.e -4
pop.v.i local.new_bullet
pushi.e 50
conv.i.v
push.v self.y
pushloc.v local.randoffset
pushi.e 8
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
pushloc.v local.randoffset
pushi.e 8
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.new_bullet
pushloc.v local.new_bullet
call.i gml_Script_scr_bullet_inherit(argc=1)
popz.v
push.v self.id
pushloc.v local.new_bullet
pushi.e -9
pop.v.v [stacktop]self.source
pushi.e 50
conv.i.v
push.v self.y
pushloc.v local.randoffset
pushi.e 120
add.i.v
pushi.e 8
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
pushloc.v local.randoffset
pushi.e 120
add.i.v
pushi.e 8
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.new_bullet
pushloc.v local.new_bullet
call.i gml_Script_scr_bullet_inherit(argc=1)
popz.v
push.v self.id
pushloc.v local.new_bullet
pushi.e -9
pop.v.v [stacktop]self.source
pushi.e 50
conv.i.v
push.v self.y
pushloc.v local.randoffset
pushi.e 120
sub.i.v
pushi.e 8
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v self.x
pushloc.v local.randoffset
pushi.e 120
sub.i.v
pushi.e 8
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.new_bullet
pushloc.v local.new_bullet
call.i gml_Script_scr_bullet_inherit(argc=1)
popz.v
push.v self.id
pushloc.v local.new_bullet
pushi.e -9
pop.v.v [stacktop]self.source
pushi.e 0
pop.v.b self.active
pushi.e 0
pop.v.b self.visible
pushi.e 3229
pop.v.i self.mask_index
pushi.e 8
conv.i.v
push.d 0.5
conv.d.v
push.v 761.image_speed
push.s "image_speed"@276
conv.s.v
push.v 761.id
call.i gml_Script_scr_lerpvar_instance(argc=5)
popz.v
pushi.e 137
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 136
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 753
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]

:[19]
push.v self.timer
pushi.e 24
cmp.i.v GT
bf [29]

:[20]
pushi.e 0
pop.v.i local.new_angle
pushi.e 0
pop.v.i local.new_distance
push.v self.goal
pop.v.v local.new_goal
push.v self.x
push.v 872.x
pushi.e 160
sub.i.v
cmp.v.v LT
bf [22]

:[21]
pushi.e 8
pop.v.i local.new_goal

:[22]
pushi.e 50
pushenv [28]

:[23]
push.v other.id
push.v self.source
cmp.v.v EQ
bf [28]

:[24]
push.v self.x
push.v other.hspeed
add.v.v
pop.v.v self.x
push.v self.y
push.v other.vspeed
add.v.v
pop.v.v self.y
push.v self.y
push.v self.x
push.v other.y
push.v other.x
call.i point_direction(argc=4)
pop.v.v local.new_angle
push.v self.siner
pushi.e 4
cmp.i.v GT
bf [26]

:[25]
push.v other.y
push.v other.x
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pop.v.v local.new_distance
b [27]

:[26]
pushi.e 8
pop.v.i local.new_distance

:[27]
push.v other.x
pushloc.v local.new_angle
pushi.e 1
pushloc.v local.new_distance
pushi.e 150
conv.i.d
div.d.v
sub.v.i
pushi.e 6
mul.i.v
add.v.v
pushloc.v local.new_goal
pushloc.v local.new_distance
sub.v.v
call.i abs(argc=1)
push.d 0.03
mul.d.v
pushloc.v local.new_goal
pushloc.v local.new_distance
call.i gml_Script_scr_approach(argc=3)
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v other.y
pushloc.v local.new_angle
pushi.e 1
pushloc.v local.new_distance
pushi.e 150
conv.i.d
div.d.v
sub.v.i
pushi.e 6
mul.i.v
add.v.v
pushloc.v local.new_goal
pushloc.v local.new_distance
sub.v.v
call.i abs(argc=1)
push.d 0.03
mul.d.v
pushloc.v local.new_goal
pushloc.v local.new_distance
call.i gml_Script_scr_approach(argc=3)
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y

:[28]
popenv [23]

:[29]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 60
sub.i.v
cmp.v.v LT
bf [end]

:[30]
pushi.e 50
pushenv [33]

:[31]
push.v other.id
push.v self.source
cmp.v.v EQ
bf [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
popenv [31]
call.i instance_destroy(argc=0)
popz.v

:[end]