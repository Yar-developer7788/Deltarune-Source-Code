.localvar 2 arguments

:[0]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.xstart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pop.v.v self.x
push.v self.scale
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.scale
push.d 0.1
add.d.v
pop.v.v self.scale
push.v self.scale
pop.v.v self.image_xscale
push.v self.scale
pop.v.v self.image_yscale

:[2]
push.v self.y
pushi.e 822
cmp.i.v LT
bf [4]

:[3]
push.v self.depth
pushi.e 0
cmp.i.v NEQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e 0
pop.v.i self.depth

:[end]