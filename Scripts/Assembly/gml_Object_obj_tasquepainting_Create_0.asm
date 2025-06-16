.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.tempvar
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.depthcancel
pushi.e 1
pop.v.i self.normalanim
pushi.e 0
pop.v.i self.remanimspeed
pushi.e 0
pop.v.i self.flag
pushi.e 0
pop.v.i self.extflag
push.i 100001
pop.v.i self.depth
pushi.e 0
pop.v.i self.tasquecon
pushi.e 0
pop.v.i self.tasquetimer
pushi.e 0
pop.v.i self.tasquespawn
pushi.e 0
pop.v.i self.tasqueTrig
pushi.e 0
pop.v.i self.tenemy
pushi.e -5
pushi.e 371
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.image_index

:[end]