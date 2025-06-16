.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
push.i -99999
pop.v.i self.depth
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
push.i 167655
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.xoffset
push.i 167656
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.yoffset
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.d 0.5
pop.v.d self.image_xscale
push.d 0.5
pop.v.d self.image_yscale

:[end]