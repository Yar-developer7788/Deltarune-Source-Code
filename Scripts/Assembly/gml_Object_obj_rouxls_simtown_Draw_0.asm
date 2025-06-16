.localvar 2 arguments
.localvar 26905 txt 13959
.localvar 26911 button_offset 13960

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 729
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[1]
push.v self.MyTurn
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e -50
pop.v.i self.depth
b [7]

:[3]
pushbltn.v builtin.room
pushi.e 202
cmp.i.v NEQ
bf [5]

:[4]
push.v 729.depth
pushi.e 9997
add.i.v
b [6]

:[5]
push.i 840000
conv.i.v

:[6]
pop.v.v self.depth

:[7]
b [10]

:[8]
pushbltn.v builtin.room
pushi.e 202
cmp.i.v NEQ
bf [10]

:[9]
push.i 900000
pop.v.i self.depth

:[10]
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
pushi.e 16
cmp.i.v LT
bf [33]

:[12]
pushi.e 0
pop.v.i self.j

:[13]
push.v self.j
pushi.e 6
cmp.i.v LT
bf [32]

:[14]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.j
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.TileLand
push.v self.j
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.base_ypos
push.v self.j
pushi.e 40
mul.i.v
add.v.v
pushi.e 80
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.tileHouseY
push.v self.j
conv.v.i
pushaf.e
add.v.v
push.v self.base_xpos
push.v self.i
pushi.e 40
mul.i.v
add.v.v
pushi.e 2
conv.i.v
pushi.e 3182
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[19]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.j
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.base_ypos
push.v self.j
pushi.e 40
mul.i.v
add.v.v
pushi.e 80
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.tileHouseY
push.v self.j
conv.v.i
pushaf.e
add.v.v
push.v self.base_xpos
push.v self.i
pushi.e 40
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 3182
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[21]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.j
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.base_ypos
push.v self.j
pushi.e 40
mul.i.v
add.v.v
pushi.e 80
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.tileHouseY
push.v self.j
conv.v.i
pushaf.e
add.v.v
push.v self.base_xpos
push.v self.i
pushi.e 40
mul.i.v
add.v.v
pushi.e 1
conv.i.v
pushi.e 3182
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[23]
push.v self.MyTurn
pushi.e 1
cmp.i.v EQ
bf [31]

:[24]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.TileYouCanBuild
push.v self.j
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [31]

:[25]
push.v self.CursorX
push.v self.i
cmp.v.v EQ
bf [27]

:[26]
push.v self.CursorY
push.v self.j
cmp.v.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.d 0.6
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
add.v.d
push.i 65535
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.base_ypos
push.v self.j
pushi.e 40
mul.i.v
add.v.v
pushi.e 80
add.i.v
push.v self.base_xpos
push.v self.i
pushi.e 40
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 2076
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.2
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
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
push.v self.base_ypos
push.v self.j
pushi.e 40
mul.i.v
add.v.v
pushi.e 80
add.i.v
push.v self.base_xpos
push.v self.i
pushi.e 40
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 3182
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [31]

:[30]
push.d 0.6
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
add.v.d
push.i 65535
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.base_ypos
push.v self.j
pushi.e 40
mul.i.v
add.v.v
pushi.e 80
add.i.v
push.v self.base_xpos
push.v self.i
pushi.e 40
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 3182
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[31]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [13]

:[32]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[33]
push.s "obj_rouxls_simtown_slash_Draw_0_gml_47_0"@26888
conv.s.v
push.s "* You can take this tile!"@26889
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.StatusMessage
pushi.e -1
push.v self.CursorX
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.CursorY
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [35]

:[34]
push.s "obj_rouxls_simtown_slash_Draw_0_gml_48_0"@26890
conv.s.v
push.s "* Press arrows to move!"@26891
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.StatusMessage

