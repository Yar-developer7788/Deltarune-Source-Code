.localvar 2 arguments

:[0]
push.v self.bulletid
pushi.e -9
push.v [stacktop]self.big
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v self.hspeed
pushi.e 10
cmp.i.v LT
bf [3]

:[2]
pushi.e 10
pop.v.i self.hspeed

:[3]
push.v self.vspeed
pushi.e -3
conv.i.v
pushi.e 3
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.vspeed

:[4]
push.v self.bulletid
pushi.e -9
push.v [stacktop]self.big
pushi.e 0
cmp.i.v EQ
bf [8]

:[5]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
pushi.e 0
pop.v.i self.hspeed

:[7]
push.v self.hspeed
pushi.e 2
add.i.v
pop.v.v self.hspeed
push.v self.vspeed
push.d 1.2
mul.d.v
pop.v.v self.vspeed

:[8]
push.v self.bulletid
pushi.e -9
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]

:[end]