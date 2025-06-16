.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 9
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.i 232336
setowner.e
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.batmusic

:[2]
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
pop.v.i global.darkzone
pushi.e 1
pop.v.i global.fighting
pushi.e 0
pop.v.i global.fe
pushi.e 0
pop.v.i global.fc
pushi.e 4
pop.v.i global.typer
pushi.e 4
pop.v.i global.battletyper
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
call.i gml_Script_scr_spellinfo_all_ch1(argc=0)
popz.v
pushi.e 0
pop.v.i global.tensionselect
pushi.e 0
pop.v.i self.j

:[3]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [8]

:[4]
push.i 231883
setowner.e
pushglb.v global.tension
pushi.e -5
push.v self.j
conv.v.i
pop.v.v [array]self.temptension
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 13
cmp.i.v LT
bf [7]

:[6]
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
b [5]

:[7]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [3]

:[8]
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [14]

:[10]
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
bf [12]

:[11]
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
b [13]

:[12]
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

:[13]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [9]

:[14]
pushi.e 0
pop.v.i self.itempage
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
pop.v.i self.i

:[15]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [20]

:[16]
push.i 231474
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monster
push.i 231591
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterx
push.i 231592
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstery
push.i 231907
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstername
push.i 231909
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterat
push.i 231910
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterdf
push.i 231862
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterhp
push.i 231908
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 231475
setowner.e
push.l 12913921839
conv.l.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterinstance
push.i 231884
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstergold
push.i 231885
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterexp
push.i 231911
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.sparepoint
push.i 231593
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hittarget
push.i 231526
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.mercymod
push.i 231912
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.mercymax
push.i 231984
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstercomment
push.i 231746
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterstatus
pushi.e 0
pop.v.i self.j

:[17]
push.v self.j
pushi.e 6
cmp.i.v LT
bf [19]

:[18]
push.i 240991
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.act
push.v self.j
conv.v.i
popaf.e
push.i 231913
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.canact
push.v self.j
conv.v.i
popaf.e
push.i 231837
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.actname
push.v self.j
conv.v.i
popaf.e
push.i 231834
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.acttype
push.v self.j
conv.v.i
popaf.e
push.i 231835
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.actspell
push.v self.j
conv.v.i
popaf.e
push.i 231922
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.actactor
push.v self.j
conv.v.i
popaf.e
push.i 231925
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.actdesc
push.v self.j
conv.v.i
popaf.e
push.i 231833
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.actcost
push.v self.j
conv.v.i
popaf.e
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [17]

:[19]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [15]

:[20]
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
pop.v.i self.i

:[21]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [27]

:[22]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstertype
pushi.e 0
cmp.i.v GT
bf [26]

:[23]
push.i 231474
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monster
push.i 231475
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstancetype
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstermakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstermakex
call.i gml_Script_instance_create_ch1(argc=3)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterinstance
push.i 231468
setowner.e
push.v self.i
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.myself
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [25]

:[24]
pushi.e 12
conv.i.v
call.i event_user(argc=1)
popz.v

:[25]
popenv [24]

:[26]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [21]

:[27]
pushi.e 0
pop.v.i global.charturn
pushi.e 0
pop.v.i self.i

:[28]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [30]

:[29]
push.i 231499
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.acting
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
pushi.e 20
cmp.i.v LT
bf [36]

:[32]
pushi.e 0
pop.v.i self.j

:[33]
push.v self.j
pushi.e 20
cmp.i.v LT
bf [35]

:[34]
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
b [33]

:[35]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [31]

:[36]
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
pushenv [38]

:[37]
pushi.e 0
pop.v.i self.myself

:[38]
popenv [37]
pushi.e -5
pushi.e 1
push.v [array]self.charinstance
pushi.e -9
pushenv [40]

:[39]
pushi.e 1
pop.v.i self.myself

:[40]
popenv [39]
pushi.e -5
pushi.e 2
push.v [array]self.charinstance
pushi.e -9
pushenv [42]

:[41]
pushi.e 2
pop.v.i self.myself

:[42]
popenv [41]
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
pop.v.i self.i

:[43]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [53]

:[44]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [46]

:[45]
push.v self.chartotal
pushi.e 1
add.i.v
pop.v.v self.chartotal

:[46]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
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
pushi.e 1534
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakex
call.i gml_Script_instance_create_ch1(argc=3)
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

:[48]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [50]

:[49]
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
pushi.e 1535
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakex
call.i gml_Script_instance_create_ch1(argc=3)
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

:[50]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [52]

:[51]
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
pushi.e 1536
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakex
call.i gml_Script_instance_create_ch1(argc=3)
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

:[52]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [43]

:[53]
pushi.e 0
pop.v.i self.slmxx
pushi.e 0
pop.v.i self.slmyy
pushi.e 0
pop.v.i self.s_siner
pushi.e 1654
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
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

:[end]