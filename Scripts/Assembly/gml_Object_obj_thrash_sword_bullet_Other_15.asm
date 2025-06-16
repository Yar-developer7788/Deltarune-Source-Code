.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i 729.head_difficulty

:[2]
call.i event_inherited(argc=0)
popz.v

:[end]