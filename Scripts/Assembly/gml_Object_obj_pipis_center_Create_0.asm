.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 36
pop.v.i self.maxlength
pushi.e 655
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [1]

:[1]
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.homingfactor
pushi.e 5
pop.v.i self.maxhomingfactor

:[end]