:[35]
pushi.e -1
push.v self.CursorX
conv.v.i
push.v [arraypushaf]self.TileYouCanBuild
push.v self.CursorY
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
pushi.e -1
push.v self.CursorX
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.CursorY
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v NEQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
push.s "obj_rouxls_simtown_slash_Draw_0_gml_49_0"@26892
conv.s.v
push.s "* Too far from own territory!"@26893
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.StatusMessage

:[40]
pushi.e -1
push.v self.CursorX
conv.v.i
push.v [arraypushaf]self.TileLand
push.v self.CursorY
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v NEQ
bf [42]

:[41]
push.s "obj_rouxls_simtown_slash_Draw_0_gml_50_0"@26894
conv.s.v
push.s "* Can't build on acid!"@26895
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.StatusMessage

:[42]
pushi.e -1
push.v self.CursorX
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.CursorY
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [44]

:[43]
push.s "obj_rouxls_simtown_slash_Draw_0_gml_51_0"@26896
conv.s.v
push.s "* Can't build on enemy territory!"@26897
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.StatusMessage

:[44]
push.v self.CursorX
pushi.e 2
cmp.i.v EQ
bf [46]

:[45]
push.v self.CursorY
pushi.e 2
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
push.s "obj_rouxls_simtown_slash_Draw_0_gml_53_0"@26898
conv.s.v
push.s "* Swan is lacking#structural support"@26899
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.StatusMessage

:[49]
push.v self.CursorX
pushi.e 2
cmp.i.v EQ
bf [51]

:[50]
push.v self.CursorY
pushi.e 3
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
push.s "obj_rouxls_simtown_slash_Draw_0_gml_54_0"@26900
conv.s.v
push.s "* Swan is lacking#structural support"@26899
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.StatusMessage

:[54]
push.v self.CursorX
pushi.e 3
cmp.i.v EQ
bf [56]

:[55]
push.v self.CursorY
pushi.e 2
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
push.s "obj_rouxls_simtown_slash_Draw_0_gml_55_0"@26901
conv.s.v
push.s "* Swan is lacking#structural support"@26899
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.StatusMessage

:[59]
push.v self.CursorX
pushi.e 3
cmp.i.v EQ
bf [61]

:[60]
push.v self.CursorY
pushi.e 3
cmp.i.v EQ
b [62]

:[61]
push.e 0

:[62]
bf [64]

:[63]
push.s "obj_rouxls_simtown_slash_Draw_0_gml_56_0"@26902
conv.s.v
push.s "* Swan is lacking#structural support"@26899
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.StatusMessage

:[64]
push.s "obj_rouxls_simtown_slash_Draw_0_gml_58_0"@26903
conv.s.v
push.s "* A familiar-looking machine."@26904
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.txt
pushi.e 730
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [66]

:[65]
pushi.e 730
pushi.e 1
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
push.s "obj_rouxls_simtown_slash_Draw_0_gml_59_0"@26906
conv.s.v
push.s "* It seems to be in love with your swan."@26907
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.txt

:[69]
push.v self.CursorX
pushi.e 12
cmp.i.v EQ
bf [71]

:[70]
push.v self.CursorY
pushi.e 1
cmp.i.v EQ
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
pushloc.v local.txt
pop.v.v self.StatusMessage

:[74]
push.v self.CursorX
pushi.e 13
cmp.i.v EQ
bf [76]

:[75]
push.v self.CursorY
pushi.e 1
cmp.i.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [79]

:[78]
pushloc.v local.txt
pop.v.v self.StatusMessage

:[79]
push.v self.CursorX
pushi.e 14
cmp.i.v EQ
bf [81]

:[80]
push.v self.CursorY
pushi.e 1
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
pushloc.v local.txt
pop.v.v self.StatusMessage

:[84]
push.v self.CursorX
pushi.e 15
cmp.i.v EQ
bf [86]

:[85]
push.v self.CursorY
pushi.e 1
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
pushloc.v local.txt
pop.v.v self.StatusMessage

