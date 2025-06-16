.localvar 2 arguments

:[0]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushi.e 80
pop.v.i self.depth
pushi.e 372
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 372.depth

:[3]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
pushi.e 75
pop.v.i self.depth
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth

:[6]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [9]

:[7]
pushi.e 70
pop.v.i self.depth
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 374.depth

:[9]
pushi.e 275
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[10]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [11]

:[11]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.i 133637
setowner.e
push.v self.depth
pushi.e 1
add.i.v
pushi.e 275
pushi.e 1
push.v [array]self.c
pushi.e -9
pop.v.v [stacktop]self.depth

:[13]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [end]

:[14]
push.v self.depth
pushi.e 1
add.i.v
pushi.e 275
pushi.e 2
push.v [array]self.c
pushi.e -9
pop.v.v [stacktop]self.depth

:[end]