.localvar 2 arguments
.localvar 21572 spell_offset 9608
.localvar 21574 namewidthmax 9610
.localvar 21582 __drawstatus 9617
.localvar 21587 __actname 9618
.localvar 21588 __plainactname 9619
.localvar 21590 mercypercent 9621
.localvar 21591 mercywidth 9622
.localvar 21597 currentspell 9626
.localvar 10755 __n 9628
.localvar 21600 __isact 9629
.localvar 21601 s1 9630
.localvar 21602 s2 9631
.localvar 21603 s1_width 9632
.localvar 21604 s2_width 9633
.localvar 21605 s1_xscale 9634
.localvar 21606 s2_xscale 9635
.localvar 21617 remfont 9646
.localvar 11052 __y 9647
.localvar 11051 __x 9648
.localvar 21618 __offsetx 9649
.localvar 21619 __offsety 9650
.localvar 21620 __actnamestring 9651
.localvar 21621 __actnamestringwidth 9652
.localvar 21634 xx2 9656

:[0]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [19]

:[4]
push.v self.gigaqueencon
pushi.e 1
cmp.i.v EQ
bf [7]

:[5]
push.v self.gigaqueentimer
push.e 1
add.i.v
pop.v.v self.gigaqueentimer
push.v self.gigaqueentimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.gigaqueeny
push.v self.gigaqueentimer
pushi.e 10
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.gigaqueencon

:[7]
push.v self.gigaqueencon
pushi.e 2
cmp.i.v EQ
bf [10]

:[8]
push.v self.gigaqueentimer
push.e 1
add.i.v
pop.v.v self.gigaqueentimer
push.v self.gigaqueentimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 100
conv.i.v
call.i lerp(argc=3)
pop.v.v self.gigaqueeny
push.v self.gigaqueentimer
pushi.e 10
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.gigaqueencon

:[10]
push.v self.gigaqueencon
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
pushi.e 200
pop.v.i self.gigaqueeny

:[12]
push.v self.gigaqueencon
pushi.e 4
cmp.i.v EQ
bf [15]

:[13]
push.v self.gigaqueentimer
push.e 1
add.i.v
pop.v.v self.gigaqueentimer
push.v self.gigaqueentimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 200
conv.i.v
call.i lerp(argc=3)
pop.v.v self.gigaqueeny
push.v self.gigaqueentimer
pushi.e 10
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.gigaqueencon

:[15]
push.v self.gigaqueencon
pushi.e 5
cmp.i.v EQ
bf [18]

:[16]
push.v self.gigaqueentimer
push.e 1
add.i.v
pop.v.v self.gigaqueentimer
push.v self.gigaqueentimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 200
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.gigaqueeny
push.v self.gigaqueentimer
pushi.e 10
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i self.gigaqueencon

:[18]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.gigaqueeny
add.v.v
pop.v.v self.yy

:[19]
push.v self.tp
push.v self.tpy
sub.v.v
push.v self.yy
add.v.v
pop.v.v self.tpoff
push.v self.bp
neg.v
push.v self.bpy
add.v.v
push.v self.yy
add.v.v
pop.v.v self.bpoff
pushi.e 496
conv.i.v
pushi.e 500
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.spell_offset
push.v self.intro
pushi.e 1
cmp.i.v EQ
bf [28]

:[20]
push.v self.bp
push.v self.bpy
pushi.e 1
sub.i.v
cmp.v.v LT
bf [25]

:[21]
push.v self.bpy
push.v self.bp
sub.v.v
pushi.e 40
cmp.i.v LT
bf [23]

:[22]
push.v self.bp
push.v self.bpy
push.v self.bp
sub.v.v
push.d 2.5
div.d.v
call.i round(argc=1)
add.v.v
pop.v.v self.bp
b [24]

:[23]
push.v self.bp
pushi.e 30
add.i.v
pop.v.v self.bp

:[24]
b [26]

:[25]
push.v self.bpy
pop.v.v self.bp

:[26]
push.v self.bp
push.v self.bpy
cmp.v.v EQ
bf [28]

:[27]
pushi.e 0
pop.v.i self.intro

:[28]
push.v self.intro
pushi.e 2
cmp.i.v EQ
bf [35]

:[29]
push.v self.bp
pushi.e 0
cmp.i.v GT
bf [34]

:[30]
push.v self.bpy
push.v self.bp
sub.v.v
pushi.e 5
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 15
cmp.i.v GT
bf [32]

:[31]
push.v self.bp
push.v self.bpy
push.v self.bp
sub.v.v
push.d 2.5
div.d.v
call.i round(argc=1)
sub.v.v
pop.v.v self.bp
b [33]

:[32]
push.v self.bp
pushi.e 30
sub.i.v
pop.v.v self.bp

:[33]
b [35]

:[34]
pushi.e 0
pop.v.i self.bp

:[35]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 480
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
pushi.e 4
sub.i.v
push.v self.xx
pushi.e 700
add.i.v
pushi.e 481
push.v self.yy
add.v.i
push.v self.xx
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 480
push.v self.bp
sub.v.i
pushi.e 2
sub.i.v
push.v self.yy
add.v.v
push.v self.xx
pushi.e 700
add.i.v
pushi.e 480
push.v self.bp
sub.v.i
pushi.e 3
sub.i.v
push.v self.yy
add.v.v
push.v self.xx
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 480
push.v self.bp
sub.v.i
pushi.e 36
add.i.v
push.v self.yy
add.v.v
push.v self.xx
pushi.e 700
add.i.v
pushi.e 480
push.v self.bp
sub.v.i
pushi.e 34
add.i.v
push.v self.yy
add.v.v
push.v self.xx
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
call.i gml_Script_scr_charbox(argc=0)
popz.v
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [40]

:[36]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
bt [40]

:[37]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bt [40]

:[38]
pushglb.v global.bmenuno
pushi.e 12
cmp.i.v EQ
bt [40]

:[39]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
b [41]

:[40]
push.e 1

:[41]
bf [106]

:[42]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [106]

:[43]
push.v self.yy
pushi.e 385
add.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 55
add.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.i 169725
setowner.e
pushi.e -5
pushi.e 0
push.v [array]self.monstername
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.namewidthb
pushi.e -5
pushi.e 1
push.v [array]self.monstername
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.namewidthb
pushi.e -5
pushi.e 2
push.v [array]self.monstername
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.namewidthb
pushi.e 0
pop.v.i local.namewidthmax
pushi.e 0
pop.v.i self.i

