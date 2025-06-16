.localvar 2 arguments

:[0]
push.v self.image_xscale
push.d 0.04
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.04
add.d.v
pop.v.v self.image_yscale
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner
push.v self.xstart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
pop.v.v self.x

:[2]
push.v self.image_xscale
push.d 1.25
cmp.d.v GT
bf [end]

:[3]
push.d 1.25
pop.v.d self.image_xscale
push.d 1.25
pop.v.d self.image_yscale
call.i instance_destroy(argc=0)
popz.v
pushi.e 623
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ball
push.v self.type
push.v self.ball
pushi.e -9
pop.v.v [stacktop]self.type
push.v self.siner
push.v self.ball
pushi.e -9
pop.v.v [stacktop]self.siner
push.v self.xstart
push.v self.ball
pushi.e -9
pop.v.v [stacktop]self.xstart

:[end]