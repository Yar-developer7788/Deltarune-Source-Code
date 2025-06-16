.localvar 2 arguments

:[0]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
bf [107]

:[1]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.faceaction
pushi.e 6
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 6
pop.v.i self.state

:[6]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.hurt
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [26]

:[10]
pushi.e 0
pop.v.i self.acttimer
push.v self.idlesprite
pop.v.v self.thissprite
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.faceaction
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.attackreadysprite
pop.v.v self.thissprite

:[12]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.faceaction
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
push.v self.itemreadysprite
pop.v.v self.thissprite

:[14]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.faceaction
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
push.v self.spellreadysprite
pop.v.v self.thissprite

:[16]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.faceaction
pushi.e 6
cmp.i.v EQ
bf [18]

:[17]
push.v self.actreadysprite
pop.v.v self.thissprite

:[18]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.charcond
pushi.e 5
cmp.i.v EQ
bf [20]

:[19]
push.v self.defeatsprite
pop.v.v self.thissprite
push.i 231659
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.faceaction

:[20]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.faceaction
pushi.e 4
cmp.i.v EQ
bf [24]

:[21]
push.v self.defendsprite
pop.v.v self.thissprite
push.v self.defendtimer
pop.v.v self.index
push.v self.defendtimer
push.v self.defendframes
cmp.v.v LT
bf [23]

:[22]
push.v self.defendtimer
push.d 0.5
add.d.v
pop.v.v self.defendtimer

:[23]
b [25]

:[24]
pushi.e 0
pop.v.i self.defendtimer
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pop.v.v self.index

:[25]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[26]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.v self.hurt
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [48]

:[30]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [44]

:[31]
pushi.e 175
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
push.v self.object_index
pushi.e 372
cmp.i.v EQ
bf [33]

:[32]
pushi.e 175
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[33]
push.v self.object_index
pushi.e 374
cmp.i.v EQ
bf [35]

:[34]
pushi.e 175
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.ls
push.d 1.15
conv.d.v
push.v self.ls
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[35]
push.v self.object_index
pushi.e 373
cmp.i.v EQ
bf [37]

:[36]
pushi.e 175
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.ls
push.d 0.9
conv.d.v
push.v self.ls
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[37]
push.v self.object_index
pushi.e 375
cmp.i.v EQ
bf [39]

:[38]
pushi.e 175
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.ls
push.d 1.5
conv.d.v
push.v self.ls
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[39]
push.v self.points
pushi.e 150
cmp.i.v EQ
bf [43]

:[40]
pushi.e 159
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 159
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [42]

:[41]
pushi.e 352
conv.i.v
push.v self.y
pushi.e 30
add.i.v
pushi.e 30
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
push.v self.mywidth
add.v.v
pushi.e 50
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
pushi.e 2482
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.anim
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e -20
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 2
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.d -0.25
push.v self.anim
pushi.e -9
pop.v.d [stacktop]self.friction
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [41]

:[42]
popz.i

:[43]
pushi.e 1
pop.v.i self.attacked
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[44]
push.v self.attacktimer
push.v self.attackframes
cmp.v.v LT
bf [46]

:[45]
push.v self.attacktimer
pop.v.v self.image_index
b [47]

:[46]
push.v self.attackframes
pop.v.v self.image_index

:[47]
push.v self.attacksprite
pop.v.v self.thissprite
push.v self.image_index
pop.v.v self.index
push.v self.attacktimer
push.v self.attackspeed
add.v.v
pop.v.v self.attacktimer

:[48]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [50]

:[49]
push.v self.hurt
pushi.e 0
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [63]

:[52]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.itemed
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
pushi.e 1
pop.v.i self.itemed
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[54]
push.v self.attacktimer
push.v self.spellframes
cmp.v.v LT
bf [56]

:[55]
push.v self.spellframes
pushi.e 0
cmp.i.v NEQ
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
push.v self.attacktimer
pop.v.v self.image_index
b [60]

:[59]
push.v self.spellframes
pop.v.v self.image_index

:[60]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bf [62]

:[61]
pushi.e 0
pop.v.i self.attacktimer

:[62]
push.v self.spellsprite
pop.v.v self.thissprite
push.v self.image_index
pop.v.v self.index
push.v self.attacktimer
push.d 0.5
add.d.v
pop.v.v self.attacktimer

:[63]
push.v self.state
pushi.e 4
cmp.i.v EQ
bf [65]

:[64]
push.v self.hurt
pushi.e 0
cmp.i.v EQ
b [66]

:[65]
push.e 0

:[66]
bf [75]

:[67]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.itemed
pushi.e 0
cmp.i.v EQ
bf [69]

:[68]
pushi.e 1
pop.v.i self.itemed
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[69]
push.v self.attacktimer
push.v self.itemframes
cmp.v.v LT
bf [71]

:[70]
push.v self.attacktimer
pop.v.v self.image_index
b [72]

:[71]
push.v self.itemframes
pop.v.v self.image_index

:[72]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bf [74]

:[73]
pushi.e 0
pop.v.i self.attacktimer

:[74]
push.v self.image_index
pop.v.v self.index
push.v self.itemsprite
pop.v.v self.thissprite
push.v self.attacktimer
push.d 0.5
add.d.v
pop.v.v self.attacktimer

:[75]
push.v self.state
pushi.e 6
cmp.i.v EQ
bf [83]

:[76]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [80]

:[77]
push.v self.acttimer
push.v self.actframes
cmp.v.v LT
bf [79]

:[78]
push.v self.acttimer
push.d 0.5
add.d.v
pop.v.v self.acttimer

:[79]
b [81]

:[80]
push.v self.acttimer
push.d 0.5
add.d.v
pop.v.v self.acttimer

