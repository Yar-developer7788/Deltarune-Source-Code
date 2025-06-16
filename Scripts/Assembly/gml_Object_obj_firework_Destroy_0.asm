.localvar 2 arguments
.localvar 6801 c 8050

:[0]
push.d 0.8
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 96
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 225
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.c
pushloc.v local.c
pushi.e -9
pushenv [2]

:[1]
push.v other.mySprite
pop.v.v self.sprite_index
push.v other.image_blend
pop.v.v self.image_blend
push.v other.colorProfile
pop.v.v self.colorProfile
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
popenv [1]
pushi.e 346
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[3]
pushi.e 346
pushenv [5]

:[4]
pushi.e 1
pop.v.b self.fade_in

:[5]
popenv [4]

:[end]