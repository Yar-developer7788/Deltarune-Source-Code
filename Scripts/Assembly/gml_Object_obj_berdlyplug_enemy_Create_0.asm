.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.fsiner
pushi.e 0
pop.v.i self.flash
pushi.e 0
pop.v.i self.shake
pushi.e 0
pop.v.i self.shake2
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.alphacon
push.v self.x
pop.v.v self.xx
push.v self.y
pop.v.v self.yy
pushi.e 0
pop.v.i self.bardlymercy
push.v self.xstart
pop.v.v self.savex
push.v self.ystart
pop.v.v self.savey
pushi.e 0
pop.v.i self.introtimer
pushi.e -1
pop.v.i self.outrotimer
pushi.e 0
pop.v.i self.outrox
pushi.e 0
pop.v.i self.outroy
pushbltn.v builtin.room
pushi.e 206
cmp.i.v NEQ
bf [2]

:[1]
pushi.e -1
pop.v.i self.introtimer
b [end]

:[2]
push.v 975.berdly_wire
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.outrox
push.v 975.berdly_wire
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.outroy

:[end]