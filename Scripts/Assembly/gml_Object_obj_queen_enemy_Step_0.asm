.localvar 2 arguments
.localvar 7017 a 12042
.localvar 14363 movetimer 12045
.localvar 6482 xx 12051
.localvar 25063 shieldbreaking 12052
.localvar 25068 mercyset 12053
.localvar 6113 small_text 12054
.localvar 11610 aa 12055
.localvar 25093 _susie_simul 12056
.localvar 25106 _ralsei_simul 12057

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [465]

:[1]
push.v self.actcon
pushi.e 36
cmp.i.v EQ
bf [3]

:[2]
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pushi.e 17
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 0
pop.v.i self.siner2
b [7]

:[6]
push.v self.siner2
push.e 1
add.i.v
pop.v.v self.siner2
push.v self.y
push.v self.siner2
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.v.v self.y

:[7]
push.v self.endcon
pushi.e 0
cmp.i.v EQ
bf [15]

:[8]
pushi.e 581
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [11]

:[9]
pushi.e 514
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [11]

:[10]
pushi.e 521
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [12]

:[11]
push.e 1

:[12]
bf [14]

:[13]
pushi.e 1885
pop.v.i self.idlesprite
b [15]

:[14]
pushi.e 1884
pop.v.i self.idlesprite

:[15]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.i self.init
pushi.e 70
pop.v.i global.typer
pushi.e 3
pop.v.i global.charturn
push.s "obj_queen_enemy_slash_Step_0_gml_12_0"@24930
conv.s.v
push.s "Ah My Sweet&Idiot Children/%"@24931
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 15
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
push.d 0.6
pop.v.d self.talked
pushi.e 0
pop.v.i self.talktimer

:[17]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [19]

:[18]
push.v self.x
pushi.e 32
add.i.v
pop.v.v 577.queenhandx
push.v self.y
pushi.e 10
add.i.v
pop.v.v 577.queenhandy

:[19]
push.v self.shieldbrokecon
pushi.e 1
cmp.i.v EQ
bf [38]

:[20]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 1
cmp.i.v LT
bf [27]

:[21]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v local.a
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
pushi.e 290
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[23]
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e 291
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[25]
pushloc.v local.a
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
pushi.e 292
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[27]
push.v self.shieldjustbroke
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 0
pop.v.i self.shieldjustbroke

:[29]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v LTE
bf [31]

:[30]
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i gml_Script_snd_free(argc=1)
popz.v

:[31]
pushi.e 1892
pop.v.i self.sprite_index
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
pushi.e 20
pop.v.i self.hspeed
push.v self.xstart
pop.v.v self.x
push.v self.x
pop.v.v self.remx
b [37]

:[33]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [35]

:[34]
pushi.e 0
pop.v.i self.hspeed

:[35]
push.v self.hspeed
pushi.e 20
add.i.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 28
cmp.i.v GT
bf [37]

:[36]
pushi.e 28
pop.v.i self.hspeed

:[37]
push.d 0.4
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.shieldbrokecon

:[38]
push.v self.shieldbrokecon
pushi.e 2
cmp.i.v EQ
bf [44]

:[39]
push.v self.hspeed
pushi.e 2
sub.i.v
pop.v.v self.hspeed
push.v self.x
push.v self.remx
push.v self.hspeed
sub.v.v
cmp.v.v LTE
bf [41]

:[40]
push.v self.hspeed
pushi.e -5
cmp.i.v LT
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
push.v self.remx
pop.v.v self.x
pushi.e 0
pop.v.i self.shieldbrokecon
pushi.e 0
pop.v.i self.hspeed
pushi.e 1891
pop.v.i self.sprite_index
push.d 0.16666666666666666
pop.v.d self.image_speed

:[44]
push.v self.wineglasscon
pushi.e 1
cmp.i.v EQ
bf [50]

:[45]
pushi.e 577
pushenv [47]

:[46]
pushi.e 2
pop.v.i self.appearcon

:[47]
popenv [46]
pushi.e 581
pushenv [49]

:[48]
call.i instance_destroy(argc=0)
popz.v

:[49]
popenv [48]
pushi.e 581
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 29
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wineglass
pushi.e 1
pop.v.i 581.nofill
pushi.e 520
conv.i.v
push.v self.y
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.winetimer
pushi.e 2
pop.v.i self.wineglasscon
pushi.e 1890
pop.v.i self.sprite_index

:[50]
push.v self.wineglasscon
pushi.e 2
cmp.i.v EQ
bf [53]

:[51]
push.v self.wineglass
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.siner2
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.i.v [stacktop]self.y
push.v self.winetimer
push.e 1
add.i.v
pop.v.v self.winetimer
push.v self.winetimer
pushi.e 30
cmp.i.v GTE
bf [53]

:[52]
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
push.v self.wineglass
pushi.e -9
pop.v.v [stacktop]self._idealx
call.i gml_Script_cameray(argc=0)
pushi.e 228
add.i.v
push.v self.wineglass
pushi.e -9
pop.v.v [stacktop]self._idealy
push.v self.wineglass
pushi.e -9
push.v [stacktop]self.x
push.v self.wineglass
pushi.e -9
pop.v.v [stacktop]self._remx
push.v self.wineglass
pushi.e -9
push.v [stacktop]self.y
push.v self.wineglass
pushi.e -9
pop.v.v [stacktop]self._remy
pushi.e 1891
pop.v.i self.sprite_index
push.d 0.16666666666666666
pop.v.d self.image_speed
pushi.e 3
pop.v.i self.wineglasscon
pushi.e 0
pop.v.i self.winetimer

:[53]
push.v self.wineglasscon
pushi.e 3
cmp.i.v EQ
bf [64]

:[54]
push.v self.winetimer
push.e 1
add.i.v
pop.v.v self.winetimer
push.v self.winetimer
pop.v.v local.movetimer
push.v self.wineglass
pushi.e -9
pushenv [56]

:[55]
pushi.e 352
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.after
push.v self.x
push.v self.after
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.after
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 0
push.v self.after
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.image_xscale
push.v self.after
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.after
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.sprite_index
push.v self.after
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
add.i.v
push.v self.after
pushi.e -9
pop.v.v [stacktop]self.depth
push.i 65280
push.v self.after
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushloc.v local.movetimer
pushi.e 15
conv.i.d
div.d.v
push.v self._idealx
push.v self._remx
call.i lerp(argc=3)
pop.v.v self.x
pushloc.v local.movetimer
pushi.e 15
conv.i.d
div.d.v
push.v self._idealy
push.v self._remy
call.i lerp(argc=3)
pop.v.v self.y
pushloc.v local.movetimer
pushi.e 15
conv.i.d
div.d.v
pushi.e 2
conv.i.v
push.d 0.4
conv.d.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
pushloc.v local.movetimer
pushi.e 15
conv.i.d
div.d.v
pushi.e 2
conv.i.v
push.d 0.6
conv.d.v
call.i lerp(argc=3)
pop.v.v self.image_yscale

:[56]
popenv [55]
push.v self.winetimer
pushi.e 15
cmp.i.v GTE
bf [64]

:[57]
pushi.e 0
pop.v.i self.wineglasscon
pushi.e 575
pushenv [59]

:[58]
pushi.e 3
pop.v.i self.init

:[59]
popenv [58]
pushi.e 514
pushenv [61]

:[60]
pushi.e 1
pop.v.b self.visible

:[61]
popenv [60]
pushi.e 581
pushenv [63]

:[62]
call.i instance_destroy(argc=0)
popz.v

:[63]
popenv [62]

:[64]
push.v self.wineglasscon
pushi.e 10
cmp.i.v EQ
bf [73]

:[65]
push.v self.winetimer
push.e 1
add.i.v
pop.v.v self.winetimer
pushi.e 1890
pop.v.i self.sprite_index
push.v self.winetimer
pushi.e 1
cmp.i.v EQ
bf [69]

:[66]
pushi.e 581
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [68]

:[67]
pushi.e 581
conv.i.v
push.v self.y
pushi.e 13
add.i.v
push.v self.x
pushi.e 35
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wineglass

:[68]
pushi.e -20
pop.v.i 581.image_angle

:[69]
push.v self.winetimer
pushi.e 15
cmp.i.v LTE
bf [71]

:[70]
pushi.e 582
conv.i.v
push.v self.y
pushi.e 13
add.i.v
push.v self.x
pushi.e 35
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 582
conv.i.v
push.v self.y
pushi.e 13
add.i.v
push.v self.x
pushi.e 35
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.droplet
push.d 0.033
push.v self.droplet
pushi.e -9
pop.v.d [stacktop]self.offset

:[71]
push.v self.winetimer
pushi.e 25
cmp.i.v EQ
bf [73]

:[72]
pushi.e 0
pop.v.i self.wineglasscon
pushi.e 0
pop.v.i 581.image_angle
pushi.e 1884
pop.v.i self.sprite_index

:[73]
push.v self.intro
pushi.e 2
cmp.i.v EQ
bf [75]

:[74]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
pushi.e 0
pop.v.i self.intro
pushi.e 0
pop.v.i global.charturn

:[78]
push.i 231526
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [82]

:[79]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 100
add.i.v
cmp.v.v GT
bf [81]

:[80]
push.v 357.depth
pushi.e 1
add.i.v
pop.v.v self.depth
b [82]

:[81]
push.v 357.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[82]
pushi.e 576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [84]

:[83]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[84]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [87]

:[85]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [87]

:[86]
push.v self.turn
pushi.e 14
cmp.i.v GT
b [88]

:[87]
push.e 0

:[88]
bf [91]

:[89]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterdf
pushi.e -25
cmp.i.v GT
bf [91]

:[90]
push.i 231910
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterdf
pushi.e 5
sub.i.v
pop.i.v [array]self.monsterdf

:[91]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [94]

:[92]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [94]

:[93]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v LTE
b [95]

:[94]
push.e 0

:[95]
bt [105]

:[96]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [99]

:[97]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [99]

:[98]
push.v self.bardlymercy
pushi.e 99
cmp.i.v GT
b [100]

:[99]
push.e 0

:[100]
bt [105]

:[101]
push.v self.talked
pushi.e -1
cmp.i.v EQ
bf [103]

:[102]
push.v self.endcon
pushi.e 0
cmp.i.v EQ
b [104]

:[103]
push.e 0

:[104]
b [106]

:[105]
push.e 1

:[106]
bf [117]

:[107]
pushi.e -1
pop.v.i self.talked
push.v self.wintimer
push.e 1
add.i.v
pop.v.v self.wintimer
push.v self.bardlymercy
pushi.e 99
cmp.i.v GT
bf [113]

:[108]
push.v self.wintimer
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i gml_Script_snd_free(argc=1)
popz.v
pushi.e 1884
pop.v.i self.sprite_index

:[110]
push.v self.wintimer
pushi.e 90
cmp.i.v EQ
bf [112]

:[111]
pushi.e 1
pop.v.i self.endcon

:[112]
b [117]

:[113]
push.v self.wintimer
pushi.e 30
cmp.i.v EQ
bf [115]

:[114]
pushi.e 1884
pop.v.i self.sprite_index

:[115]
push.v self.wintimer
pushi.e 90
cmp.i.v EQ
bf [117]

:[116]
pushi.e 1
pop.v.i self.endcon

:[117]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [119]

:[118]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [120]

:[119]
push.e 0

:[120]
bf [124]

