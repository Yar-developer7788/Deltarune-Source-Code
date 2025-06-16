.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v GTE
bf [2]

:[1]
push.v self.timer
pushi.e 4
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 4
pop.v.i self.timer

:[5]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [8]

:[6]
pushi.e 0
pop.v.i self.timer
pushi.e 796
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.gas
push.v self.con
pushi.e 1
cmp.i.v GTE
bf [8]

:[7]
pushi.e -16
push.v self.gas
pushi.e -9
pop.v.i [stacktop]self.vspeed

:[8]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.timerb
pushi.e 222
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 142
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[11]
push.v self.timerb
push.e 1
add.i.v
pop.v.v self.timerb
push.d 0.2
conv.d.v
pushi.e 320
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.i
pushi.e 50
add.i.v
pushi.e 10
add.i.v
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x
push.d 0.2
conv.d.v
pushi.e -420
push.v self.timerb
add.v.i
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y
push.v self.x
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.y
push.v self.timerb
pushi.e 60
cmp.i.v EQ
bf [13]

:[12]
pushi.e 794
conv.i.v
pushi.e 100
conv.i.v
pushi.e 320
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.i
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[13]
push.v self.timerb
pushi.e 74
cmp.i.v EQ
bf [15]

:[14]
pushi.e 209
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[15]
push.v self.timerb
pushi.e 10
cmp.i.v GTE
bf [end]

:[16]
push.d 0.04
conv.d.v
pushi.e 4
conv.i.v
push.v self.image_xscale
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.d 0.04
conv.d.v
pushi.e 4
conv.i.v
push.v self.image_yscale
call.i lerp(argc=3)
pop.v.v self.image_yscale

:[end]