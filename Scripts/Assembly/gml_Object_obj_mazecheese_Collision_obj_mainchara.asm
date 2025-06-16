.localvar 2 arguments

:[0]
push.v self.type
pushi.e 1
cmp.i.v NEQ
bf [2]

:[1]
push.v self.type
pushi.e 4
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[5]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]