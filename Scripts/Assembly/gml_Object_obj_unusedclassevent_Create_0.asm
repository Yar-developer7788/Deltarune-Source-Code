.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.lightsoff
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [3]

:[2]
pushi.e 99
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v
b [4]

:[3]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.lightsoff

:[4]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[5]
pushi.e 50
pop.v.i self.con
pushglb.v global.plot
pushi.e 9
cmp.i.v GTE
bf [end]

:[6]
pushi.e 99
pop.v.i self.con
pushi.e 2
pop.v.i self.lightsoff
pushi.e 68
pushenv [9]

:[7]
push.v self.x
pushi.e 108
cmp.i.v EQ
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [7]
pushi.e 133
pushenv [15]

:[10]
push.v self.x
pushi.e 80
cmp.i.v GTE
bf [12]

:[11]
push.v self.x
pushi.e 210
cmp.i.v LTE
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [10]

:[end]