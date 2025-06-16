.localvar 2 arguments

:[0]
push.v self.big
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
pushi.e 4
pop.v.i self.damage
push.v self.image_alpha
push.d 0.1
push.v self.f
mul.v.d
add.v.v
pop.v.v self.image_alpha
push.v self.image_xscale
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.image_xscale
push.d 0.1
push.v self.f
mul.v.d
add.v.v
pop.v.v self.image_xscale

:[3]
push.v self.image_yscale
pushi.e 1
cmp.i.v GT
bf [5]

:[4]
push.v self.image_yscale
push.d 0.1
push.v self.f
mul.v.d
sub.v.v
pop.v.v self.image_yscale

:[5]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 700
add.i.v
cmp.v.v GTE
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 520
add.i.v
cmp.v.v GTE
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 40
sub.i.v
cmp.v.v LTE
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 500
add.i.v
cmp.v.v GTE
bf [15]

:[12]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 530
add.i.v
cmp.v.v LT
bf [15]

:[13]
pushi.e 629
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[14]
push.v 629.init
pushi.e 1
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[18]
push.v self.sucked
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 638
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [21]

:[20]
push.e 0

:[21]
bf [27]

:[22]
push.v self.y
push.v 638.y
pushi.e 146
add.i.v
cmp.v.v LT
bf [24]

:[23]
push.v self.y
push.e 1
add.i.v
pop.v.v self.y

:[24]
push.v self.y
push.v 638.y
pushi.e 146
add.i.v
cmp.v.v GT
bf [26]

:[25]
push.v self.y
push.e 1
sub.i.v
pop.v.v self.y

:[26]
push.v 638.y
pushi.e 146
add.i.v
push.v 638.x
pushi.e 122
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
push.v 638.y
pushi.e 146
add.i.v
push.v 638.x
pushi.e 122
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.gravity_direction

:[27]
push.v self.trail
pushi.e 1
cmp.i.v EQ
bf [end]

:[28]
push.v self.trail_timer
push.e 1
add.i.v
pop.v.v self.trail_timer
push.v self.trail_timer
pushi.e 2
cmp.i.v EQ
bf [end]

:[29]
pushi.e 0
pop.v.i self.trail_timer
pushi.e 605
conv.i.v
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.after
pushi.e 0
push.v self.after
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 1966
push.v self.after
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.8
push.v self.after
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 0.5
push.v self.after
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.v self.image_index
push.v self.after
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e 0
push.v self.after
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.after
pushi.e -9
pop.v.i [stacktop]self.friction
push.v self.depth
push.v self.after
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 180
push.v self.after
pushi.e -9
pop.v.i [stacktop]self.direction

:[end]