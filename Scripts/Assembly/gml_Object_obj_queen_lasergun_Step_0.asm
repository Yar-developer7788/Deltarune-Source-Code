.localvar 2 arguments

:[0]
pushi.e 575
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [10]

:[3]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
push.v 631.y
pushi.e 10
add.i.v
push.v 631.x
pushi.e 10
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.idealangle
push.v 631.x
pop.v.v self.aimx
push.v 631.y
pop.v.v self.aimy
b [6]

:[5]
pushi.e 270
pop.v.i self.idealangle

:[6]
push.v self.randomshot
conv.v.b
bf [9]

:[7]
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
conv.v.b
bf [9]

:[8]
push.v self.idealangle
pushi.e 20
conv.i.v
pushi.e -20
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.idealangle

:[9]
push.v self.idealangle
pushi.e 360
add.i.v
pop.v.v self.currentangle
pushi.e 1
pop.v.i self.init
pushi.e 47
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.size

:[10]
push.v self.inittimer
push.e 1
add.i.v
pop.v.v self.inittimer
push.v self.inittimer
push.v self.inittime
cmp.v.v GTE
bf [end]

:[11]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [14]

:[12]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.aimtime
div.v.v
push.v self.maxsize
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.size
push.v self.timer
push.v self.aimtime
div.v.v
push.v self.idealangle
push.v self.currentangle
call.i lerp(argc=3)
pop.v.v self.currentangle
push.v self.timer
push.v self.aimtime
cmp.v.v GTE
bf [14]

:[13]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[14]
push.v self.currentangle
pop.v.v self.image_angle
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [17]

:[15]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.waittime
cmp.v.v GTE
bf [17]

:[16]
pushi.e 92
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 557
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.laser
push.v self.image_angle
push.v self.laser
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.image_angle
push.v self.laser
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.shotsize
push.v self.laser
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[17]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[18]
push.v self.image_angle
pop.v.v self.direction
push.v self.speed
push.d 0.25
sub.d.v
pop.v.v self.speed
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [20]

:[19]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[20]
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[end]