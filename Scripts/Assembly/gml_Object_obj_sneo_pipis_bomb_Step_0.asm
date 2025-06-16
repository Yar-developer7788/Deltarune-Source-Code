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
cmp.i.v GT
bf [4]

:[3]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[4]
push.v self.spawninvincibilitytimer
push.e 1
add.i.v
pop.v.v self.spawninvincibilitytimer
push.v self.timer
pushi.e 6
cmp.i.v EQ
bf [6]

:[5]
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
pushi.e 5000
push.v self.hitbox1
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.d 0.5
push.v self.hitbox1
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.v self.id
push.v self.hitbox1
pushi.e -9
pop.v.v [stacktop]self.creator
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
pushi.e 5000
push.v self.hitbox2
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.id
push.v self.hitbox2
pushi.e -9
pop.v.v [stacktop]self.creator

:[6]
push.v self.timer
pushi.e 12
cmp.i.v EQ
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.y
push.v 872.y
pushi.e 81
sub.i.v
push.v 872.sprite_height
add.v.v
cmp.v.v GT
bf [11]

:[9]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 1
cmp.i.v LT
bf [11]

:[10]
pushi.e 111
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 0.24
pop.v.d self.gravity
push.d -5.5
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.d
pop.v.v self.vspeed
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[11]
push.v self.x
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 10
add.i.v
cmp.v.v LT
bf [13]

:[12]
push.v self.y
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
cmp.v.v GT
b [14]

:[13]
push.e 0

:[14]
bf [end]

:[15]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [end]

:[16]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.timer
pushi.e 1
pop.v.i self.image_speed
pushi.e 143
conv.i.v
call.i gml_Script_snd_loop(argc=1)
pop.v.v self.bomsfallsfx

:[end]