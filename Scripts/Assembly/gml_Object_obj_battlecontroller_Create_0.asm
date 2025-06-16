.localvar 2 arguments
.localvar 21524 battlemusicvolume 9563

:[0]
pushi.e -5
pushi.e 9
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[1]
push.d 0.7
pop.v.d local.battlemusicvolume
pushi.e 183
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [6]

:[2]
push.v 183.mystream
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
cmp.v.v EQ
bf [5]

:[3]
push.v 183.songname
push.s "mus/battle.ogg"@21525
cmp.s.v NEQ
bf [5]

:[4]
pushi.e 1
pop.v.i local.battlemusicvolume

:[5]
push.v 183.songname
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[6]
pushloc.v local.battlemusicvolume
call.i string(argc=1)
call.i gml_Script_scr_debug_print(argc=1)
popz.v
push.i 232336
setowner.e
pushi.e 1
conv.i.v
pushloc.v local.battlemusicvolume
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.batmusic

:[7]
pushi.e 0
pop.v.i self.victory
pushi.e 0
pop.v.i self.victoried
pushi.e 0
pop.v.i self.skipvictory
pushi.e 0
pop.v.i global.battleend
push.i 19212912
pop.v.i self.battlewriter
push.i 1913918291
pop.v.i self.myface
pushi.e 0
pop.v.i self.lbuffer
pushi.e 0
pop.v.i self.rbuffer
pushi.e 0
pop.v.i self.onebuffer
pushi.e 0
pop.v.i self.twobuffer
pushi.e 1
pop.v.i self.myfightreturntimer
pushi.e -1
pop.v.i self.messagepriority
pushi.e -1
pop.v.i self.attackpriority
pushi.e 0
pop.v.i self.hidemercy
push.i 169690
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.cantspare
pushi.e 1
pop.v.i global.darkzone
pushi.e 1
pop.v.i global.fighting
pushglb.v global.encounterno
pushi.e 50
cmp.i.v EQ
bf [11]

:[8]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [11]

:[9]
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 62
pop.v.v [array]self.flag

:[11]
pushglb.v global.encounterno
pushi.e 73
cmp.i.v EQ
bf [13]

:[12]
pushi.e 3
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 62
pop.v.v [array]self.flag

:[13]
pushi.e -5
pushi.e 62
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i global.fe
pushi.e 0
pop.v.i global.fc
pushi.e 4
pop.v.i global.typer
pushi.e 4
pop.v.i global.battletyper

:[15]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 62
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.bmenuno
pushi.e 0
pop.v.i global.attacking
pushi.e 0
pop.v.i global.acting
pushi.e 0
pop.v.i global.tension
pushi.e 10
pop.v.i global.spelldelay
pushi.e 120
pop.v.i global.turntimer
call.i gml_Script_scr_spellinfo_all(argc=0)
popz.v
pushi.e 0
pop.v.i global.tensionselect
pushi.e 0
pop.v.i self.j

:[16]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [21]

:[17]
push.i 231883
setowner.e
pushglb.v global.tension
pushi.e -5
push.v self.j
conv.v.i
pop.v.v [array]self.temptension
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
pushi.e 13
cmp.i.v LT
bf [20]

:[19]
push.i 166078
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.item
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.tempitem
push.v self.j
conv.v.i
popaf.e
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [18]

:[20]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [16]

:[21]
pushi.e 0
pop.v.i self.i

:[22]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [27]

:[23]
push.i 232541
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charcond
push.i 231956
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.automiss
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [25]

:[24]
push.i 231578
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charmove
push.i 231543
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charcantarget
push.i 231579
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chardead
b [26]

:[25]
push.i 231578
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charmove
push.i 231543
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charcantarget

:[26]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [22]

:[27]
pushi.e 0
pop.v.i self.itempage
pushi.e 0
pop.v.i self.spellpage
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 50
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 51
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 52
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 53
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 63
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.i

:[28]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [30]