:[89]
push.v self.CursorX
pushi.e 12
cmp.i.v EQ
bf [91]

:[90]
push.v self.CursorY
pushi.e 2
cmp.i.v EQ
b [92]

:[91]
push.e 0

:[92]
bf [94]

:[93]
pushloc.v local.txt
pop.v.v self.StatusMessage

:[94]
push.v self.CursorX
pushi.e 13
cmp.i.v EQ
bf [96]

:[95]
push.v self.CursorY
pushi.e 2
cmp.i.v EQ
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
pushloc.v local.txt
pop.v.v self.StatusMessage

:[99]
push.v self.CursorX
pushi.e 14
cmp.i.v EQ
bf [101]

:[100]
push.v self.CursorY
pushi.e 2
cmp.i.v EQ
b [102]

:[101]
push.e 0

:[102]
bf [104]

:[103]
pushloc.v local.txt
pop.v.v self.StatusMessage

:[104]
push.v self.CursorX
pushi.e 15
cmp.i.v EQ
bf [106]

:[105]
push.v self.CursorY
pushi.e 2
cmp.i.v EQ
b [107]

:[106]
push.e 0

:[107]
bf [109]

:[108]
pushloc.v local.txt
pop.v.v self.StatusMessage

:[109]
push.v self.CursorX
pushi.e 12
cmp.i.v EQ
bf [111]

:[110]
push.v self.CursorY
pushi.e 3
cmp.i.v EQ
b [112]

:[111]
push.e 0

:[112]
bf [114]

:[113]
pushloc.v local.txt
pop.v.v self.StatusMessage

:[114]
push.v self.CursorX
pushi.e 13
cmp.i.v EQ
bf [116]

:[115]
push.v self.CursorY
pushi.e 3
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
pushloc.v local.txt
pop.v.v self.StatusMessage

:[119]
push.v self.CursorX
pushi.e 14
cmp.i.v EQ
bf [121]

:[120]
push.v self.CursorY
pushi.e 3
cmp.i.v EQ
b [122]

:[121]
push.e 0

:[122]
bf [124]

:[123]
pushloc.v local.txt
pop.v.v self.StatusMessage

:[124]
push.v self.CursorX
pushi.e 15
cmp.i.v EQ
bf [126]

:[125]
push.v self.CursorY
pushi.e 3
cmp.i.v EQ
b [127]

:[126]
push.e 0

:[127]
bf [129]

:[128]
pushloc.v local.txt
pop.v.v self.StatusMessage

:[129]
push.v self.CursorX
pushi.e 13
cmp.i.v EQ
bf [131]

:[130]
push.v self.CursorY
pushi.e 1
cmp.i.v EQ
b [132]

:[131]
push.e 0

:[132]
bf [134]

:[133]
push.s "obj_rouxls_simtown_slash_Draw_0_gml_72_0"@26908
conv.s.v
push.s "* Thoust admireth moi...?"@26909
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.StatusMessage

:[134]
push.v self.MyTurn
pushi.e 0
cmp.i.v EQ
bf [136]

:[135]
push.s "* Rouxls Turn. TurnCon:"@26910
push.v self.TurnCon
call.i string(argc=1)
add.v.s
pop.v.v self.StatusMessage

:[136]
push.v self.MyTurn
pushi.e 1
cmp.i.v EQ
bf [153]

:[137]
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "#"@6243
conv.s.v
push.s "&"@6153
conv.s.v
push.v self.StatusMessage
call.i string_replace_all(argc=3)
pop.v.v self.StatusMessage
push.v self.StatusMessage
call.i string_hash_to_newline(argc=1)
push.v self.base_ypos
pushi.e 415
add.i.v
push.v self.base_xpos
pushi.e 66
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.is_console
conv.v.b
bt [139]

:[138]
push.v 1112.gamepad_active
conv.v.b
b [140]

:[139]
push.e 1

:[140]
bf [148]

:[141]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [143]

