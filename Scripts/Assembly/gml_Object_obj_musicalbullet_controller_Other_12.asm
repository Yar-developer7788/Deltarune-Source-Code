.localvar 2 arguments
.localvar 7017 a 13657

:[0]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v local.a
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 722
conv.i.v
push.v self.y
push.v self.x
pushi.e 200
sub.i.v
call.i instance_nearest(argc=3)
pushi.e -9
pushenv [3]

:[2]
pushi.e 3
pop.v.i self.makebullet

:[3]
popenv [2]

:[4]
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
pushi.e 722
conv.i.v
push.v self.y
push.v self.x
pushi.e 200
add.i.v
call.i instance_nearest(argc=3)
pushi.e -9
pushenv [7]

:[6]
pushi.e 3
pop.v.i self.makebullet

:[7]
popenv [6]

:[end]