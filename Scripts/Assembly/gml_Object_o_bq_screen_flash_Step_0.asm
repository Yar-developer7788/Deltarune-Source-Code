.localvar 2 arguments

:[0]
push.v self.state
push.e 1
add.i.v
pop.v.v self.state
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]