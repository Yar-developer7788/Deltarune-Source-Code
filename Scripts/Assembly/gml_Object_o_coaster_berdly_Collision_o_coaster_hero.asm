.localvar 2 arguments

:[0]
push.v self.damagecon
pushi.e 0
cmp.i.v EQ
bf [14]

:[1]
pushi.e 1
pop.v.i self.damagecon
pushi.e 1076
pop.v.i self.sprite_index
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 484
pushenv [6]

:[2]
push.v self.nitro
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v 502.bumpmercy
pushi.e 6
add.i.v
pop.v.v 502.bumpmercy

:[4]
push.v self.nitro
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v 502.bumpmercy
pushi.e 4
add.i.v
pop.v.v 502.bumpmercy

:[6]
popenv [2]
pushi.e 873
pushenv [8]

:[7]
push.v 496.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[8]
popenv [7]
push.v self.movetype
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.movethreshold
pop.v.v self.movetimer

:[10]
pushi.e 1
pop.v.i self.movebuffer
pushi.e 10
pop.v.i self.xshake
push.v self.kiss
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 498
conv.i.v
push.v self.y
pushi.e 8
sub.i.v
pushi.e 20
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.x
pushi.e 40
add.i.v
pushi.e 80
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.particle

:[12]
push.v self.kiss
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 207
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 498
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e 12
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.particle
pushi.e -1
push.v self.particle
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e 1871
push.v self.particle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.particle
pushi.e -9
pop.v.i [stacktop]self.image_angle
push.d -0.2
push.d 0.1
conv.d.v
call.i random(argc=1)
sub.v.d
push.v self.particle
pushi.e -9
pop.v.v [stacktop]self.gravity

:[14]
pushi.e 111
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.damaged

:[16]
popenv [15]

:[end]