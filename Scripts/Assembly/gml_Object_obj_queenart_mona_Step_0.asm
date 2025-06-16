.localvar 2 arguments

:[0]
push.v self.decorative
pushi.e 1
cmp.b.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.active

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [16]

:[3]
pushi.e 0
pop.v.i self.image_index
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 60
pop.v.i self.threshold
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 60
pop.v.i self.threshold

:[5]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 20
pop.v.i self.threshold

:[7]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 35
pop.v.i self.threshold

:[9]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e 15
pop.v.i self.threshold

:[11]
push.v self.timer
push.v self.threshold
cmp.v.v GTE
bf [13]

:[12]
push.v self.active
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[16]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [22]

:[17]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.flashamt
push.v self.flashamt
pushi.e 0
cmp.i.v LT
bf [19]

:[18]
push.v self.timer
pushi.e 5
cmp.i.v GTE
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[22]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [66]

:[23]
pushi.e 1
pop.v.i self.image_index
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e -25
pop.v.i self.flameangle

:[25]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
pushi.e -30
pop.v.i self.flameangle

:[27]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [29]

:[28]
pushi.e -140
pop.v.i self.flameangle

:[29]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [31]

:[30]
pushi.e -25
pop.v.i self.flameangle

:[31]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [33]

:[32]
pushi.e -15
pop.v.i self.flameangle

:[33]
push.v self.flameangle
call.i abs(argc=1)
pop.v.v self.flameanglemax
push.v self.timer
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.flameanglemax
mul.v.v
pop.v.v self.flameangle
push.v self.movetype
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
pushi.e 0
pop.v.i self.flameangle

:[35]
pushi.e 4
pop.v.i self.rate
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
pushi.e 3
pop.v.i self.rate

:[37]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [39]

:[38]
pushi.e 1
pop.v.i self.rate

:[39]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [41]

:[40]
pushi.e 3
pop.v.i self.rate

:[41]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [43]

:[42]
pushi.e 3
pop.v.i self.rate

:[43]
push.v self.timer
push.v self.rate
mod.v.v
pushi.e 0
cmp.i.v EQ
bf [55]

:[44]
pushi.e -40
conv.i.v
push.v self.id
call.i gml_Script_scr_onscreen_tolerance(argc=2)
conv.v.b
bf [49]

:[45]
push.v self.type
pushi.e 4
cmp.i.v NEQ
bf [49]

:[46]
push.v self.bossid
pushi.e -9
pushenv [48]

:[47]
pushi.e 1
pop.v.i self.flamesfx

:[48]
popenv [47]

:[49]
pushi.e 272
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 34
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flame
push.d 0.2
push.v self.flame
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 0.2
push.v self.flame
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.d 0.2
push.v self.flame
pushi.e -9
pop.v.d [stacktop]self.growamt
pushi.e 3
push.v self.flame
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.d 0.2
push.v self.flame
pushi.e -9
pop.v.d [stacktop]self.fadespeed
pushi.e 270
push.v self.flameangle
add.v.i
push.v self.flame
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 15
push.v self.flame
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 1
push.v self.flame
pushi.e -9
pop.v.i [stacktop]self.friction
push.v self.flame
pushi.e -9
dup.i 4
push.v [stacktop]self.vspeed
pushi.e 8
add.i.v
pop.i.v [stacktop]self.vspeed
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [51]

:[50]
push.d 0.15
push.v self.flame
pushi.e -9
pop.v.d [stacktop]self.fadespeed
push.v self.flame
pushi.e -9
dup.i 4
push.v [stacktop]self.vspeed
pushi.e 6
sub.i.v
pop.i.v [stacktop]self.vspeed
push.v self.flame
pushi.e -9
dup.i 4
push.v [stacktop]self.speed
pushi.e 5
add.i.v
pop.i.v [stacktop]self.speed

:[51]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [53]

:[52]
push.v self.flame
pushi.e -9
dup.i 4
push.v [stacktop]self.vspeed
pushi.e 6
sub.i.v
pop.i.v [stacktop]self.vspeed
push.v self.flame
pushi.e -9
dup.i 4
push.v [stacktop]self.speed
pushi.e 3
add.i.v
pop.i.v [stacktop]self.speed
push.d 0.16
push.v self.flame
pushi.e -9
pop.v.d [stacktop]self.fadespeed

:[53]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [55]

:[54]
pushi.e 60
push.v self.flame
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e 20
push.v self.flame
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.d 0.12
push.v self.flame
pushi.e -9
pop.v.d [stacktop]self.fadespeed

:[55]
pushi.e 57
pop.v.i self.threshold
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
pushi.e 30
pop.v.i self.threshold

:[57]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [59]

:[58]
pushi.e 18
pop.v.i self.threshold

:[59]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [61]

:[60]
pushi.e 15
pop.v.i self.threshold

:[61]
push.v self.timer
push.v self.threshold
cmp.v.v GTE
bf [63]

:[62]
push.v self.type
pushi.e 4
cmp.i.v NEQ
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[66]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [75]

:[67]
pushi.e 0
pop.v.i self.flashamt
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [69]

:[68]
pushi.e 2
pop.v.i self.con

:[69]
push.v self.laughtimer
push.e 1
add.i.v
pop.v.v self.laughtimer
push.v self.laughtimer
pushi.e 9
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [71]

:[70]
pushi.e 1
pop.v.i self.image_index

:[71]
push.v self.laughtimer
pushi.e 9
mod.i.v
pushi.e 3
cmp.i.v EQ
bf [73]

:[72]
pushi.e 0
pop.v.i self.image_index

:[73]
push.v self.laughtimer
pushi.e 40
cmp.i.v GTE
bf [75]

:[74]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.laughtimer
pushi.e 0
pop.v.i self.con

:[75]
push.v self.movetype
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
push.v self.movesiner
push.e 1
add.i.v
pop.v.v self.movesiner
push.v self.x
push.v self.movesiner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 9
mul.i.v
add.v.v
pop.v.v self.x

:[77]
pushi.e 1159
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [79]

:[78]
push.v 1159.trackpos
pop.v.v self.trackpos

:[79]
push.v self.trackpos
push.d 18.862
cmp.d.v GTE
bf [81]

:[80]
push.v self.trackpos
push.d 18.902
cmp.d.v LTE
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
pushi.e 3
pop.v.i self.con

:[84]
push.v self.id
push.v self.bossid
cmp.v.v EQ
bf [86]

:[85]
push.v self.con
pushi.e 3
cmp.i.v NEQ
b [87]

:[86]
push.e 0

:[87]
bf [end]

:[88]
push.v self.flamesfx
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
pushi.e 221
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
push.d 1.5
conv.d.v
pushi.e 221
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
pop.v.v self.flame
pushi.e 0
conv.i.v
push.d 0.35
conv.d.v
push.v self.flame
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 0
pop.v.i self.flamesfx

:[90]
push.v self.dingsfx
pushi.e 1
cmp.i.v EQ
bf [end]

:[91]
pushi.e 47
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
push.d 0.9
conv.d.v
pushi.e 47
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 0
pop.v.i self.dingsfx

:[end]