.localvar 2 arguments
.localvar 27401 speedlines 14529

:[0]
push.v self.hit
pushi.e 1
cmp.i.v NEQ
bf [end]

:[1]
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i gml_Script_snd_free(argc=1)
popz.v
pushi.e 2
pop.v.i self.state
pushi.e 819
conv.i.v
push.v self.y
pushi.e 91
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.arcade
conv.v.b
bf [3]

:[2]
pushi.e 322
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [4]

:[3]
pushi.e 116
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[4]
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
pushi.e 1
pop.v.i 813.slow_down
pushi.e 0
pop.v.i self.vspeed
push.v other.image_xscale
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e -1
pop.v.i self.hit_direction
b [7]

:[6]
pushi.e 1
pop.v.i self.hit_direction

:[7]
pushi.e 823
pushenv [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [8]
push.v 777.swordactive
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[11]
pushi.e 1310
conv.i.v
push.v 777.y
pushi.e 120
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.speedlines
pushi.e 1
pushloc.v local.speedlines
pushi.e -9
pop.v.b [stacktop]self.offsety
pushi.e 4
pushloc.v local.speedlines
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 777
pushenv [17]

:[12]
push.v self.duckactive
pushi.e 1
cmp.i.v EQ
bf [15]

:[13]
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
bf [15]

:[14]
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp

:[15]
push.v self.laseractive
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 10
pop.v.i self.laserpunchfadetimer

:[17]
popenv [12]

:[end]