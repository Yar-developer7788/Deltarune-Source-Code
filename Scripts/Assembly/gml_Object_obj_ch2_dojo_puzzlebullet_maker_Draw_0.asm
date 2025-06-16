.localvar 2 arguments

:[0]
push.v 631.y
pushi.e 8
add.i.v
push.v 631.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.futuredir
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1
push.v self.image_alpha
sub.v.i
push.i 16777215
conv.i.v
push.v self.futuredir
pushi.e 3
push.v self.image_alpha
pushi.e 2
mul.i.v
sub.v.i
pushi.e 3
push.v self.image_alpha
pushi.e 2
mul.i.v
sub.v.i
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
b [4]

:[3]
pushi.e 1
pop.v.i self.active
push.v self.timetarg
pushi.e 1
sub.i.v
pop.v.v self.activetimer

:[4]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.futuredir
pushi.e 2
push.v self.image_alpha
sub.v.i
pushi.e 2
push.v self.image_alpha
sub.v.i
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [11]

:[5]
push.v self.activetimer
push.e 1
add.i.v
pop.v.v self.activetimer
push.v self.activetimer
push.v self.timetarg
cmp.v.v EQ
bf [11]

:[6]
pushi.e 56
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.snd
pushi.e 1
push.v self.timesfired
push.v self.times
div.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.i
push.v self.snd
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mybul
push.v self.grazepoints
push.v self.mybul
pushi.e -9
pop.v.v [stacktop]self.grazepoints
push.v self.damage
push.v self.mybul
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.mybul
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 3241
push.v self.mybul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.image_index
push.v self.mybul
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.futuredir
push.v self.mybul
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.mybul
pushi.e -9
pushenv [8]

:[7]
pushi.e 1
pop.v.i self.spin
pushi.e 12
pop.v.i self.spinspeed
pushi.e 0
pop.v.i self.image_speed
push.v other.bulletspeed
pop.v.v self.speed
push.v self.direction
pop.v.v self.image_angle
push.v other.depth
pop.v.v self.depth
pushi.e 246
pop.v.i self.bottomfade

:[8]
popenv [7]
push.v self.timesfired
push.e 1
add.i.v
pop.v.v self.timesfired
push.v self.timesfired
push.v self.times
cmp.v.v LT
bf [10]

:[9]
pushi.e 0
pop.v.i self.activetimer
b [11]

:[10]
pushi.e 2
pop.v.i self.active

:[11]
push.v self.active
pushi.e 2
cmp.i.v EQ
bf [end]

:[12]
push.v self.image_alpha
push.d 0.7
mul.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.01
cmp.d.v LTE
bf [end]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[end]