.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 202
cmp.i.v NEQ
bf [end]

:[1]
push.v 729.depth
pushi.e 9998
add.i.v
pop.v.v self.depth

:[end]