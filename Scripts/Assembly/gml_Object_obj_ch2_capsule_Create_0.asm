.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.siner
push.d 0.25
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.extendtimer
pushi.e 0
pop.v.i self.repeattimer
pushi.e 0
pop.v.i self.imagetimer
pushi.e 1
pop.v.i self.main
pushi.e 0
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
push.v self.id
cmp.v.v NEQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.main

:[end]