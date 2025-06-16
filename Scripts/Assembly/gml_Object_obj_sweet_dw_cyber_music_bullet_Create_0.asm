.localvar 2 arguments

:[0]
pushi.e 10000
pop.v.i self.depth
pushi.e 0
pop.v.i self.move
push.v self.y
pop.v.v self.yy
push.v self.x
pop.v.v self.xx
pushi.e 0
pop.v.i self.sweettimer
pushbltn.v builtin.room
pushi.e 90
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.plot
pushi.e 52
cmp.i.v GTE
bf [5]

:[2]
pushi.e -5
pushi.e 428
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
b [end]

:[5]
pushi.e 52
pop.v.i global.plot

:[end]