:[44]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [48]

:[45]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.namewidthb
pushloc.v local.namewidthmax
cmp.v.v GT
bf [47]

:[46]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.namewidthb
pop.v.v local.namewidthmax

:[47]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [44]

:[48]
pushi.e 0
pop.v.i self.i

:[49]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [106]

:[50]
pushi.e -5
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [54]

:[51]
push.v self.flash
pushi.e 0
cmp.i.v EQ
bf [53]

:[52]
pushi.e 0
pop.v.i self.fsiner

:[53]
pushi.e 1
pop.v.i self.flash
pushi.e 1
pop.v.i self.becomeflash

:[54]
popenv [51]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [105]

:[55]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.mercydraw
pushi.e 0
pop.v.i self.tireddraw
push.i 16777215
pop.v.i self.mnamecolor1
push.i 16777215
pop.v.i self.mnamecolor2
push.d 0.3
conv.d.v
push.i 16711680
conv.i.v
push.i 16776960
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.aqcolor
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
pushi.e 1
pop.v.i self.tireddraw

:[57]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [59]

:[58]
pushi.e 1
pop.v.i self.mercydraw

:[59]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstername
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pop.v.v self.namewidth
push.v self.tireddraw
pushi.e 1
cmp.i.v EQ
bf [63]

:[60]
pushglb.v global.encounterno
pushi.e 31
cmp.i.v NEQ
bf [62]

:[61]
push.v self.aqcolor
call.i draw_set_color(argc=1)
popz.v
push.v self.aqcolor
pop.v.v self.mnamecolor1
push.v self.aqcolor
pop.v.v self.mnamecolor2

:[62]
push.v self.yy
pushi.e 385
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 80
add.i.v
push.v self.namewidth
add.v.v
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
pushi.e 2227
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[63]
push.v self.mercydraw
pushi.e 1
cmp.i.v EQ
bf [68]

:[64]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.i 65535
pop.v.i self.mnamecolor1
push.v self.tireddraw
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
push.i 65535
pop.v.i self.mnamecolor2

:[66]
push.v self.hidemercy
pushi.e 0
cmp.i.v EQ
bf [68]

:[67]
push.v self.yy
pushi.e 385
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 80
add.i.v
push.v self.namewidth
add.v.v
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
pushi.e 2226
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[68]
pushi.e 1
conv.i.v
push.v self.mnamecolor1
push.v self.mnamecolor2
push.v self.mnamecolor2
push.v self.mnamecolor1
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstername
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 80
add.i.v
call.i draw_text_colour(argc=8)
popz.v
pushi.e 0
pop.v.i local.__drawstatus
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
bf [70]

:[69]
pushi.e 1
pop.v.i local.__drawstatus

:[70]
pushloc.v local.__drawstatus
pushi.e 0
cmp.i.v EQ
bf [76]

:[71]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v NEQ
bf [73]

:[72]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstercomment
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 80
add.i.v
push.v self.namewidth
add.v.v
pushi.e 60
add.i.v
call.i draw_text(argc=3)
popz.v
b [75]

:[73]
pushi.e 80
push.v self.namewidth
add.v.i
pushi.e 60
add.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstercomment
call.i string_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 415
cmp.i.v LT
bf [75]

:[74]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstercomment
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 80
add.i.v
push.v self.namewidth
add.v.v
pushi.e 60
add.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[75]
pushi.e 128
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 15
add.i.v
push.v self.xx
pushi.e 500
add.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 420
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 15
add.i.v
push.v self.xx
pushi.e 420
add.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstermaxhp
div.v.v
pushi.e 80
mul.i.v
add.v.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 420
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 1
conv.i.v
push.s "obj_battlecontroller_slash_Draw_0_gml_173_0"@21583
conv.s.v
push.s "HP"@21584
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.yy
pushi.e 364
add.i.v
push.v self.xx
pushi.e 424
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstermaxhp
div.v.v
pushi.e 100
mul.i.v
call.i ceil(argc=1)
call.i string(argc=1)
push.s "%"@14906
add.s.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 424
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
b [89]

:[76]
push.s "obj_battlecontroller_slash_Draw_0_gml_172_0"@21585
conv.s.v
push.s "Standard"@21586
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.__actname
pushloc.v local.__actname
pop.v.v local.__plainactname
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [78]

:[77]
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.actnamesus
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pop.v.v local.__actname

:[78]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [80]

:[79]
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.actnameral
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pop.v.v local.__actname

:[80]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [82]

:[81]
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.actnamenoe
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pop.v.v local.__actname

:[82]
pushloc.v local.__actname
push.s "S-Action"@7338
cmp.s.v EQ
bf [84]

:[83]
pushloc.v local.__plainactname
pop.v.v local.__actname

:[84]
pushloc.v local.__actname
push.s "R-Action"@7340
cmp.s.v EQ
bf [86]

:[85]
pushloc.v local.__plainactname
pop.v.v local.__actname

:[86]
pushloc.v local.__actname
push.s "N-Action"@7343
cmp.s.v EQ
bf [88]

:[87]
pushloc.v local.__plainactname
pop.v.v local.__actname

:[88]
pushi.e -1
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.hpcolorsoft
call.i draw_set_color(argc=1)
popz.v
pushi.e 514
pushi.e 80
pushloc.v local.namewidthmax
add.v.i
pushi.e 60
add.i.v
sub.v.i
pushloc.v local.__actname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 80
add.i.v
pushloc.v local.namewidthmax
add.v.v
pushi.e 60
add.i.v
call.i gml_Script_draw_text_width(argc=4)
popz.v

:[89]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.mercymod
pop.v.v self.mercyamt
push.v self.mercyamt
pushi.e 100
cmp.i.v GTE
bf [91]

:[90]
pushi.e 100
pop.v.i self.mercyamt

:[91]
push.v self.hidemercy
pushi.e 0
cmp.i.v EQ
bf [105]

:[92]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.mercymax
div.v.v
pushi.e 100
mul.i.v
call.i ceil(argc=1)
pop.v.v local.mercypercent
pushloc.v local.mercypercent
pushi.e 100
cmp.i.v GT
bf [94]

