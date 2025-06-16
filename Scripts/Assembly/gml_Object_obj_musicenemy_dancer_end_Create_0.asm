.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.frame
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.bodyflip
pushi.e 2
pop.v.i self.headimage
pushi.e 1
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
push.v self.id
cmp.v.v EQ
bf [2]

:[1]
pushi.e 5
pop.v.i self.headimage

:[2]
pushi.e 2
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
push.v self.id
cmp.v.v EQ
bf [4]

:[3]
pushi.e 8
pop.v.i self.headimage

:[4]
pushi.e 0
pop.v.i self.headframe
pushi.e 0
pop.v.i self.active
push.v self.headimage
neg.v
pushi.e 4
mul.i.v
pop.v.v self.shoottimer

:[end]