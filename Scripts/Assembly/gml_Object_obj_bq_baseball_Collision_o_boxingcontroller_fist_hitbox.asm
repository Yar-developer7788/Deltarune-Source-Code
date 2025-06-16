.localvar 2 arguments

:[0]
push.v self.hit
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v 777.hit_baseball_check
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.y
push.v self.c
cmp.v.v LT
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
push.v self.arcade
conv.v.b
bf [7]

:[6]
pushi.e 322
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [8]

:[7]
pushi.e 116
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[8]
pushi.e 1
pop.v.i self.hit
pushi.e 2
pop.v.i self.baseball_combo_timer
push.v 777.hit_baseball
pushi.e 1
add.i.v
pop.v.v 777.hit_baseball
pushi.e 1
pop.v.i 777.hit_baseball_check
push.v 777.y
pushi.e 184
sub.i.v
pop.v.v self.y
push.v other.image_xscale
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e -1
pop.v.i self.hit_direction
b [11]

:[10]
pushi.e 1
pop.v.i self.hit_direction

:[11]
pushi.e 827
conv.i.v
push.v 777.y
pushi.e 184
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
push.v 777.swordactive
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[13]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 828
conv.i.v
push.v self.y
pushi.e 15
sub.i.v
push.v self.x
pushi.e 15
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 828
conv.i.v
push.v self.y
pushi.e 15
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 828
conv.i.v
push.v self.y
pushi.e 15
sub.i.v
push.v self.x
pushi.e 15
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 828
conv.i.v
push.v self.y
push.v self.x
pushi.e 15
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 828
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 828
conv.i.v
push.v self.y
push.v self.x
pushi.e 15
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 828
conv.i.v
push.v self.y
pushi.e 15
add.i.v
push.v self.x
pushi.e 15
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 828
conv.i.v
push.v self.y
pushi.e 15
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 828
conv.i.v
push.v self.y
pushi.e 15
add.i.v
push.v self.x
pushi.e 15
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v
push.v 777.default_string
pop.v.v 843.text

:[15]
pushi.e 777
pushenv [24]

:[16]
push.v self.duckactive
pushi.e 1
cmp.i.v EQ
bf [22]

:[17]
push.v self.arcade
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.d 0.75
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 309
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 309
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [20]

:[19]
push.d 0.75
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 57
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 57
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[20]
pushi.e 1
pop.v.i self.color_fade_alpha
push.i 231131
setowner.e
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.hp
pushi.e 4
add.i.v
pop.i.v [array]self.hp
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
cmp.v.v GT
bf [22]

:[21]
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp

:[22]
push.v self.laseractive
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
pushi.e 10
pop.v.i self.laserpunchfadetimer

:[24]
popenv [16]

:[end]