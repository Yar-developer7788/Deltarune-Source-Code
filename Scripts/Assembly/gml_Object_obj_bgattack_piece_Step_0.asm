.localvar 2 arguments

:[0]
push.v self.y
pushi.e 635
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v self.y
pushi.e 120
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
pop.v.i self.image_yscale

:[4]
push.v self.y
pushi.e 120
cmp.i.v GT
bf [6]

:[5]
push.v self.y
pushi.e 120
sub.i.v
pushi.e 150
conv.i.d
div.d.v
pop.v.v self.image_yscale

:[6]
push.v self.image_yscale
push.v self.flip
mul.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
pushi.e 2
conv.i.d
div.d.v
pushi.e 40
conv.i.v
pushi.e 320
conv.i.v
call.i lerp(argc=3)
pop.v.v self.minx
push.v self.image_yscale
pushi.e 2
conv.i.d
div.d.v
pushi.e 600
conv.i.v
pushi.e 320
conv.i.v
call.i lerp(argc=3)
pop.v.v self.maxx
push.v self.xrange
push.v self.maxx
push.v self.minx
call.i lerp(argc=3)
pop.v.v self.x
push.v self.image_yscale
push.d 0.1
cmp.d.v LT
bf [8]

:[7]
push.v self.image_yscale
push.d 0.1
push.v self.flip
mul.v.d
cmp.v.v EQ
conv.b.v
call.i abs(argc=1)
popz.v
push.d 0.1
pop.v.d self.image_xscale
b [18]

:[8]
push.v self.variant
pushi.e 2
cmp.i.v EQ
bf [12]

:[9]
push.v self.gravity
push.d 3.2
cmp.d.v LT
bf [11]

:[10]
push.v self.gravity
push.d 0.08
add.d.v
pop.v.v self.gravity

:[11]
b [18]

:[12]
push.v self.variant
pushi.e 1
cmp.i.v EQ
bf [16]

:[13]
push.v self.gravity
push.d 3.2
cmp.d.v LT
bf [15]

:[14]
push.v self.gravity
push.d 0.04
add.d.v
pop.v.v self.gravity

:[15]
b [18]

:[16]
push.v self.gravity
push.d 1.6
cmp.d.v LT
bf [18]

:[17]
push.v self.gravity
push.d 0.02
add.d.v
pop.v.v self.gravity

:[18]
push.v self.y
pushi.e 290
cmp.i.v GTE
bf [19]

:[19]
pushi.e 0
pop.v.i self.rep
push.v self.sprite_index
pushi.e 2109
cmp.i.v EQ
bf [21]

:[20]
push.v self.animtimer
pushi.e 7
cmp.i.v LT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 1
pop.v.i self.rep

:[24]
push.v self.sprite_index
pushi.e 2109
cmp.i.v EQ
bf [26]

:[25]
push.v self.animtimer
pushi.e 14
cmp.i.v LT
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 3
pop.v.i self.rep

:[29]
push.v self.sprite_index
pushi.e 2109
cmp.i.v EQ
bf [31]

:[30]
push.v self.animtimer
pushi.e 14
cmp.i.v GTE
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 1
pop.v.i self.rep

:[34]
push.v self.rep
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [36]

:[35]
push.v self.animtimer
pushi.e 1
add.i.v
pop.v.v self.animtimer
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [35]

:[36]
popz.i
push.v self.animtimer
pushi.e 50
cmp.i.v LTE
bf [38]

:[37]
push.v self.animtimer
pushi.e 8
conv.i.d
div.d.v
pop.v.v self.image_index

:[38]
push.v self.animtimer
pushi.e 9
cmp.i.v EQ
bf [40]

:[39]
push.v self.playsounds
pushi.e 1
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 157
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 118
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.d 0.4
add.d.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 157
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.d 0.4
add.d.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 118
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 157
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.snd3
pushi.e 118
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.snd4
pushi.e 0
conv.i.v
push.v self.image_yscale
push.d 0.4
add.d.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 157
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.d 0.4
add.d.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 118
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
push.d 0.95
conv.d.v
push.v self.snd3
call.i gml_Script_snd_pitch(argc=2)
popz.v
push.d 1.05
conv.d.v
push.v self.snd4
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[43]
push.v self.sprite_index
pushi.e 2109
cmp.i.v EQ
bf [45]

