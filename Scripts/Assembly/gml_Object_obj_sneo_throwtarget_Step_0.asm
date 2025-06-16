.localvar 2 arguments

:[0]
push.v self.growstate
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_xscale
pushi.e 1
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.image_xscale
push.d 0.08
add.d.v
pop.v.v self.image_xscale

:[5]
push.v self.growstate
pushi.e 1
cmp.i.v EQ
bf [8]

:[6]
push.v self.image_xscale
push.d 0.08
sub.d.v
pop.v.v self.image_xscale
push.v self.image_xscale
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.stopmoving
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.siner
push.d 0.07
push.v self.n
add.v.d
add.v.v
pop.v.v self.siner

:[10]
pushi.e 4
pop.v.i self.path_speed
push.d 0.25
push.v self.siner
call.i sin(argc=1)
pushi.e 8
conv.i.d
div.d.v
add.v.d
pop.v.v self.path_position
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [14]

:[11]
push.v self.x
push.v self.xstart
pushi.e 40
add.i.v
cmp.v.v LT
bf [13]

:[12]
push.v self.x
pushi.e 10
add.i.v
pop.v.v self.x

:[13]
pushi.e 6
pop.v.i self.con

:[14]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [17]

:[15]
push.v self.x
push.v self.xstart
cmp.v.v GT
bf [17]

:[16]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x

:[17]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [end]

:[18]
push.v self.x
push.v self.xstart
pushi.e 40
add.i.v
cmp.v.v LT
bf [20]

:[19]
push.v self.x
pushi.e 8
add.i.v
pop.v.v self.x

:[20]
pushi.e 6
pop.v.i self.con

:[end]