:[93]
pushi.e 100
pop.v.i local.mercypercent

:[94]
push.d 0.5
conv.d.v
pushi.e 255
conv.i.v
push.i 4235519
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 15
add.i.v
push.v self.xx
pushi.e 600
add.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 520
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.mercyamt
pushi.e 0
cmp.i.v GT
bf [96]

:[95]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cantspare
pushi.e 0
cmp.i.v EQ
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 15
add.i.v
push.v self.xx
pushi.e 520
add.i.v
pushloc.v local.mercypercent
push.d 0.8
mul.d.v
add.v.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 520
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[99]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
pop.v.i local.mercywidth
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [101]

:[100]
push.d 0.5
pop.v.d local.mercywidth

:[101]
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushloc.v local.mercywidth
push.s "obj_battlecontroller_slash_Draw_0_gml_208_0"@21592
conv.s.v
push.s "MERCY"@21593
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.yy
pushi.e 364
add.i.v
push.v self.xx
pushi.e 524
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 128
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cantspare
pushi.e 0
cmp.i.v EQ
bf [103]

:[102]
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 1
conv.i.v
pushloc.v local.mercypercent
call.i string(argc=1)
push.s "%"@14906
add.s.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 524
add.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[103]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cantspare
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
pushi.e 128
conv.i.v
pushi.e 128
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 15
add.i.v
push.v self.xx
pushi.e 600
add.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 520
add.i.v
pushi.e 1
sub.i.v
call.i draw_line_width_color(argc=7)
popz.v
pushi.e 128
conv.i.v
pushi.e 128
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 600
add.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 15
add.i.v
push.v self.xx
pushi.e 520
add.i.v
pushi.e 1
sub.i.v
call.i draw_line_width_color(argc=7)
popz.v

:[105]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [49]

:[106]
pushglb.v global.bmenuno
pushi.e 2
cmp.i.v EQ
bf [109]

:[107]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [109]

:[108]
pushi.e -5
pushi.e 34
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [110]

:[109]
push.e 0

:[110]
bf [149]

:[111]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pop.v.v self.thischar
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.spellcoord
pushi.e 0
pop.v.i self.page
push.v self.spellcoord
pushi.e 5
cmp.i.v GT
bf [113]

:[112]
pushi.e 1
pop.v.i self.page
push.v self.spellcoord
pushi.e 6
sub.i.v
pop.v.v self.spellcoord

:[113]
pushi.e 10
pop.v.i self.icx
pushi.e 385
pop.v.i self.icy
push.v self.spellcoord
pushi.e 1
cmp.i.v EQ
bt [116]

:[114]
push.v self.spellcoord
pushi.e 3
cmp.i.v EQ
bt [116]

:[115]
push.v self.spellcoord
pushi.e 5
cmp.i.v EQ
b [117]

:[116]
push.e 1

:[117]
bf [119]

:[118]
pushi.e 230
pop.v.i self.icx

:[119]
push.v self.spellcoord
pushi.e 1
cmp.i.v GT
bf [121]

:[120]
push.v self.spellcoord
pushi.e 4
cmp.i.v LT
b [122]

:[121]
push.e 0

:[122]
bf [124]

:[123]
pushi.e 415
pop.v.i self.icy

:[124]
push.v self.spellcoord
pushi.e 3
cmp.i.v GT
bf [126]

:[125]
pushi.e 445
pop.v.i self.icy

:[126]
push.v self.yy
push.v self.icy
add.v.v
push.v self.xx
push.v self.icx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[127]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [148]

:[128]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spell
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
conv.v.i
pushaf.e
pop.v.v local.currentspell
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.tension
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spellcost
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
conv.v.i
pushaf.e
cmp.v.v LT
bf [130]

:[129]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [145]

:[130]
pushloc.v local.currentspell
pushi.e 3
cmp.i.v EQ
bt [132]

:[131]
pushloc.v local.currentspell
pushi.e 8
cmp.i.v EQ
b [133]

:[132]
push.e 1

:[133]
bf [145]

:[134]
pushi.e 0
pop.v.i self.pacify_glow
pushi.e 0
pop.v.i self.sglowi

:[135]
push.v self.sglowi
pushi.e 3
cmp.i.v LT
bf [143]

:[136]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [138]

:[137]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
b [139]

:[138]
push.e 0

:[139]
bf [142]

:[140]
pushglb.v global.encounterno
pushi.e 31
cmp.i.v NEQ
bf [142]

:[141]
pushi.e 1
pop.v.i self.pacify_glow

:[142]
push.v self.sglowi
pushi.e 1
add.i.v
pop.v.v self.sglowi
b [135]

:[143]
push.v self.pacify_glow
pushi.e 1
cmp.i.v EQ
bf [145]

:[144]
push.d 0.3
conv.d.v
push.i 16711680
conv.i.v
push.i 16776960
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[145]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spellnameb
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 30
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.tension
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spellcost
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
add.i.v
conv.v.i
pushaf.e
cmp.v.v LT
bf [147]

:[146]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[147]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spellnameb
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
add.i.v
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 260
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [127]

:[148]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spelldescb
push.v self.page
pushi.e 6
mul.i.v
push.v self.spellcoord
add.v.v
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.xx
pushloc.v local.spell_offset
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.spellcost
push.v self.page
pushi.e 6
mul.i.v
push.v self.spellcoord
add.v.v
conv.v.i
pushaf.e
pushglb.v global.maxtension
div.v.v
pushi.e 100
mul.i.v
call.i round(argc=1)
pop.v.v self.thiscost
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.thiscost
call.i string(argc=1)
push.s "% TP"@21599
add.s.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 440
add.i.v
push.v self.xx
pushloc.v local.spell_offset
add.v.v
call.i draw_text(argc=3)
popz.v

:[149]
pushglb.v global.bmenuno
pushi.e 2
cmp.i.v EQ
bf [152]

:[150]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [152]

:[151]
pushi.e -5
pushi.e 34
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [153]

:[152]
push.e 0

:[153]
bf [195]

:[154]
pushglb.v global.charturn
pop.v.v self.thischar
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.spellcoord
pushi.e 0
pop.v.i self.page
push.v self.spellcoord
pushi.e 5
cmp.i.v GT
bf [156]

:[155]
pushi.e 1
pop.v.i self.page
push.v self.spellcoord
pushi.e 6
sub.i.v
pop.v.v self.spellcoord