:[121]
pushi.e 574
pushenv [123]

:[122]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[123]
popenv [122]

:[124]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [127]

:[125]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [127]

:[126]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [128]

:[127]
push.e 0

:[128]
bf [148]

:[129]
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
push.d 0.4
pop.v.d self.talked
push.v self.shieldhp
pushi.e 5
cmp.i.v LTE
bt [131]

:[130]
push.v self.shieldacthp
pushi.e 1
cmp.i.v LT
b [132]

:[131]
push.e 1

:[132]
bf [145]

:[133]
pushi.e 577
pushenv [135]

:[134]
pushi.e 2
pop.v.i self.shieldhurt
pushi.e 0
pop.v.i self.shieldhurttimer

:[135]
popenv [134]
pushi.e 581
pushenv [137]

:[136]
call.i instance_destroy(argc=0)
popz.v

:[137]
popenv [136]
push.v self.shieldhp
pushi.e 5
cmp.i.v LTE
bt [139]

:[138]
push.v self.shieldacthp
pushi.e 1
cmp.i.v LT
b [140]

:[139]
push.e 1

:[140]
bf [142]

:[141]
pushi.e 0
pop.v.i self.shieldhp
pushi.e 1
pop.v.i self.shieldbrokecon
pushi.e 1
pop.v.i self.shieldjustbroke
pushi.e 1891
pop.v.i self.sprite_index
pushi.e 290
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[142]
push.v self.phase
pushi.e 4
cmp.i.v EQ
bf [144]

:[143]
pushi.e 1
pop.v.i self.usefinalattack

:[144]
pushi.e 1
pop.v.i self.shieldjustwentdown
b [148]

:[145]
pushi.e 577
pushenv [147]

:[146]
pushi.e 2
pop.v.i self.appearcon

:[147]
popenv [146]

:[148]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [150]

:[149]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [151]

:[150]
push.e 0

:[151]
bf [156]

:[152]
push.d 0.5
pop.v.d self.talked
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [156]

:[153]
push.v 577.turn
push.e 1
add.i.v
pop.v.v 577.turn
push.v 577.turn
pushi.e 1
cmp.i.v GT
bf [156]

:[154]
push.v self.shieldhp
pushi.e 0
cmp.i.v GT
bf [156]

:[155]
push.v self.shieldhp
push.v self.shieldmaxhp
push.d 0.1
mul.d.v
call.i ceil(argc=1)
sub.v.v
pop.v.v self.shieldhp

:[156]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [158]

:[157]
push.v self.talked
push.d 0.5
cmp.d.v EQ
b [159]

:[158]
push.e 0

:[159]
bf [243]

:[160]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [162]

:[161]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[162]
push.v self.aimact
pushi.e 0
cmp.i.v GT
bf [164]

:[163]
push.v self.aimact
pushi.e 1
sub.i.v
pop.v.v self.aimact

:[164]
pushi.e 368
pushenv [166]

:[165]
call.i instance_destroy(argc=0)
popz.v

:[166]
popenv [165]
pushi.e 1884
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonsubcon
pushi.e 1
pop.v.i self.balloonend
pushi.e 0
pop.v.i self.talkedcon
pushi.e 0
pop.v.i self.ralseitalks
pushi.e 0
pop.v.i self.susietalks
pushi.e 0
pop.v.i self.attackdone
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [168]

:[167]
push.s "obj_queen_enemy_slash_Step_0_gml_123_0"@24940
conv.s.v
push.s "(Regal Laughter)/%"@24941
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[168]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [170]

:[169]
push.s "obj_queen_enemy_slash_Step_0_gml_124_0"@24942
conv.s.v
push.s "Enjoy Your:&Destruction/%"@24943
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[170]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [172]

:[171]
push.s "obj_queen_enemy_slash_Step_0_gml_125_0"@24944
conv.s.v
push.s "I'm Computer/%"@24945
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[172]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [174]

:[173]
push.s "obj_queen_enemy_slash_Step_0_gml_126_0"@24946
conv.s.v
push.s "Perish Under&My Bosom Or&Whatever/%"@24947
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[174]
push.v self.usefinalattack
pushi.e 1
cmp.i.v GTE
bf [176]

:[175]
push.v self.finalattackdialoguecon
pushi.e 5
cmp.i.v LT
b [177]

:[176]
push.e 0

:[177]
bf [191]

:[178]
push.v self.finalattackdialoguecon
pushi.e 0
cmp.i.v EQ
bf [180]

:[179]
push.s "obj_queen_enemy_slash_Step_0_gml_328_0"@24948
conv.s.v
push.s "Enough You Foolish&Children!/%"@24949
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 22
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[180]
push.v self.finalattackdialoguecon
pushi.e 1
cmp.i.v EQ
bf [182]

:[181]
push.s "obj_queen_enemy_slash_Step_0_gml_329_0_b"@24950
conv.s.v
push.s "So That Final Move&Was Supposed To Be&Cooler But The&Internet Is Down/%"@24951
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[182]
push.v self.finalattackdialoguecon
pushi.e 2
cmp.i.v EQ
bf [184]

:[183]
push.s "obj_queen_enemy_slash_Step_0_gml_329_0"@24952
conv.s.v
push.s "Yeah My Final&Attack Like/%"@24953
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 25
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[184]
push.v self.finalattackdialoguecon
pushi.e 3
cmp.i.v EQ
bf [186]

:[185]
push.s "obj_queen_enemy_slash_Step_0_gml_330_0"@24954
conv.s.v
push.s "It Would Have Been&A Really Sick&Final Attack Kris&You Would Have&Loved It/%"@24955
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[186]
push.v self.finalattackdialoguecon
pushi.e 4
cmp.i.v EQ
bf [188]

:[187]
push.s "obj_queen_enemy_slash_Step_0_gml_331_0"@24956
conv.s.v
push.s "Yeah Still Thinking&About That Move&HashtagFinalAttack/%"@24957
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[188]
push.v self.finalattackdialoguecon
push.e 1
add.i.v
pop.v.v self.finalattackdialoguecon
push.v self.balloonorder
pushi.e 14
cmp.i.v LT
bf [190]

:[189]
pushi.e 14
pop.v.i self.balloonorder

:[190]
b [226]

:[191]
push.v self.drunk
pushi.e 1
cmp.i.v EQ
bf [194]

:[192]
push.v self.drunkcount
pushi.e 0
cmp.i.v EQ
bf [194]

:[193]
push.v self.balloonorder
pushi.e 13
cmp.i.v GT
b [195]

:[194]
push.e 0

:[195]
bf [197]

:[196]
pushi.e 1
pop.v.i self.drunkcount
push.s "obj_queen_enemy_slash_Step_0_gml_128_0"@24958
conv.s.v
push.s "Guys I Think I&Drank Too Much Of&This Battery Acid&(Ages 3 And Up)/%"@24959
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [226]

:[197]
push.v self.balloonorder
pushi.e 0
cmp.i.v EQ
bf [199]

:[198]
push.s "obj_queen_enemy_slash_Step_0_gml_131_0"@24960
conv.s.v
push.s "Queen,&think of the&Lightners!/%"@24961
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 1
pop.v.i self.ralseitalks

:[199]
push.v self.balloonorder
pushi.e 1
cmp.i.v EQ
bf [201]

:[200]
push.s "obj_queen_enemy_slash_Step_0_gml_132_0"@24962
conv.s.v
push.s "Think! Lightners&Have Already Been&Enslaved By Me&And My Kin/%"@24963
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[201]
push.v self.balloonorder
pushi.e 2
cmp.i.v EQ
bf [203]

:[202]
push.s "obj_queen_enemy_slash_Step_0_gml_133_0"@24964
conv.s.v
push.s "Each Day They&Spend Hours&Worshipping&In Glowing Rapture/%"@24965
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 3
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[203]
push.v self.balloonorder
pushi.e 3
cmp.i.v EQ
bf [205]

:[204]
push.s "obj_queen_enemy_slash_Step_0_gml_134_0"@24966
conv.s.v
push.s "Staring, Tapping,&To Receive Joy/%"@24967
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 4
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[205]
push.v self.balloonorder
pushi.e 4
cmp.i.v EQ
bf [207]

:[206]
push.s "obj_queen_enemy_slash_Step_0_gml_135_0"@24968
conv.s.v
push.s "... Until Recently,&When The Town's&Internet Disappeared/%"@24969
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 5
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[207]
push.v self.balloonorder
pushi.e 5
cmp.i.v EQ
bf [209]

:[208]
push.s "obj_queen_enemy_slash_Step_0_gml_136_0"@24970
conv.s.v
push.s "Noelle...&Then Who Will&Help Her?/%"@24971
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 6
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[209]
push.v self.balloonorder
pushi.e 6
cmp.i.v EQ
bf [211]

:[210]
push.s "obj_queen_enemy_slash_Step_0_gml_137_0"@24972
conv.s.v
push.s "Is What I&Wondered, Until&The KNIGHT&appeared.../%"@24973
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 8
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[211]
push.v self.balloonorder
pushi.e 7
cmp.i.v EQ
bf [213]

:[212]
push.s "obj_queen_enemy_slash_Step_0_gml_138_0"@24974
conv.s.v
push.s "Now, The&Path Is Clear/%"@24975
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 9
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[213]
push.v self.balloonorder
pushi.e 8
cmp.i.v EQ
bf [215]

:[214]
push.s "obj_queen_enemy_slash_Step_0_gml_139_0"@24976
conv.s.v
push.s "Then With&The World&Covered In&Darkness/%"@24977
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 10
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[215]
push.v self.balloonorder
pushi.e 9
cmp.i.v EQ
bf [217]

:[216]
push.s "obj_queen_enemy_slash_Step_0_gml_140_0"@24978
conv.s.v
push.s "Instead, Everyone&Can Live In&My Perfect Mansion/%"@24979
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 11
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[217]
push.v self.balloonorder
pushi.e 10
cmp.i.v EQ
bf [219]

:[218]
push.s "obj_queen_enemy_slash_Step_0_gml_141_0"@24980
conv.s.v
push.s "Now, Stop Resisting&And Welcome The&New Age Of Darkness/%"@24981
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[219]
push.v self.balloonorder
pushi.e 11
cmp.i.v EQ
bf [221]

:[220]
push.s "obj_queen_enemy_slash_Step_0_gml_142_0"@24982
conv.s.v
push.s "We won't let&you control&everyone with&your wires!/%"@24983
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 12
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 1
pop.v.i self.ralseitalks

:[221]
push.v self.balloonorder
pushi.e 12
cmp.i.v EQ
bf [223]

:[222]
push.s "obj_queen_enemy_slash_Step_0_gml_143_0"@24984
conv.s.v
push.s "Uhh, you're&literally&controlling&Berdly now./%"@24985
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 13
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 1
pop.v.i self.susietalks

:[223]
push.v self.balloonorder
pushi.e 13
cmp.i.v EQ
bf [225]

:[224]
push.s "obj_queen_enemy_slash_Step_0_gml_146_0"@24986
conv.s.v
push.s "Why Did You&Want One/%"@24987
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 14
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 583
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 30
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 200
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 583
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 30
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 300
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 583
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 30
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 400
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[225]
push.v self.balloonorder
push.e 1
add.i.v
pop.v.v self.balloonorder

:[226]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v LT
bf [228]

:[227]
pushi.e 70
pop.v.i global.typer
b [229]