:[44]
push.v self.image_index
push.d 2.99
cmp.d.v GT
b [46]

:[45]
push.e 0

:[46]
bf [50]

:[47]
pushi.e 0
pop.v.i self.animtimer
push.v self.flip
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
pushi.e -1
pop.v.i self.flip
b [50]

:[49]
pushi.e 1
pop.v.i self.flip

:[50]
push.v self.y
pushi.e 375
cmp.i.v GT
bf [52]

:[51]
push.v 777.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[52]
push.v self.y
pushi.e 375
cmp.i.v GT
bf [54]

:[53]
push.v self.create_hitbox
pushi.e 0
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [70]

:[56]
push.v self.sprite_index
pushi.e 2109
cmp.i.v EQ
bf [58]

:[57]
push.v self.visible
pushi.e 1
cmp.b.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [63]

:[60]
pushi.e 1
pop.v.i self.create_hitbox
pushi.e 776
conv.i.v
push.v self.y
pushi.e 120
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kick_hitbox
push.v self.kick_hitbox
pushi.e -9
pushenv [62]

:[61]
pushi.e 22
conv.i.d
push.v self.f
div.v.d
pop.v.v self.give_hurt
pushi.e 400
conv.i.d
push.v self.f
div.v.d
pop.v.v self.timer
pushi.e 25
pop.v.i self.damage
pushi.e 1
pop.v.i self.hit_dodging
pushi.e 1
pop.v.i self.hit_jumping
pushi.e 1
pop.v.i self.hit_ducking
pushi.e 20
pop.v.i self.image_yscale
pushi.e 5
pop.v.i self.image_xscale

:[62]
popenv [61]

:[63]
push.v self.sprite_index
pushi.e 2122
cmp.i.v EQ
bf [65]

:[64]
push.v self.visible
pushi.e 1
cmp.b.v EQ
b [66]

:[65]
push.e 0

:[66]
bf [70]

:[67]
pushi.e 2
pop.v.i self.create_hitbox
pushi.e 776
conv.i.v
push.v self.y
pushi.e 110
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.leggy_hitbox
push.v self.leggy_hitbox
pushi.e -9
pushenv [69]

:[68]
pushi.e 22
conv.i.d
push.v self.f
div.v.d
pop.v.v self.give_hurt
pushi.e 400
conv.i.d
push.v self.f
div.v.d
pop.v.v self.timer
pushi.e 25
pop.v.i self.damage
pushi.e 1
pop.v.i self.hit_dodging
pushi.e 1
pop.v.i self.hit_jumping
pushi.e 10
pop.v.i self.image_yscale
pushi.e 5
pop.v.i self.image_xscale

:[69]
popenv [68]

:[70]
push.v self.y
pushi.e 375
cmp.i.v GT
bf [73]

:[71]
push.v self.y
pushi.e 390
cmp.i.v LT
bf [73]

:[72]
push.v self.visible
pushi.e 1
cmp.b.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [79]

:[75]
push.v self.sprite_index
pushi.e 2109
cmp.i.v EQ
bf [77]

:[76]
push.v self.y
pushi.e 120
sub.i.v
push.v self.kick_hitbox
pushi.e -9
pop.v.v [stacktop]self.y

:[77]
push.v self.sprite_index
pushi.e 2122
cmp.i.v EQ
bf [79]

:[78]
push.v self.y
pushi.e 110
sub.i.v
push.v self.leggy_hitbox
pushi.e -9
pop.v.v [stacktop]self.y

:[79]
push.v self.y
pushi.e 390
cmp.i.v GT
bf [81]

:[80]
push.v self.visible
pushi.e 1
cmp.b.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [end]

:[83]
push.v self.create_hitbox
pushi.e 1
cmp.i.v EQ
bf [87]

:[84]
push.v self.kick_hitbox
pushi.e -9
pushenv [86]

:[85]
call.i instance_destroy(argc=0)
popz.v

:[86]
popenv [85]

:[87]
push.v self.create_hitbox
pushi.e 2
cmp.i.v EQ
bf [91]

:[88]
push.v self.leggy_hitbox
pushi.e -9
pushenv [90]

:[89]
call.i instance_destroy(argc=0)
popz.v

:[90]
popenv [89]

:[91]
pushi.e 3
pop.v.i self.create_hitbox

:[end]