:[156]
pushi.e 10
pop.v.i self.icx
pushi.e 385
pop.v.i self.icy
push.v self.spellcoord
pushi.e 1
cmp.i.v EQ
bt [159]

:[157]
push.v self.spellcoord
pushi.e 3
cmp.i.v EQ
bt [159]

:[158]
push.v self.spellcoord
pushi.e 5
cmp.i.v EQ
b [160]

:[159]
push.e 1

:[160]
bf [162]

:[161]
pushi.e 230
pop.v.i self.icx

:[162]
push.v self.spellcoord
pushi.e 1
cmp.i.v GT
bf [164]

:[163]
push.v self.spellcoord
pushi.e 4
cmp.i.v LT
b [165]

:[164]
push.e 0

:[165]
bf [167]

:[166]
pushi.e 415
pop.v.i self.icy

:[167]
push.v self.spellcoord
pushi.e 3
cmp.i.v GT
bf [169]

:[168]
pushi.e 445
pop.v.i self.icy

:[169]
push.v self.yy
push.v self.icy
add.v.v
push.v self.xx
push.v self.icx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[170]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [193]

:[171]
pushi.e 0
pop.v.i local.__n
pushi.e 0
pop.v.i local.__isact
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [192]

:[172]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespellspecial
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushloc.v local.__n
add.v.v
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v GTE
bf [174]

:[173]
pushi.e -1
pushi.e -5
push.v self.thischar
conv.v.i
push.v [array]self.char
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.hpcolorsoft
call.i draw_set_color(argc=1)
popz.v

:[174]
pushglb.v global.tension
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespellcost
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushloc.v local.__n
add.v.v
conv.v.i
pushaf.e
cmp.v.v LT
bf [176]

:[175]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [191]

:[176]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespell
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushloc.v local.__n
add.v.v
conv.v.i
pushaf.e
pushi.e 3
cmp.i.v EQ
bt [178]

:[177]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespell
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushloc.v local.__n
add.v.v
conv.v.i
pushaf.e
pushi.e 8
cmp.i.v EQ
b [179]

:[178]
push.e 1

:[179]
bf [191]

:[180]
pushi.e 0
pop.v.i self.pacify_glow
pushi.e 0
pop.v.i self.sglowi

:[181]
push.v self.sglowi
pushi.e 3
cmp.i.v LT
bf [189]

:[182]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [184]

:[183]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
b [185]

:[184]
push.e 0

:[185]
bf [188]

:[186]
pushglb.v global.encounterno
pushi.e 31
cmp.i.v NEQ
bf [188]

:[187]
pushi.e 1
pop.v.i self.pacify_glow

:[188]
push.v self.sglowi
pushi.e 1
add.i.v
pop.v.v self.sglowi
b [181]

:[189]
push.v self.pacify_glow
pushi.e 1
cmp.i.v EQ
bf [191]

:[190]
push.d 0.3
conv.d.v
push.i 16711680
conv.i.v
push.i 16776960
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[191]
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespellname
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushloc.v local.__n
add.v.v
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 30
add.i.v
pushloc.v local.__n
pushi.e 230
mul.i.v
add.v.v
call.i draw_text(argc=3)
popz.v
push.v local.__n
push.e 1
add.i.v
pop.v.v local.__n
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [172]

:[192]
popz.i
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [170]

:[193]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespelldesc
push.v self.page
pushi.e 6
mul.i.v
push.v self.spellcoord
add.v.v
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.xx
pushloc.v local.spell_offset
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
push.v self.thischar
conv.v.i
push.v [arraypushaf]self.battlespellcost
push.v self.page
pushi.e 6
mul.i.v
push.v self.spellcoord
add.v.v
conv.v.i
pushaf.e
pushglb.v global.maxtension
div.v.v
pushi.e 100
mul.i.v
call.i round(argc=1)
pop.v.v self.thiscost
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.thiscost
pushi.e 0
cmp.i.v GT
bf [195]

:[194]
push.v self.thiscost
call.i string(argc=1)
push.s "% TP"@21599
add.s.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 440
add.i.v
push.v self.xx
pushloc.v local.spell_offset
add.v.v
call.i draw_text(argc=3)
popz.v

:[195]
pushglb.v global.bmenuno
pushi.e 4
cmp.i.v EQ
bf [197]

:[196]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
b [198]

:[197]
push.e 0

:[198]
bf [225]

:[199]
pushi.e -5
pushi.e 4
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.itemcoord
pushi.e 0
pop.v.i self.page
push.v self.itemcoord
pushi.e 5
cmp.i.v GT
bf [201]

:[200]
pushi.e 1
pop.v.i self.page
push.v self.itemcoord
pushi.e 6
sub.i.v
pop.v.v self.itemcoord

:[201]
pushi.e 10
pop.v.i self.icx
pushi.e 385
pop.v.i self.icy
push.v self.itemcoord
pushi.e 1
cmp.i.v EQ
bt [204]

:[202]
push.v self.itemcoord
pushi.e 3
cmp.i.v EQ
bt [204]

:[203]
push.v self.itemcoord
pushi.e 5
cmp.i.v EQ
b [205]

:[204]
push.e 1

:[205]
bf [207]

:[206]
pushi.e 240
conv.i.v
pushi.e 230
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v self.icx

:[207]
push.v self.itemcoord
pushi.e 1
cmp.i.v GT
bf [209]

:[208]
push.v self.itemcoord
pushi.e 4
cmp.i.v LT
b [210]

:[209]
push.e 0

:[210]
bf [212]

:[211]
pushi.e 415
pop.v.i self.icy

:[212]
push.v self.itemcoord
pushi.e 3
cmp.i.v GT
bf [214]

:[213]
pushi.e 445
pop.v.i self.icy

:[214]
push.v self.yy
push.v self.icy
add.v.v
push.v self.xx
push.v self.icx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[215]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [217]

