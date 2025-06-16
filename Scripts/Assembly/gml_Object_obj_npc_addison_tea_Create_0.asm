.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
call.i event_inherited(argc=0)
popz.v

:[end]