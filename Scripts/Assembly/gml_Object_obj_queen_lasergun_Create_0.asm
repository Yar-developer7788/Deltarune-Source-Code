.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.inittimer
pushi.e 1
pop.v.i self.shotsize
push.d 1.2
pop.v.d self.maxsize
pushi.e 0
pop.v.i self.aimx
pushi.e 0
pop.v.i self.aimy
pushi.e 1
pop.v.i self.randomshot
pushi.e 0
pop.v.i self.inittime
pushi.e 15
pop.v.i self.aimtime
pushi.e 15
pop.v.i self.waittime
push.v 631.depth
pushi.e 1
add.i.v
pop.v.v self.depth
pushi.e 539
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 99
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.search
push.v self.depth
pushi.e 1
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.s ""@157
push.v self.d
pushi.e -9
pop.v.s [stacktop]self.targetstring
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.donttypeanything

:[end]