:[216]
pushi.e -1
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
conv.v.i
push.v [arraypushaf]self.tempitemnameb
pushglb.v global.charturn
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
pop.v.v local.s1
pushi.e -1
push.v self.page
pushi.e 6
mul.i.v
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushi.e 1
add.i.v
conv.v.i
push.v [arraypushaf]self.tempitemnameb
pushglb.v global.charturn
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
pop.v.v local.s2
pushloc.v local.s1
call.i string_width(argc=1)
pop.v.v local.s1_width
pushloc.v local.s2
call.i string_width(argc=1)
pop.v.v local.s2_width
pushi.e 200
conv.i.d
pushloc.v local.s1_width
div.v.d
pushi.e 1
conv.i.v
call.i min(argc=2)
pop.v.v local.s1_xscale
pushi.e 200
conv.i.d
pushloc.v local.s2_width
div.v.d
pushi.e 1
conv.i.v
call.i min(argc=2)
pop.v.v local.s2_xscale
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.s1_xscale
pushloc.v local.s1
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 30
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.s2_xscale
pushloc.v local.s2
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 260
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [215]

:[217]
push.v self.page
pushi.e 0
cmp.i.v EQ
bf [219]

:[218]
pushi.e -5
pushi.e 6
push.v [array]self.item
pushi.e 0
cmp.i.v NEQ
b [220]

:[219]
push.e 0

:[220]
bf [222]

:[221]
push.v self.yy
pushi.e 445
add.i.v
push.v self.s_siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 470
add.i.v
pushi.e 0
conv.i.v
pushi.e 1316
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[222]
push.v self.page
pushi.e 1
cmp.i.v EQ
bf [224]

:[223]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 395
add.i.v
push.v self.s_siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
push.v self.xx
pushi.e 470
add.i.v
pushi.e 0
conv.i.v
pushi.e 1316
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[224]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.page
pushi.e 6
mul.i.v
push.v self.itemcoord
add.v.v
conv.v.i
push.v [arraypushaf]self.tempitemdescb
pushglb.v global.charturn
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.xx
pushloc.v local.spell_offset
add.v.v
call.i draw_text(argc=3)
popz.v

:[225]
pushglb.v global.bmenuno
pushi.e 9
cmp.i.v EQ
bf [227]

:[226]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
b [228]

:[227]
push.e 0

:[228]
bf [341]

:[229]
pushi.e -5
pushi.e 9
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pop.v.v self.actcoord
pushi.e 0
pop.v.i self.__acti

:[230]
push.v self.__acti
pushi.e 6
cmp.i.v LT
bf [240]

:[231]
push.i 166377
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.canact
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [233]

:[232]
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.canact
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.canact
push.i 166799
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actcost
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.acttpcost
push.i 166378
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actsimul
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.actsimul
push.i 166301
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actname
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.actname
push.i 166389
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actdesc
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.actdesc

:[233]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [235]

:[234]
push.i 166377
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.canactsus
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.canact
push.i 166799
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actcostsus
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.acttpcost
push.i 166378
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actsimulsus
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.actsimul
push.i 166301
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actnamesus
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.actname
push.i 166389
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actdescsus
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.actdesc

:[235]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [237]

:[236]
push.i 166377
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.canactral
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.canact
push.i 166799
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actcostral
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.acttpcost
push.i 166378
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actsimulral
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.actsimul
push.i 166301
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actnameral
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.actname
push.i 166389
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actdescral
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.actdesc

:[237]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [239]

:[238]
push.i 166377
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.canactnoe
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.canact
push.i 166799
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actcostnoe
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.acttpcost
push.i 166378
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actsimulnoe
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.actsimul
push.i 166301
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actnamenoe
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.actname
push.i 166389
setowner.e
pushi.e -5
push.v self.thisenemy
conv.v.i
push.v [arraypushaf]self.actdescnoe
push.v self.__acti
conv.v.i
pushaf.e
pushi.e -1
push.v self.__acti
conv.v.i
pop.v.v [array]self.actdesc

:[239]
push.v self.__acti
push.e 1
add.i.v
pop.v.v self.__acti
b [230]

:[240]
pushi.e 0
pop.v.i self.page
pushi.e 10
pop.v.i self.icx
pushi.e 385
pop.v.i self.icy
push.v self.actcoord
pushi.e 1
cmp.i.v EQ
bt [243]

:[241]
push.v self.actcoord
pushi.e 3
cmp.i.v EQ
bt [243]

:[242]
push.v self.actcoord
pushi.e 5
cmp.i.v EQ
b [244]

:[243]
push.e 1

:[244]
bf [246]

:[245]
pushi.e 230
pop.v.i self.icx

:[246]
push.v self.actcoord
pushi.e 1
cmp.i.v GT
bf [248]

:[247]
push.v self.actcoord
pushi.e 4
cmp.i.v LT
b [249]

:[248]
push.e 0

:[249]
bf [251]

:[250]
pushi.e 415
pop.v.i self.icy

:[251]
push.v self.actcoord
pushi.e 3
cmp.i.v GT
bf [253]

:[252]
pushi.e 445
pop.v.i self.icy

:[253]
push.v self.yy
push.v self.icy
add.v.v
push.v self.xx
push.v self.icx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[254]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [334]

:[255]
pushi.e 0
pop.v.i self.cant
pushi.e 0
pop.v.i self.chartime
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [257]

:[256]
pushi.e -5
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [arraypushaf]self.actactor
push.v self.i
conv.v.i
pushaf.e
pop.v.v self.chartime

:[257]
pushi.e 0
pop.v.i self.charoffset
pushi.e 0
pop.v.i self.xoffset
push.v self.i
pushi.e 1
cmp.i.v EQ
bt [260]

:[258]
push.v self.i
pushi.e 3
cmp.i.v EQ
bt [260]

:[259]
push.v self.i
pushi.e 5
cmp.i.v EQ
b [261]

:[260]
push.e 1

:[261]
bf [263]

:[262]
pushi.e 230
pop.v.i self.xoffset

:[263]
pushi.e 0
pop.v.i self.yoffset
push.v self.i
pushi.e 2
cmp.i.v EQ
bt [265]

:[264]
push.v self.i
pushi.e 3
cmp.i.v EQ
b [266]

:[265]
push.e 1

:[266]
bf [268]

:[267]
pushi.e 30
pop.v.i self.yoffset

:[268]
push.v self.i
pushi.e 4
cmp.i.v EQ
bt [270]

:[269]
push.v self.i
pushi.e 5
cmp.i.v EQ
b [271]

:[270]
push.e 1

:[271]
bf [273]

:[272]
pushi.e 60
pop.v.i self.yoffset

