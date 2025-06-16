.localvar 2 arguments
.localvar 21555 lvsnd 9588
.localvar 21562 _tensionhealed 9595
.localvar 21563 _drivenoise 9596

:[0]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [13]

:[1]
push.v self.gigaqueencon
pushi.e 0
cmp.i.v NEQ
bf [3]

:[2]
exit.i

:[3]
pushi.e 777
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[4]
push.v 777.dead
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LT
b [7]

:[6]
push.e 0

:[7]
bt [10]

:[8]
pushi.e 805
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [10]

:[9]
pushi.e 824
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
exit.i

:[13]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [16]

:[14]
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[15]
push.v 574.intro
pushi.e 0
cmp.i.v GT
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
exit.i

:[19]
push.v self.victory
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.v self.victoried
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [61]

:[23]
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.faceaction
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.faceaction
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.faceaction
pushi.e 1
pop.v.i global.battleend
pushi.e -1
pop.v.i global.mnfight
pushi.e 7
pop.v.i global.myfight
push.v self.battlewriter
pushi.e -9
pushenv [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [24]
pushi.e 61
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]
pushi.e 62
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]
pushi.e 0
pop.v.i self.i

:[30]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [34]

:[31]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [33]

:[32]
push.i 231131
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.maxhp
pushi.e 8
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hp

:[33]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [30]

:[34]
push.l 32482473284732
pop.v.l self.lastbattlewriter
push.v self.skipvictory
pushi.e 0
cmp.i.v EQ
bf [56]

:[35]
push.i 231884
setowner.e
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.monstergold
pushglb.v global.tension
pushi.e 10
conv.i.d
div.d.v
call.i floor(argc=1)
pushglb.v global.chapter
mul.v.v
add.v.v
pop.i.v [array]self.monstergold
pushi.e -5
pushi.e 1
push.v [array]self.charweapon
pushi.e 8
cmp.i.v EQ
bf [37]

:[36]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.monstergold
pushi.e -5
pushi.e 3
push.v [array]self.monstergold
pushi.e 20
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.i.v [array]self.monstergold

