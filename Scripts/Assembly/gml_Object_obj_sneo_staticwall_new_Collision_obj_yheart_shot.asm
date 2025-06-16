.localvar 2 arguments

:[0]
call.i @@Other@@(argc=0)
pop.v.v self.hitshot
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]