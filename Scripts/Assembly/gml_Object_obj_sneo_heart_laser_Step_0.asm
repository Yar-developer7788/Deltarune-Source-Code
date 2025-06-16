.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.timer
pushi.e 8
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
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

:[5]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.timer
pushi.e 14
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.image_xscale
push.d 0.025
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.025
add.d.v
pop.v.v self.image_yscale

:[10]
push.v self.timer
pushi.e 14
cmp.i.v EQ
bf [end]

:[11]
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
pushi.e 1
push.v self.laser
pushi.e -9
pop.v.i [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v

:[end]