:[37]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.monstergold
pushi.e 1
pushi.e 8
conv.i.v
call.i gml_Script_scr_armorcheck_equipped_party(argc=1)
push.d 0.05
mul.d.v
add.v.i
mul.v.v
pop.i.v [array]self.monstergold
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.monstergold
pushi.e 1
pushi.e 21
conv.i.v
call.i gml_Script_scr_armorcheck_equipped_party(argc=1)
push.d 0.3
mul.d.v
add.v.i
mul.v.v
pop.i.v [array]self.monstergold
pushi.e -5
pushi.e 3
push.v [array]self.monstergold
call.i floor(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.monstergold
pushi.e -5
pushi.e 37
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.monstergold

:[39]
push.v global.gold
pushi.e -5
pushi.e 3
push.v [array]self.monstergold
add.v.v
pop.v.v global.gold
push.v global.xp
pushi.e -5
pushi.e 3
push.v [array]self.monsterexp
add.v.v
pop.v.v global.xp
pushglb.v global.gold
pushi.e 0
cmp.i.v LT
bf [41]

:[40]
pushi.e 0
pop.v.i global.gold

:[41]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 231921
setowner.e
push.s "obj_battlecontroller_slash_Step_0_gml_42_0"@21547
conv.s.v
pushi.e -5
pushi.e 3
push.v [array]self.monstergold
call.i string(argc=1)
pushi.e -5
pushi.e 3
push.v [array]self.monsterexp
call.i string(argc=1)
push.s "* You won^1!&* Got ~1 EXP and ~2 D$./%"@21548
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushi.e -5
pushi.e 37
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
push.s "obj_battlecontroller_slash_Step_0_gml_43_0"@21549
conv.s.v
push.s "* You won the battle!/%"@21550
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[43]
pushi.e -5
pushi.e 63
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [47]

:[44]
push.s "obj_battlecontroller_slash_Step_0_gml_46_0"@21551
conv.s.v
pushi.e -5
pushi.e 3
push.v [array]self.monstergold
call.i string(argc=1)
push.s "* You won^1!&* Got ~1 D$^1.&* You became stronger./%"@21552
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [46]

:[45]
push.s "obj_battlecontroller_slash_Step_0_gml_69_0"@21553
conv.s.v
pushi.e -5
pushi.e 3
push.v [array]self.monstergold
call.i string(argc=1)
push.s "* You won^1!&* Got ~1 D$^1.&* Noelle became stronger./%"@21554
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[46]
pushi.e 2
conv.i.v
pushi.e 246
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
pop.v.v local.lvsnd
pushi.e 0
conv.i.v
push.d 0.7
conv.d.v
pushloc.v local.lvsnd
call.i gml_Script_snd_volume(argc=3)
popz.v
call.i gml_Script_scr_levelup(argc=0)
popz.v

:[47]
push.i 231251
setowner.e
pushi.e -5
pushi.e 0
push.v [array]self.battlemsg
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.battletyper
pop.v.v global.typer
call.i gml_Script_scr_battletext(argc=0)
pop.v.v self.lastbattlewriter
pushi.e -5
pushi.e 38
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [51]

:[48]
push.v self.lastbattlewriter
pushi.e -9
pushenv [50]

:[49]
call.i instance_destroy(argc=0)
popz.v

:[50]
popenv [49]

:[51]
pushi.e 0
pop.v.i self.i

:[52]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [56]

:[53]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [55]

:[54]
pushi.e 7
pop.v.i self.state
pushi.e 0
pop.v.i self.hurt
pushi.e 0
pop.v.i self.hurttimer

:[55]
popenv [54]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [52]

:[56]
pushi.e 1
pop.v.i self.victoried
pushi.e 0
pop.v.i self.victortimer
push.v self.skipvictory
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
pushi.e -20
pop.v.i self.victortimer

:[58]
pushi.e 381
pushenv [60]

:[59]
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
pushi.e -10
pop.v.i self.hspeed
push.d -0.4
pop.v.d self.friction

:[60]
popenv [59]

:[61]
push.v self.victoried
pushi.e 1
cmp.i.v EQ
bf [68]

:[62]
push.v self.victortimer
pushi.e 1
add.i.v
pop.v.v self.victortimer
push.v self.lastbattlewriter
call.i gml_Script_i_ex(argc=1)
pushi.e 0
cmp.b.v EQ
bf [64]

:[63]
push.v self.victortimer
pushi.e 10
cmp.i.v GTE
b [65]

:[64]
push.e 0

:[65]
bf [68]

:[66]
pushi.e 2
pop.v.i self.intro
push.v self.bp
pushi.e 0
cmp.i.v LTE
bf [68]

:[67]
call.i gml_Script_scr_endcombat(argc=0)
popz.v

:[68]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [604]

:[69]
pushglb.v global.bmenuno
pushi.e 0
cmp.i.v EQ
bf [141]

:[70]
push.v self.battlewriter
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bt [76]

:[71]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [74]

:[72]
push.v self.battlewriter
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [74]

:[73]
push.v self.gigaqueencon
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
b [77]

:[76]
push.e 1

:[77]
bf [79]

:[78]
push.i 231251
setowner.e
pushi.e -5
pushi.e 0
push.v [array]self.battlemsg
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.battletyper
pop.v.v global.typer
call.i gml_Script_scr_battletext(argc=0)
popz.v

:[79]
call.i gml_Script_left_p(argc=0)
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
push.v self.lbuffer
pushi.e 0
cmp.i.v LT
b [82]

:[81]
push.e 0

:[82]
bf [87]

:[83]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [85]

:[84]
push.i 231619
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 0
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
b [86]

:[85]
push.i 231619
setowner.e
pushi.e -5
pushi.e 0
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[86]
pushi.e 1
pop.v.i self.movenoise
pushi.e 1
pop.v.i self.rbuffer

:[87]
call.i gml_Script_right_p(argc=0)
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
push.v self.rbuffer
pushi.e 0
cmp.i.v LT
b [90]

:[89]
push.e 0

:[90]
bf [95]

:[91]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 4
cmp.i.v EQ
bf [93]

:[92]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
b [94]

:[93]
pushi.e -5
pushi.e 0
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
add.i.v
restorearef.e
dup.i 4 40
popaf.e

:[94]
pushi.e 1
pop.v.i self.movenoise
pushi.e 1
pop.v.i self.lbuffer

:[95]
call.i gml_Script_button1_p(argc=0)
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [98]

:[97]
push.e 0

:[98]
bf [128]

:[99]
pushi.e 1
pop.v.i self.onebuffer
pushi.e 1
pop.v.i self.selnoise
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [101]

:[100]
pushi.e 1
pop.v.i global.bmenuno

:[101]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [103]

:[102]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v NEQ
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
pushi.e 1
pop.v.i self.onebuffer
pushi.e 2
pop.v.i global.bmenuno
b [108]

:[106]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [108]

:[107]
pushi.e 1
pop.v.i self.onebuffer
pushi.e 11
pop.v.i global.bmenuno

:[108]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [110]

:[109]
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v NEQ
b [111]

:[110]
push.e 0

:[111]
bf [120]

:[112]
pushi.e 1
pop.v.i self.onebuffer
pushi.e 4
pop.v.i global.bmenuno
pushglb.v global.charturn
call.i gml_Script_scr_iteminfo_temp(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[113]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [120]

:[114]
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [116]

:[115]
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v GT
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[119]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [113]

:[120]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 3
cmp.i.v EQ
bf [122]

:[121]
pushi.e 1
pop.v.i self.onebuffer
pushi.e 12
pop.v.i global.bmenuno

:[122]
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 4
cmp.i.v EQ
bf [128]

:[123]
pushi.e 40
conv.i.v
call.i gml_Script_scr_tensionheal(argc=1)
popz.v
push.i 231659
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.faceaction
push.i 231563
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charaction
call.i gml_Script_scr_nexthero(argc=0)
popz.v
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [125]

:[124]
pushi.e 777
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [126]

:[125]
push.e 0

:[126]
bf [128]

:[127]
pushi.e 1
pop.v.i 777.defend
pushi.e 8
pop.v.i 777.specialcon

:[128]
call.i gml_Script_button2_p(argc=0)
pushi.e 1
cmp.i.v EQ
bf [131]

:[129]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [131]

:[130]
pushglb.v global.charturn
pushi.e 0
cmp.i.v GT
b [132]

:[131]
push.e 0

:[132]
bf [134]

:[133]
pushi.e 1
pop.v.i self.twobuffer
pushi.e 1
pop.v.i self.movenoise
call.i gml_Script_scr_prevhero(argc=0)
popz.v

:[134]
push.v self.battlewriter
pushi.e -9
pushenv [136]

:[135]
pushi.e 3
pop.v.i self.depth

:[136]
popenv [135]
pushi.e 60
pushenv [138]

:[137]
pushi.e 3
pop.v.i self.depth

:[138]
popenv [137]
pushi.e 62
pushenv [140]

:[139]
pushi.e 3
pop.v.i self.depth

:[140]
popenv [139]

:[141]
pushglb.v global.bmenuno
pushi.e 2
cmp.i.v EQ
bf [143]

:[142]
pushi.e -5
pushi.e 34
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [144]

:[143]
push.e 0

:[144]
bf [208]

:[145]
push.v self.battlewriter
pushi.e -9
pushenv [147]

:[146]
pushi.e 1
pop.v.i self.skipme

:[147]
popenv [146]
push.v self.battlewriter
pushi.e -9
pushenv [149]

:[148]
pushi.e 10
pop.v.i self.depth

:[149]
popenv [148]
pushi.e 60
pushenv [151]

:[150]
pushi.e 10
pop.v.i self.depth

:[151]
popenv [150]
pushi.e 62
pushenv [153]

:[152]
pushi.e 10
pop.v.i self.depth

:[153]
popenv [152]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pop.v.v self.thischar
call.i gml_Script_right_p(argc=0)
conv.v.b
bt [155]

:[154]
call.i gml_Script_left_p(argc=0)
conv.v.b
b [156]

:[155]
push.e 1

:[156]
bf [170]

:[157]
pushi.e 1
pop.v.i self.cango
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.spellcoord
push.v self.spellcoord
pushi.e 11
cmp.i.v LT
bf [165]

:[158]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spell
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
add.i.v
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [164]

:[159]
pushi.e 0
pop.v.i self.cango
push.v self.spellcoord
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [161]

:[160]
push.v self.spellcoord
pushi.e 0
cmp.i.v GT
b [162]

:[161]
push.e 0

:[162]
bf [164]

:[163]
push.i 231619
setowner.e
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[164]
b [166]

:[165]
push.i 231619
setowner.e
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e
pushi.e 0
pop.v.i self.cango

:[166]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [170]

:[167]
push.v self.spellcoord
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [169]

:[168]
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
add.i.v
restorearef.e
dup.i 4 40
popaf.e
b [170]

:[169]
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[170]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [186]

:[171]
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.spellcoord
pushi.e 1
pop.v.i self.cango
push.v self.spellcoord
pushi.e 10
cmp.i.v GTE
bf [173]

:[172]
pushi.e 0
pop.v.i self.cango
b [181]

:[173]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spell
push.v self.spellcoord
pushi.e 2
add.i.v
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [175]

:[174]
pushi.e 0
pop.v.i self.cango

:[175]
push.v self.spellcoord
pushi.e 5
cmp.i.v EQ
bf [178]

:[176]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spell
pushi.e 6
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [178]

:[177]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spell
pushi.e 7
pushaf.e
pushi.e 0
cmp.i.v EQ
b [179]

:[178]
push.e 0

:[179]
bf [181]

:[180]
pushi.e 2
pop.v.i self.cango

:[181]
push.v self.cango
pushi.e 0
cmp.i.v NEQ
bf [186]

:[182]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [184]

:[183]
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 2
add.i.v
restorearef.e
dup.i 4 40
popaf.e

:[184]
push.v self.cango
pushi.e 2
cmp.i.v EQ
bf [186]

:[185]
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[186]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [191]

:[187]
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.spellcoord
pushi.e 1
pop.v.i self.cango
push.v self.spellcoord
pushi.e 1
cmp.i.v LTE
bf [189]

:[188]
pushi.e 0
pop.v.i self.cango

:[189]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [191]

:[190]
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 2
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[191]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spellcost
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pop.v.v global.tensionselect
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [194]

:[192]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spell
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [194]

:[193]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [195]

:[194]
push.e 0

:[195]
bf [203]

:[196]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spellcost
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushglb.v global.tension
cmp.v.v LTE
bf [203]

:[197]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 0
pop.v.i global.bmenuno
pushi.e 1
pop.v.i self.selnoise
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spell
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
call.i gml_Script_scr_spellinfo(argc=1)
popz.v
push.v self.spelltarget
pushi.e 0
cmp.i.v EQ
bf [199]

:[198]
call.i gml_Script_scr_spellconsumeb(argc=0)
popz.v

:[199]
push.v self.spelltarget
pushi.e 1
cmp.i.v EQ
bf [201]

:[200]
pushi.e 8
pop.v.i global.bmenuno

:[201]
push.v self.spelltarget
pushi.e 2
cmp.i.v EQ
bf [203]

:[202]
pushi.e 3
pop.v.i global.bmenuno

:[203]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [205]

:[204]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [206]

:[205]
push.e 0

:[206]
bf [208]

:[207]
pushi.e 0
pop.v.i global.tensionselect
pushi.e 1
pop.v.i self.twobuffer
pushi.e 0
pop.v.i global.bmenuno
pushi.e 1
pop.v.i self.movenoise

:[208]
pushglb.v global.bmenuno
pushi.e 2
cmp.i.v EQ
bf [210]

:[209]
pushi.e -5
pushi.e 34
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [211]

:[210]
push.e 0

:[211]
bf [280]

:[212]
push.v self.battlewriter
pushi.e -9
pushenv [214]

:[213]
pushi.e 1
pop.v.i self.skipme

:[214]
popenv [213]
push.v self.battlewriter
pushi.e -9
pushenv [216]

:[215]
pushi.e 10
pop.v.i self.depth

:[216]
popenv [215]
pushi.e 60
pushenv [218]

:[217]
pushi.e 10
pop.v.i self.depth

:[218]
popenv [217]
pushi.e 62
pushenv [220]

:[219]
pushi.e 10
pop.v.i self.depth

:[220]
popenv [219]
pushglb.v global.charturn
pop.v.v self.thischar
call.i gml_Script_right_p(argc=0)
conv.v.b
bt [222]

:[221]
call.i gml_Script_left_p(argc=0)
conv.v.b
b [223]

:[222]
push.e 1

:[223]
bf [237]

:[224]
pushi.e 1
pop.v.i self.cango
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.spellcoord
push.v self.spellcoord
pushi.e 11
cmp.i.v LT
bf [232]

:[225]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespell
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
add.i.v
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [231]

:[226]
pushi.e 0
pop.v.i self.cango
push.v self.spellcoord
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [228]

:[227]
push.v self.spellcoord
pushi.e 0
cmp.i.v GT
b [229]

:[228]
push.e 0

:[229]
bf [231]

:[230]
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[231]
b [233]

:[232]
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e
pushi.e 0
pop.v.i self.cango

:[233]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [237]

:[234]
push.v self.spellcoord
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [236]

:[235]
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
add.i.v
restorearef.e
dup.i 4 40
popaf.e
b [237]

:[236]
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[237]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [253]

:[238]
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.spellcoord
pushi.e 1
pop.v.i self.cango
push.v self.spellcoord
pushi.e 10
cmp.i.v GTE
bf [240]

:[239]
pushi.e 0
pop.v.i self.cango
b [248]

:[240]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespell
push.v self.spellcoord
pushi.e 2
add.i.v
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [242]

:[241]
pushi.e 0
pop.v.i self.cango

:[242]
push.v self.spellcoord
pushi.e 5
cmp.i.v EQ
bf [245]

:[243]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespell
pushi.e 6
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [245]

:[244]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespell
pushi.e 7
pushaf.e
pushi.e 0
cmp.i.v EQ
b [246]

:[245]
push.e 0

:[246]
bf [248]

:[247]
pushi.e 2
pop.v.i self.cango

:[248]
push.v self.cango
pushi.e 0
cmp.i.v NEQ
bf [253]

:[249]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [251]

:[250]
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 2
add.i.v
restorearef.e
dup.i 4 40
popaf.e

:[251]
push.v self.cango
pushi.e 2
cmp.i.v EQ
bf [253]

:[252]
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[253]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [258]

:[254]
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.spellcoord
pushi.e 1
pop.v.i self.cango
push.v self.spellcoord
pushi.e 1
cmp.i.v LTE
bf [256]

:[255]
pushi.e 0
pop.v.i self.cango

:[256]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [258]

:[257]
pushi.e -5
pushi.e 2
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 2
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[258]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespellcost
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pop.v.v global.tensionselect
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [261]

:[259]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespell
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [261]

:[260]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [262]

:[261]
push.e 0

:[262]
bf [275]

:[263]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespellcost
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushglb.v global.tension
cmp.v.v LTE
bf [275]

:[264]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 0
pop.v.i global.bmenuno
pushi.e 1
pop.v.i self.selnoise
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespell
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e -1
cmp.i.v NEQ
bf [274]

:[265]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespell
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
call.i gml_Script_scr_spellinfo(argc=1)
popz.v
push.v self.spelltarget
pushi.e 0
cmp.i.v EQ
bf [267]

:[266]
call.i gml_Script_scr_spellconsumeb(argc=0)
popz.v

:[267]
push.v self.spelltarget
pushi.e 1
cmp.i.v EQ
bf [269]

:[268]
pushi.e 8
pop.v.i global.bmenuno

:[269]
push.v self.spelltarget
pushi.e 2
cmp.i.v EQ
bf [271]

:[270]
pushi.e 3
pop.v.i global.bmenuno

:[271]
push.v self.spelltarget
pushi.e 3
cmp.i.v EQ
bf [273]

:[272]
pushi.e 99
pop.v.i global.bmenuno

:[273]
b [275]

:[274]
pushi.e 13
pop.v.i global.bmenuno

:[275]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [277]

:[276]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [278]

:[277]
push.e 0

:[278]
bf [280]

:[279]
pushi.e 0
pop.v.i global.tensionselect
pushi.e 1
pop.v.i self.twobuffer
pushi.e 0
pop.v.i global.bmenuno
pushi.e 1
pop.v.i self.movenoise

:[280]
pushglb.v global.bmenuno
pushi.e 4
cmp.i.v EQ
bf [361]

:[281]
push.v self.battlewriter
pushi.e -9
pushenv [283]

:[282]
pushi.e 1
pop.v.i self.skipme

:[283]
popenv [282]
push.v self.battlewriter
pushi.e -9
pushenv [285]

:[284]
pushi.e 10
pop.v.i self.depth

:[285]
popenv [284]
pushi.e 60
pushenv [287]

:[286]
pushi.e 10
pop.v.i self.depth

:[287]
popenv [286]
pushi.e 62
pushenv [289]

:[288]
pushi.e 10
pop.v.i self.depth

:[289]
popenv [288]
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [291]

:[290]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[291]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [305]

:[292]
pushi.e 1
pop.v.i self.cango
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.itemcoord
push.v self.itemcoord
pushi.e 11
cmp.i.v LT
bf [300]

:[293]
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
add.i.v
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [299]

:[294]
pushi.e 0
pop.v.i self.cango
push.v self.itemcoord
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [296]

:[295]
push.v self.itemcoord
pushi.e 0
cmp.i.v GT
b [297]

:[296]
push.e 0

:[297]
bf [299]

:[298]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[299]
b [301]

:[300]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e
pushi.e 0
pop.v.i self.cango

:[301]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [305]

:[302]
push.v self.itemcoord
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [304]

:[303]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
add.i.v
restorearef.e
dup.i 4 40
popaf.e
b [305]

:[304]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[305]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [310]

:[306]
pushi.e 1
pop.v.i self.cango
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.itemcoord
pushi.e -1
pushi.e 1
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [310]

:[307]
push.v self.itemcoord
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [309]

:[308]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
add.i.v
restorearef.e
dup.i 4 40
popaf.e
b [310]

:[309]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[310]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [326]

:[311]
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.itemcoord
pushi.e 1
pop.v.i self.cango
push.v self.itemcoord
pushi.e 10
cmp.i.v GTE
bf [313]

:[312]
pushi.e 0
pop.v.i self.cango
b [321]

:[313]
pushi.e -1
push.v self.itemcoord
pushi.e 2
add.i.v
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [315]

:[314]
pushi.e 0
pop.v.i self.cango

:[315]
push.v self.itemcoord
pushi.e 5
cmp.i.v EQ
bf [318]

:[316]
pushi.e -1
pushi.e 6
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [318]

:[317]
pushi.e -1
pushi.e 7
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
b [319]

:[318]
push.e 0

:[319]
bf [321]

:[320]
pushi.e 2
pop.v.i self.cango

:[321]
push.v self.cango
pushi.e 0
cmp.i.v NEQ
bf [326]

:[322]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [324]

:[323]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 2
add.i.v
restorearef.e
dup.i 4 40
popaf.e

:[324]
push.v self.cango
pushi.e 2
cmp.i.v EQ
bf [326]

:[325]
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[326]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [331]

:[327]
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.itemcoord
pushi.e 1
pop.v.i self.cango
push.v self.itemcoord
pushi.e 1
cmp.i.v LTE
bf [329]

:[328]
pushi.e 0
pop.v.i self.cango

:[329]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [331]

:[330]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 2
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[331]
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [333]

:[332]
pushi.e -5
pushi.e 4
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[333]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [336]

:[334]
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [336]

:[335]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [337]

:[336]
push.e 0

:[337]
bf [356]

:[338]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 0
pop.v.i global.bmenuno
pushi.e 1
pop.v.i self.selnoise
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
call.i gml_Script_scr_iteminfo(argc=1)
popz.v
push.v self.itemtarget
pushi.e 0
cmp.i.v EQ
bt [340]

:[339]
push.v self.itemtarget
pushi.e 2
cmp.i.v EQ
b [341]

:[340]
push.e 1

:[341]
bf [354]

:[342]
pushi.e 0
pop.v.i local._tensionhealed
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 27
cmp.i.v EQ
bf [344]

:[343]
pushi.e 80
conv.i.v
call.i gml_Script_scr_tensionheal(argc=1)
popz.v
pushi.e 1
pop.v.i local._tensionhealed

:[344]
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 28
cmp.i.v EQ
bf [346]

:[345]
pushglb.v global.maxtension
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
call.i gml_Script_scr_tensionheal(argc=1)
popz.v
pushi.e 1
pop.v.i local._tensionhealed

:[346]
pushi.e -1
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.tempitem
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 29
cmp.i.v EQ
bf [348]

:[347]
pushglb.v global.maxtension
call.i ceil(argc=1)
call.i gml_Script_scr_tensionheal(argc=1)
popz.v
pushi.e 1
pop.v.i local._tensionhealed

:[348]
pushloc.v local._tensionhealed
conv.v.b
bf [352]

:[349]
pushi.e 154
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v local._drivenoise
push.d 1.4
conv.d.v
pushloc.v local._drivenoise
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
pushloc.v local._drivenoise
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [351]

:[350]
pushi.e 858
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ha
push.v self.id
push.v self.ha
pushi.e -9
pop.v.v [stacktop]self.target
push.i 4235519
push.v self.ha
pushi.e -9
pop.v.i [stacktop]self.particlecolor

:[351]
popenv [350]
pushglb.v global.charturn
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
call.i gml_Script_scr_itemshift_temp(argc=2)
popz.v
call.i gml_Script_scr_nexthero(argc=0)
popz.v

:[352]
pushloc.v local._tensionhealed
conv.v.b
not.b
bf [354]

:[353]
call.i gml_Script_scr_itemconsumeb(argc=0)
popz.v

:[354]
push.v self.itemtarget
pushi.e 1
cmp.i.v EQ
bf [356]

:[355]
pushi.e 7
pop.v.i global.bmenuno

:[356]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [358]

:[357]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [359]

:[358]
push.e 0

:[359]
bf [361]

:[360]
pushi.e 1
pop.v.i self.twobuffer
pushi.e 0
pop.v.i global.bmenuno
pushi.e 1
pop.v.i self.movenoise

:[361]
pushglb.v global.bmenuno
pushi.e 9
cmp.i.v EQ
bf [433]

:[362]
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.thisenemy
push.v self.thisenemy
call.i gml_Script_scr_actinfo_temp(argc=1)
popz.v
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [376]

:[363]
pushi.e 1
pop.v.i self.cango
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.actcoord
push.v self.actcoord
pushi.e 5
cmp.i.v LT
bf [371]

:[364]
pushi.e -1
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.canact
pushi.e 0
cmp.i.v EQ
bf [370]

:[365]
pushi.e 0
pop.v.i self.cango
push.v self.actcoord
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [367]

:[366]
push.v self.actcoord
pushi.e 0
cmp.i.v GT
b [368]

:[367]
push.e 0

:[368]
bf [370]

:[369]
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[370]
b [372]

:[371]
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e
pushi.e 0
pop.v.i self.cango

:[372]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [376]

:[373]
push.v self.actcoord
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [375]

:[374]
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
add.i.v
restorearef.e
dup.i 4 40
popaf.e
b [376]

:[375]
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[376]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [382]

:[377]
pushi.e 1
pop.v.i self.cango
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.actcoord
push.v self.actcoord
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [381]

:[378]
pushi.e -1
push.v self.actcoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.canact
pushi.e 0
cmp.i.v NEQ
bf [380]

:[379]
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
add.i.v
restorearef.e
dup.i 4 40
popaf.e

:[380]
b [382]

:[381]
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[382]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [390]

:[383]
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.actcoord
pushi.e 1
pop.v.i self.cango
push.v self.actcoord
pushi.e 4
cmp.i.v GTE
bf [385]

:[384]
pushi.e 0
pop.v.i self.cango
b [387]

:[385]
pushi.e -1
push.v self.actcoord
pushi.e 2
add.i.v
conv.v.i
push.v [array]self.canact
pushi.e 0
cmp.i.v EQ
bf [387]

:[386]
pushi.e 0
pop.v.i self.cango

:[387]
push.v self.cango
pushi.e 0
cmp.i.v NEQ
bf [390]

:[388]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [390]

:[389]
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 2
add.i.v
restorearef.e
dup.i 4 40
popaf.e

:[390]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [395]

:[391]
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.actcoord
pushi.e 1
pop.v.i self.cango
push.v self.actcoord
pushi.e 1
cmp.i.v LTE
bf [393]

:[392]
pushi.e 0
pop.v.i self.cango

:[393]
push.v self.cango
pushi.e 1
cmp.i.v EQ
bf [395]

:[394]
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 2
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[395]
pushi.e -1
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [array]self.acttpcost
pop.v.v global.tensionselect
pushi.e 1
pop.v.i self.canpress
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [420]

:[396]
pushi.e -5
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.actactor
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bt [398]

:[397]
pushi.e -5
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.actactor
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 4
cmp.i.v EQ
b [399]

:[398]
push.e 1

:[399]
bf [405]

:[400]
pushi.e -1
pushi.e 1
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
bt [402]

:[401]
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [403]

:[402]
push.e 1

:[403]
bf [405]

:[404]
pushi.e 0
pop.v.i self.canpress

:[405]
pushi.e -5
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.actactor
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 3
cmp.i.v EQ
bt [407]

:[406]
pushi.e -5
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.actactor
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 4
cmp.i.v EQ
b [408]

:[407]
push.e 1

:[408]
bf [414]

:[409]
pushi.e -1
pushi.e 2
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
bt [411]

:[410]
pushi.e -5
pushi.e 3
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [412]

:[411]
push.e 1

:[412]
bf [414]

:[413]
pushi.e 0
pop.v.i self.canpress

:[414]
pushi.e -5
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.actactor
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 5
cmp.i.v EQ
bf [420]

:[415]
pushi.e -1
pushi.e 3
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
bt [417]

:[416]
pushi.e -5
pushi.e 4
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [418]

:[417]
push.e 1

:[418]
bf [420]

:[419]
pushi.e 0
pop.v.i self.canpress

:[420]
push.v self.canpress
pushi.e 1
cmp.i.v EQ
bf [428]

:[421]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [425]

:[422]
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.canact
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [425]

:[423]
pushglb.v global.tension
pushglb.v global.tensionselect
cmp.v.v GTE
bf [425]

:[424]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [426]

:[425]
push.e 0

:[426]
bf [428]

:[427]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 0
pop.v.i global.bmenuno
pushi.e 1
pop.v.i self.selnoise
push.i 232316
setowner.e
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.actingchoice
push.v global.tension
pushi.e -1
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [array]self.acttpcost
sub.v.v
pop.v.v global.tension
pushi.e 0
pop.v.i global.tensionselect
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
push.v self.thisenemy
call.i gml_Script_scr_actselect(argc=2)
popz.v
push.i 231619
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
call.i gml_Script_scr_nexthero(argc=0)
popz.v

:[428]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [430]

:[429]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [431]

:[430]
push.e 0

:[431]
bf [433]

:[432]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
pushi.e 0
pop.v.i global.tensionselect
pushi.e 1
pop.v.i self.twobuffer
pushi.e 11
pop.v.i global.bmenuno
pushi.e 1
pop.v.i self.movenoise

:[433]
pushglb.v global.bmenuno
pushi.e 7
cmp.i.v EQ
bt [440]

:[434]
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [440]

:[435]
pushglb.v global.bmenuno
pushi.e 8
cmp.i.v EQ
bt [440]

:[436]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
bt [440]

:[437]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bt [440]

:[438]
pushglb.v global.bmenuno
pushi.e 12
cmp.i.v EQ
bt [440]

:[439]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
b [441]

:[440]
push.e 1

:[441]
bf [604]

:[442]
push.v self.battlewriter
pushi.e -9
pushenv [444]

:[443]
pushi.e 1
pop.v.i self.skipme

:[444]
popenv [443]
push.v self.battlewriter
pushi.e -9
pushenv [446]

:[445]
pushi.e 10
pop.v.i self.depth

:[446]
popenv [445]
pushi.e 60
pushenv [448]

:[447]
pushi.e 10
pop.v.i self.depth

:[448]
popenv [447]
pushi.e 62
pushenv [450]

:[449]
pushi.e 10
pop.v.i self.depth

:[450]
popenv [449]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [452]

:[451]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [453]

:[452]
push.e 0

:[453]
bf [469]

:[454]
pushi.e 1
pop.v.i self.twobuffer
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [457]

:[455]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bt [457]

:[456]
pushglb.v global.bmenuno
pushi.e 12
cmp.i.v EQ
b [458]

:[457]
push.e 1

:[458]
bf [460]

:[459]
pushi.e 0
pop.v.i global.bmenuno

:[460]
pushglb.v global.bmenuno
pushi.e 7
cmp.i.v EQ
bf [462]

:[461]
pushi.e 4
pop.v.i global.bmenuno

:[462]
pushglb.v global.bmenuno
pushi.e 8
cmp.i.v EQ
bt [465]

:[463]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
bt [465]

:[464]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
b [466]

:[465]
push.e 1

:[466]
bf [468]

:[467]
pushi.e 2
pop.v.i global.bmenuno

:[468]
pushi.e 1
pop.v.i self.movenoise

:[469]
pushglb.v global.bmenuno
pushi.e 7
cmp.i.v EQ
bt [476]

:[470]
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [476]

:[471]
pushglb.v global.bmenuno
pushi.e 8
cmp.i.v EQ
bt [476]

:[472]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
bt [476]

:[473]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bt [476]

:[474]
pushglb.v global.bmenuno
pushi.e 12
cmp.i.v EQ
bt [476]

:[475]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
b [477]

:[476]
push.e 1

:[477]
bf [604]

:[478]
pushglb.v global.bmenuno
pushi.e 7
cmp.i.v EQ
bt [480]

:[479]
pushglb.v global.bmenuno
pushi.e 8
cmp.i.v EQ
b [481]

:[480]
push.e 1

:[481]
bf [487]

:[482]
pushi.e 0
pop.v.i self.i

:[483]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [487]

:[484]
push.i 168136
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ht
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v GT
bf [486]

:[485]
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ht

:[486]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [483]

:[487]
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [492]

:[488]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
bt [492]

:[489]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bt [492]

:[490]
pushglb.v global.bmenuno
pushi.e 12
cmp.i.v EQ
bt [492]

:[491]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
b [493]

:[492]
push.e 1

:[493]
bf [497]

:[494]
pushi.e 0
pop.v.i self.i

:[495]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [497]

:[496]
push.i 168136
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monster
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ht
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [495]

:[497]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [499]

:[498]
pushi.e -1
pushi.e 2
push.v [array]self.ht
pushi.e 0
cmp.i.v EQ
b [500]

:[499]
push.e 0

:[500]
bf [502]

:[501]
push.i 231619
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[502]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [504]

:[503]
pushi.e -1
pushi.e 0
push.v [array]self.ht
pushi.e 0
cmp.i.v EQ
b [505]

:[504]
push.e 0

:[505]
bf [507]

:[506]
pushi.e 1
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[507]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [509]

:[508]
pushi.e -1
pushi.e 1
push.v [array]self.ht
pushi.e 0
cmp.i.v EQ
b [510]

:[509]
push.e 0

:[510]
bf [512]

:[511]
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[512]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [514]

:[513]
pushi.e -1
pushi.e 0
push.v [array]self.ht
pushi.e 0
cmp.i.v EQ
b [515]

:[514]
push.e 0

:[515]
bf [517]

:[516]
pushi.e 2
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[517]
call.i gml_Script_down_p(argc=0)
pushi.e 1
cmp.i.v EQ
bf [535]

:[518]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [524]

:[519]
pushi.e -1
pushi.e 1
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [521]

:[520]
pushi.e 1
pop.v.i self.movenoise
pushi.e 1
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
b [523]

:[521]
pushi.e -1
pushi.e 2
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [523]

:[522]
pushi.e 1
pop.v.i self.movenoise
pushi.e 2
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[523]
b [535]

:[524]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [530]

:[525]
pushi.e -1
pushi.e 2
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [527]

:[526]
pushi.e 1
pop.v.i self.movenoise
pushi.e 2
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
b [529]

:[527]
pushi.e -1
pushi.e 0
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [529]

:[528]
pushi.e 1
pop.v.i self.movenoise
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[529]
b [535]

:[530]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [535]

:[531]
pushi.e -1
pushi.e 0
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [533]

:[532]
pushi.e 1
pop.v.i self.movenoise
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
b [535]

:[533]
pushi.e -1
pushi.e 1
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [535]

:[534]
pushi.e 1
pop.v.i self.movenoise
pushi.e 1
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[535]
call.i gml_Script_up_p(argc=0)
pushi.e 1
cmp.i.v EQ
bf [553]

:[536]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [542]

:[537]
pushi.e -1
pushi.e 2
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [539]

:[538]
pushi.e 1
pop.v.i self.movenoise
pushi.e 2
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
b [541]

:[539]
pushi.e -1
pushi.e 1
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [541]

:[540]
pushi.e 1
pop.v.i self.movenoise
pushi.e 1
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[541]
b [553]

:[542]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [548]

:[543]
pushi.e -1
pushi.e 0
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [545]

:[544]
pushi.e 1
pop.v.i self.movenoise
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
b [547]

:[545]
pushi.e -1
pushi.e 2
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [547]

:[546]
pushi.e 1
pop.v.i self.movenoise
pushi.e 2
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[547]
b [553]

:[548]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [553]

:[549]
pushi.e -1
pushi.e 1
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [551]

:[550]
pushi.e 1
pop.v.i self.movenoise
pushi.e 1
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e
b [553]

:[551]
pushi.e -1
pushi.e 0
push.v [array]self.ht
pushi.e 1
cmp.i.v EQ
bf [553]

:[552]
pushi.e 1
pop.v.i self.movenoise
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
popaf.e

:[553]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [555]

:[554]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [556]

:[555]
push.e 0

:[556]
bf [604]

:[557]
pushi.e 1
pop.v.i self.onebuffer
pushi.e 1
pop.v.i self.selnoise
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bf [559]

:[558]
push.i 231559
setowner.e
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.chartarget
push.i 231659
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.faceaction
push.i 231563
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charaction
call.i gml_Script_scr_nexthero(argc=0)
popz.v

:[559]
pushglb.v global.bmenuno
pushi.e 7
cmp.i.v EQ
bf [565]

:[560]
push.i 231559
setowner.e
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.chartarget
call.i gml_Script_scr_itemconsumeb(argc=0)
popz.v
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [562]

:[561]
pushi.e 777
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [563]

:[562]
push.e 0

:[563]
bf [565]

:[564]
pushi.e 7
pop.v.i 777.specialcon

:[565]
pushglb.v global.bmenuno
pushi.e 8
cmp.i.v EQ
bt [567]

:[566]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
b [568]

:[567]
push.e 1

:[568]
bf [570]

:[569]
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.chartarget
call.i gml_Script_scr_spellconsumeb(argc=0)
popz.v

:[570]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bf [600]

:[571]
pushi.e 9
pop.v.i global.bmenuno
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.actcoord
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.thisenemy
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [578]

:[572]
pushi.e 0
pop.v.i self.i

:[573]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [578]

:[574]
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.canact
push.v self.actcoord
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [577]

:[575]
push.v self.actcoord
pushi.e 0
cmp.i.v GT
bf [577]

:[576]
push.i 231619
setowner.e
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[577]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [573]

:[578]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [585]

:[579]
pushi.e 0
pop.v.i self.i

:[580]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [585]

:[581]
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.canactsus
push.v self.actcoord
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [584]

:[582]
push.v self.actcoord
pushi.e 0
cmp.i.v GT
bf [584]

:[583]
push.i 231619
setowner.e
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[584]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [580]

:[585]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [592]

:[586]
pushi.e 0
pop.v.i self.i

:[587]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [592]

:[588]
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.canactral
push.v self.actcoord
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [591]

:[589]
push.v self.actcoord
pushi.e 0
cmp.i.v GT
bf [591]

:[590]
push.i 231619
setowner.e
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[591]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [587]

:[592]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [599]

:[593]
pushi.e 0
pop.v.i self.i

:[594]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [599]

:[595]
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.canactnoe
push.v self.actcoord
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [598]

:[596]
push.v self.actcoord
pushi.e 0
cmp.i.v GT
bf [598]

:[597]
push.i 231619
setowner.e
pushi.e -5
pushi.e 9
push.v [arraypopaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 1
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[598]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [594]

:[599]
pushi.e 1
pop.v.i self.onebuffer

:[600]
pushglb.v global.bmenuno
pushi.e 12
cmp.i.v EQ
bf [602]

:[601]
push.i 231659
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.faceaction
push.i 231559
setowner.e
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.chartarget
push.i 231563
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charaction
push.i 231580
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charspecial
call.i gml_Script_scr_nexthero(argc=0)
popz.v

:[602]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
bf [604]

:[603]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 0
pop.v.i global.bmenuno
pushi.e 1
pop.v.i self.selnoise
push.i 232316
setowner.e
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.actingchoice
push.v global.tension
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespellcost
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
sub.v.v
pop.v.v global.tension
pushi.e 0
pop.v.i global.tensionselect
pushi.e -5
pushi.e 13
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
call.i gml_Script_scr_actinfo_temp(argc=1)
popz.v
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e -5
pushi.e 13
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
call.i gml_Script_scr_actselect(argc=2)
popz.v
call.i gml_Script_scr_nexthero(argc=0)
popz.v

:[604]
push.v self.movenoise
pushi.e 1
cmp.i.v EQ
bf [606]

:[605]
pushi.e 260
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.movenoise

:[606]
push.v self.grazenoise
pushi.e 1
cmp.i.v EQ
bf [608]

:[607]
pushi.e 169
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.grazenoise

:[608]
push.v self.selnoise
pushi.e 1
cmp.i.v EQ
bf [610]

:[609]
pushi.e 261
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.selnoise

:[610]
push.v self.damagenoise
pushi.e 1
cmp.i.v EQ
bf [612]

:[611]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.damagenoise

:[612]
push.v self.laznoise
pushi.e 1
cmp.i.v EQ
bf [614]

:[613]
pushi.e 175
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.laznoise

:[614]
push.v self.onebuffer
pushi.e 1
sub.i.v
pop.v.v self.onebuffer
push.v self.twobuffer
pushi.e 1
sub.i.v
pop.v.v self.twobuffer
push.v self.lbuffer
pushi.e 1
sub.i.v
pop.v.v self.lbuffer
push.v self.rbuffer
pushi.e 1
sub.i.v
pop.v.v self.rbuffer
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [616]

:[615]
push.v self.timeron
pushi.e 1
cmp.i.v EQ
b [617]

:[616]
push.e 0

:[617]
bf [632]

:[618]
push.v global.turntimer
pushi.e 1
sub.i.v
pop.v.v global.turntimer
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LTE
bf [620]

:[619]
push.v self.reset
pushi.e 0
cmp.i.v EQ
b [621]

:[620]
push.e 0

:[621]
bf [632]

:[622]
pushi.e 360
pushenv [624]

:[623]
call.i instance_destroy(argc=0)
popz.v

:[624]
popenv [623]
pushi.e 389
pushenv [626]

:[625]
call.i instance_destroy(argc=0)
popz.v

:[626]
popenv [625]
pushi.e 363
pushenv [628]

:[627]
pushi.e 0
pop.v.i self.darken

:[628]
popenv [627]
pushi.e 631
pushenv [630]

:[629]
pushi.e 380
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[630]
popenv [629]
pushi.e 1
pop.v.i self.reset
push.v self.noreturn
pushi.e 0
cmp.i.v EQ
bf [632]

:[631]
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[632]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [639]

:[633]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bf [635]

:[634]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [636]

:[635]
push.e 0

:[636]
bf [639]

:[637]
call.i gml_Script_scr_wincombat(argc=0)
popz.v
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [639]

:[638]
call.i gml_Script_scr_endturn(argc=0)
popz.v

:[639]
pushglb.v global.myfight
pushi.e 5
cmp.i.v EQ
bf [648]

:[640]
push.v self.myfightreturntimer
push.e 1
sub.i.v
pop.v.v self.myfightreturntimer
push.v self.myfightreturntimer
pushi.e 0
cmp.i.v LTE
bf [648]

:[641]
call.i gml_Script_scr_mnendturn(argc=0)
popz.v
pushi.e 10
pop.v.i global.spelldelay
pushi.e 371
pushenv [643]

:[642]
pushi.e 0
pop.v.i self.attacktimer
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.index
pushi.e 0
pop.v.i self.itemed
pushi.e 0
pop.v.i self.acttimer
pushi.e 0
pop.v.i self.defendtimer
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.flash
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.fsiner
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[643]
popenv [642]
pushi.e 869
pushenv [647]

:[644]
push.v self.spellwriter
pushi.e -9
pushenv [646]

:[645]
call.i instance_destroy(argc=0)
popz.v

:[646]
popenv [645]
call.i instance_destroy(argc=0)
popz.v

:[647]
popenv [644]

:[648]
pushi.e -5
pushi.e 4
push.v [array]self.charweapon
pushi.e 13
cmp.i.v EQ
bf [652]

:[649]
push.v self.t_siner
pushi.e 6
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [652]

:[650]
pushi.e -5
pushi.e 4
push.v [array]self.hp
pushi.e -5
pushi.e 4
push.v [array]self.maxhp
pushi.e 3
conv.i.d
div.d.v
call.i round(argc=1)
cmp.v.v GT
bf [652]

:[651]
push.i 231131
setowner.e
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.hp
dup.v 0
dup.i 4 48
push.e 1
sub.i.v
pop.i.v [array]global.hp
popz.v

:[652]
push.v self.t_siner
push.e 1
add.i.v
pop.v.v self.t_siner
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[653]
call.i gml_Script_scr_turn_skip(argc=0)
popz.v
pushi.e 113
conv.i.v
call.i gml_Script_scr_debug_keycheck(argc=1)
conv.v.b
bf [655]

:[654]
call.i gml_Script_scr_debug_fullheal(argc=0)
popz.v

:[655]
pushi.e 114
conv.i.v
call.i gml_Script_scr_debug_keycheck(argc=1)
conv.v.b
bf [657]

:[656]
call.i gml_Script_scr_raise_party(argc=0)
popz.v

:[657]
pushi.e 116
conv.i.v
call.i gml_Script_scr_debug_keycheck(argc=1)
conv.v.b
bf [668]

:[658]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [660]

:[659]
pushi.e 789
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [661]

:[660]
push.e 0

:[661]
bf [667]

:[662]
pushi.e 789
pushenv [664]

:[663]
pushi.e 10
pop.v.i self.health_count

:[664]
popenv [663]
pushi.e 842
pushenv [666]

:[665]
pushi.e 0
pop.v.i self.sub_healthbar_count

:[666]
popenv [665]
b [668]

:[667]
call.i gml_Script_scr_wincombat(argc=0)
popz.v

:[668]
pushi.e 117
conv.i.v
call.i gml_Script_scr_debug_keycheck(argc=1)
conv.v.b
bf [670]

:[669]
call.i gml_Script_scr_weaken_enemies(argc=0)
popz.v

:[670]
pushi.e 119
conv.i.v
call.i gml_Script_scr_debug_keycheck(argc=1)
conv.v.b
bf [672]

:[671]
pushi.e 1
conv.b.v
call.i gml_Script_scr_weaken_party(argc=1)
popz.v

:[672]
pushi.e 120
conv.i.v
call.i gml_Script_scr_debug_keycheck(argc=1)
conv.v.b
bf [674]

:[673]
pushi.e 0
pop.v.i global.tension

:[674]
pushi.e 121
conv.i.v
call.i gml_Script_scr_debug_keycheck(argc=1)
conv.v.b
bf [676]

:[675]
pushi.e 250
pop.v.i global.tension

:[676]
pushi.e 77
conv.i.v
call.i gml_Script_scr_debug_keycheck(argc=1)
conv.v.b
bf [679]

:[677]
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [679]

:[678]
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [680]

:[679]
push.e 0

:[680]
bf [end]

:[681]
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_is_playing(argc=1)
conv.v.b
bf [end]

:[682]
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_is_paused(argc=1)
conv.v.b
not.b
bf [684]

:[683]
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_pause_sound(argc=1)
popz.v
b [end]

:[684]
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_resume_sound(argc=1)
popz.v

:[end]