.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.carGen
pushi.e 0
pop.v.b self.victory
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e -5
pushi.e 370
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1117
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 1180
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
call.i instance_destroy(argc=0)
popz.v

:[end]