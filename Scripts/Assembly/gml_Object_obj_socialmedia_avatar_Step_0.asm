.localvar 2 arguments

:[0]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 290
add.i.v
cmp.v.v LT
bf [2]

:[1]
push.v 631.depth
pushi.e 2
sub.i.v
pop.v.v self.depth

:[2]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 290
add.i.v
cmp.v.v GT
bf [4]

:[3]
push.v 631.depth
pushi.e 100
add.i.v
pop.v.v self.depth

:[4]
push.v self.isqueen
conv.v.b
bf [20]

:[5]
push.v self.queencon
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1922
pop.v.i self.sprite_index
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pop.v.v self.x
pushi.e -4
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.queencon

:[7]
push.v self.queencon
pushi.e 1
cmp.i.v EQ
bf [14]

:[8]
push.v self.x
push.v self.xstart
cmp.v.v LTE
bf [14]

:[9]
pushi.e 510
pushenv [11]

:[10]
pushi.e -900
pop.v.i self.timer
push.d 0.5
pop.v.d self.image_alpha
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.gray

:[11]
popenv [10]
pushi.e 509
pushenv [13]

:[12]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.angrycon

:[13]
popenv [12]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 293
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 332
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 510
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 40
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.redword
pushi.e 1
push.v self.redword
pushi.e -9
pop.v.i [stacktop]self.queenword
push.s "obj_socialmedia_avatar_slash_Step_0_gml_36_0"@24558
conv.s.v
push.s "DRAMA"@24559
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.redword
pushi.e -9
pop.v.v [stacktop]self.wordchoice
pushi.e 0
push.v self.redword
pushi.e -9
pop.v.i [stacktop]self.destroyonhit
pushi.e -4
push.v self.redword
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e 2
pop.v.i self.queencon

:[14]
push.v self.queencon
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
push.v self.angrycon
pushi.e 2
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 1923
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 332
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 332
conv.i.v
call.i gml_Script_snd_loop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 332
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[19]
pushi.e -1
pop.v.i self.angrycon
b [22]

:[20]
push.v self.chosen_face
pushi.e 8
cmp.i.v EQ
bf [22]

:[21]
exit.i

:[22]
push.v self.angrycon
pushi.e 0
cmp.i.v EQ
bf [32]

:[23]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 19
push.v self.myhspeed
sub.v.i
cmp.v.v GTE
bf [29]

:[24]
push.v self.times
push.e 1
add.i.v
pop.v.v self.times
push.v self.times
push.v self.offset
cmp.v.v GTE
bf [26]

:[25]
pushi.e 0
pop.v.i self.times
b [28]

:[26]
push.v 872.x
push.v self.x
sub.v.v
call.i sign(argc=1)
pop.v.v self.side
pushi.e 510
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 20
push.v self.side
mul.v.i
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.word
push.v self.vspeed
push.v self.word
pushi.e -9
pop.v.v [stacktop]self.vspeed
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [28]

:[27]
push.v self.myhspeed
push.v self.side
mul.v.v
push.v self.word
pushi.e -9
pop.v.v [stacktop]self.hspeed

:[28]
pushi.e 0
pop.v.i self.timer

:[29]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 310
add.i.v
cmp.v.v GT
bf [32]

:[30]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [32]

:[31]
call.i instance_destroy(argc=0)
popz.v

:[32]
push.v self.angrycon
pushi.e 2
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1919
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 255
pop.v.i self.image_blend
pushi.e 30
conv.i.v
call.i random(argc=1)
pop.v.v self.timer
pushi.e 3
pop.v.i self.angrycon

:[34]
push.v self.angrycon
pushi.e 3
cmp.i.v EQ
bf [end]

:[35]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 22
cmp.i.v GTE
bf [end]

:[36]
pushi.e 510
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 20
push.v self.side
mul.v.i
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.word
push.v self.depth
pushi.e 1
sub.i.v
push.v self.word
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.word
pushi.e -9
pushenv [38]

:[37]
pushi.e 1
pop.v.i self.angry
push.v 631.y
pushi.e 10
add.i.v
push.v 631.x
pushi.e 10
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e -30
conv.i.v
pushi.e 30
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.direction
push.v self.direction
pop.v.v self.image_angle
pushi.e 7
pop.v.i self.speed

:[38]
popenv [37]
pushi.e 4
conv.i.v
call.i random(argc=1)
neg.v
pop.v.v self.timer

:[end]