:[273]
pushi.e 0
pop.v.i self.drawsus
pushi.e 0
pop.v.i self.drawral
pushi.e 0
pop.v.i self.drawnoe
push.i 16777215
pop.v.i self.susblend
push.i 16777215
pop.v.i self.ralblend
push.i 16777215
pop.v.i self.noeblend
push.v self.chartime
pushi.e 2
cmp.i.v EQ
bt [275]

:[274]
push.v self.chartime
pushi.e 4
cmp.i.v EQ
b [276]

:[275]
push.e 1

:[276]
bf [283]

:[277]
pushi.e 1
pop.v.i self.drawsus
pushi.e -1
pushi.e 1
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
bt [279]

:[278]
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [280]

:[279]
push.e 1

:[280]
bf [282]

:[281]
push.i 8421504
pop.v.i self.susblend
pushi.e 1
pop.v.i self.cant

:[282]
pushi.e 30
pop.v.i self.charoffset

:[283]
push.v self.chartime
pushi.e 3
cmp.i.v EQ
bt [285]

:[284]
push.v self.chartime
pushi.e 4
cmp.i.v EQ
b [286]

:[285]
push.e 1

:[286]
bf [293]

:[287]
pushi.e 1
pop.v.i self.drawral
pushi.e -1
pushi.e 2
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
bt [289]

:[288]
pushi.e -5
pushi.e 3
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [290]

:[289]
push.e 1

:[290]
bf [292]

:[291]
push.i 8421504
pop.v.i self.ralblend
pushi.e 1
pop.v.i self.cant

:[292]
pushi.e 30
pop.v.i self.charoffset

:[293]
push.v self.chartime
pushi.e 5
cmp.i.v EQ
bf [300]

:[294]
pushi.e 1
pop.v.i self.drawnoe
pushi.e -1
pushi.e 3
push.v [array]self.havechar
pushi.e 0
cmp.i.v EQ
bt [296]

:[295]
pushi.e -5
pushi.e 4
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [297]

:[296]
push.e 1

:[297]
bf [299]

:[298]
push.i 8421504
pop.v.i self.noeblend
pushi.e 1
pop.v.i self.cant

:[299]
pushi.e 30
pop.v.i self.charoffset

:[300]
pushglb.v global.tension
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.acttpcost
cmp.v.v LT
bf [302]

:[301]
pushi.e 1
pop.v.i self.cant

:[302]
push.v self.chartime
pushi.e 4
cmp.i.v EQ
bf [304]

:[303]
push.v self.charoffset
pushi.e 2
mul.i.v
pop.v.v self.charoffset

:[304]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.cant
pushi.e 1
cmp.i.v EQ
bf [306]

:[305]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[306]
push.v self.chartime
pushi.e 2
cmp.i.v EQ
bf [308]

:[307]
pushi.e 1
conv.i.v
push.v self.susblend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 375
add.i.v
push.v self.yoffset
add.v.v
push.v self.xx
pushi.e 30
add.i.v
push.v self.xoffset
add.v.v
pushi.e 0
conv.i.v
pushi.e 2253
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[308]
push.v self.chartime
pushi.e 3
cmp.i.v EQ
bf [310]

:[309]
pushi.e 1
conv.i.v
push.v self.susblend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 375
add.i.v
push.v self.yoffset
add.v.v
push.v self.xx
pushi.e 30
add.i.v
push.v self.xoffset
add.v.v
pushi.e 0
conv.i.v
pushi.e 2252
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[310]
push.v self.chartime
pushi.e 4
cmp.i.v EQ
bf [312]

:[311]
pushi.e 1
conv.i.v
push.v self.susblend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 375
add.i.v
push.v self.yoffset
add.v.v
push.v self.xx
pushi.e 30
add.i.v
push.v self.xoffset
add.v.v
pushi.e 0
conv.i.v
pushi.e 2253
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.susblend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 375
add.i.v
push.v self.yoffset
add.v.v
push.v self.xx
pushi.e 60
add.i.v
push.v self.xoffset
add.v.v
pushi.e 0
conv.i.v
pushi.e 2252
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[312]
push.v self.chartime
pushi.e 5
cmp.i.v EQ
bf [314]

:[313]
pushi.e 1
conv.i.v
push.v self.noeblend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 375
add.i.v
push.v self.yoffset
add.v.v
push.v self.xx
pushi.e 30
add.i.v
push.v self.xoffset
add.v.v
pushi.e 0
conv.i.v
pushi.e 2254
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[314]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [317]

:[315]
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [317]

:[316]
push.v 697.savemeactcon
pushi.e 0
cmp.i.v GT
b [318]

:[317]
push.e 0

:[318]
bf [329]

:[319]
push.v 697.savemeactcon
pushi.e 1
cmp.i.v EQ
bf [321]

:[320]
pushi.e 1
conv.i.v
push.v self.noeblend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.xx
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 2252
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[321]
push.v 697.savemeactcon
pushi.e 2
cmp.i.v EQ
bf [323]

:[322]
pushi.e 1
conv.i.v
push.v self.noeblend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.xx
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 2252
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[323]
push.v 697.savemeactcon
pushi.e 3
cmp.i.v EQ
bf [325]

:[324]
pushi.e 1
conv.i.v
push.v self.noeblend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.xx
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 2253
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[325]
push.v 697.savemeactcon
pushi.e 4
cmp.i.v EQ
bf [327]

:[326]
pushi.e 1
conv.i.v
push.v self.noeblend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.xx
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 2253
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[327]
push.v 697.savemeactcon
pushi.e 4
cmp.i.v GT
bf [329]

:[328]
pushi.e 1
conv.i.v
push.v self.noeblend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.xx
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 2254
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[329]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.actname
call.i string_hash_to_newline(argc=1)
pop.v.v local.s1
pushloc.v local.s1
call.i string_width(argc=1)
pushi.e 1
conv.i.v
call.i max(argc=2)
pop.v.v local.s1_width
pushi.e 206
push.v self.charoffset
sub.v.i
pushloc.v local.s1_width
div.v.v
pop.v.v local.s1_xscale
pushloc.v local.s1_xscale
pushi.e 1
cmp.i.v GT
bf [331]

:[330]
pushi.e 1
pop.v.i local.s1_xscale

:[331]
pushloc.v local.s1_xscale
push.d 0.5
cmp.d.v LT
bf [333]

