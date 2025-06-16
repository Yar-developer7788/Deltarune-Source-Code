.localvar 2 arguments

:[0]
b [122]

> gml_Script_scr_charbox_ch1 (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.c

:[2]
push.v self.c
pushi.e 3
cmp.i.v LT
bf [121]

:[3]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
bf [120]

:[4]
push.v self.c
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e -1
pushi.e 0
push.v [array]self.hpcolor
pop.v.v self.charcolor

:[6]
push.v self.c
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e -1
pushi.e 1
push.v [array]self.hpcolor
pop.v.v self.charcolor

:[8]
push.v self.c
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e -1
pushi.e 2
push.v [array]self.hpcolor
pop.v.v self.charcolor

:[10]
pushglb.v global.charturn
pop.v.v self.gc
pushi.e 0
pop.v.i self.xchunk
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.v self.chartotal
pushi.e 3
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 0
pop.v.i self.xchunk

:[15]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v self.chartotal
pushi.e 3
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 212
pop.v.i self.xchunk

:[20]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
push.v self.chartotal
pushi.e 3
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 424
pop.v.i self.xchunk

:[25]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
push.v self.chartotal
pushi.e 2
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 106
pop.v.i self.xchunk

:[30]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
push.v self.chartotal
pushi.e 2
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 326
pop.v.i self.xchunk

:[35]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.v self.chartotal
pushi.e 1
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 212
pop.v.i self.xchunk

:[40]
push.v self.gc
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
bf [54]

:[41]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
pushi.e 480
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
call.i gml_Script_scr_selectionmatrix_ch1(argc=2)
popz.v

:[43]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -32
cmp.i.v GT
bf [45]

:[44]
push.i 57116988
setowner.e
pushi.e -1
push.v self.c
conv.v.i
dup.i 1
push.v [array]self.mmy
pushi.e 2
sub.i.v
pop.i.v [array]self.mmy

:[45]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -24
cmp.i.v GT
bf [47]

:[46]
pushi.e -1
push.v self.c
conv.v.i
dup.i 1
push.v [array]self.mmy
pushi.e 4
sub.i.v
pop.i.v [array]self.mmy

:[47]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -16
cmp.i.v GT
bf [49]

:[48]
pushi.e -1
push.v self.c
conv.v.i
dup.i 1
push.v [array]self.mmy
pushi.e 6
sub.i.v
pop.i.v [array]self.mmy

:[49]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -8
cmp.i.v GT
bf [51]

:[50]
pushi.e -1
push.v self.c
conv.v.i
dup.i 1
push.v [array]self.mmy
pushi.e 8
sub.i.v
pop.i.v [array]self.mmy

:[51]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -32
cmp.i.v LT
bf [53]

:[52]
pushi.e -64
conv.i.v
pushi.e -1
push.v self.c
conv.v.i
pop.v.v [array]self.mmy

:[53]
b [57]

:[54]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -14
cmp.i.v LT
bf [56]

:[55]
push.i 57116988
setowner.e
pushi.e -1
push.v self.c
conv.v.i
dup.i 1
push.v [array]self.mmy
pushi.e 15
add.i.v
pop.i.v [array]self.mmy
b [57]

:[56]
push.i 57116988
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.c
conv.v.i
pop.v.v [array]self.mmy

:[57]
push.i 57116989
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.btc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.btc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.btc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.btc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.btc
push.v self.gc
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
bf [59]

:[58]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e -5
pushi.e 0
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pop.v.v [array]self.btc

:[59]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [93]

:[60]
pushi.e 0
pop.v.i self.spare_glow
pushi.e 0
pop.v.i self.sglowi

:[61]
push.v self.sglowi
pushi.e 3
cmp.i.v LT
bf [68]

:[62]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [64]

:[63]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
pushi.e 1
pop.v.i self.spare_glow

:[67]
push.v self.sglowi
pushi.e 1
add.i.v
pop.v.v self.sglowi
b [61]

:[68]
pushi.e 0
pop.v.i self.pacify_glow
push.v self.c
pushi.e 2
cmp.i.v EQ
bf [80]

:[69]
pushi.e 0
pop.v.i self.sglowi

:[70]
push.v self.sglowi
pushi.e 3
cmp.i.v LT
bf [80]

:[71]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [74]

:[72]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
pushglb.v global.tension
pushi.e 40
cmp.i.v GTE
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e 1
pop.v.i self.pacify_glow

:[77]
pushglb.v global.encounterno
pushi.e 31
cmp.i.v EQ
bf [79]

:[78]
pushi.e 0
pop.v.i self.pacify_glow

:[79]
push.v self.sglowi
pushi.e 1
add.i.v
pop.v.v self.sglowi
b [70]

:[80]
pushi.e 485
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 15
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.btc
push.s "spr_btfight"@6814
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite(argc=4)
popz.v
push.v self.c
pushi.e 0
cmp.i.v EQ
bf [82]

:[81]
pushi.e 485
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 50
add.i.v
pushi.e -1
pushi.e 1
push.v [array]self.btc
push.s "spr_btact"@6816
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite(argc=4)
popz.v
b [83]

:[82]
pushi.e 485
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 50
add.i.v
pushi.e -1
pushi.e 1
push.v [array]self.btc
push.s "spr_bttech"@6817
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite(argc=4)
popz.v

:[83]
pushi.e 485
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 85
add.i.v
pushi.e -1
pushi.e 2
push.v [array]self.btc
push.s "spr_btitem"@6818
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite(argc=4)
popz.v
pushi.e 485
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 120
add.i.v
pushi.e -1
pushi.e 3
push.v [array]self.btc
push.s "spr_btspare"@6819
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite(argc=4)
popz.v
pushi.e 485
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 155
add.i.v
pushi.e -1
pushi.e 4
push.v [array]self.btc
push.s "spr_btdefend"@6820
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite(argc=4)
popz.v
push.v self.spare_glow
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
push.v self.gc
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
b [86]

:[85]
push.e 0

:[86]
bf [88]

:[87]
push.d 0.4
pushglb.v global.time
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.4
mul.d.v
add.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 485
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 120
add.i.v
pushi.e 2
conv.i.v
push.s "spr_btspare"@6819
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[88]
push.v self.pacify_glow
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
push.v self.gc
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
b [91]

:[90]
push.e 0

:[91]
bf [93]

:[92]
push.d 0.4
pushglb.v global.time
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.4
mul.d.v
add.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 485
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 50
add.i.v
pushi.e 2
conv.i.v
push.s "spr_bttech"@6817
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[93]
push.v self.gc
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
bf [95]

:[94]
push.v self.charcolor
call.i draw_set_color(argc=1)
popz.v
b [96]

:[95]
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v

:[96]
pushglb.v global.charselect
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
bt [98]

:[97]
pushglb.v global.charselect
pushi.e 3
cmp.i.v EQ
b [99]

:[98]
push.e 1

:[99]
bf [101]

:[100]
push.v self.charcolor
call.i draw_set_color(argc=1)
popz.v

:[101]
pushi.e 0
conv.b.v
pushi.e 480
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 212
add.i.v
pushi.e 480
push.v self.bp
sub.v.i
pushi.e 2
sub.i.v
push.v self.yy
add.v.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
call.i draw_rectangle(argc=5)
popz.v
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
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
pushi.e 33
add.i.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 210
add.i.v
pushi.e 480
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 2
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 480
pop.v.i self.b_offset
pushglb.v global.fighting
pushi.e 0
cmp.i.v EQ
bf [103]

:[102]
pushi.e 430
pop.v.i self.b_offset

:[103]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
pushi.e 336
pop.v.i self.b_offset

:[105]
push.v self.c
pushi.e 0
cmp.i.v EQ
bf [107]

:[106]
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 13
add.i.v
push.v self.xchunk
add.v.v
pushi.e -5
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
conv.v.i
push.v [array]self.faceaction
pushi.e 4044
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 3
add.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 51
add.i.v
push.v self.xchunk
add.v.v
pushi.e 0
conv.i.v
push.s "spr_bnamekris"@6828
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite(argc=4)
popz.v

:[107]
push.v self.c
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 13
add.i.v
push.v self.xchunk
add.v.v
pushi.e -5
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
conv.v.i
push.v [array]self.faceaction
pushi.e 4046
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 3
add.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 51
add.i.v
push.v self.xchunk
add.v.v
pushi.e 0
conv.i.v
push.s "spr_bnamesusie"@6829
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite(argc=4)
popz.v

:[109]
push.v self.c
pushi.e 2
cmp.i.v EQ
bf [111]

:[110]
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 13
add.i.v
push.v self.xchunk
add.v.v
pushi.e -5
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
conv.v.i
push.v [array]self.faceaction
pushi.e 4045
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 3
add.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 51
add.i.v
push.v self.xchunk
add.v.v
pushi.e 0
conv.i.v
push.s "spr_bnameralsei"@6830
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite(argc=4)
popz.v

:[111]
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 11
add.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 109
add.i.v
push.v self.xchunk
add.v.v
pushi.e 0
conv.i.v
pushi.e 4047
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.hpfont
call.i draw_set_font(argc=1)
popz.v
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.hp
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.maxhp
div.v.v
push.d 0.25
cmp.d.v LTE
bf [113]

:[112]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[113]
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [115]

:[114]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[115]
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.hp
call.i string_hash_to_newline(argc=1)
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 2
sub.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 160
add.i.v
push.v self.xchunk
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 4
sub.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 159
add.i.v
push.v self.xchunk
add.v.v
pushi.e 0
conv.i.v
pushi.e 4048
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.maxhp
call.i string_hash_to_newline(argc=1)
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 2
sub.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 205
add.i.v
push.v self.xchunk
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 128
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 19
add.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 203
add.i.v
push.v self.xchunk
add.v.v
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 11
add.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 128
add.i.v
push.v self.xchunk
add.v.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
bf [117]

:[116]
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.maxhp
pushi.e 0
cmp.i.v GT
b [118]

:[117]
push.e 0

:[118]
bf [120]

:[119]
push.v self.charcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 19
add.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 128
add.i.v
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.hp
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.maxhp
div.v.v
pushi.e 75
mul.i.v
call.i ceil(argc=1)
add.v.v
push.v self.bpoff
push.v self.b_offset
add.v.v
pushi.e 11
add.i.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 128
add.i.v
push.v self.xchunk
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[120]
push.v self.c
pushi.e 1
add.i.v
pop.v.v self.c
b [2]

:[121]
exit.i

:[122]
push.i [function]gml_Script_scr_charbox_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_charbox_ch1
popz.v

:[end]