:[228]
pushi.e 71
pop.v.i global.typer

:[229]
push.v self.ralseitalks
pushi.e 1
cmp.i.v EQ
bf [231]

:[230]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [232]

:[231]
push.e 0

:[232]
bf [234]

:[233]
pushi.e 74
pop.v.i global.typer
pushi.e 7
conv.i.v
push.v 374.y
pushi.e 15
add.i.v
push.v 374.x
pushi.e 75
add.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 374
conv.i.v
call.i gml_Script_scr_guardpeek(argc=1)
popz.v
b [240]

:[234]
push.v self.susietalks
pushi.e 1
cmp.i.v EQ
bf [236]

:[235]
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [237]

:[236]
push.e 0

:[237]
bf [239]

:[238]
pushi.e 75
pop.v.i global.typer
pushi.e 7
conv.i.v
push.v 373.y
pushi.e 15
add.i.v
push.v 373.x
pushi.e 75
add.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 373
conv.i.v
call.i gml_Script_scr_guardpeek(argc=1)
popz.v
b [240]

:[239]
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v

:[240]
pushi.e 0
pop.v.i self.ralseitalks
pushi.e 0
pop.v.i self.susietalks
pushi.e 0
pop.v.i self.drunk
push.v self.ballooncon
pushi.e 0
cmp.i.v EQ
bf [242]

:[241]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer
b [243]

:[242]
push.d 0.6
pop.v.d self.talked
pushi.e 0
pop.v.i self.talktimer

:[243]
push.v self.talked
push.d 0.6
cmp.d.v EQ
bf [325]

:[244]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [247]

:[245]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
bf [247]

:[246]
push.v self.susieinterrupts
pushi.e 0
cmp.i.v EQ
b [248]

:[247]
push.e 0

:[248]
bt [254]

:[249]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bt [254]

:[250]
push.v self.susieinterrupts
pushi.e 1
cmp.i.v EQ
bf [252]

:[251]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [253]

:[252]
push.e 0

:[253]
b [255]

:[254]
push.e 1

:[255]
bf [325]

:[256]
pushi.e 64
pushenv [258]

:[257]
call.i instance_destroy(argc=0)
popz.v

:[258]
popenv [257]
push.v self.ballooncon
pushi.e 1
cmp.i.v EQ
bf [260]

:[259]
push.s "obj_queen_enemy_slash_Step_0_gml_183_0"@24988
conv.s.v
push.s "Aren't we&supposed to&make them&happy?/%"@24989
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.ralseitalks
b [310]

:[260]
push.v self.ballooncon
pushi.e 2
cmp.i.v EQ
bf [262]

:[261]
push.s "obj_queen_enemy_slash_Step_0_gml_184_0"@24990
conv.s.v
push.s "Is That Not&What I Am Doing?/%"@24991
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [310]

:[262]
push.v self.ballooncon
pushi.e 3
cmp.i.v EQ
bf [264]

:[263]
push.s "obj_queen_enemy_slash_Step_0_gml_186_0"@24992
conv.s.v
push.s "Our Screens Of&Funny Animals And&Candied Games/%"@24993
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [310]

:[264]
push.v self.ballooncon
pushi.e 4
cmp.i.v EQ
bf [266]

:[265]
push.s "obj_queen_enemy_slash_Step_0_gml_188_0"@24994
conv.s.v
push.s "Staring, Tapping,&To Avoid Pain/%"@24995
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [310]

:[266]
push.v self.ballooncon
pushi.e 5
cmp.i.v EQ
bf [268]

:[267]
push.s "obj_queen_enemy_slash_Step_0_gml_190_0"@24996
conv.s.v
push.s "Now The Refuge&They Take In&The Screens Will&Slowly Fade/%"@24997
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [310]

:[268]
push.v self.ballooncon
pushi.e 6
cmp.i.v EQ
bf [270]

:[269]
push.s "obj_queen_enemy_slash_Step_0_gml_192_0"@24998
conv.s.v
push.s "Her Strange&And Sad Searches/%"@24999
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 7
pop.v.i self.ballooncon
b [310]

:[270]
push.v self.ballooncon
pushi.e 7
cmp.i.v EQ
bf [272]

:[271]
push.s "obj_queen_enemy_slash_Step_0_gml_193_0"@25000
conv.s.v
push.s "Who Will&Answer Them?/%"@25001
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [310]

:[272]
push.v self.ballooncon
pushi.e 8
cmp.i.v EQ
bf [274]

:[273]
push.s "obj_queen_enemy_slash_Step_0_gml_195_0"@25002
conv.s.v
push.s "And Created&This Wonderful&World Of&Darkness/%"@25003
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [310]

:[274]
push.v self.ballooncon
pushi.e 9
cmp.i.v EQ
bf [276]

:[275]
push.s "obj_queen_enemy_slash_Step_0_gml_197_0"@25004
conv.s.v
push.s "All I Have&To Do Is Expand&This Dark World/%"@25005
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [310]

:[276]
push.v self.ballooncon
pushi.e 10
cmp.i.v EQ
bf [278]

:[277]
push.s "obj_queen_enemy_slash_Step_0_gml_199_0"@25006
conv.s.v
push.s "No One Will&Have To Suffer&Anymore/%"@25007
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [310]

:[278]
push.v self.ballooncon
pushi.e 11
cmp.i.v EQ
bf [280]

:[279]
push.s "obj_queen_enemy_slash_Step_0_gml_201_0"@25008
conv.s.v
push.s "Everyday Blissfully&Worshipping Me&Like We Both Deserve/%"@25009
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [310]

:[280]
push.v self.ballooncon
pushi.e 12
cmp.i.v EQ
bf [282]

:[281]
push.s "obj_queen_enemy_slash_Step_0_gml_203_0"@25010
conv.s.v
push.s "Woah When&Did I Say&I Would Do&That/%"@25011
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [310]

:[282]
push.v self.ballooncon
pushi.e 13
cmp.i.v EQ
bf [284]

:[283]
push.s "obj_queen_enemy_slash_Step_0_gml_205_0"@25012
conv.s.v
push.s "Oh Yeah&That's Just&For Him Only/%"@25013
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [310]

:[284]
push.v self.ballooncon
pushi.e 14
cmp.i.v EQ
bf [288]

:[285]
push.s "obj_queen_enemy_slash_Step_0_gml_207_0"@25014
conv.s.v
push.s "No!!!!/%"@25015
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
pushi.e 1
pop.v.i self.susietalks
pushi.e 583
pushenv [287]

:[286]
pushi.e 2
pop.v.i self.con

:[287]
popenv [286]
b [310]

:[288]
push.v self.ballooncon
pushi.e 15
cmp.i.v EQ
bf [290]

:[289]
push.s "obj_queen_enemy_slash_Step_0_gml_212_0"@25016
conv.s.v
push.s "You Are Just In&Time To Witness&My World Domination/%"@25017
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 16
pop.v.i self.ballooncon
b [310]

:[290]
push.v self.ballooncon
pushi.e 16
cmp.i.v EQ
bf [292]

:[291]
push.s "obj_queen_enemy_slash_Step_0_gml_213_0"@25018
conv.s.v
push.s "With Noelle In&My Possession/%"@25019
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 17
pop.v.i self.ballooncon
b [310]

:[292]
push.v self.ballooncon
pushi.e 17
cmp.i.v EQ
bf [294]

:[293]
push.s "obj_queen_enemy_slash_Step_0_gml_214_0"@25020
conv.s.v
push.s "It Is Only A&Matter Of Time&Before Her&Will Turns/%"@25021
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 18
pop.v.i self.ballooncon
b [310]

:[294]
push.v self.ballooncon
pushi.e 18
cmp.i.v EQ
bf [296]

:[295]
push.s "obj_queen_enemy_slash_Step_0_gml_215_0"@25022
conv.s.v
push.s "And She&Unleashes Her&Power/%"@25023
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 19
pop.v.i self.ballooncon
b [310]

:[296]
push.v self.ballooncon
pushi.e 19
cmp.i.v EQ
bf [298]

:[297]
push.s "obj_queen_enemy_slash_Step_0_gml_216_0"@25024
conv.s.v
push.s "Blanketing The&World In --/%"@25025
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 20
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.susieinterrupts
b [310]

:[298]
push.v self.ballooncon
pushi.e 20
cmp.i.v EQ
bf [300]

:[299]
push.s "obj_queen_enemy_slash_Step_0_gml_218_0"@25026
conv.s.v
push.s "Too late,&dumbass!/%"@25027
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 21
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.susietalks
pushi.e 0
pop.v.i self.susieinterrupts
b [310]

:[300]
push.v self.ballooncon
pushi.e 21
cmp.i.v EQ
bf [302]

:[301]
push.s "obj_queen_enemy_slash_Step_0_gml_219_0"@25028
conv.s.v
push.s "Noelle's&with Berdly!/%"@25029
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
pushi.e 1
pop.v.i self.susietalks
b [310]

:[302]
push.v self.ballooncon
pushi.e 22
cmp.i.v EQ
bf [304]

:[303]
push.s "obj_queen_enemy_slash_Step_0_gml_432_0"@25030
conv.s.v
push.s "You May Have&Survived My&Attacks (Regular)/%"@25031
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 23
pop.v.i self.ballooncon
b [310]

:[304]
push.v self.ballooncon
pushi.e 23
cmp.i.v EQ
bf [306]

:[305]
push.s "obj_queen_enemy_slash_Step_0_gml_433_0"@25032
conv.s.v
push.s "But I've Been:&Secretly Been&Downloading My&Ultimate Move&The Whole Time/%"@25033
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 24
pop.v.i self.ballooncon
b [310]

:[306]
push.v self.ballooncon
pushi.e 24
cmp.i.v EQ
bf [308]

:[307]
push.s "obj_queen_enemy_slash_Step_0_gml_434_0"@25034
conv.s.v
push.s "Now, Perish&In The Bosom Of:&My Hellish Reign/%"@25035
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [310]

:[308]
push.v self.ballooncon
pushi.e 25
cmp.i.v EQ
bf [310]

:[309]
push.s "obj_queen_enemy_slash_Step_0_gml_436_0"@25036
conv.s.v
push.s "I Was Going To Put&Like Memes In It&And Stuff/%"@25037
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend

:[310]
push.d 0.7
pop.v.d self.talked
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v LT
bf [312]

:[311]
pushi.e 70
pop.v.i global.typer
b [313]

:[312]
pushi.e 71
pop.v.i global.typer

:[313]
push.v self.ralseitalks
pushi.e 1
cmp.i.v EQ
bf [315]

:[314]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [316]

:[315]
push.e 0

:[316]
bf [318]

:[317]
pushi.e 74
pop.v.i global.typer
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_heroblcon(argc=1)
popz.v
pushi.e 374
conv.i.v
call.i gml_Script_scr_guardpeek(argc=1)
popz.v
b [324]

:[318]
push.v self.susietalks
pushi.e 1
cmp.i.v EQ
bf [320]

:[319]
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [321]

:[320]
push.e 0

:[321]
bf [323]

:[322]
pushi.e 75
pop.v.i global.typer
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_heroblcon(argc=1)
popz.v
pushi.e 373
conv.i.v
call.i gml_Script_scr_guardpeek(argc=1)
popz.v
b [324]

:[323]
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v

:[324]
pushi.e 0
pop.v.i self.ralseitalks
pushi.e 0
pop.v.i self.susietalks
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm

