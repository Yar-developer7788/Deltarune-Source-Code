.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.subcon
pushi.e 0
pop.v.i self.secondtime
pushbltn.v builtin.room
pushi.e 353
cmp.i.v EQ
bf [4]

:[1]
pushglb.v global.plot
pushi.e 60
cmp.i.v LT
bf [3]

:[2]
pushi.e 1
pop.v.i self.con
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.subcon
b [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushbltn.v builtin.room
pushi.e 406
cmp.i.v EQ
bf [end]

:[5]
pushi.e 1
pop.v.i self.secondtime
pushi.e 1
pop.v.i self.con
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.subcon

:[end]