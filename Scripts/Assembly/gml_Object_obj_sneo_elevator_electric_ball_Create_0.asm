.localvar 2 arguments

:[0]
pushi.e 2047
pop.v.i self.sprite_index
call.i event_inherited(argc=0)
popz.v
push.d 0.5
pop.v.d self.image_speed
push.i 68097
setowner.e
pushi.e 180
pushi.e 8
conv.i.v
call.i irandom(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v 872.depth
pushi.e 20
sub.i.v
pop.v.v self.depth
push.d 1.25
pop.v.d self.image_xscale
push.d 1.25
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.siner

:[end]