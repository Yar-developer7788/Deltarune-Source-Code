.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 270
pop.v.i self.direction
push.v self.direction
pop.v.v self.image_angle
push.d 3.141592653589793
conv.d.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.timer
pushi.e 1
pop.v.i self.updateimageangle
pushi.e 1
pop.v.i self.m

:[end]