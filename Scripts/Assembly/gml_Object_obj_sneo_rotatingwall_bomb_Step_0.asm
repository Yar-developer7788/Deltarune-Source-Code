.localvar 2 arguments

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 52
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v self.x
pushi.e 52
push.v self.wallnumber
conv.v.i
push.v [array]self.wallspeed
add.v.v
pop.v.v self.x

:[7]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[9]
push.v self.timer
pushi.e 6
cmp.i.v EQ
bf [11]

:[10]
pushi.e 142
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.bomsfallsfx
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 517
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 193
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 9
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hitbox1
pushi.e 500
push.v self.hitbox1
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.d 0.5
push.v self.hitbox1
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 9
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hitbox2
push.d 0.2
push.v self.hitbox2
pushi.e -9
pop.v.d [stacktop]self.image_xscale
pushi.e 500
push.v self.hitbox2
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[11]
push.v self.timer
pushi.e 12
cmp.i.v EQ
bf [end]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[end]