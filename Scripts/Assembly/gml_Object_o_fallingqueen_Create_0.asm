.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.f
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.2
pop.v.d self.image_speed
pushi.e 12
push.v self.f
mul.v.i
pop.v.v self.vspeed
pushi.e 789
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [2]

:[1]
push.v 789.pirouette_amount
pushi.e 5
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.d 10.5
push.v self.f
mul.v.d
pop.v.v self.vspeed

:[5]
pushi.e -20
pop.v.i self.y
push.d 0.8
push.v self.f
mul.v.d
pop.v.v self.image_alpha
pushi.e 776
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dive_hitbox
push.v self.dive_hitbox
pushi.e -9
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.hit_ducking
pushi.e 30
conv.i.d
push.v self.f
div.v.d
pop.v.v self.give_hurt
pushi.e 40
conv.i.d
push.v self.f
div.v.d
pop.v.v self.give_invincibility
pushi.e 300
pop.v.i self.timer
pushi.e 20
pop.v.i self.damage
pushi.e 4
pop.v.i self.image_yscale
push.d 2.8
pop.v.d self.image_xscale

:[7]
popenv [6]

:[end]