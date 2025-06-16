.localvar 2 arguments

:[0]
push.v self.linecon
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
push.v self.linetimer
pushi.e 1
add.i.v
pop.v.v self.linetimer
push.v self.linetimer
pushi.e 1
cmp.i.v GTE
bf [3]

:[2]
push.d 1.5707963267948966
conv.d.v
call.i random(argc=1)
pop.v.v self.xrand
push.d 1.5707963267948966
conv.d.v
call.i random(argc=1)
pop.v.v self.xrand2
pushi.e 945
conv.i.v
pushi.e -10
call.i gml_Script_cameray(argc=0)
add.v.i
pushi.e 70
push.v self.xrand
call.i sin(argc=1)
pushi.e 70
mul.i.v
sub.v.i
call.i gml_Script_camerax(argc=0)
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 945
conv.i.v
pushi.e -16
call.i gml_Script_cameray(argc=0)
add.v.i
pushi.e 250
push.v self.xrand2
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
call.i gml_Script_camerax(argc=0)
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.linetimer

:[3]
push.v self.linesfxtimer
push.e 1
add.i.v
pop.v.v self.linesfxtimer
push.v self.linesfxtimer
pushi.e 4
cmp.i.v GTE
bf [5]

:[4]
pushi.e 0
pop.v.i self.linesfxtimer
pushi.e 243
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.sidenoise
pushi.e 0
conv.i.v
push.d 0.3
conv.d.v
push.v self.sidenoise
call.i gml_Script_snd_volume(argc=3)
popz.v
push.d 0.6
push.d 0.6
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.sidenoise
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[5]
push.v self.sus_f
pushi.e 0
cmp.i.v NEQ
bf [12]

:[6]
push.v self.sus_v
pushi.e 0
cmp.i.v GT
bf [9]

:[7]
push.v self.sus_v
push.v self.sus_f
sub.v.v
pop.v.v self.sus_v
push.v self.sus_v
pushi.e 0
cmp.i.v LT
bf [9]

:[8]
pushi.e 0
pop.v.i self.sus_v

:[9]
push.v self.sus_v
pushi.e 0
cmp.i.v LT
bf [12]

:[10]
push.v self.sus_v
push.v self.sus_f
add.v.v
pop.v.v self.sus_v
push.v self.sus_v
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
pushi.e 0
pop.v.i self.sus_v

:[12]
push.v self.sus_v
pushi.e 0
cmp.i.v NEQ
bf [14]

:[13]
push.v self.sus_y
push.v self.sus_v
add.v.v
pop.v.v self.sus_y
push.v self.kris_y
push.v self.sus_v
add.v.v
pop.v.v self.kris_y

:[14]
push.v self.fake_screenshake
pushi.e 1
cmp.i.v EQ
bf [end]

:[15]
push.v self.fake_shakeamount
pushi.e 0
cmp.i.v NEQ
bf [21]

:[16]
push.v self.fake_shakeamount
pushi.e 0
cmp.i.v GT
bf [18]

:[17]
push.v self.fake_shakeamount
pushi.e 1
sub.i.v
pop.v.v self.fake_shakeamount

:[18]
push.v self.fake_shakeamount
pushi.e 0
cmp.i.v LT
bf [20]

:[19]
push.v self.fake_shakeamount
pushi.e 1
add.i.v
pop.v.v self.fake_shakeamount

:[20]
push.v self.fake_shakeamount
pushi.e -1
mul.i.v
pop.v.v self.fake_shakeamount
b [end]

:[21]
pushi.e 0
pop.v.i self.fake_screenshake

:[end]