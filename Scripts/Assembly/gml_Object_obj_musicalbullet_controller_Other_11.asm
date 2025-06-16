.localvar 2 arguments
.localvar 7017 a 13655

:[0]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v local.a
push.v self.forcedir
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i local.a

:[2]
push.v self.forcedir
pushi.e -1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i local.a

:[4]
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [8]

:[5]
pushi.e 722
conv.i.v
push.v self.y
push.v self.x
pushi.e 200
sub.i.v
call.i instance_nearest(argc=3)
pushi.e -9
pushenv [7]

:[6]
pushi.e 25
conv.i.v
call.i random(argc=1)
pop.v.v self.angleoffset
pushi.e 2
pop.v.i self.makebullet

:[7]
popenv [6]

:[8]
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
pushi.e 722
conv.i.v
push.v self.y
push.v self.x
pushi.e 200
add.i.v
call.i instance_nearest(argc=3)
pushi.e -9
pushenv [11]

:[10]
pushi.e 25
conv.i.v
call.i random(argc=1)
pushi.e -1
mul.i.v
pop.v.v self.angleoffset
pushi.e 2
pop.v.i self.makebullet

:[11]
popenv [10]

:[end]