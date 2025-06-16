.localvar 2 arguments

:[0]
push.v self.fade
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 697
pushenv [5]

:[4]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[5]
popenv [4]
push.v self.destroyonhit
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]