:[325]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [327]

:[326]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [328]

:[327]
push.e 0

:[328]
bf [370]

:[329]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [331]

:[330]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [332]

:[331]
push.e 0

:[332]
bt [334]

:[333]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [335]

:[334]
push.e 1

:[335]
bf [339]

:[336]
pushi.e 64
pushenv [338]

:[337]
call.i instance_destroy(argc=0)
popz.v

:[338]
popenv [337]
pushi.e 1
pop.v.i self.talkedcon

:[339]
push.v self.talkedcon
pushi.e 1
cmp.i.v EQ
bf [370]

:[340]
pushi.e 0
pop.v.i self.rtimer
pushi.e -1
conv.i.v
call.i gml_Script_scr_blconskip(argc=1)
popz.v
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [370]

:[341]
push.v self.rtimer
pushi.e 0
cmp.i.v EQ
bf [343]

:[342]
push.v self.attackdone
pushi.e 0
cmp.i.v EQ
b [344]

:[343]
push.e 0

:[344]
bf [364]

:[345]
pushi.e 1
pop.v.i self.attackdone
push.v self.attackdebug
pushi.e 0
cmp.i.v LT
bf [347]

:[346]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
b [348]

:[347]
push.v self.attackdebug
pop.v.v self.rr

:[348]
push.v self.difficultydebug
pushi.e 0
cmp.i.v NEQ
bf [350]

:[349]
push.v self.difficultydebug
pop.v.v self.difficulty

:[350]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [362]

:[351]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [353]

:[352]
pushi.e 872
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 200
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
b [362]

:[353]
push.v self.rr
pushi.e 5
cmp.i.v EQ
bf [355]

:[354]
pushi.e 872
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 237
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
b [362]

:[355]
push.v self.rr
pushi.e 7
cmp.i.v EQ
bf [357]

:[356]
pushi.e 872
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 200
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i 872.maxxscale
push.d 1.5
pop.v.d 872.maxyscale
b [362]

:[357]
push.v self.rr
pushi.e 9
cmp.i.v EQ
bf [361]

:[358]
pushi.e 872
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 200
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [360]

:[359]
push.d 1.5
pop.v.d 872.maxxscale
pushi.e 2
pop.v.i 872.maxyscale

:[360]
b [362]

:[361]
pushi.e 872
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 170
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[362]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [364]

:[363]
pushi.e 3229
pop.v.i 872.sprite_index
pushi.e 0
pop.v.b 872.visible

:[364]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [367]

:[365]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [367]

:[366]
push.v self.rr
pushi.e 2
cmp.i.v NEQ
b [368]

:[367]
push.e 0

:[368]
bf [370]

:[369]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[370]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [372]

:[371]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [373]

:[372]
push.e 0

:[373]
bf [465]

:[374]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 16
cmp.i.v EQ
bf [464]

:[375]
push.v self.rr
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [388]

:[376]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [389]

:[377]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [394]

:[378]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [401]

:[379]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [410]

:[380]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [415]

:[381]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [416]

:[382]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [419]

:[383]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [428]

:[384]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [439]

:[385]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [444]

:[386]
b [445]

:[387]
b [446]

:[388]
push.i 231869
setowner.e
push.s "ImageSearch"@25038
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 575
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 0
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.difficulty
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.special
pushi.e 300
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
b [446]

:[389]
push.i 231869
setowner.e
push.s "QueenUltimate"@25039
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 575
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.ultimateattackused
pushi.e 0
cmp.i.v EQ
bf [391]

:[390]
pushi.e 371
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[391]
push.v self.ultimateattackused
pushi.e 1
cmp.i.v EQ
bf [393]

:[392]
pushi.e 311
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[393]
b [446]

:[394]
push.i 231869
setowner.e
push.s "Wine"@25040
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 574
pushenv [396]

:[395]
pushi.e 1
pop.v.i self.wineglasscon
pushi.e 0
pop.v.i self.drink

:[396]
popenv [395]
pushi.e 1
pop.v.i self.shieldjustwentup
pushi.e 575
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 2
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.bufferattack
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.bufferattack
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [398]

:[397]
push.d 2.1
push.v self.dc
pushi.e -9
pop.v.d [stacktop]self.type

:[398]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [400]

:[399]
push.d 2.2
push.v self.dc
pushi.e -9
pop.v.d [stacktop]self.type

:[400]
pushi.e 400
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
b [446]

:[401]
push.i 231869
setowner.e
push.s "Stomp"@25041
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 575
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 3
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.bufferattack
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.bufferattack
pushi.e 240
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [403]

:[402]
push.d 3.1
push.v self.dc
pushi.e -9
pop.v.d [stacktop]self.type

:[403]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [405]

:[404]
push.d 3.2
push.v self.dc
pushi.e -9
pop.v.d [stacktop]self.type

:[405]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [407]

:[406]
push.d 3.3
push.v self.dc
pushi.e -9
pop.v.d [stacktop]self.type
pushi.e 190
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[407]
push.v self.difficulty
pushi.e 4
cmp.i.v EQ
bf [409]

:[408]
push.d 3.4
push.v self.dc
pushi.e -9
pop.v.d [stacktop]self.type

:[409]
b [446]

:[410]
push.i 231869
setowner.e
push.s "NewSocialMedia"@25042
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 575
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 106
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.bufferattack
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.bufferattack
pushi.e 250
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [412]

:[411]
pushi.e 107
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 300
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[412]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [414]

:[413]
pushi.e 105
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 300
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[414]
b [446]

:[415]
push.i 231869
setowner.e
push.s "Bufferbullet"@25043
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 575
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 5
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.bufferattack
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.bufferattack
pushi.e 300
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
b [446]

:[416]
push.i 231869
setowner.e
push.s "Explosion"@25044
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 575
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 6
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.bufferattack
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.bufferattack
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [418]

:[417]
push.d 6.1
push.v self.dc
pushi.e -9
pop.v.d [stacktop]self.type

:[418]
pushi.e 300
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
b [446]

:[419]
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [421]

:[420]
push.i 231869
setowner.e
push.s "BerdlyTornado"@25045
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 575
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 112
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type

:[421]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [423]

:[422]
push.s "BerdlyTornado"@25045
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 575
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 113
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type

:[423]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [425]

:[424]
push.s "BerdlyFeather"@25046
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 575
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 7
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type

:[425]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [427]

:[426]
push.s "BerdlyFeather"@25046
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 575
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
push.d 7.5
push.v self.dc
pushi.e -9
pop.v.d [stacktop]self.type

:[427]
pushi.e 266
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
b [446]

:[428]
push.i 231869
setowner.e
push.s "QueenLaser"@25047
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 575
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 100
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.bufferattack
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.bufferattack
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [430]

:[429]
pushi.e 101
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type

:[430]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [432]

:[431]
pushi.e 102
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type

:[432]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
bf [434]

:[433]
pushi.e 114
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type

:[434]
push.v self.difficulty
pushi.e 4
cmp.i.v EQ
bf [436]

:[435]
pushi.e 115
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type

:[436]
push.v self.difficulty
pushi.e 5
cmp.i.v EQ
bf [438]

:[437]
pushi.e 116
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type

:[438]
pushi.e 245
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
b [446]

:[439]
push.i 231869
setowner.e
push.s "Plug"@25048
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 575
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
push.v self.bufferattack
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.bufferattack
pushi.e -5
push.v 574.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [441]

:[440]
pushi.e 110
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type

:[441]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [443]

:[442]
pushi.e 111
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type

:[443]
pushi.e 300
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
b [446]

:[444]
push.i 231869
setowner.e
push.s "Birthday"@22897
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 575
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 8
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 5
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.special
push.v self.bufferattack
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.bufferattack
pushi.e 300
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
b [446]

:[445]
push.i 231869
setowner.e
push.s "Unknown"@25049
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 575
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
push.v self.rr
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.type
push.v self.bufferattack
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.bufferattack
pushi.e 300
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[446]
popz.v
push.v self.rr
pushi.e 7
cmp.i.v NEQ
bf [448]

:[447]
pushi.e 576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [449]

:[448]
push.e 0

:[449]
bf [451]

:[450]
pushi.e 1
pop.v.i 576.alphacon

:[451]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [453]

:[452]
push.i 231921
setowner.e
push.s "obj_queen_enemy_slash_Step_0_gml_462_0"@25051
conv.s.v
push.s "* The skyline echoes with regal laughter."@25052
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[453]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [455]

:[454]
push.s "obj_queen_enemy_slash_Step_0_gml_463_0"@25053
conv.s.v
push.s "* The fountain flows ominously."@25054
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[455]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [457]

:[456]
push.s "obj_queen_enemy_slash_Step_0_gml_464_0"@25055
conv.s.v
push.s "* The battlefield feels electric."@25056
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[457]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [459]

:[458]
push.s "obj_queen_enemy_slash_Step_0_gml_465_0"@25057
conv.s.v
push.s "* Smells like overclocked high heels."@25058
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[459]
push.v self.shieldjustwentdown
pushi.e 1
cmp.i.v EQ
bf [461]

:[460]
push.s "obj_queen_enemy_slash_Step_0_gml_467_0"@25059
conv.s.v
push.s "* Queen's acid shield is down!"@25060
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[461]
push.v self.shieldjustwentup
pushi.e 1
cmp.i.v EQ
bf [463]

:[462]
push.s "obj_queen_enemy_slash_Step_0_gml_468_0"@25061
conv.s.v
push.s "* Queen's acid shield is formed!"@25062
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[463]
pushi.e 0
pop.v.i self.shieldjustwentdown
pushi.e 0
pop.v.i self.shieldjustwentup
pushi.e 1
pop.v.i self.attacked
b [465]

:[464]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[465]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [824]

:[466]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v local.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
pushi.e 0
pop.v.i local.shieldbreaking
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [468]

:[467]
push.v 577.shieldhurt
pushi.e 2
cmp.i.v EQ
b [469]

:[468]
push.e 0

:[469]
bf [471]

:[470]
pushi.e 1
pop.v.i local.shieldbreaking

:[471]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bt [473]

:[472]
pushloc.v local.shieldbreaking
pushi.e 1
cmp.i.v EQ
b [474]

:[473]
push.e 1

:[474]
bf [480]

:[475]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [477]

:[476]
pushi.e 5
pop.v.i self.acting
b [479]

:[477]
push.v self.acting
pushi.e 5
cmp.i.v EQ
bf [479]

:[478]
pushi.e 6
pop.v.i self.acting

:[479]
b [484]

:[480]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [482]

:[481]
pushi.e 5
pop.v.i self.acting
b [484]

:[482]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [484]

:[483]
pushi.e 6
pop.v.i self.acting

:[484]
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [487]

:[485]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
bf [487]

:[486]
pushi.e 576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [488]

:[487]
push.e 0

:[488]
bf [490]

:[489]
pushi.e 1
pop.v.i self.actcon
push.s "obj_queen_enemy_slash_Step_0_gml_338_0"@25064
conv.s.v
push.s "* QUEEN - Her drinking glass generates a powerful barrier. Break or lower it!/%"@25065
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[490]
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [493]

:[491]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
bf [493]

:[492]
pushi.e 576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [494]

:[493]
push.e 0

:[494]
bf [605]

:[495]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [508]

