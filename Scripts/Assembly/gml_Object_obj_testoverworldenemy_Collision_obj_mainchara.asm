.localvar 2 arguments

:[0]
push.v self.encountered
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.encountered

:[end]