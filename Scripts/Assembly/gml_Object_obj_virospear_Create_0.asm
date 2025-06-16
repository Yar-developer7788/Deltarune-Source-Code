.localvar 2 arguments

:[0]
pushi.e 1
pop.v.b self.destroyoffscreen
pushi.e 32
pop.v.i self.tolerance
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
conv.i.v
call.i gml_Script_charaHeartY(argc=0)
call.i gml_Script_charaHeartX(argc=0)
call.i move_towards_point(argc=3)
popz.v

:[2]
push.v self.direction
pop.v.v self.image_angle
push.d -0.3
pop.v.d self.idealFriction
push.v self.idealFriction
pop.v.v self.friction
push.d 0.25
pop.v.d self.image_xscale
push.d 0.25
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.exploded
pushi.e 3
pop.v.i self.target
pushi.e 8
pop.v.i self.damage
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.hit
pushi.e 0
pop.v.i self.image_speed

:[end]