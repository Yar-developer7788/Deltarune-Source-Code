.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 697
pushenv [3]

:[2]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]
push.v self.destroyonhit
pushi.e 1
cmp.i.v EQ
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]