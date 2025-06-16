.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.ignorebuffer
pushi.e 0
cmp.i.v LTE
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
push.v self.ignorebuffer
push.e 1
sub.i.v
pop.v.v self.ignorebuffer

:[end]