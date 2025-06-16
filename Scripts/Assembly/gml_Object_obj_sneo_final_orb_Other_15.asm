.localvar 2 arguments

:[0]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.playerhit
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]