:[142]
pushi.e 0
conv.i.v
b [144]

:[143]
pushi.e -122
conv.i.v

:[144]
pop.v.v local.button_offset
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
push.v self.base_ypos
pushi.e 391
add.i.v
push.v self.base_xpos
pushi.e 233
add.i.v
pushloc.v local.button_offset
add.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
pushi.e -5
pushi.e 4
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
call.i draw_sprite_ext(argc=9)
popz.v
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [146]

:[145]
push.s "obj_rouxls_simtown_slash_Draw_0_gml_103_0"@26912
conv.s.v
push.s "* Claim with"@26913
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.base_ypos
pushi.e 387
add.i.v
push.v self.base_xpos
pushi.e 66
add.i.v
call.i draw_text(argc=3)
popz.v
b [147]

:[146]
push.s "＊ "@26914
conv.s.v
call.i gml_Script_stringset(argc=1)
push.v self.base_ypos
pushi.e 387
add.i.v
push.v self.base_xpos
pushi.e 66
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_rouxls_simtown_slash_Draw_0_gml_103_0"@26912
conv.s.v
push.s "* Claim with"@26913
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.base_ypos
pushi.e 387
add.i.v
push.v self.base_xpos
pushi.e 140
add.i.v
call.i draw_text(argc=3)
popz.v

:[147]
b [149]

:[148]
push.s "obj_rouxls_simtown_slash_Draw_0_gml_80_0"@26915
conv.s.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* Claim with ~1!"@26916
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
push.v self.base_ypos
pushi.e 387
add.i.v
push.v self.base_xpos
pushi.e 66
add.i.v
call.i draw_text(argc=3)
popz.v

:[149]
pushbltn.v builtin.room
pushi.e 202
cmp.i.v NEQ
bf [151]

:[150]
push.v self.CursorVisualX
b [152]

:[151]
call.i gml_Script_camerax(argc=0)
push.v self.CursorVisualX
add.v.v
pushi.e 8
add.i.v

:[152]
push.v self.specialCursor
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.CursorVisualY
push.v self.specialCursor
pushi.e -9
pop.v.v [stacktop]self.y
b [154]

:[153]
pushi.e -999
push.v self.specialCursor
pushi.e -9
pop.v.i [stacktop]self.y

:[154]
push.v self.flyaway
pushi.e 1
cmp.i.v EQ
bf [end]

:[155]
push.i 171878
setowner.e
pushi.e -1
pushi.e 6
push.v [arraypopaf]self.tileHouseY
pushi.e 2
dup.i 4
savearef.e
pushaf.e
pushi.e 16
sub.i.v
restorearef.e
dup.i 4 40
popaf.e
pushi.e -1
pushi.e 7
push.v [arraypopaf]self.tileHouseY
pushi.e 2
dup.i 4
savearef.e
pushaf.e
pushi.e 17
sub.i.v
restorearef.e
dup.i 4 40
popaf.e
pushi.e -1
pushi.e 8
push.v [arraypopaf]self.tileHouseY
pushi.e 2
dup.i 4
savearef.e
pushaf.e
pushi.e 16
sub.i.v
restorearef.e
dup.i 4 40
popaf.e
pushi.e -1
pushi.e 7
push.v [arraypopaf]self.tileHouseY
pushi.e 3
dup.i 4
savearef.e
pushaf.e
pushi.e 18
sub.i.v
restorearef.e
dup.i 4 40
popaf.e
pushi.e -1
pushi.e 8
push.v [arraypopaf]self.tileHouseY
pushi.e 3
dup.i 4
savearef.e
pushaf.e
pushi.e 15
sub.i.v
restorearef.e
dup.i 4 40
popaf.e
pushi.e -1
pushi.e 9
push.v [arraypopaf]self.tileHouseY
pushi.e 3
dup.i 4
savearef.e
pushaf.e
pushi.e 19
sub.i.v
restorearef.e
dup.i 4 40
popaf.e

:[end]