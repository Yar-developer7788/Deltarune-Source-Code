.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.image_speed
push.d 0.5
pop.v.d self.image_xscale
push.d 0.5
pop.v.d self.image_yscale
push.v self.depth
push.e 1
add.i.v
pop.v.v self.depth

:[end]