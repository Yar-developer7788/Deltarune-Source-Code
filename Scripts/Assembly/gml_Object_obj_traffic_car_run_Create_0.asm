.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.hitted
pushi.e 0
pop.v.i self.rottimer
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 3034
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 282
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
pushi.e 0
pop.v.i self.dir
push.v self.image_angle
pushi.e 90
add.i.v
pop.v.v self.image_angle
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.image_index
pushi.e 1
pop.v.i self.hitted
pushi.e 0
pop.v.i self.init
pushi.e -12
pop.v.i self.vspeed
pushi.e 180
pop.v.i self.gravity_direction
push.d 0.5
pop.v.d self.gravity

:[end]