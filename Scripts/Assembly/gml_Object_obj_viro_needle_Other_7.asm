.localvar 2 arguments

:[0]
push.v self.spawning
conv.v.b
bf [2]

:[1]
pushi.e 2658
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.b self.spawning
pushi.e 1
pop.v.b self.active
pushi.e 0
pop.v.i self.image_speed
b [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]