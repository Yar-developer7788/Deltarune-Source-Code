.localvar 2 arguments

:[0]
push.v self.wobbled
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1351
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
push.v 1351.x
push.v self.x
pushi.e 20
sub.i.v
cmp.v.v GT
bf [7]

:[6]
push.v 1351.x
push.v self.x
pushi.e 50
add.i.v
cmp.v.v LT
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
pushi.e 1497
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [11]

:[10]
pushi.e 1497
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.d
push.i 800000
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.depth

:[11]
pushi.e 1351
pushenv [13]

:[12]
pushi.e 1
pop.v.i self.battlemode
pushi.e 2
pop.v.i self.threebuffer

:[13]
popenv [12]
pushi.e 460
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
pop.v.v self.s
push.d 0.5
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.s
call.i gml_Script_snd_pitch_ch1(argc=2)
popz.v
pushi.e 460
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
pop.v.v self.s2
push.d 0.9
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.s2
call.i gml_Script_snd_pitch_ch1(argc=2)
popz.v
push.d 0.2
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.wobbled
pushi.e 0
pop.v.i self.i

:[14]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[15]
pushi.e 1511
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dbullet
push.v self.dbullet
pushi.e -9
pushenv [17]

:[16]
pushi.e 15
pop.v.i self.damage
pushi.e 4088
pop.v.i self.sprite_index
push.d 0.7
pop.v.d self.image_alpha
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[17]
popenv [16]
pushi.e 10
push.v self.dbullet
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 250
push.v self.i
pushi.e 20
mul.i.v
add.v.i
push.v self.dbullet
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [14]

:[end]