.localvar 2 arguments

:[0]
pushi.e 326
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 326
conv.i.v
call.i gml_Script_snd_loop(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 0.37
conv.d.v
pushi.e 326
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
b [10]

:[5]
pushi.e 113
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 113
conv.i.v
call.i gml_Script_snd_loop(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 0.42
conv.d.v
pushi.e 113
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v

:[10]
pushi.e 2
pop.v.i self.f
pushi.e 0
pop.v.i self.speedup
pushi.e 0
pop.v.i self.grav
push.d 0.85
pop.v.d self.size
pushi.e 0
pop.v.i self.playsound
pushi.e 2
push.v self.size
mul.v.i
pop.v.v self.image_xscale
pushi.e 2
push.v self.size
mul.v.i
pop.v.v self.image_yscale
pushi.e 12
push.v self.f
mul.v.i
pop.v.v self.hspeed
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 7
push.v self.f
mul.v.i
pop.v.v self.hspeed

:[12]
pushi.e 20
push.v self.f
mul.v.i
pop.v.v self.rotspeed
pushi.e 776
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wheel_hitbox
push.v self.wheel_hitbox
pushi.e -9
pushenv [15]

:[13]
pushi.e 0
pop.v.i self.hit_ducking
pushi.e 1
pop.v.i self.hit_dodging
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
pushi.e 25
pop.v.i self.damage
pushi.e 1
pop.v.i self.grazed
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 4
pop.v.i self.image_xscale
pushi.e 7
pop.v.i self.image_yscale

:[15]
popenv [13]
pushi.e 8
push.v self.size
mul.v.i
push.v self.wheel_hitbox
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 14
push.v self.size
mul.v.i
push.v self.wheel_hitbox
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e 776
conv.i.v
push.v self.y
push.v self.x
pushi.e 25
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wheel_hitbox_graze
push.v self.wheel_hitbox_graze
pushi.e -9
pushenv [18]

:[16]
pushi.e 300
pop.v.i self.timer
pushi.e 1
pop.v.i self.graze_only
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 5
pop.v.i self.image_xscale
pushi.e 9
pop.v.i self.image_yscale

:[18]
popenv [16]
pushi.e 9
push.v self.size
mul.v.i
push.v self.wheel_hitbox_graze
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 17
push.v self.size
mul.v.i
push.v self.wheel_hitbox_graze
pushi.e -9
pop.v.v [stacktop]self.image_xscale

:[end]