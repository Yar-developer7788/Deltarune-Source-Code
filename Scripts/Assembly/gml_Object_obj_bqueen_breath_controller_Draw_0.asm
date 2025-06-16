.localvar 2 arguments

:[0]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 133
add.i.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer2
push.e 1
add.i.v
pop.v.v self.timer2
push.v self.introtimer
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
pushi.e 34
dup.i 0
push.i 0
cmp.i.i LTE
bt [5]

:[2]
push.v self.siner
push.d 0.28
push.v self.amplitude
mul.v.d
add.v.v
pop.v.v self.siner
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.siner
push.d 0.2
add.d.v
pop.v.v self.siner

:[4]
push.d 0.03
conv.d.v
push.v self.maxamplitude
push.v self.amplitude
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.amplitude
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [2]

:[5]
popz.i
pushi.e 34
pop.v.i self.introtimer

:[6]
push.v self.introtimer
push.e 1
add.i.v
pop.v.v self.introtimer
push.v self.introtimer
pushi.e 35
cmp.i.v LT
bt [8]

:[7]
push.v self.introtimer
pushi.e 70
cmp.i.v GT
b [9]

:[8]
push.e 1

:[9]
bf [13]

:[10]
push.v self.siner
push.d 0.28
push.v self.amplitude
mul.v.d
add.v.v
pop.v.v self.siner
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.v self.siner
push.d 0.2
add.d.v
pop.v.v self.siner

:[12]
push.d 0.03
conv.d.v
push.v self.maxamplitude
push.v self.amplitude
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.amplitude

:[13]
pushi.e 270
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
push.v self.amplitude
mul.v.v
add.v.i
pop.v.v self.place1
pushi.e 270
push.v self.siner
pushi.e 50
add.i.v
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
push.v self.amplitude
mul.v.v
add.v.i
pop.v.v self.place2
push.v self.introtimer
pushi.e 35
cmp.i.v LT
bf [15]

:[14]
exit.i

:[15]
push.v self.timer
pushi.e 9
cmp.i.v GT
bf [25]

:[16]
push.v self.bulletcount
push.e 1
add.i.v
pop.v.v self.bulletcount
push.v self.bulletcount
push.v self.bulletcountmax
cmp.v.v EQ
bf [22]

:[17]
pushi.e 3
pop.v.i self.timer
pushi.e 0
pop.v.i self.bulletcount
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=3)
pop.v.v self.bulletcountmax

:[19]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=4)
pop.v.v self.bulletcountmax

:[21]
b [25]

:[22]
pushi.e 221
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 221
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
push.d 0.5
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.d
pushi.e 221
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 802
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.d
pushi.e -9
pushenv [24]

:[23]
call.i gml_Script_scr_afterimage_grow(argc=0)
popz.v

:[24]
popenv [23]
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.type
push.v 801.place1
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.bulletdepth
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.id
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.rotator_target
pushi.e 5
pop.v.i self.timer

:[25]
push.v self.timer2
pushi.e 9
cmp.i.v GT
bf [27]

:[26]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [38]

:[29]
push.v self.bulletcount2
push.e 1
add.i.v
pop.v.v self.bulletcount2
push.v self.bulletcount2
push.v self.bulletcount2max
cmp.v.v EQ
bf [35]

:[30]
pushi.e 3
pop.v.i self.timer2
pushi.e 0
pop.v.i self.bulletcount2
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=4)
pop.v.v self.bulletcountmax

:[32]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=4)
pop.v.v self.bulletcount2max

:[34]
b [38]

:[35]
pushi.e 221
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 221
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
push.d 0.5
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.d
pushi.e 221
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 802
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.d
pushi.e -9
pushenv [37]

:[36]
call.i gml_Script_scr_afterimage_grow(argc=0)
popz.v

:[37]
popenv [36]
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.type
push.v 801.place2
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.bulletdepth
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.id
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.rotator_target
pushi.e 5
pop.v.i self.timer2

:[38]
pushglb.v global.turntimer
pushi.e 3
cmp.i.v LT
bf [end]

:[39]
call.i instance_destroy(argc=0)
popz.v

:[end]