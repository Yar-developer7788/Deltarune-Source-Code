.localvar 2 arguments

:[0]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v other.type
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [7]

:[5]
push.v self.con
pushi.e 1
cmp.i.v GTE
bf [7]

:[6]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
popenv [5]

:[end]