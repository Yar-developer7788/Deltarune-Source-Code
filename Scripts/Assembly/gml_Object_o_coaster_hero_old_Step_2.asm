.localvar 2 arguments

:[0]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 372
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 80
pop.v.i self.depth
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 372.depth

:[5]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 75
pop.v.i self.depth
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth

:[10]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 70
pop.v.i self.depth
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 374.depth

:[15]
push.v self.x
push.v self.back
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
pushi.e 8
add.i.v
push.v self.back
pushi.e -9
pop.v.v [stacktop]self.y

:[end]