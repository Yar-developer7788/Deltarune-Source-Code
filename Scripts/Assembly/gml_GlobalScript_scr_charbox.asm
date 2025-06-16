.localvar 2 arguments
.localvar 6811 tensionamount 1103
.localvar 6813 icon_offset 1105

:[0]
b [157]

> gml_Script_scr_charbox (locals=2, argc=0)
:[1]
pushi.e 0
pop.v.i self.c

:[2]
push.v self.c
pushi.e 4
cmp.i.v LT
bf [156]

:[3]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.havechar
pushi.e 1
cmp.i.v EQ
bf [155]

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
push.v self.c
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
pushi.e -1
pushi.e 3
push.v [array]self.hpcolor
pop.v.v self.charcolor

:[12]
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
bf [14]

:[13]
push.v self.chartotal
pushi.e 3
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 0
pop.v.i self.xchunk

:[17]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.v self.chartotal
pushi.e 3
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 213
pop.v.i self.xchunk

:[22]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
push.v self.chartotal
pushi.e 3
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 426
pop.v.i self.xchunk

:[27]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
push.v self.chartotal
pushi.e 2
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 108
pop.v.i self.xchunk

:[32]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
push.v self.chartotal
pushi.e 2
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 322
pop.v.i self.xchunk

:[37]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
push.v self.chartotal
pushi.e 1
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 213
pop.v.i self.xchunk

:[42]
push.v self.gc
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
bf [56]

:[43]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
pushi.e 480
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
push.v self.xx
push.v self.xchunk
add.v.v
call.i gml_Script_scr_selectionmatrix(argc=2)
popz.v

:[45]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -32
cmp.i.v GT
bf [47]

:[46]
push.i 11372860
setowner.e
pushi.e -1
push.v self.c
conv.v.i
dup.i 1
push.v [array]self.mmy
pushi.e 2
sub.i.v
pop.i.v [array]self.mmy

:[47]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -24
cmp.i.v GT
bf [49]

:[48]
pushi.e -1
push.v self.c
conv.v.i
dup.i 1
push.v [array]self.mmy
pushi.e 4
sub.i.v
pop.i.v [array]self.mmy

:[49]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -16
cmp.i.v GT
bf [51]

:[50]
pushi.e -1
push.v self.c
conv.v.i
dup.i 1
push.v [array]self.mmy
pushi.e 6
sub.i.v
pop.i.v [array]self.mmy

:[51]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -8
cmp.i.v GT
bf [53]

:[52]
pushi.e -1
push.v self.c
conv.v.i
dup.i 1
push.v [array]self.mmy
pushi.e 8
sub.i.v
pop.i.v [array]self.mmy

:[53]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -32
cmp.i.v LT
bf [55]

:[54]
pushi.e -64
conv.i.v
pushi.e -1
push.v self.c
conv.v.i
pop.v.v [array]self.mmy

:[55]
b [59]

:[56]
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
pushi.e -14
cmp.i.v LT
bf [58]

:[57]
push.i 11372860
setowner.e
pushi.e -1
push.v self.c
conv.v.i
dup.i 1
push.v [array]self.mmy
pushi.e 15
add.i.v
pop.i.v [array]self.mmy
b [59]

:[58]
push.i 11372860
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.c
conv.v.i
pop.v.v [array]self.mmy

:[59]
push.i 11372861
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
bf [61]

:[60]
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

:[61]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [100]

:[62]
pushi.e 0
pop.v.i self.spare_glow
pushi.e 0
pop.v.i self.sglowi

:[63]
push.v self.sglowi
pushi.e 3
cmp.i.v LT
bf [70]

:[64]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e 1
pop.v.i self.spare_glow

:[69]
push.v self.sglowi
pushi.e 1
add.i.v
pop.v.v self.sglowi
b [63]

:[70]
pushi.e 0
pop.v.i self.pacify_glow
push.v self.c
pushi.e 2
cmp.i.v EQ
bt [72]

:[71]
push.v self.c
pushi.e 3
cmp.i.v EQ
b [73]

:[72]
push.e 1

:[73]
bf [87]

:[74]
pushi.e 0
pop.v.i self.sglowi

:[75]
push.v self.sglowi
pushi.e 3
cmp.i.v LT
bf [87]

:[76]
pushi.e 40
pop.v.i local.tensionamount
push.v self.c
pushi.e 3
cmp.i.v EQ
bf [78]

:[77]
pushi.e 80
pop.v.i local.tensionamount

:[78]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [81]

:[79]
pushi.e -5
push.v self.sglowi
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
pushglb.v global.tension
pushloc.v local.tensionamount
cmp.v.v GTE
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
pushi.e 1
pop.v.i self.pacify_glow

:[84]
pushglb.v global.encounterno
pushi.e 31
cmp.i.v EQ
bf [86]

:[85]
pushi.e 0
pop.v.i self.pacify_glow

:[86]
push.v self.sglowi
pushi.e 1
add.i.v
pop.v.v self.sglowi
b [75]

:[87]
pushi.e 5
pop.v.i local.icon_offset
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
pushloc.v local.icon_offset
add.v.v
pushi.e -1
pushi.e 0
push.v [array]self.btc
push.s "spr_btfight"@6814
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v
push.v self.c
pushi.e 0
cmp.i.v EQ
bf [89]

:[88]
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
pushloc.v local.icon_offset
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.btc
push.s "spr_btact"@6816
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v
b [90]

:[89]
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
pushloc.v local.icon_offset
add.v.v
pushi.e -1
pushi.e 1
push.v [array]self.btc
push.s "spr_bttech"@6817
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v

