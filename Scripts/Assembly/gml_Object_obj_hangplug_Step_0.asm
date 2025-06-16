.localvar 2 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 9000
pop.v.i self.depth
push.v self.basey
push.v self.siner
pushi.e 70
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.y
push.v 82.x
push.v self.x
push.v self.radius
sub.v.v
cmp.v.v GTE
bf [2]

:[1]
push.v 82.x
push.v self.x
push.v self.radius
add.v.v
cmp.v.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.active
b [6]

:[5]
pushi.e 0
pop.v.i self.active

:[6]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[8]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.decorative
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [end]

:[12]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [21]

:[13]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v 82.x
push.v 82.xprevious
cmp.v.v NEQ
bf [15]

:[14]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer

:[15]
push.v self.timer
push.v self.chargetime
cmp.v.v GTE
bf [18]

:[16]
push.v self.x
call.i gml_Script_camerax(argc=0)
cmp.v.v GTE
bf [18]

:[17]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
push.v self.sprite_width
sub.v.v
cmp.v.v LTE
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 1
pop.v.i self.con
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.timerb

:[21]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[22]
push.v self.timerb
pushi.e 1
add.i.v
pop.v.v self.timerb
pushi.e 15
pop.v.i self.timerbtarget
pushbltn.v builtin.room
pushi.e 205
cmp.i.v EQ
bf [24]

:[23]
pushi.e 8
pop.v.i self.timerbtarget

:[24]
push.v self.timerb
push.v self.timerbtarget
cmp.v.v EQ
bf [end]

:[25]
pushi.e 47
conv.i.v
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [27]

:[26]
pushi.e 47
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.spawn
pushi.e 0
conv.i.v
push.d 0.6
conv.d.v
push.v self.spawn
call.i gml_Script_snd_volume(argc=3)
popz.v

:[27]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.timerb
pushi.e 0
pop.v.i self.con
push.v self.chargetime
pushi.e 2
conv.i.d
div.d.v
call.i random(argc=1)
pushi.e 30
sub.i.v
pop.v.v self.timer
pushi.e 1239
conv.i.v
push.v self.basey
pushi.e 190
add.i.v
push.v self.basex
pushi.e 22
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.spark
push.v self.depth
pushi.e 1
sub.i.v
push.v self.spark
pushi.e -9
pop.v.v [stacktop]self.depth

:[end]