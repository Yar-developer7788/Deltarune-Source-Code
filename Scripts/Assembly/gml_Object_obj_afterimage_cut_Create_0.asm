.localvar 2 arguments

:[0]
push.d 0.1
pop.v.d self.faderate
pushi.e 0
pop.v.i self.siner
pushi.e 2166
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.b self.flash

:[end]