:[81]
push.v self.actsprite
pop.v.v self.thissprite
push.v self.acttimer
pop.v.v self.index
push.v self.acttimer
push.v self.actreturnframes
cmp.v.v GTE
bf [83]

:[82]
pushi.e 0
pop.v.i self.acttimer
pushi.e 0
pop.v.i self.state
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.faceaction

:[83]
push.v self.state
pushi.e 7
cmp.i.v EQ
bf [92]

:[84]
pushi.e 0
pop.v.i self.hurt
pushi.e 0
pop.v.i self.hurttimer
push.v self._sideb
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
push.v self._victoried
pushi.e 0
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
pushi.e 866
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self._victorysequence
push.v self.depth
pushi.e 1
sub.i.v
push.v self._victorysequence
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
pop.v.i self._victoried
pushi.e 0
pop.v.i self.image_alpha

:[89]
push.v self.victoryanim
push.v self.victoryframes
cmp.v.v LT
bf [91]

:[90]
push.v self.victorysprite
pop.v.v self.thissprite
push.v self.victoryanim
pop.v.v self.index
push.v self.victoryanim
push.d 0.334
add.d.v
pop.v.v self.victoryanim
b [92]

:[91]
push.v self.normalsprite
pop.v.v self.thissprite
pushi.e 0
pop.v.i self.index

:[92]
push.v self.hurt
pushi.e 1
cmp.i.v EQ
bf [106]

:[93]
push.v self.hurttimer
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.hurtindex
push.v self.hurtindex
pushi.e 2
cmp.i.v GT
bf [95]

:[94]
pushi.e 2
pop.v.i self.hurtindex

:[95]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.charcond
pushi.e 5
cmp.i.v EQ
bf [97]

:[96]
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.faceaction
push.i 231578
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.charmove
push.i 232541
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.charcond

:[97]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.faceaction
pushi.e 0
cmp.i.v EQ
bf [99]

:[98]
push.i 231659
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.faceaction

:[99]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.faceaction
pushi.e 4
cmp.i.v NEQ
bf [101]

:[100]
pushi.e 1
pop.v.i self.specdraw
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 20
sub.i.v
push.v self.hurtindex
pushi.e 10
mul.i.v
add.v.v
push.v self.hurtindex
push.v self.hurtsprite
call.i draw_sprite_ext(argc=9)
popz.v
b [102]

:[101]
pushi.e 1
pop.v.i self.specdraw
push.v self.defendsprite
pop.v.v self.thissprite
push.v self.defendtimer
pop.v.v self.index
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 20
sub.i.v
push.v self.hurtindex
pushi.e 10
mul.i.v
add.v.v
push.v self.defendtimer
push.v self.defendsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[102]
push.v self.hurttimer
pushi.e 15
cmp.i.v GT
bf [105]

:[103]
pushi.e 0
pop.v.i self.hurttimer
pushi.e 0
pop.v.i self.hurt
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.faceaction
pushi.e 5
cmp.i.v EQ
bf [105]

:[104]
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.faceaction

:[105]
push.v self.hurttimer
pushi.e 1
add.i.v
pop.v.v self.hurttimer

:[106]
b [108]

:[107]
push.i 232541
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.charcond
pushi.e 0
pop.v.i self.hurttimer
pushi.e 0
pop.v.i self.hurt
push.v self.defeatsprite
pop.v.v self.thissprite
pushi.e 0
pop.v.i self.index
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[108]
push.v self.specdraw
pushi.e 0
cmp.i.v EQ
bf [111]

:[109]
push.v self.thissprite
pop.v.v self.sprite_index
push.v self.index
pop.v.v self.image_index
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.index
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [111]

:[110]
push.v self.fsiner
pushi.e 1
add.i.v
pop.v.v self.fsiner
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.index
push.v self.thissprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[111]
pushi.e 0
pop.v.i self.specdraw
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [113]

:[112]
pushi.e 0
pop.v.i self.flash

:[113]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.targeted
pushi.e 1
cmp.i.v EQ
bf [120]

:[114]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [116]

:[115]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
pushi.e 1376
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[119]
b [128]

:[120]
push.v self.combatdarken
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [123]

:[122]
push.e 0

:[123]
bf [128]

:[124]
push.v self.darkify
pushi.e 1
cmp.i.v EQ
bf [128]

:[125]
push.v self.darkentimer
pushi.e 15
cmp.i.v LT
bf [127]

:[126]
push.v self.darkentimer
pushi.e 1
add.i.v
pop.v.v self.darkentimer

:[127]
push.v self.darkentimer
pushi.e 30
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[128]
push.v self.darkify
pushi.e 0
cmp.i.v EQ
bf [132]

:[129]
push.v self.darkentimer
pushi.e 0
cmp.i.v GT
bf [131]

:[130]
push.v self.darkentimer
pushi.e 3
sub.i.v
pop.v.v self.darkentimer

:[131]
push.v self.darkentimer
pushi.e 30
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[132]
pushi.e 0
pop.v.i self.becomeflash
push.v self.poisonamount
pushi.e 0
cmp.i.v GT
bf [end]

:[133]
push.v self.poisontimer
push.e 1
add.i.v
pop.v.v self.poisontimer
push.v self.poisontimer
pushi.e 10
cmp.i.v GTE
bf [end]

:[134]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 1
cmp.i.v GT
bf [136]

:[135]
push.i 231131
setowner.e
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.char
conv.v.i
dup.i 1
push.v [array]self.hp
dup.v 0
dup.i 4 48
push.e 1
sub.i.v
pop.i.v [array]global.hp
popz.v
push.v self.poisonamount
push.e 1
sub.i.v
pop.v.v self.poisonamount
b [137]

:[136]
pushi.e 0
pop.v.i self.poisonamount

:[137]
pushi.e 0
pop.v.i self.poisontimer

:[end]