.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.damaged
call.i @@Other@@(argc=0)
pop.v.v self.bulletid
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]