:[332]
push.d 0.5
pop.v.d local.s1_xscale

:[333]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.s1_xscale
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.actname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.yoffset
add.v.v
push.v self.xx
pushi.e 30
add.i.v
push.v self.charoffset
add.v.v
push.v self.xoffset
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [254]

:[334]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.actcoord
conv.v.i
push.v [array]self.actdesc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.xx
pushi.e 500
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.tensionselect
pushi.e 0
cmp.i.v GT
bf [336]

:[335]
pushi.e -1
push.v self.actcoord
conv.v.i
push.v [array]self.acttpcost
pushglb.v global.maxtension
div.v.v
pushi.e 100
mul.i.v
call.i round(argc=1)
pop.v.v self.thiscost
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.thiscost
call.i string(argc=1)
push.s "% TP"@21599
add.s.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 440
add.i.v
push.v self.xx
pushi.e 500
add.i.v
call.i draw_text(argc=3)
popz.v

:[336]
pushi.e -5
pushi.e -5
pushi.e 11
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [340]

:[337]
push.v self.flash
pushi.e 0
cmp.i.v EQ
bf [339]

:[338]
pushi.e 0
pop.v.i self.fsiner

:[339]
pushi.e 1
pop.v.i self.flash
pushi.e 1
pop.v.i self.becomeflash

:[340]
popenv [337]

:[341]
pushglb.v global.bmenuno
pushi.e 7
cmp.i.v EQ
bt [343]

:[342]
pushglb.v global.bmenuno
pushi.e 8
cmp.i.v EQ
b [344]

:[343]
push.e 1

:[344]
bf [355]

:[345]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [355]

:[346]
push.v self.yy
pushi.e 385
add.i.v
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 55
add.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[347]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [355]

:[348]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [354]

:[349]
pushi.e -5
pushi.e -5
pushglb.v global.bmenuno
conv.v.i
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [353]

:[350]
push.v self.flash
pushi.e 0
cmp.i.v EQ
bf [352]

:[351]
pushi.e 0
pop.v.i self.fsiner

:[352]
pushi.e 1
pop.v.i self.flash
pushi.e 1
pop.v.i self.becomeflash

:[353]
popenv [350]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.charname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 375
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 80
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 128
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 15
add.i.v
push.v self.xx
pushi.e 500
add.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 400
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e 15
add.i.v
push.v self.xx
pushi.e 400
add.i.v
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
div.v.v
pushi.e 100
mul.i.v
add.v.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.xx
pushi.e 400
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[354]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [347]

:[355]
pushi.e 65
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [407]

:[356]
pushi.e -5
pushi.e 34
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [358]

:[357]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
b [359]

:[358]
push.e 0

:[359]
bf [407]

:[360]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bt [363]

:[361]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
bt [363]

:[362]
pushglb.v global.bmenuno
pushi.e 2
cmp.i.v EQ
b [364]

:[363]
push.e 1

:[364]
bf [407]

:[365]
call.i draw_get_font(argc=0)
pop.v.v local.remfont
pushi.e 0
pop.v.i self.i

:[366]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [406]

:[367]
pushi.e 0
pop.v.i local.__y
pushi.e 0
pop.v.i local.__x
pushi.e 0
pop.v.i local.__offsetx
pushi.e 0
pop.v.i local.__offsety
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monster
conv.v.b
bf [405]

:[368]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [370]

:[369]
push.v self.sactionboxx
pop.v.v local.__offsetx
push.v self.sactionboxy
pop.v.v local.__offsety

:[370]
popenv [369]
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [381]

:[371]
pushi.e 0
pop.v.i local.__n

:[372]
pushloc.v local.__n
pushi.e 3
cmp.i.v LT
bf [381]

:[373]
pushi.e -1
pushi.e 1
push.v [array]self.hpcolorsoft
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.canactsus
pushloc.v local.__n
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [380]

:[374]
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.actnamesus
pushloc.v local.__n
conv.v.i
pushaf.e
pop.v.v local.__actnamestring
pushloc.v local.__actnamestring
call.i string_width(argc=1)
pop.v.v local.__actnamestringwidth
pushloc.v local.__actnamestringwidth
pushi.e 45
sub.i.v
pushloc.v local.__x
cmp.v.v GT
bf [376]

:[375]
pushloc.v local.__actnamestringwidth
pushi.e 45
sub.i.v
pop.v.v local.__x

:[376]
pushloc.v local.__actnamestring
push.s "S-Action"@7338
cmp.s.v NEQ
bf [378]

:[377]
push.s "S-Action - "@21622
pushloc.v local.__actnamestring
add.v.s
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstery
pushloc.v local.__y
add.v.v
pushloc.v local.__offsety
add.v.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterx
pushi.e 200
sub.i.v
pushloc.v local.__offsetx
add.v.v
call.i draw_text(argc=3)
popz.v
b [379]

:[378]
pushloc.v local.__actnamestring
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstery
pushloc.v local.__y
add.v.v
pushloc.v local.__offsety
add.v.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterx
pushi.e 200
sub.i.v
pushloc.v local.__offsetx
add.v.v
call.i draw_text(argc=3)
popz.v

:[379]
push.v local.__y
pushi.e 18
add.i.v
pop.v.v local.__y

:[380]
push.v local.__n
push.e 1
add.i.v
pop.v.v local.__n
b [372]

:[381]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [392]

:[382]
pushi.e 0
pop.v.i local.__n

:[383]
pushloc.v local.__n
pushi.e 3
cmp.i.v LT
bf [392]

:[384]
pushi.e -1
pushi.e 2
push.v [array]self.hpcolorsoft
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.canactral
pushloc.v local.__n
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [391]

:[385]
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.actnameral
pushloc.v local.__n
conv.v.i
pushaf.e
pop.v.v local.__actnamestring
pushloc.v local.__actnamestring
call.i string_width(argc=1)
pop.v.v local.__actnamestringwidth
pushloc.v local.__actnamestringwidth
pushi.e 45
sub.i.v
pushloc.v local.__x
cmp.v.v GT
bf [387]

:[386]
pushloc.v local.__actnamestringwidth
pushi.e 45
sub.i.v
pop.v.v local.__x

:[387]
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.actnameral
pushloc.v local.__n
conv.v.i
pushaf.e
push.s "R-Action"@7340
cmp.s.v NEQ
bf [389]

