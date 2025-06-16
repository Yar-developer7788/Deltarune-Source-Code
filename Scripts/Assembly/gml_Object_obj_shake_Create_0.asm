.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.camera
pushi.e 1
pop.v.i self.shakespeed
pushi.e 1
pop.v.i self.shakesign
pushi.e 4
pop.v.i self.shakex
pushi.e 4
pop.v.i self.shakey
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.permashake
pushi.e 0
pop.v.i self.beenset
push.v self.object_index
call.i instance_number(argc=1)
pushi.e 2
cmp.i.v GTE
bf [end]

:[1]
pushi.e -1
pop.v.i self.active
call.i instance_destroy(argc=0)
popz.v

:[end]