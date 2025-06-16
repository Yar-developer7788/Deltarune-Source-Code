.localvar 2 arguments

:[0]
pushi.e 240
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 240
pushenv [4]

:[2]
push.v self.y
pushi.e 170
cmp.i.v LT
bf [4]

:[3]
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.y

:[4]
popenv [2]

:[end]