:[496]
push.s "obj_queen_enemy_slash_Step_0_gml_346_0"@25066
conv.s.v
push.s "* You shook Berdly's wire!/%"@25067
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 5
pop.v.i local.mercyset
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [498]

:[497]
pushi.e -5
pushi.e 3
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [499]

:[498]
push.e 0

:[499]
bf [501]

:[500]
pushi.e 8
pop.v.i local.mercyset

:[501]
pushloc.v local.mercyset
push.v self.bardlymercy
add.v.v
pushi.e 100
cmp.i.v GT
bf [503]

:[502]
pushi.e 100
push.v self.bardlymercy
sub.v.i
pop.v.v local.mercyset

:[503]
push.v self.bardlymercy
pushloc.v local.mercyset
add.v.v
pop.v.v self.bardlymercy
pushi.e 873
conv.i.v
push.v 576.y
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
push.v [array]self.hittarget
pushi.e 20
mul.i.v
sub.v.v
push.v 576.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.__mercydmgwriter
pushloc.v local.mercyset
push.v self.__mercydmgwriter
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 5
push.v self.__mercydmgwriter
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 576
pushenv [505]

:[504]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[505]
popenv [504]
pushi.e 873
pushenv [507]

:[506]
push.v 576.x
pop.v.v self.x
push.v 576.y
pushi.e 20
add.i.v
pop.v.v self.y

:[507]
popenv [506]
push.v 574.depth
pushi.e 1
sub.i.v
pop.v.v 873.depth
pushi.e 1
pop.v.i self.actcon
b [605]

:[508]
push.v self.shield_damage_buffer
pushi.e 1
add.i.v
pop.v.v self.shield_damage_buffer
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [510]

:[509]
pushi.e -5
pushi.e 3
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [511]

:[510]
push.e 0

:[511]
bf [513]

:[512]
push.v self.shield_damage_buffer
push.d 1.5
add.d.v
pop.v.v self.shield_damage_buffer

:[513]
push.v self.krisflattercount
pushi.e 0
cmp.i.v EQ
bf [545]

:[514]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_queen_enemy_slash_Step_0_gml_764_0"@25069
conv.s.v
push.s "* You made a memorable and charming toast to Queen!/"@25070
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "1"@9475
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_queen_enemy_slash_Step_0_gml_766_0"@25071
conv.s.v
push.s "(Why did they make it so emotional?)"@25072
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.small_text
push.v self.jp
pushi.e 0
cmp.i.v EQ
bf [516]

:[515]
pushloc.v local.small_text
pushi.e 46
conv.i.v
pushi.e 338
conv.i.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v

:[516]
push.v self.jp
pushi.e 1
cmp.i.v EQ
bf [518]

:[517]
pushloc.v local.small_text
pushi.e 46
conv.i.v
pushi.e 458
conv.i.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v

:[518]
push.s "obj_queen_enemy_slash_Step_0_gml_768_0"@25073
conv.s.v
push.s "\\EC* Wow Spoken Like A Real Trucie\\f0 /%"@25074
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.waitnextactsusie
pushi.e 1
pop.v.i self.waitnextactralsei
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [522]

:[519]
push.v self.susieflattercount
pushi.e 0
cmp.i.v GT
bf [522]

:[520]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [522]

:[521]
push.v self.ralseiflattercount
pushi.e 0
cmp.i.v GT
b [523]

:[522]
push.e 0

:[523]
bf [525]

:[524]
pushi.e 1
pop.v.i self.changesimulorder

:[525]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [529]

:[526]
push.v self.susieflattercount
pushi.e 0
cmp.i.v EQ
bf [529]

:[527]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [529]

:[528]
push.v self.ralseiflattercount
pushi.e 0
cmp.i.v GT
b [530]

:[529]
push.e 0

:[530]
bf [532]

:[531]
pushi.e 2
pop.v.i self.changesimulorder

:[532]
push.v self.actingsus
pushi.e 0
cmp.i.v EQ
bf [535]

:[533]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [535]

:[534]
push.v self.ralseiflattercount
pushi.e 0
cmp.i.v GT
b [536]

:[535]
push.e 0

:[536]
bf [538]

:[537]
pushi.e 2
pop.v.i self.changesimulorder

:[538]
push.v self.actingral
pushi.e 0
cmp.i.v EQ
bf [541]

:[539]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [541]

:[540]
push.v self.susieflattercount
pushi.e 0
cmp.i.v GT
b [542]

:[541]
push.e 0

:[542]
bf [544]

:[543]
pushi.e 5
pop.v.i self.changesimulorder

:[544]
b [604]

:[545]
pushi.e 0
pop.v.i local.aa
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [549]

:[546]
push.v self.susieflattercount
pushi.e 0
cmp.i.v EQ
bf [549]

:[547]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [549]

:[548]
push.v self.ralseiflattercount
pushi.e 0
cmp.i.v EQ
b [550]

:[549]
push.e 0

:[550]
bf [552]

:[551]
pushi.e 1
pop.v.i local.aa

:[552]
push.v self.actingral
pushi.e 1
cmp.i.v NEQ
bf [555]

:[553]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [555]

:[554]
push.v self.susieflattercount
pushi.e 0
cmp.i.v EQ
b [556]

:[555]
push.e 0

:[556]
bf [558]

:[557]
pushi.e 1
pop.v.i local.aa

:[558]
push.v self.actingsus
pushi.e 1
cmp.i.v NEQ
bf [561]

:[559]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [561]

:[560]
push.v self.ralseiflattercount
pushi.e 0
cmp.i.v EQ
b [562]

:[561]
push.e 0

:[562]
bf [564]

:[563]
pushi.e 1
pop.v.i local.aa

:[564]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bt [566]

:[565]
pushloc.v local.aa
pushi.e 1
cmp.i.v EQ
b [567]

:[566]
push.e 1

:[567]
bf [586]

:[568]
push.s "obj_queen_enemy_slash_Step_0_gml_788_0"@25075
conv.s.v
push.s "* You made a memorable and charming toast to Queen!/%"@25076
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [570]

:[569]
push.v self.susieflattercount
pushi.e 0
cmp.i.v EQ
b [571]

:[570]
push.e 0

:[571]
bf [573]

:[572]
pushi.e 1
pop.v.i self.waitnextactsusie

:[573]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [575]

:[574]
push.v self.ralseiflattercount
pushi.e 0
cmp.i.v EQ
b [576]

:[575]
push.e 0

:[576]
bf [578]

:[577]
pushi.e 1
pop.v.i self.waitnextactralsei

:[578]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [582]

:[579]
push.v self.susieflattercount
pushi.e 0
cmp.i.v EQ
bf [582]

:[580]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [582]

:[581]
push.v self.ralseiflattercount
pushi.e 0
cmp.i.v GT
b [583]

:[582]
push.e 0

:[583]
bf [585]

:[584]
pushi.e 3
pop.v.i self.changesimulorder

:[585]
b [604]

:[586]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [588]

:[587]
push.v self.susieflattercount
pushi.e 0
cmp.i.v EQ
b [589]

:[588]
push.e 0

:[589]
bf [591]

:[590]
pushi.e 1
pop.v.i self.waitnextactsusie

:[591]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [593]

:[592]
push.v self.ralseiflattercount
pushi.e 0
cmp.i.v EQ
b [594]

:[593]
push.e 0

:[594]
bf [596]

:[595]
pushi.e 1
pop.v.i self.waitnextactralsei

:[596]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [600]

:[597]
push.v self.susieflattercount
pushi.e 0
cmp.i.v EQ
bf [600]

:[598]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [600]

:[599]
push.v self.ralseiflattercount
pushi.e 0
cmp.i.v GT
b [601]

:[600]
push.e 0

:[601]
bf [603]

:[602]
pushi.e 3
pop.v.i self.changesimulorder

:[603]
push.s "obj_queen_enemy_slash_Step_0_gml_803_0"@25077
conv.s.v
push.s "* You toasted Queen!/%"@25078
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v

:[604]
push.v self.krisflattercount
push.e 1
add.i.v
pop.v.v self.krisflattercount
pushi.e 100
pop.v.i self.acting

:[605]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [607]

:[606]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [608]

:[607]
push.e 0

:[608]
bf [621]

:[609]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [617]

:[610]
push.s "obj_queen_enemy_slash_Step_0_gml_371_0"@25079
conv.s.v
push.s "* Everyone loosens Berdly!/%"@25080
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 15
pop.v.i local.mercyset
pushloc.v local.mercyset
push.v self.bardlymercy
add.v.v
pushi.e 100
cmp.i.v GT
bf [612]

:[611]
pushi.e 100
push.v self.bardlymercy
sub.v.i
pop.v.v local.mercyset

:[612]
push.v self.bardlymercy
pushloc.v local.mercyset
add.v.v
pop.v.v self.bardlymercy
pushi.e 873
conv.i.v
push.v 576.y
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
push.v [array]self.hittarget
pushi.e 20
mul.i.v
sub.v.v
push.v 576.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.__mercydmgwriter
pushloc.v local.mercyset
push.v self.__mercydmgwriter
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 5
push.v self.__mercydmgwriter
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 576
pushenv [614]

:[613]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[614]
popenv [613]
pushi.e 873
pushenv [616]

:[615]
push.v 576.x
pop.v.v self.x
push.v 576.y
pushi.e 20
add.i.v
pop.v.v self.y

:[616]
popenv [615]
push.v 574.depth
pushi.e 1
sub.i.v
pop.v.v 873.depth
pushi.e 1
pop.v.i self.actcon
b [621]

:[617]
push.v self.shield_damage_buffer
pushi.e 3
add.i.v
pop.v.v self.shield_damage_buffer
push.v self.groupflattercount
pushi.e 0
cmp.i.v EQ
bf [619]

:[618]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_queen_enemy_slash_Step_0_gml_840_0"@25081
conv.s.v
push.s "\\EF* (That glass of acid is generating her shield!)/"@25082
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "1"@9475
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_queen_enemy_slash_Step_0_gml_842_0"@25083
conv.s.v
push.s "\\E3* So, uh... you gonna drink all that?/"@25084
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "1"@9475
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_queen_enemy_slash_Step_0_gml_844_0"@25085
conv.s.v
push.s "\\E6* No This Is All Mine You Can't Have It/%"@25086
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v
b [620]

:[619]
push.s "obj_queen_enemy_slash_Step_0_gml_384_0"@25087
conv.s.v
push.s "* Everyone toasted to Queen!/%"@25088
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[620]
push.v self.groupflattercount
push.e 1
add.i.v
pop.v.v self.groupflattercount
pushi.e 100
pop.v.i self.acting

:[621]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [623]

:[622]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [624]

:[623]
push.e 0

:[624]
bt [629]

:[625]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [627]

:[626]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [628]

:[627]
push.e 0

:[628]
b [630]

:[629]
push.e 1

:[630]
bf [637]

:[631]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [633]

:[632]
pushi.e 0
pop.v.i self.throwX

:[633]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [635]

:[634]
pushi.e 1
pop.v.i self.throwX

:[635]
pushi.e 32
pop.v.i self.actcon
pushi.e 0
pop.v.i self.acting
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.v self.xstart
pop.v.v self.___myrememberx
push.v self.ystart
pop.v.v self.___myremembery
pushi.e 0
pop.v.i self.siner
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [637]