:[29]
push.v self.i
call.i gml_Script_scr_monster_statreset(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [28]

:[30]
pushi.e 0
pop.v.i self.i

:[31]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [35]

:[32]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstertype
pushi.e 0
cmp.i.v GT
bf [34]

:[33]
push.v self.i
call.i gml_Script_scr_monster_makeinstance(argc=1)
popz.v

:[34]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [31]

:[35]
push.i 231884
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.monstergold
push.i 231885
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.monsterexp
pushi.e 0
pop.v.i global.charturn
pushi.e 0
pop.v.i global.currentactingchar
pushi.e 0
pop.v.i self.i

:[36]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [41]

:[37]
push.i 231499
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.acting
push.i 231872
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.actingsingle
push.i 231875
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.actingsimul
push.i 231882
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.actingtarget
push.i 232316
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.actingchoice
push.i 231563
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charaction
push.i 231580
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charspecial
push.i 231559
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chartarget
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.faceaction
push.i 235229
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.rembmenuno
push.i 231544
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.targeted
push.i 231955
setowner.e
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.at
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemat
pushi.e 0
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemat
pushi.e 1
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemat
pushi.e 2
pushaf.e
add.v.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.battleat
push.i 231562
setowner.e
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.df
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemdf
pushi.e 0
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemdf
pushi.e 1
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemdf
pushi.e 2
pushaf.e
add.v.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.battledf
push.i 231959
setowner.e
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.mag
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemmag
pushi.e 0
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemmag
pushi.e 1
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemmag
pushi.e 2
pushaf.e
add.v.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.battlemag
push.i 232327
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.battleactcount
push.i 231869
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 0
pop.v.i self.j

:[38]
push.v self.j
pushi.e 18
cmp.i.v LT
bf [40]

:[39]
push.i 231898
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.battlespell
push.v self.j
conv.v.i
popaf.e
push.i 232329
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.battlespellname
push.v self.j
conv.v.i
popaf.e
push.i 232330
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.battlespelldesc
push.v self.j
conv.v.i
popaf.e
push.i 232328
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.battlespellcost
push.v self.j
conv.v.i
popaf.e
push.i 232331
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.battlespelltarget
push.v self.j
conv.v.i
popaf.e
push.i 232332
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.battlespellspecial
push.v self.j
conv.v.i
popaf.e
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [38]

:[40]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [36]

:[41]
call.i gml_Script_scr_spellmenu_setup(argc=0)
popz.v
pushi.e 0
pop.v.i self.i

:[42]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [47]

:[43]
pushi.e 0
pop.v.i self.j

:[44]
push.v self.j
pushi.e 20
cmp.i.v LT
bf [46]

:[45]
push.i 231619
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.bmenucoord
push.v self.j
conv.v.i
popaf.e
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [44]

:[46]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [42]

:[47]
pushi.e 0
pop.v.i self.movenoise
pushi.e 0
pop.v.i self.selnoise
pushi.e 0
pop.v.i self.laznoise
pushi.e 0
pop.v.i self.damagenoise
pushi.e 0
pop.v.i self.grazenoise
push.d 0.7
conv.d.v
pushi.e 0
conv.i.v
push.i 8388736
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.bcolor
push.d 0.5
conv.d.v
push.i 4210752
conv.i.v
push.v self.bcolor
call.i merge_color(argc=3)
pop.v.v self.bcolor
pushi.e 0
pop.v.i self.tp
pushi.e 50
pop.v.i self.tpy
pushi.e 0
pop.v.i self.bp
pushi.e 152
pop.v.i self.bpy
pushi.e 1
pop.v.i self.intro
pushi.e 0
pop.v.i self.chartotal
push.i 166124
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.charpos
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.charpos
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.charpos
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.charpos
push.i 166122
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.havechar
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.havechar
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.havechar
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.havechar
push.i 231462
setowner.e
push.i 12129292
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charinstance
push.i 12129292
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charinstance
push.i 12129292
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.charinstance
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
pushenv [49]

:[48]
pushi.e 0
pop.v.i self.myself

:[49]
popenv [48]
pushi.e -5
pushi.e 1
push.v [array]self.charinstance
pushi.e -9
pushenv [51]

:[50]
pushi.e 1
pop.v.i self.myself

:[51]
popenv [50]
pushi.e -5
pushi.e 2
push.v [array]self.charinstance
pushi.e -9
pushenv [53]

:[52]
pushi.e 2
pop.v.i self.myself

:[53]
popenv [52]
push.i 166204
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.mmy
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.mmy
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.mmy
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.mmy
pushi.e 0
pop.v.i self.i

:[54]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [66]

:[55]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [57]

:[56]
push.v self.chartotal
pushi.e 1
add.i.v
pop.v.v self.chartotal

:[57]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
push.i 166122
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.havechar
push.i 166124
setowner.e
push.v self.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.charpos
push.i 231462
setowner.e
pushi.e 372
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakex
call.i gml_Script_instance_create(argc=3)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charinstance
push.i 231468
setowner.e
push.v self.i
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.v [stacktop]self.myself
push.i 231118
setowner.e
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.i [stacktop]self.char
push.i 133637
setowner.e
pushi.e 200
push.v self.i
pushi.e 20
mul.i.v
sub.v.i
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.v [stacktop]self.depth

:[59]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [61]

:[60]
push.i 166122
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.havechar
push.i 166124
setowner.e
push.v self.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.charpos
push.i 231462
setowner.e
pushi.e 373
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakex
call.i gml_Script_instance_create(argc=3)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charinstance
push.i 231468
setowner.e
push.v self.i
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.v [stacktop]self.myself
push.i 231118
setowner.e
pushi.e 2
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.i [stacktop]self.char
push.i 133637
setowner.e
pushi.e 200
push.v self.i
pushi.e 20
mul.i.v
sub.v.i
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.v [stacktop]self.depth

:[61]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [63]

:[62]
push.i 166122
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.havechar
push.i 166124
setowner.e
push.v self.i
pushi.e -1
pushi.e 2
pop.v.v [array]self.charpos
push.i 231462
setowner.e
pushi.e 374
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakex
call.i gml_Script_instance_create(argc=3)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charinstance
push.i 231468
setowner.e
push.v self.i
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.v [stacktop]self.myself
push.i 231118
setowner.e
pushi.e 3
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.i [stacktop]self.char
push.i 133637
setowner.e
pushi.e 200
push.v self.i
pushi.e 20
mul.i.v
sub.v.i
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.v [stacktop]self.depth

:[63]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [65]

:[64]
push.i 166122
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.havechar
push.i 166124
setowner.e
push.v self.i
pushi.e -1
pushi.e 3
pop.v.v [array]self.charpos
push.i 231462
setowner.e
pushi.e 375
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakex
call.i gml_Script_instance_create(argc=3)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charinstance
push.i 231468
setowner.e
push.v self.i
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.v [stacktop]self.myself
push.i 231118
setowner.e
pushi.e 4
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.i [stacktop]self.char
push.i 133637
setowner.e
pushi.e 200
push.v self.i
pushi.e 20
mul.i.v
sub.v.i
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.v [stacktop]self.depth

:[65]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [54]

:[66]
pushi.e 0
pop.v.i self.slmxx
pushi.e 0
pop.v.i self.slmyy
pushi.e 0
pop.v.i self.s_siner
pushi.e 0
pop.v.i self.t_siner
pushi.e 381
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.reset
pushi.e 1
pop.v.i self.timeron
pushi.e 0
pop.v.i self.noreturn
push.i 166200
setowner.e
push.i 16776960
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.hpcolor
push.i 16711935
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.hpcolor
push.i 65280
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.hpcolor
push.i 65535
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.hpcolor
pushi.e 0
pop.v.i self.i

:[67]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [69]

:[68]
push.i 169702
setowner.e
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hpcolor
call.i merge_color(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.hpcolorsoft
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [67]

:[69]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 36
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 39
pop.v.v [array]self.flag
pushglb.v global.ambush
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
call.i gml_Script_scr_ambush(argc=0)
popz.v
pushi.e 0
pop.v.i global.ambush

:[71]
pushglb.v global.ambush
pushi.e 2
cmp.i.v EQ
bf [75]

:[72]
pushi.e 392
pushenv [74]

:[73]
pushi.e 1
pop.v.i self.firststrike

:[74]
popenv [73]
pushglb.v global.maxtension
pushi.e 4
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v global.tension
pushi.e 0
pop.v.i global.ambush

:[75]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[76]
pushi.e 0
pop.v.i self.gigaqueeny
pushi.e 0
pop.v.i self.gigaqueentimer
pushi.e 0
pop.v.i self.gigaqueencon
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[77]
pushi.e 3
pop.v.i self.gigaqueencon

:[end]