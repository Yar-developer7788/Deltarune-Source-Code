.localvar 2 arguments

:[0]
push.v self.image_alpha
push.d 0.15
cmp.d.v LT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.01
add.d.v
pop.v.v self.image_alpha

:[2]
push.v self.slow_down
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[4]
push.v self.ystart
push.v self.siner
push.v self.siner
mul.v.v
push.v self.siner
mul.v.v
pushi.e 2048
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
push.v self.y
pushi.e 640
cmp.i.v GTE
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]