:[388]
push.s "R-Action - "@21623
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.actnameral
pushloc.v local.__n
conv.v.i
pushaf.e
add.v.s
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstery
pushloc.v local.__y
add.v.v
pushloc.v local.__offsety
add.v.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterx
pushi.e 200
sub.i.v
pushloc.v local.__offsetx
add.v.v
call.i draw_text(argc=3)
popz.v
b [390]

:[389]
push.s "R-Action - Standard"@21624
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstery
pushloc.v local.__y
add.v.v
pushloc.v local.__offsety
add.v.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterx
pushi.e 200
sub.i.v
pushloc.v local.__offsetx
add.v.v
call.i draw_text(argc=3)
popz.v

:[390]
push.v local.__y
pushi.e 18
add.i.v
pop.v.v local.__y

:[391]
push.v local.__n
push.e 1
add.i.v
pop.v.v local.__n
b [383]

:[392]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [403]

:[393]
pushi.e 0
pop.v.i local.__n

:[394]
pushloc.v local.__n
pushi.e 3
cmp.i.v LT
bf [403]

:[395]
pushi.e -1
pushi.e 3
push.v [array]self.hpcolorsoft
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.canactnoe
pushloc.v local.__n
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [402]

:[396]
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.actnamenoe
pushloc.v local.__n
conv.v.i
pushaf.e
pop.v.v local.__actnamestring
pushloc.v local.__actnamestring
call.i string_width(argc=1)
pop.v.v local.__actnamestringwidth
pushloc.v local.__actnamestringwidth
pushi.e 45
sub.i.v
pushloc.v local.__x
cmp.v.v GT
bf [398]

:[397]
pushloc.v local.__actnamestringwidth
pushi.e 45
sub.i.v
pop.v.v local.__x

:[398]
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.actnamenoe
pushloc.v local.__n
conv.v.i
pushaf.e
push.s "N-Action"@7343
cmp.s.v NEQ
bf [400]

:[399]
push.s "N-Action - "@21625
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.actnamenoe
pushloc.v local.__n
conv.v.i
pushaf.e
add.v.s
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstery
pushloc.v local.__y
add.v.v
pushloc.v local.__offsety
add.v.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterx
pushi.e 200
sub.i.v
pushloc.v local.__offsetx
add.v.v
call.i draw_text(argc=3)
popz.v
b [401]

:[400]
push.s "N-Action - Standard"@21626
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstery
pushloc.v local.__y
add.v.v
pushloc.v local.__offsety
add.v.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterx
pushi.e 200
sub.i.v
pushloc.v local.__offsetx
add.v.v
call.i draw_text(argc=3)
popz.v

:[401]
push.v local.__y
pushi.e 18
add.i.v
pop.v.v local.__y

:[402]
push.v local.__n
push.e 1
add.i.v
pop.v.v local.__n
b [394]

:[403]
push.i 16711935
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.__y
pushi.e 0
cmp.i.v GT
bf [405]

:[404]
pushi.e 1
conv.b.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstery
pushloc.v local.__y
add.v.v
pushloc.v local.__offsety
add.v.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterx
pushi.e 80
sub.i.v
pushloc.v local.__x
add.v.v
pushloc.v local.__offsetx
add.v.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstery
pushloc.v local.__offsety
add.v.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterx
pushi.e 210
sub.i.v
pushloc.v local.__offsetx
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[405]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [366]

:[406]
pushloc.v local.remfont
call.i draw_set_font(argc=1)
popz.v

:[407]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [417]

:[408]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [417]

:[409]
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [417]

:[410]
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [415]

:[411]
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
bt [415]

:[412]
pushglb.v global.bmenuno
pushi.e 11
cmp.i.v EQ
bt [415]

:[413]
pushglb.v global.bmenuno
pushi.e 12
cmp.i.v EQ
bt [415]

:[414]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
b [416]

:[415]
push.e 1

:[416]
b [418]

:[417]
push.e 0

:[418]
bf [end]

:[419]
pushi.e 576
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [421]

:[420]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 9999
conv.i.v
push.s "obj_battlecontroller_slash_Draw_0_gml_653_0"@21627
conv.s.v
push.s "Berdly"@4907
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 407
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
add.i.v
call.i draw_text_ext_transformed(argc=8)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 65535
conv.i.v
push.i 65535
conv.i.v
push.i 8421504
conv.i.v
push.v 574.bardlymercy
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 433
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 600
add.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 418
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 520
add.i.v
call.i draw_healthbar(argc=11)
popz.v
b [422]

:[421]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 9999
conv.i.v
push.s "obj_queen_enemy_slash_Draw_0_gml_67_0"@21630
conv.s.v
push.s "Shield"@21631
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 407
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
add.i.v
call.i draw_text_ext_transformed(argc=8)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 65535
conv.i.v
push.i 65535
conv.i.v
push.i 8421504
conv.i.v
push.v 574.shieldacthp
push.v 574.shieldactmaxhp
div.v.v
pushi.e 10
mul.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 433
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 600
add.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 418
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 520
add.i.v
call.i draw_healthbar(argc=11)
popz.v

:[422]
pushi.e 0
pop.v.i local.xx2
pushglb.v global.charturn
pushi.e 0
cmp.i.v GT
bf [424]

:[423]
pushglb.v global.bmenuno
pushi.e 13
cmp.i.v EQ
b [425]

:[424]
push.e 0

:[425]
bf [427]

:[426]
pushi.e 100
pop.v.i local.xx2

:[427]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v NEQ
bf [end]

:[428]
push.v 574.shieldhp
pushi.e 1
cmp.i.v GT
bf [430]

:[429]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 9999
conv.i.v
push.s "obj_queen_enemy_slash_Draw_0_gml_78_0"@21636
conv.s.v
push.s "(Protected)"@21637
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 376
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 210
add.i.v
pushloc.v local.xx2
add.v.v
call.i draw_text_ext_transformed(argc=8)
popz.v
b [end]

:[430]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 9999
conv.i.v
push.s "obj_queen_enemy_slash_Draw_0_gml_82_0"@21638
conv.s.v
push.s "(Defenseless)"@21639
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 376
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 210
add.i.v
pushloc.v local.xx2
add.v.v
call.i draw_text_ext_transformed(argc=8)
popz.v

:[end]