.localvar 2 arguments

:[0]
push.v self.sprite_index
pushi.e 2028
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1
pop.v.i self.playerhit
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 697
pushenv [3]

:[2]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]
b [end]

:[4]
push.v self.sprite_index
pushi.e 2029
cmp.i.v EQ
bf [end]

:[5]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
pushi.e 697
pushenv [8]

:[7]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[8]
popenv [7]
push.v self.destroyonhit
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]