:[636]
pushi.e 1
pop.v.i 576.con
pushi.e 572
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 50
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 380
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 195
add.i.v
push.v self.x
pushi.e 40
sub.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[637]
push.v self.acting
pushi.e 5
cmp.i.v EQ
bf [639]

:[638]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [640]

:[639]
push.e 0

:[640]
bf [642]

:[641]
push.i 231251
setowner.e
push.s "obj_queen_enemy_slash_Step_0_gml_410_0"@25089
conv.s.v
push.s "* Your SOUL shined its power on Susie!/%"@25090
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 10
pop.v.i self.actcon
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 0
pop.v.i self.acttimer

:[642]
push.v self.acting
pushi.e 6
cmp.i.v EQ
bf [644]

:[643]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [645]

:[644]
push.e 0

:[645]
bf [647]

:[646]
push.s "obj_queen_enemy_slash_Step_0_gml_419_0"@25091
conv.s.v
push.s "* Your SOUL shined its power on RALSEI!/%"@25092
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 20
pop.v.i self.actcon
pushi.e 0
pop.v.i self.acttimer

:[647]
pushi.e 0
pop.v.i local._susie_simul
push.v self.waitnextactsusie
pushi.e 1
cmp.i.v EQ
bf [649]

:[648]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [650]

:[649]
push.e 0

:[650]
bf [652]

:[651]
pushi.e 1
pop.v.i local._susie_simul

:[652]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [655]

:[653]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
bf [655]

:[654]
pushloc.v local._susie_simul
pushi.e 0
cmp.i.v EQ
b [656]

:[655]
push.e 0

:[656]
bf [701]

:[657]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [670]

:[658]
push.s "obj_queen_enemy_slash_Step_0_gml_429_0"@25094
conv.s.v
push.s "* Susie loosens one of Berdly's wires!/%"@25095
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 5
pop.v.i local.mercyset
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [660]

:[659]
pushi.e -5
pushi.e 3
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [661]

:[660]
push.e 0

:[661]
bf [663]

:[662]
pushi.e 8
pop.v.i local.mercyset

:[663]
pushloc.v local.mercyset
push.v self.bardlymercy
add.v.v
pushi.e 100
cmp.i.v GT
bf [665]

:[664]
pushi.e 100
push.v self.bardlymercy
sub.v.i
pop.v.v local.mercyset

:[665]
push.v self.bardlymercy
pushloc.v local.mercyset
add.v.v
pop.v.v self.bardlymercy
pushi.e 873
conv.i.v
push.v 576.y
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
push.v [array]self.hittarget
pushi.e 20
mul.i.v
sub.v.v
push.v 576.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.__mercydmgwriter
pushloc.v local.mercyset
push.v self.__mercydmgwriter
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 5
push.v self.__mercydmgwriter
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 576
pushenv [667]

:[666]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[667]
popenv [666]
pushi.e 873
pushenv [669]

:[668]
push.v 576.x
pop.v.v self.x
push.v 576.y
pushi.e 20
add.i.v
pop.v.v self.y

:[669]
popenv [668]
push.v 574.depth
pushi.e 1
sub.i.v
pop.v.v 873.depth
pushi.e 1
pop.v.i self.actcon
b [700]

:[670]
push.v self.shield_damage_buffer
pushi.e 1
add.i.v
pop.v.v self.shield_damage_buffer
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [672]

:[671]
pushi.e -5
pushi.e 3
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [673]

:[672]
push.e 0

:[673]
bf [675]

:[674]
push.v self.shield_damage_buffer
push.d 1.5
add.d.v
pop.v.v self.shield_damage_buffer

:[675]
push.v self.susieflattercount
pushi.e 0
cmp.i.v EQ
bf [679]

:[676]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_queen_enemy_slash_Step_0_gml_928_0"@25096
conv.s.v
push.s "* Susie made a toast to Queen...?/"@25097
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "1"@9475
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_queen_enemy_slash_Step_0_gml_930_0"@25098
conv.s.v
push.s "\\EK* Pretty cool how we're... uh, gonna kick your ass./"@25099
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "1"@9475
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_queen_enemy_slash_Step_0_gml_932_0"@25100
conv.s.v
push.s "\\E1* It's A Good Thing I Have No Standards For This/%"@25101
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.waitnextactralsei
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [678]

:[677]
pushi.e 2
pop.v.i self.changesimulorder

:[678]
b [699]

:[679]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bt [681]

:[680]
push.v self.changesimulorder
pushi.e 5
cmp.i.v EQ
b [682]

:[681]
push.e 1

:[682]
bf [686]

:[683]
pushi.e 1
pop.v.i self.waitnextactralsei
push.v self.changesimulorder
pushi.e 5
cmp.i.v EQ
bf [685]

:[684]
pushi.e 0
pop.v.i self.simulordersus
pushi.e 0
pop.v.i self.changesimulorder

:[685]
push.s "obj_queen_enemy_slash_Step_0_gml_946_0"@25102
conv.s.v
push.s "* Susie made an offensive toast to Queen!/%"@25103
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
b [699]

:[686]
push.v self.changesimulorder
pushi.e 1
cmp.i.v EQ
bf [688]

:[687]
pushi.e 0
pop.v.i self.simulordersus
pushi.e 1
pop.v.i self.simulorderral
pushi.e 0
pop.v.i self.changesimulorder

:[688]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [690]

:[689]
push.v self.ralseiflattercount
pushi.e 0
cmp.i.v EQ
b [691]

:[690]
push.e 0

:[691]
bf [693]

:[692]
pushi.e 1
pop.v.i self.waitnextactralsei

:[693]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [695]

:[694]
push.v self.ralseiflattercount
pushi.e 0
cmp.i.v GT
b [696]

:[695]
push.e 0

:[696]
bf [698]

:[697]
pushi.e 0
pop.v.i self.waitnextactralsei

:[698]
push.s "obj_queen_enemy_slash_Step_0_gml_955_0"@25104
conv.s.v
push.s "* Susie toasted Queen!/%"@25105
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v

:[699]
push.v self.susieflattercount
push.e 1
add.i.v
pop.v.v self.susieflattercount
pushi.e 100
pop.v.i self.acting

:[700]
pushi.e 0
pop.v.i self.actconsus
pushi.e 0
pop.v.i self.actingsus

:[701]
pushi.e 0
pop.v.i local._ralsei_simul
push.v self.waitnextactralsei
pushi.e 1
cmp.i.v EQ
bf [703]

:[702]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [704]

:[703]
push.e 0

:[704]
bf [706]

:[705]
pushi.e 1
pop.v.i local._ralsei_simul

:[706]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [709]

:[707]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
bf [709]

:[708]
pushloc.v local._ralsei_simul
pushi.e 0
cmp.i.v EQ
b [710]

:[709]
push.e 0

:[710]
bf [745]

:[711]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [724]

:[712]
push.s "obj_queen_enemy_slash_Step_0_gml_457_0"@25107
conv.s.v
push.s "* Ralsei loosens one of Berdly's wires!/%"@25108
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 5
pop.v.i local.mercyset
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [714]

:[713]
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [715]

:[714]
push.e 0

:[715]
bf [717]

:[716]
pushi.e 8
pop.v.i local.mercyset

:[717]
pushloc.v local.mercyset
push.v self.bardlymercy
add.v.v
pushi.e 100
cmp.i.v GT
bf [719]

:[718]
pushi.e 100
push.v self.bardlymercy
sub.v.i
pop.v.v local.mercyset

:[719]
push.v self.bardlymercy
pushloc.v local.mercyset
add.v.v
pop.v.v self.bardlymercy
pushi.e 873
conv.i.v
push.v 576.y
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
push.v [array]self.hittarget
pushi.e 20
mul.i.v
sub.v.v
push.v 576.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.__mercydmgwriter
pushloc.v local.mercyset
push.v self.__mercydmgwriter
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 5
push.v self.__mercydmgwriter
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 576
pushenv [721]

:[720]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[721]
popenv [720]
pushi.e 873
pushenv [723]

:[722]
push.v 576.x
pop.v.v self.x
push.v 576.y
pushi.e 20
add.i.v
pop.v.v self.y

:[723]
popenv [722]
push.v 574.depth
pushi.e 1
sub.i.v
pop.v.v 873.depth
pushi.e 1
pop.v.i self.actcon
b [744]

:[724]
push.v self.shield_damage_buffer
pushi.e 1
add.i.v
pop.v.v self.shield_damage_buffer
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [726]

:[725]
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [727]

:[726]
push.e 0

:[727]
bf [729]

:[728]
push.v self.shield_damage_buffer
push.d 1.5
add.d.v
pop.v.v self.shield_damage_buffer

:[729]
push.v self.ralseiflattercount
pushi.e 0
cmp.i.v EQ
bf [731]

:[730]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_queen_enemy_slash_Step_0_gml_1003_0"@25109
conv.s.v
push.s "* Ralsei made a toast to Queen!/"@25110
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "1"@9475
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_queen_enemy_slash_Step_0_gml_1005_0"@25111
conv.s.v
push.s "\\E2* A toast to you, er, making me wear a butler outfit!/"@25112
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "1"@9475
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_queen_enemy_slash_Step_0_gml_1007_0"@25113
conv.s.v
push.s "\\EL* Bro That's Weird But OK/%"@25114
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
b [743]

:[731]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bt [733]

:[732]
push.v self.changesimulorder
pushi.e 2
cmp.i.v EQ
b [734]

:[733]
push.e 1

:[734]
bf [738]

:[735]
push.v self.changesimulorder
pushi.e 2
cmp.i.v EQ
bf [737]

:[736]
pushi.e 0
pop.v.i self.simulorderral
pushi.e 0
pop.v.i self.changesimulorder

:[737]
push.s "obj_queen_enemy_slash_Step_0_gml_1015_0"@25115
conv.s.v
push.s "* Ralsei made a slightly cringeworthy toast to Queen!/%"@25116
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
b [743]

:[738]
push.v self.changesimulorder
pushi.e 3
cmp.i.v EQ
bf [740]

:[739]
pushi.e 1
pop.v.i self.simulorderral
pushi.e 0
pop.v.i self.changesimulorder

:[740]
push.v self.changesimulorder
pushi.e 4
cmp.i.v EQ
bf [742]

:[741]
pushi.e 0
pop.v.i self.simulorderral
pushi.e 0
pop.v.i self.changesimulorder

:[742]
push.s "obj_queen_enemy_slash_Step_0_gml_472_0"@25117
conv.s.v
push.s "* Ralsei toasted Queen!/%"@25118
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v

:[743]
push.v self.ralseiflattercount
push.e 1
add.i.v
pop.v.v self.ralseiflattercount
pushi.e 100
pop.v.i self.acting

:[744]
pushi.e 0
pop.v.i self.actconral
pushi.e 0
pop.v.i self.actingral

:[745]
push.v self.actingral
pushi.e 2
cmp.i.v EQ
bf [747]

:[746]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [748]

:[747]
push.e 0

:[748]
bf [750]

:[749]
push.s "obj_queen_enemy_slash_Step_0_gml_483_0"@25119
conv.s.v
push.s "* Aiming with Throw is easier next turn!/%"@25120
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 2
pop.v.i self.aimact
pushi.e 0
pop.v.i self.actconral
pushi.e 0
pop.v.i self.actingral
pushi.e 1
pop.v.i self.actcon

:[750]
push.v self.acting
pushi.e 100
cmp.i.v EQ
bf [752]

:[751]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [753]

:[752]
push.e 0

