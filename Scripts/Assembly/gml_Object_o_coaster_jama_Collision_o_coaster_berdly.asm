.localvar 2 arguments

:[0]
push.v self.moveberd
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [8]

:[2]
push.v self.movetype
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
push.v self.movetimer
push.v self.movethreshold
pushi.e 1
sub.i.v
cmp.v.v LT
bf [5]

:[4]
push.v self.movecon
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.i self.movebuffer
push.v self.movethreshold
pushi.e 1
sub.i.v
pop.v.v self.movetimer

:[8]
popenv [2]
call.i instance_destroy(argc=0)
popz.v

:[end]