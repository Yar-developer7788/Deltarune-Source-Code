.localvar 2 arguments

:[0]
push.v 777.punchcon
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v 777.punchcon
pushi.e 4
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
exit.i

:[5]
push.v 777.invincible
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
exit.i

:[7]
pushi.e 776
conv.i.v
push.v 777.y
pushi.e 60
sub.i.v
push.v 777.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.baseball_hitbox
push.v self.baseball_hitbox
pushi.e -9
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.hit_jumping
pushi.e 22
conv.i.d
push.v self.f
div.v.d
pop.v.v self.give_hurt
pushi.e 5
conv.i.d
push.v self.f
div.v.d
pop.v.v self.timer
pushi.e 20
pop.v.i self.damage
pushi.e 4
pop.v.i self.image_yscale
pushi.e 4
pop.v.i self.image_xscale

:[9]
popenv [8]
call.i instance_destroy(argc=0)
popz.v

:[end]