:[753]
bf [759]

:[754]
pushi.e 0
pop.v.i self.acting
pushi.e 1
pop.v.i self.actcon
pushi.e 1
pop.v.i self.drunk
pushi.e 10
pop.v.i self.wineglasscon
pushi.e 1
pop.v.i self.drink
pushi.e 0
pop.v.i self.winetimer
push.v self.shieldhp
push.v self.shieldmaxhp
push.v self.shield_damage_buffer
push.v self.shieldactmaxhp
div.v.v
mul.v.v
sub.v.v
pop.v.v self.shieldhp
pushi.e 0
pop.v.i self.shield_damage_buffer
pushi.e 577
pushenv [756]

:[755]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[756]
popenv [755]
push.v self.shieldacthp
pushi.e 0
cmp.i.v LTE
bf [758]

:[757]
push.s "obj_queen_enemy_slash_Step_0_gml_504_0"@25121
conv.s.v
push.s "* Queen sips from her acid!/%"@25122
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_queen_enemy_slash_Step_0_gml_505_0"@25123
conv.s.v
push.s "* She is out of acid, her shield powers down!/%"@25124
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
b [759]

:[758]
push.s "obj_queen_enemy_slash_Step_0_gml_510_0"@25125
conv.s.v
push.s "* Queen sips from her acid!/%"@25122
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[759]
push.v self.actcon
pushi.e 33
cmp.i.v EQ
bf [772]

:[760]
push.v self.aimact
pushi.e 0
cmp.i.v EQ
bf [762]

:[761]
push.s "obj_queen_enemy_slash_Step_0_gml_519_0"@25126
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* Press ~1 to throw, aim for the weakpoint!"@24069
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [763]

:[762]
push.s "obj_queen_enemy_slash_Step_0_gml_520_0"@25127
conv.s.v
push.s "* Use UP and DOWN to Aim for the wires!"@25128
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[763]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 372
pushenv [765]

:[764]
pushi.e 0
pop.v.i self.visible

:[765]
popenv [764]
pushi.e 373
pushenv [767]

:[766]
pushi.e 0
pop.v.i self.visible

:[767]
popenv [766]
pushi.e 568
conv.i.v
push.v 373.y
push.v 373.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.throwsus
push.v self.throwX
pushi.e 1
cmp.i.v EQ
bf [771]

:[768]
pushi.e 1
push.v self.throwsus
pushi.e -9
pop.v.i [stacktop]self.throwXcon
pushi.e 374
pushenv [770]

:[769]
pushi.e 0
pop.v.i self.visible

:[770]
popenv [769]

:[771]
pushi.e 34
pop.v.i self.actcon

:[772]
push.v self.actcon
pushi.e 35
cmp.i.v EQ
bf [778]

:[773]
pushi.e 572
pushenv [775]

:[774]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.lerpintimer

:[775]
popenv [774]
pushi.e 8
conv.i.v
call.i gml_Script_scr_move_to_rememberxy(argc=1)
popz.v
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [777]

:[776]
pushi.e 1
pop.v.i self.actcon
b [778]

:[777]
pushi.e 36
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 25
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[778]
push.v self.actcon
pushi.e 37
cmp.i.v EQ
bf [780]

:[779]
pushi.e 1
pop.v.i self.actcon

:[780]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [786]

:[781]
push.v self.acttimer
pushi.e 1
add.i.v
pop.v.v self.acttimer
push.v self.acttimer
pushi.e 10
cmp.i.v GTE
bt [783]

:[782]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [784]

:[783]
push.e 1

:[784]
bf [786]

:[785]
pushi.e 0
pop.v.i self.acttimer
pushi.e 11
pop.v.i self.actcon

:[786]
push.v self.actcon
pushi.e 11
cmp.i.v EQ
bf [794]

:[787]
push.i 231659
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.faceaction
push.i 231563
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charaction
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charaction
push.i 231580
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charspecial
push.i 231559
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.chartarget
push.i 231499
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.acting
pushi.e 151
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 128
conv.i.v
push.v 372.y
pushi.e 50
add.i.v
push.v 372.x
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.heartanim
push.v self.heartanim
pushi.e -9
pushenv [789]

:[788]
pushi.e -20
pop.v.i self.depth
pushi.e 0
pop.v.i self.image_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.image_speed
pushi.e 2470
pop.v.i self.sprite_index

:[789]
popenv [788]
pushi.e 372
pushenv [791]

:[790]
call.i gml_Script_scr_oflash(argc=0)
popz.v

:[791]
popenv [790]
pushi.e 373
pushenv [793]

:[792]
call.i gml_Script_scr_oflash(argc=0)
popz.v

:[793]
popenv [792]
pushi.e 12
pop.v.i self.actcon

:[794]
push.v self.actcon
pushi.e 12
cmp.i.v EQ
bf [799]

:[795]
push.v self.acttimer
pushi.e 1
add.i.v
pop.v.v self.acttimer
push.v self.acttimer
pushi.e 20
cmp.i.v GTE
bf [799]

:[796]
pushi.e 1
pop.v.i self.actcon
pushi.e 373
pushenv [798]

:[797]
pushi.e 0
pop.v.i self.state

:[798]
popenv [797]

:[799]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bf [805]

:[800]
push.v self.acttimer
pushi.e 1
add.i.v
pop.v.v self.acttimer
push.v self.acttimer
pushi.e 10
cmp.i.v GTE
bt [802]

:[801]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [803]

:[802]
push.e 1

:[803]
bf [805]

:[804]
pushi.e 0
pop.v.i self.acttimer
pushi.e 21
pop.v.i self.actcon

:[805]
push.v self.actcon
pushi.e 21
cmp.i.v EQ
bf [813]

:[806]
push.i 231659
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.faceaction
push.i 231563
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.charaction
push.i 231580
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.charspecial
push.i 231559
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.chartarget
push.i 231499
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.acting
pushi.e 151
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 128
conv.i.v
push.v 372.y
pushi.e 50
add.i.v
push.v 372.x
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.heartanim
push.v self.heartanim
pushi.e -9
pushenv [808]

:[807]
pushi.e -20
pop.v.i self.depth
pushi.e 0
pop.v.i self.image_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.image_speed
pushi.e 2470
pop.v.i self.sprite_index

:[808]
popenv [807]
pushi.e 374
pushenv [810]

:[809]
call.i gml_Script_scr_oflash(argc=0)
popz.v

:[810]
popenv [809]
pushi.e 372
pushenv [812]

:[811]
call.i gml_Script_scr_oflash(argc=0)
popz.v

:[812]
popenv [811]
pushi.e 22
pop.v.i self.actcon

:[813]
push.v self.actcon
pushi.e 22
cmp.i.v EQ
bf [818]

:[814]
push.v self.acttimer
pushi.e 1
add.i.v
pop.v.v self.acttimer
push.v self.acttimer
pushi.e 20
cmp.i.v GTE
bf [818]

:[815]
pushi.e 1
pop.v.i self.actcon
pushi.e 374
pushenv [817]

:[816]
pushi.e 0
pop.v.i self.state

:[817]
popenv [816]

:[818]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [821]

:[819]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [821]

:[820]
pushi.e 582
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [822]

:[821]
push.e 0

:[822]
bf [824]

:[823]
pushi.e 0
pop.v.i self.waitnextactsusie
pushi.e 0
pop.v.i self.waitnextactralsei
pushi.e 0
pop.v.i self.changesimulorder
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[824]
push.v self.y
push.v self.ystart
sub.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 20
sub.i.v
pop.v.v self.sactionboxy
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [826]

:[825]
push.s "Queen"@7540
conv.s.v
pushi.e 10
conv.i.v
push.v self.attackdebug
call.i gml_Script_scr_attack_override(argc=3)
pop.v.v self.attackdebug

:[826]
push.v self.endcon
pushi.e 1
cmp.i.v EQ
bf [844]

:[827]
push.v self.defeat_cutscene_version
pushi.e 0
cmp.i.v EQ
bf [829]

:[828]
push.s "obj_queen_enemy_slash_Step_0_gml_1067_0"@25130
conv.s.v
push.s "Not Bad You&Foolish Children/%"@25131
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
pop.v.i self.endcon
b [830]

:[829]
push.s "obj_queen_enemy_slash_Step_0_gml_1074_0"@25132
conv.s.v
push.s "...?/%"@25133
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 3
pop.v.i self.endcon

:[830]
push.i 231526
setowner.e
push.v self.bardlymercy
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.endtimer
pushi.e 1
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 0
pop.v.i self.talktimer
pushi.e 70
pop.v.i global.typer
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e -5
pushi.e 529
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bt [832]

:[831]
pushi.e -5
pushi.e 529
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
b [833]

:[832]
push.e 1

:[833]
bf [842]

:[834]
pushi.e -5
pushi.e 550
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bt [836]

:[835]
pushi.e -5
pushi.e 550
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
b [837]

:[836]
push.e 1

:[837]
bf [842]

:[838]
pushi.e -5
pushi.e 548
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bt [840]

:[839]
pushi.e -5
pushi.e 548
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
b [841]

:[840]
push.e 1

:[841]
b [843]

:[842]
push.e 0

:[843]
pop.v.b self.defeat_cutscene_version

:[844]
push.v self.defeat_cutscene_version
pushi.e 0
cmp.i.v EQ
bf [898]

:[845]
push.v self.endcon
pushi.e 2
cmp.i.v EQ
bf [873]

:[846]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [848]

:[847]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [849]

:[848]
push.e 0

:[849]
bt [851]

:[850]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [852]

:[851]
push.e 1

:[852]
bf [873]

:[853]
pushi.e 64
pushenv [855]

:[854]
call.i instance_destroy(argc=0)
popz.v

:[855]
popenv [854]
push.v self.ballooncon
pushi.e 1
cmp.i.v EQ
bf [860]

:[856]
push.v self.bardlymercy
pushi.e 99
cmp.i.v GT
bf [858]

:[857]
push.s "obj_queen_enemy_slash_Step_0_gml_1108_0"@25134
conv.s.v
push.s "But No Matter&How Long This&Battle Drags On/%"@25135
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [859]

:[858]
push.s "obj_queen_enemy_slash_Step_0_gml_1109_0"@25136
conv.s.v
push.s "But Even If You&Deplete The Health&Points (Of My: Chair)/%"@25137
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[859]
pushi.e 2
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [868]

:[860]
push.v self.ballooncon
pushi.e 2
cmp.i.v EQ
bf [862]

:[861]
push.s "obj_queen_enemy_slash_Step_0_gml_1114_0"@25138
conv.s.v
push.s "I Can Simply Make&Another Barrier Using&My: Drink/%"@25139
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 3
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [868]

:[862]
push.v self.ballooncon
pushi.e 3
cmp.i.v EQ
bf [864]

:[863]
push.s "obj_queen_enemy_slash_Step_0_gml_1118_0"@25140
conv.s.v
push.s "Bottoms Up/%"@25141
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 4
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [868]

:[864]
push.v self.ballooncon
pushi.e 4
cmp.i.v EQ
bf [866]

:[865]
pushi.e 1884
pop.v.i self.sprite_index
push.s "obj_queen_enemy_slash_Step_0_gml_1123_0"@25142
conv.s.v
push.s "Wait A Second/%"@25143
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 5
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [868]

:[866]
push.v self.ballooncon
pushi.e 5
cmp.i.v EQ
bf [868]

