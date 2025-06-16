.localvar 2 arguments

:[0]
pushi.e 90
pop.v.i self.image_angle
push.i 8388736
pop.v.i self.image_blend
pushi.e 1
pop.v.b self.visible
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.5
pop.v.d self.image_alpha
pushi.e 3
pop.v.i self.turnsleft
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.axe_timer
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.frametype
pushi.e -9999
pop.v.i self.x
pushi.e -9999
pop.v.i self.y
pushi.e 684
conv.i.v
call.i instance_number(argc=1)
pushi.e 2
cmp.i.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]