:[90]
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
pushloc.v local.icon_offset
add.v.v
pushi.e -1
pushi.e 2
push.v [array]self.btc
push.s "spr_btitem"@6818
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
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
pushloc.v local.icon_offset
add.v.v
pushi.e -1
pushi.e 3
push.v [array]self.btc
push.s "spr_btspare"@6819
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
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
pushloc.v local.icon_offset
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.btc
push.s "spr_btdefend"@6820
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v
push.v self.spare_glow
pushi.e 1
cmp.i.v EQ
bf [92]

:[91]
push.v self.gc
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
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
pushloc.v local.icon_offset
add.v.v
pushi.e 2
conv.i.v
push.s "spr_btspare"@6819
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[95]
push.v self.pacify_glow
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
push.v self.gc
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
b [98]

:[97]
push.e 0

:[98]
bf [100]

:[99]
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
pushloc.v local.icon_offset
add.v.v
pushi.e 2
conv.i.v
push.s "spr_bttech"@6817
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[100]
push.v self.gc
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
bf [102]

:[101]
push.v self.charcolor
call.i draw_set_color(argc=1)
popz.v
b [103]

:[102]
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v

:[103]
pushglb.v global.charselect
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.charpos
cmp.v.v EQ
bt [105]

:[104]
pushglb.v global.charselect
pushi.e 3
cmp.i.v EQ
b [106]

:[105]
push.e 1

:[106]
bf [108]

:[107]
push.v self.charcolor
call.i draw_set_color(argc=1)
popz.v

:[108]
pushi.e 0
conv.b.v
pushi.e 480
push.v self.bp
sub.v.i
push.v self.yy
add.v.v
pushi.e 2
sub.i.v
push.v self.xx
push.v self.xchunk
add.v.v
pushi.e 212
add.i.v
pushi.e 480
push.v self.bp
sub.v.i
pushi.e 3
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
pushi.e 1
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
pushi.e 2
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 480
pop.v.i self.b_offset
pushglb.v global.fighting
pushi.e 0
cmp.i.v EQ
bf [110]

:[109]
pushi.e 430
pop.v.i self.b_offset

:[110]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [112]

:[111]
pushi.e 336
pop.v.i self.b_offset

:[112]
push.v self.c
pushi.e 0
cmp.i.v EQ
bf [127]

:[113]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [115]

:[114]
pushi.e 777
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [116]

:[115]
push.e 0

:[116]
bf [126]

:[117]
push.v 777.headsprite
pushi.e 2159
cmp.i.v EQ
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
push.v self.bpoff
pushi.e 8
add.i.v
push.v self.b_offset
add.v.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 41
add.i.v
push.v self.xchunk
add.v.v
pushi.e 1
conv.i.v
pushi.e 3195
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[119]
push.v 777.headsprite
pushi.e 2160
cmp.i.v EQ
bf [121]

:[120]
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
push.v self.bpoff
pushi.e 8
add.i.v
push.v self.b_offset
add.v.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 43
add.i.v
push.v self.xchunk
add.v.v
pushi.e 3
conv.i.v
pushi.e 3195
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[121]
push.v 777.headsprite
pushi.e 2161
cmp.i.v EQ
bf [123]

:[122]
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
push.v self.bpoff
pushi.e 8
add.i.v
push.v self.b_offset
add.v.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 43
add.i.v
push.v self.xchunk
add.v.v
pushi.e 2
conv.i.v
pushi.e 3195
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[123]
push.v 777.headsprite
pushi.e 2162
cmp.i.v EQ
bf [125]

:[124]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 1.6
conv.d.v
push.d 1.6
conv.d.v
push.v self.bpoff
pushi.e 8
add.i.v
push.v self.b_offset
add.v.v
pushi.e -1
push.v self.c
conv.v.i
push.v [array]self.mmy
add.v.v
push.v self.xx
pushi.e 36
add.i.v
push.v self.xchunk
add.v.v
pushi.e 0
conv.i.v
pushi.e 3195
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[125]
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
push.s "spr_bnamethrash"@6827
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v
b [127]

:[126]
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
pushi.e 2251
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
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v

:[127]
push.v self.c
pushi.e 1
cmp.i.v EQ
bf [129]

:[128]
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
pushi.e 2253
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
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v

:[129]
push.v self.c
pushi.e 2
cmp.i.v EQ
bf [131]

:[130]
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
pushi.e 2252
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
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v

:[131]
push.v self.c
pushi.e 3
cmp.i.v EQ
bf [133]

:[132]
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
pushi.e 2254
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
push.s "spr_bnamenoelle"@6831
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite(argc=4)
popz.v

:[133]
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
pushi.e 2255
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
bf [135]

:[134]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[135]
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [137]

:[136]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[137]
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [140]

:[138]
pushi.e 777
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [140]

:[139]
push.v 777.dead
pushi.e 0
cmp.i.v NEQ
b [141]

:[140]
push.e 0

:[141]
bf [143]

:[142]
pushi.e 0
conv.i.v
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
b [144]

:[143]
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

:[144]
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
pushi.e 2256
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
bf [146]

:[145]
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.maxhp
pushi.e 0
cmp.i.v GT
b [147]

:[146]
push.e 0

:[147]
bf [155]

:[148]
push.v self.charcolor
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [151]

:[149]
pushi.e 777
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [151]

:[150]
push.v 777.dead
pushi.e 0
cmp.i.v NEQ
b [152]

:[151]
push.e 0

:[152]
bf [154]

:[153]
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
pushi.e 0
conv.i.d
pushi.e -5
push.v self.c
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.maxhp
div.v.d
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
b [155]

:[154]
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

:[155]
push.v self.c
pushi.e 1
add.i.v
pop.v.v self.c
b [2]

:[156]
exit.i

:[157]
push.i [function]gml_Script_scr_charbox
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_charbox
popz.v

:[end]