:[867]
pushi.e 1884
pop.v.i self.sprite_index
push.s "obj_queen_enemy_slash_Step_0_gml_1128_0"@25144
conv.s.v
push.s "Hey Chat Does Anyone&Know What Happened&To That Stuff/%"@25145
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend

:[868]
pushi.e 3
pop.v.i self.endcon
pushi.e 70
pop.v.i global.typer
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
push.v self.ballooncon
pushi.e 4
cmp.i.v NEQ
bf [870]

:[869]
push.v self.ballooncon
pushi.e 5
cmp.i.v NEQ
b [871]

:[870]
push.e 0

:[871]
bf [873]

:[872]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm

:[873]
push.v self.endcon
pushi.e 3
cmp.i.v EQ
bf [875]

:[874]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [876]

:[875]
push.e 0

:[876]
bf [887]

:[877]
push.v self.ballooncon
pushi.e 4
cmp.i.v EQ
bf [882]

:[878]
push.v self.endtimer
push.e 1
add.i.v
pop.v.v self.endtimer
push.v self.endtimer
pushi.e 1
cmp.i.v EQ
bf [880]

:[879]
pushi.e 1890
pop.v.i self.sprite_index
pushi.e 144
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[880]
push.v self.endtimer
pushi.e 60
cmp.i.v EQ
bf [882]

:[881]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.endtimer

:[882]
push.v self.ballooncon
pushi.e 5
cmp.i.v EQ
bf [887]

:[883]
push.v self.endtimer
push.e 1
add.i.v
pop.v.v self.endtimer
push.v self.endtimer
pushi.e 1
cmp.i.v EQ
bf [885]

:[884]
pushi.e 1890
pop.v.i self.sprite_index
pushi.e 144
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[885]
push.v self.endtimer
pushi.e 60
cmp.i.v EQ
bf [887]

:[886]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.endtimer

:[887]
push.v self.endcon
pushi.e 4
cmp.i.v EQ
bf [898]

:[888]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [890]

:[889]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [891]

:[890]
push.e 0

:[891]
bt [893]

:[892]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [894]

:[893]
push.e 1

:[894]
bf [898]

:[895]
push.v self.endtimer
push.e 1
add.i.v
pop.v.v self.endtimer
push.v self.endtimer
pushi.e 1
cmp.i.v EQ
bf [898]

:[896]
pushi.e 0
pop.v.i global.fighting
pushi.e 975
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [898]

:[897]
pushi.e 1
pop.v.i 975.forcend

:[898]
push.v self.defeat_cutscene_version
pushi.e 1
cmp.i.v EQ
bf [end]

:[899]
push.v self.endcon
pushi.e 2
cmp.i.v EQ
bf [901]

:[900]
push.v self.extracon
pushi.e 0
cmp.i.v EQ
b [902]

:[901]
push.e 0

:[902]
bf [914]

:[903]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [905]

:[904]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [906]

:[905]
push.e 0

:[906]
bt [908]

:[907]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [909]

:[908]
push.e 1

:[909]
bf [914]

:[910]
push.v self.extratimer
push.e 1
add.i.v
pop.v.v self.extratimer
push.v self.extratimer
pushi.e 1
cmp.i.v EQ
bf [912]

:[911]
pushi.e 10
pop.v.i 576.shake2
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[912]
push.v self.extratimer
pushi.e 50
cmp.i.v EQ
bf [914]

:[913]
pushi.e 1
pop.v.i self.extracon

:[914]
push.v self.endcon
pushi.e 2
cmp.i.v EQ
bf [916]

:[915]
push.v self.extracon
pushi.e 1
cmp.i.v EQ
b [917]

:[916]
push.e 0

:[917]
bf [955]

:[918]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [920]

:[919]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [921]

:[920]
push.e 0

:[921]
bt [923]

:[922]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [924]

:[923]
push.e 1

:[924]
bf [955]

:[925]
pushi.e 64
pushenv [927]

:[926]
call.i instance_destroy(argc=0)
popz.v

:[927]
popenv [926]
push.v self.ballooncon
pushi.e 1
cmp.i.v EQ
bf [929]

:[928]
pushi.e 252
pop.v.i self.idlesprite
push.s "obj_queen_enemy_slash_Step_0_gml_1181_0"@25147
conv.s.v
push.s "What The/%"@25148
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [939]

:[929]
push.v self.ballooncon
pushi.e 2
cmp.i.v EQ
bf [931]

:[930]
push.s "obj_queen_enemy_slash_Step_0_gml_1186_0"@25149
conv.s.v
push.s "What Are&You Doing/%"@25150
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 3
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [939]

:[931]
push.v self.ballooncon
pushi.e 3
cmp.i.v EQ
bf [933]

:[932]
push.s "obj_queen_enemy_slash_Step_0_gml_1190_0"@25151
conv.s.v
push.s "Why Isn't&My Control&Wire Working/%"@25152
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 4
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [939]

:[933]
push.v self.ballooncon
pushi.e 4
cmp.i.v EQ
bf [935]

:[934]
push.s "obj_queen_enemy_slash_Step_0_gml_1195_0"@25153
conv.s.v
push.s "Thanks to...&my comrades'&kindness...&their MERCY!/%"@25154
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 5
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [939]

:[935]
push.v self.ballooncon
pushi.e 5
cmp.i.v EQ
bf [937]

:[936]
push.s "obj_queen_enemy_slash_Step_0_gml_1200_0"@25155
conv.s.v
push.s "Now.../%"@25156
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 6
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [939]

:[937]
push.v self.ballooncon
pushi.e 6
cmp.i.v EQ
bf [939]

:[938]
push.s "obj_queen_enemy_slash_Step_0_gml_1204_0"@25157
conv.s.v
push.s "It's time...&for me to&take my&freedom!!/%"@25158
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend

:[939]
pushi.e 3
pop.v.i self.endcon
push.v self.ballooncon
pushi.e 4
cmp.i.v GT
bt [941]

:[940]
push.v self.ballooncon
pushi.e 0
cmp.i.v EQ
b [942]

:[941]
push.e 1

:[942]
bf [949]

:[943]
pushi.e 69
pop.v.i global.typer
pushi.e 30
pop.v.i local.xx
push.v self.ballooncon
pushi.e 0
cmp.i.v EQ
bt [945]

:[944]
push.v self.ballooncon
pushi.e 6
cmp.i.v EQ
b [946]

:[945]
push.e 1

:[946]
bf [948]

:[947]
pushi.e 75
pop.v.i local.xx

:[948]
pushi.e 7
conv.i.v
push.v 576.ystart
pushi.e 15
add.i.v
push.v 576.x
pushloc.v local.xx
add.v.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
b [950]

:[949]
pushi.e 70
pop.v.i global.typer
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v

:[950]
push.v self.ballooncon
pushi.e 2
cmp.i.v NEQ
bf [952]

:[951]
push.v self.ballooncon
pushi.e 5
cmp.i.v NEQ
b [953]

:[952]
push.e 0

:[953]
bf [955]

:[954]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm

:[955]
push.v self.endcon
pushi.e 3
cmp.i.v EQ
bf [957]

:[956]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [958]

:[957]
push.e 0

:[958]
bf [980]

:[959]
push.v self.ballooncon
pushi.e 1
cmp.i.v EQ
bf [966]

:[960]
push.v self.endtimer
push.e 1
add.i.v
pop.v.v self.endtimer
push.v self.endtimer
pushi.e 2
cmp.i.v EQ
bf [962]

:[961]
pushi.e 10
pop.v.i 576.shake2
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[962]
push.v self.endtimer
pushi.e 42
cmp.i.v EQ
bf [964]

:[963]
pushi.e 10
pop.v.i 576.shake2
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[964]
push.v self.endtimer
pushi.e 102
cmp.i.v EQ
bf [966]

:[965]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.endtimer

:[966]
push.v self.ballooncon
pushi.e 2
cmp.i.v EQ
bf [975]

:[967]
push.v self.endtimer
push.e 1
add.i.v
pop.v.v self.endtimer
push.v self.endtimer
pushi.e 1
cmp.i.v EQ
bf [969]

:[968]
push.v 576.y
pop.v.v 576.savey

:[969]
push.v self.endtimer
pushi.e 30
cmp.i.v LT
bf [971]

:[970]
push.v self.endtimer
pushi.e 30
conv.i.d
div.d.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
push.d 2.5
div.d.v
add.v.v
push.v 576.xstart
call.i lerp(argc=3)
pop.v.v 576.x
push.v self.endtimer
pushi.e 30
conv.i.d
div.d.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
push.d 3.5
div.d.v
add.v.v
push.v 576.savey
call.i lerp(argc=3)
pop.v.v 576.ystart

:[971]
push.v self.endtimer
pushi.e 60
cmp.i.v EQ
bf [973]

:[972]
push.v 576.image_xscale
pushi.e -1
mul.i.v
pop.v.v 576.image_xscale

:[973]
push.v self.endtimer
pushi.e 90
cmp.i.v EQ
bf [975]

:[974]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.endtimer

:[975]
push.v self.ballooncon
pushi.e 5
cmp.i.v EQ
bf [980]

:[976]
push.v self.endtimer
push.e 1
add.i.v
pop.v.v self.endtimer
push.v self.endtimer
pushi.e 1
cmp.i.v EQ
bf [978]

:[977]
pushi.e 240
pop.v.i 576.sprite_index
pushi.e 10
pop.v.i 576.shake2
push.v 576.image_xscale
pushi.e -1
mul.i.v
pop.v.v 576.image_xscale
push.v 576.x
pushi.e 50
sub.i.v
pop.v.v 576.x
pushi.e 61
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[978]
push.v self.endtimer
pushi.e 30
cmp.i.v EQ
bf [980]

:[979]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.endtimer

:[980]
push.v self.endcon
pushi.e 4
cmp.i.v EQ
bf [end]

:[981]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [983]

:[982]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [984]

:[983]
push.e 0

:[984]
bt [986]

:[985]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [987]

:[986]
push.e 1

:[987]
bf [end]

:[988]
push.v self.endtimer
push.e 1
add.i.v
pop.v.v self.endtimer
push.v self.endtimer
pushi.e 1
cmp.i.v EQ
bf [990]

:[989]
pushi.e 226
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.whiteall
pushi.e 999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i -99999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_alpha

:[990]
push.v self.endtimer
pushi.e 0
cmp.i.v GT
bf [992]

:[991]
push.v self.endtimer
pushi.e 16
cmp.i.v LT
b [993]

:[992]
push.e 0

:[993]
bf [995]

:[994]
push.v self.endtimer
pushi.e 15
conv.i.d
div.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
push.v self.whiteall
pushi.e -9
pop.v.v [stacktop]self.image_alpha

:[995]
push.v self.endtimer
pushi.e 25
cmp.i.v GT
bf [997]

:[996]
push.v self.endtimer
pushi.e 41
cmp.i.v LT
b [998]

:[997]
push.e 0

:[998]
bf [1000]

:[999]
push.v self.endtimer
pushi.e 25
sub.i.v
pushi.e 15
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i lerp(argc=3)
push.v self.whiteall
pushi.e -9
pop.v.v [stacktop]self.image_alpha

:[1000]
push.v self.endtimer
pushi.e 42
cmp.i.v GTE
bf [end]

:[1001]
pushi.e 0
pop.v.i global.fighting
pushi.e 357
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[end]