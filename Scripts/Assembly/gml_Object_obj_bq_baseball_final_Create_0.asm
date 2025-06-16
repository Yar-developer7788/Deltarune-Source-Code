.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 93
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.arcade
b [3]

:[2]
pushi.e 0
pop.v.i self.arcade

:[3]
pushi.e 2
pop.v.i self.f
push.v 789.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
pushi.e 359
conv.i.v
call.i irandom(argc=1)
pop.v.v self.image_angle
pushi.e 0
pop.v.i self.vspeed
push.d 0.1
pop.v.d self.image_xscale
push.d 0.1
pop.v.d self.image_yscale
pushi.e -1
pop.v.i self.hit
pushi.e 0
pop.v.i self.hit_timer
pushbltn.v builtin.room_speed
pop.v.v self.prev_room_speed
push.v self.x
pop.v.v self.xbase
push.v self.y
pop.v.v self.ybase
push.v 777.x
pop.v.v self.player_basex
push.v 777.y
pop.v.v self.player_basey
pushi.e -1
pop.v.i self.hit_direction
pushi.e 0
pop.v.i self.player_shake_timer
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.acc
pushi.e 3
pop.v.i self.spin_speed
pushi.e 0
pop.v.i self.energy_aura_timer
pushi.e 0
pop.v.i self.specialcontimer
pushi.e 0
pop.v.i self.specialcon
pushi.e 0
pop.v.i self.flameframe
pushi.e 0
pop.v.i self.flamealpha
pushi.e 0
pop.v.i self.reticletimer

:[end]