.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 4
cmp.i.v EQ
bf [2]

:[1]
push.d 1.5
pop.v.d self.image_xscale
push.d 1.5
pop.v.d self.image_yscale
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle

:[2]
push.v self.timer
pushi.e 8
cmp.i.v EQ
bf [end]

:[3]
pushi.e 1
pop.v.i self.timer
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle

:[end]