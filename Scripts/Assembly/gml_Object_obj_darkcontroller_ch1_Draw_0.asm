.localvar 2 arguments
.localvar 107 i 20850
.localvar 20465 _xPos 20851
.localvar 20466 _heartXPos 20852
.localvar 20467 _selectXPos 20853
.localvar 11955 is_dualshock 20854
.localvar 20500 _yOffset 20855
.localvar 20501 _headerOffset 20856
.localvar 40756 gamepad_text 20857
.localvar 20504 buttonXPos 20858
.localvar 20505 buttonYPos 20859
.localvar 20532 _heartYPos 20861
.localvar 20533 _heartHeight 20862
.localvar 20534 heart_offset 20863
.localvar 20535 line_padding 20864
.localvar 20536 _textHeight 20865
.localvar 20537 _textYPos 20866
.localvar 10449 _sprite 20867
.localvar 9175 _sprite_height 20868
.localvar 20538 _yPos 20869
.localvar 20541 ch_yoff 20870
.localvar 20542 ch_vspace 20871
.localvar 20544 ch_i 20872

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
push.v self.drawchar
pushi.e 1
cmp.i.v EQ
bf [16]

:[1]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 500
add.i.v
push.v self.xx
pushi.e 650
add.i.v
push.v self.yy
pushi.e 480
add.i.v
push.v self.bp
sub.v.v
push.v self.xx
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 10
sub.i.v
push.v self.xx
pushi.e 650
add.i.v
push.v self.yy
push.v self.tp
add.v.v
push.v self.xx
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
call.i gml_Script_scr_charbox_ch1(argc=0)
popz.v
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.deschaver

:[3]
push.v self.deschaver
pushi.e 0
cmp.i.v EQ
bf [16]

:[4]
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
push.v self.yy
push.v self.tp
add.v.v
pushi.e 56
sub.i.v
push.v self.xx
pushi.e 20
add.i.v
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
push.s "spr_darkmenudesc"@12018
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
push.i 169145
setowner.e
pushi.e 4179
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.msprite
pushi.e 4178
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.msprite
pushi.e 4180
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.msprite
pushi.e 4181
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.msprite
pushi.e 4177
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.msprite
pushi.e 0
pop.v.i local.i

:[5]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [15]

:[6]
pushi.e 1
pop.v.i self.off
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
pushloc.v local.i
cmp.v.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.off

:[8]
pushglb.v global.menuno
pushi.e 1
sub.i.v
pushloc.v local.i
cmp.v.v EQ
bf [10]

:[9]
pushi.e 2
pop.v.i self.off

:[10]
pushi.e 0
pop.v.i self.spritemx
pushloc.v local.i
pushi.e 2
cmp.i.v GTE
bf [12]

:[11]
pushi.e -100
pop.v.i self.spritemx

:[12]
pushloc.v local.i
pushi.e 2
cmp.i.v NEQ
bf [14]

:[13]
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
push.v self.yy
push.v self.tp
add.v.v
pushi.e 60
sub.i.v
push.v self.xx
pushi.e 120
add.i.v
pushloc.v local.i
pushi.e 100
mul.i.v
add.v.v
push.v self.spritemx
add.v.v
push.v self.off
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.msprite
call.i draw_sprite_ext(argc=9)
popz.v

:[14]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [5]

:[15]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font_ch1(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_47_0"@20462
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.gold
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
push.v self.tp
add.v.v
pushi.e 60
sub.i.v
push.v self.xx
pushi.e 520
add.i.v
call.i draw_text(argc=3)
popz.v

:[16]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [160]

:[17]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [19]

:[18]
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 412
add.i.v
push.v self.xx
pushi.e 580
add.i.v
push.v self.yy
pushi.e 85
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e 422
add.i.v
push.v self.xx
pushi.e 590
add.i.v
push.v self.yy
pushi.e 75
add.i.v
push.v self.xx
pushi.e 50
add.i.v
call.i gml_Script_scr_darkbox_ch1(argc=4)
popz.v
b [20]

:[19]
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 410
add.i.v
push.v self.xx
pushi.e 580
add.i.v
push.v self.yy
pushi.e 90
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e 420
add.i.v
push.v self.xx
pushi.e 590
add.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 50
add.i.v
call.i gml_Script_scr_darkbox_ch1(argc=4)
popz.v

:[20]
pushglb.v global.submenu
pushi.e 30
cmp.i.v GTE
bf [22]

:[21]
pushglb.v global.submenu
pushi.e 33
cmp.i.v LTE
b [23]

:[22]
push.e 0

:[23]
bt [25]

:[24]
pushglb.v global.submenu
pushi.e 36
cmp.i.v EQ
b [26]

:[25]
push.e 1

:[26]
bf [57]

:[27]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [29]

:[28]
push.v self.xx
pushi.e 170
add.i.v
b [30]

:[29]
push.v self.xx
pushi.e 150
add.i.v

:[30]
pop.v.v local._xPos
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [32]

:[31]
push.v self.xx
pushi.e 145
add.i.v
b [33]

:[32]
push.v self.xx
pushi.e 125
add.i.v

:[33]
pop.v.v local._heartXPos
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [35]

:[34]
pushglb.v global.is_console
conv.v.b
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
push.v self.xx
pushi.e 385
add.i.v
b [39]

:[38]
push.v self.xx
pushi.e 430
add.i.v

:[39]
pop.v.v local._selectXPos
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_74_0"@20468
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 100
add.i.v
push.v self.xx
pushi.e 270
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
pushi.e 17
push.v [array]self.flag
pushi.e 100
mul.i.v
call.i round(argc=1)
call.i string(argc=1)
push.s "%"@14906
add.s.v
pop.v.v self.audvol
pushi.e -5
pushi.e 16
push.v [array]self.flag
pushi.e 100
mul.i.v
call.i abs(argc=1)
call.i string(argc=1)
push.s "%"@14906
add.s.v
pop.v.v self.musvol
push.s "obj_darkcontroller_slash_Draw_0_gml_79_0"@40749
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.runoff
pushi.e -5
pushi.e 11
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
push.s "obj_darkcontroller_slash_Draw_0_gml_79_1"@40750
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.runoff

:[41]
push.s "obj_darkcontroller_slash_Draw_0_gml_80_0"@40751
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.flashoff
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
push.s "obj_darkcontroller_slash_Draw_0_gml_80_1"@40752
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.flashoff

:[43]
push.s "obj_darkcontroller_slash_Draw_0_gml_81_0"@40753
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.shakeoff
pushi.e -5
pushi.e 12
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_darkcontroller_slash_Draw_0_gml_81_1"@40754
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.shakeoff

:[45]
pushglb.v global.is_console
conv.v.b
not.b
bf [48]

:[46]
push.s "obj_darkcontroller_slash_Draw_0_gml_82_0"@20472
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.fullscreenoff
call.i window_get_fullscreen(argc=0)
conv.v.b
bf [48]

:[47]
push.s "obj_darkcontroller_slash_Draw_0_gml_82_1"@20475
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.fullscreenoff

:[48]
push.v self.yy
pushi.e 160
add.i.v
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 35
mul.i.v
add.v.v
pushloc.v local._heartXPos
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushglb.v global.submenu
pushi.e 33
cmp.i.v EQ
bf [50]

:[49]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[50]
push.s "obj_darkcontroller_slash_Draw_0_gml_86_0"@20487
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 150
add.i.v
pushloc.v local._xPos
call.i draw_text(argc=3)
popz.v
push.v self.audvol
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 150
add.i.v
pushloc.v local._selectXPos
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_91_0"@20489
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 185
add.i.v
pushloc.v local._xPos
call.i draw_text(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_92_0"@20490
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 220
add.i.v
pushloc.v local._xPos
call.i draw_text(argc=3)
popz.v
push.v self.flashoff
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 220
add.i.v
pushloc.v local._selectXPos
call.i draw_text(argc=3)
popz.v
pushglb.v global.is_console
conv.v.b
bf [56]

:[51]
push.s "obj_darkcontroller_slash_Draw_0_gml_94_0"@20380
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 255
add.i.v
pushloc.v local._xPos
call.i draw_text(argc=3)
popz.v
push.v self.runoff
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 255
add.i.v
pushloc.v local._selectXPos
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 36
cmp.i.v EQ
bf [53]

:[52]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [55]

:[53]
pushglb.v global.disable_border
conv.v.b
bf [55]

:[54]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[55]
push.v self.border_text
push.v self.yy
pushi.e 290
add.i.v
pushloc.v local._xPos
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.selected_border
conv.v.i
push.v [array]self.border_options
push.v self.yy
pushi.e 290
add.i.v
pushloc.v local._selectXPos
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_95_0"@20494
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 325
add.i.v
pushloc.v local._xPos
call.i draw_text(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_96_0"@20383
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 360
add.i.v
pushloc.v local._xPos
call.i draw_text(argc=3)
popz.v
b [57]

:[56]
push.s "obj_darkcontroller_slash_Draw_0_gml_93_0"@20496
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 255
add.i.v
pushloc.v local._xPos
call.i draw_text(argc=3)
popz.v
push.v self.fullscreenoff
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 255
add.i.v
push.v self.xx
pushi.e 430
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_94_0"@20380
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 290
add.i.v
pushloc.v local._xPos
call.i draw_text(argc=3)
popz.v
push.v self.runoff
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 290
add.i.v
push.v self.xx
pushi.e 430
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_95_0"@20494
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 325
add.i.v
pushloc.v local._xPos
call.i draw_text(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_96_0"@20383
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 360
add.i.v
pushloc.v local._xPos
call.i draw_text(argc=3)
popz.v

:[57]
pushglb.v global.submenu
pushi.e 34
cmp.i.v EQ
bf [58]

:[58]
pushglb.v global.submenu
pushi.e 35
cmp.i.v EQ
bf [160]

:[59]
push.v 1112.gamepad_active
conv.v.b
bf [61]

:[60]
push.v 1112.gamepad_id
call.i gamepad_get_description(argc=1)
push.s "Sony DualShock 4"@20499
cmp.s.v EQ
b [62]

:[61]
push.e 0

:[62]
bt [64]

:[63]
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
b [65]

:[64]
push.e 1

:[65]
pop.v.b local.is_dualshock
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [67]

:[66]
pushi.e 0
conv.i.v
b [68]

:[67]
pushi.e -4
conv.i.v

:[68]
pop.v.v local._yOffset
pushloc.v local.is_dualshock
conv.v.b
bf [70]

:[69]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
pushi.e -5
conv.i.v
b [74]

:[73]
pushi.e 0
conv.i.v

:[74]
pop.v.v local._headerOffset
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_113_0"@20502
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 100
add.i.v
pushloc.v local._headerOffset
add.v.v
push.v self.xx
pushi.e 105
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.is_console
conv.v.b
bf [85]

:[75]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [77]

:[76]
push.s "Button"@20507
conv.s.v
b [78]

:[77]
push.s "ボタン"@40755
conv.s.v

:[78]
pop.v.v local.gamepad_text
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [80]

:[79]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
b [81]

:[80]
push.e 0

:[81]
bf [83]

:[82]
push.v self.xx
pushi.e 445
add.i.v
b [84]

:[83]
push.v self.xx
pushi.e 435
add.i.v

:[84]
pop.v.v local.buttonXPos
push.v self.yy
pushi.e 100
add.i.v
pushloc.v local._yOffset
add.v.v
pop.v.v local.buttonYPos
pushloc.v local.gamepad_text
pushloc.v local.buttonYPos
pushloc.v local.buttonXPos
call.i draw_text(argc=3)
popz.v
b [87]

:[85]
push.s "obj_darkcontroller_slash_Draw_0_gml_114_0"@20508
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 100
add.i.v
pushloc.v local._headerOffset
add.v.v
push.v self.xx
pushi.e 325
add.i.v
call.i draw_text(argc=3)
popz.v
push.v 1112.gamepad_active
conv.v.b
bf [87]

:[86]
push.s "obj_darkcontroller_slash_Draw_0_gml_115_0"@20510
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 100
add.i.v
pushloc.v local._headerOffset
add.v.v
push.v self.xx
pushi.e 435
add.i.v
call.i draw_text(argc=3)
popz.v

:[87]
push.i 175452
setowner.e
push.s "obj_darkcontroller_slash_Draw_0_gml_117_0"@20512
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.function_n
push.s "obj_darkcontroller_slash_Draw_0_gml_118_0"@20515
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.function_n
push.s "obj_darkcontroller_slash_Draw_0_gml_119_0"@20517
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.function_n
push.s "obj_darkcontroller_slash_Draw_0_gml_120_0"@20519
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.function_n
push.s "obj_darkcontroller_slash_Draw_0_gml_121_0"@20521
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.function_n
push.s "obj_darkcontroller_slash_Draw_0_gml_122_0"@20523
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 5
pop.v.v [array]self.function_n
push.s "obj_darkcontroller_slash_Draw_0_gml_123_0"@20525
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 6
pop.v.v [array]self.function_n
push.s "obj_darkcontroller_slash_Draw_0_gml_124_0"@20527
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 7
pop.v.v [array]self.function_n
push.s "obj_darkcontroller_slash_Draw_0_gml_125_0"@20529
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 8
pop.v.v [array]self.function_n
pushglb.v global.is_console
conv.v.b
bt [89]

:[88]
pushloc.v local.is_dualshock
conv.v.b
b [90]

:[89]
push.e 1

:[90]
bf [98]

:[91]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [93]

:[92]
push.v self.yy
pushi.e 146
add.i.v
b [94]

:[93]
push.v self.yy
pushi.e 144
add.i.v

:[94]
pop.v.v local._heartYPos
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [96]

:[95]
pushi.e 29
conv.i.v
b [97]

:[96]
pushi.e 30
conv.i.v

:[97]
pop.v.v local._heartHeight
pushloc.v local._heartYPos
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
pushloc.v local._heartHeight
mul.v.v
add.v.v
pushloc.v local._yOffset
add.v.v
push.v self.xx
pushi.e 80
add.i.v
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [102]

:[98]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [100]

:[99]
pushi.e 28
conv.i.v
b [101]

:[100]
pushi.e 29
conv.i.v

:[101]
pop.v.v local.heart_offset
push.v self.yy
pushi.e 150
add.i.v
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
pushloc.v local.heart_offset
mul.v.v
add.v.v
pushloc.v local._yOffset
add.v.v
pushi.e 2
sub.i.v
push.v self.xx
pushi.e 80
add.i.v
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[102]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [104]

:[103]
pushi.e 1
conv.i.v
b [105]

:[104]
pushi.e 0
conv.i.v

:[105]
pop.v.v local.line_padding
pushi.e 0
pop.v.i local.i

:[106]
pushloc.v local.i
pushi.e 8
cmp.i.v LTE
bf [160]

:[107]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
pushloc.v local.i
cmp.v.v EQ
bf [109]

:[108]
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[109]
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
pushloc.v local.i
cmp.v.v EQ
bf [111]

:[110]
push.v self.control_select_con
pushi.e 1
cmp.i.v EQ
b [112]

:[111]
push.e 0

:[112]
bf [114]

:[113]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[114]
pushloc.v local.i
pushi.e 7
cmp.i.v EQ
bf [116]

:[115]
push.v self.control_flash_timer
pushi.e 0
cmp.i.v GT
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
push.v self.control_flash_timer
pushi.e 10
conv.i.d
div.d.v
push.d 0.1
sub.d.v
push.i 65535
conv.i.v
push.i 16776960
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[119]
pushloc.v local.is_dualshock
conv.v.b
bf [124]

:[120]
pushi.e 29
pop.v.i local._textHeight
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [122]

:[121]
push.v self.yy
pushi.e 137
add.i.v
b [123]

:[122]
push.v self.yy
pushi.e 136
add.i.v

:[123]
pop.v.v local._textYPos
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.function_n
call.i string_hash_to_newline(argc=1)
pushloc.v local._textYPos
pushloc.v local.i
pushloc.v local._textHeight
pushloc.v local.line_padding
add.v.v
mul.v.v
add.v.v
pushloc.v local._yOffset
add.v.v
push.v self.xx
pushi.e 105
add.i.v
call.i draw_text(argc=3)
popz.v
b [125]

:[124]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.function_n
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 140
add.i.v
pushloc.v local.i
pushi.e 28
pushloc.v local.line_padding
add.v.i
mul.v.v
add.v.v
pushloc.v local._yOffset
add.v.v
push.v self.xx
pushi.e 105
add.i.v
call.i draw_text(argc=3)
popz.v

:[125]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [159]

:[126]
pushloc.v local.is_dualshock
conv.v.b
bf [139]

:[127]
pushi.e 0
conv.b.v
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
pop.v.v local._sprite
pushi.e 29
pop.v.i local._sprite_height
push.v self.xx
pushi.e 465
add.i.v
pop.v.v local._xPos
push.v self.yy
pushi.e 139
add.i.v
pop.v.v local._yPos
pushloc.v local._sprite
pushi.e 2611
cmp.i.v EQ
bt [131]

:[128]
pushloc.v local._sprite
pushi.e 2612
cmp.i.v EQ
bt [131]

:[129]
pushloc.v local._sprite
pushi.e 2609
cmp.i.v EQ
bt [131]

:[130]
pushloc.v local._sprite
pushi.e 2610
cmp.i.v EQ
b [132]

:[131]
push.e 1

:[132]
bf [134]

:[133]
pushi.e 30
pop.v.i local._sprite_height
pushloc.v local._textYPos
push.d 0.5
add.d.v
pop.v.v local._yPos
push.v self.xx
pushi.e 463
add.i.v
pop.v.v local._xPos
b [136]

:[134]
pushloc.v local._sprite
pushi.e 2520
cmp.i.v EQ
bf [136]

:[135]
push.d 29.5
pop.v.d local._sprite_height
pushloc.v local._textYPos
push.d 0.5
add.d.v
pop.v.v local._yPos
push.v self.xx
pushi.e 460
add.i.v
pop.v.v local._xPos

:[136]
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
pushloc.v local._yPos
pushloc.v local.i
pushloc.v local._sprite_height
pushloc.v local.line_padding
add.v.v
mul.v.v
add.v.v
pushloc.v local._yOffset
add.v.v
pushloc.v local._xPos
pushi.e 0
conv.i.v
pushloc.v local._sprite
call.i draw_sprite_ext(argc=9)
popz.v
pushglb.v global.is_console
conv.v.b
not.b
bf [138]

:[137]
pushi.e -5
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
conv.v.i
push.v [array]self.asc_def
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 140
add.i.v
pushloc.v local.i
pushi.e 28
mul.i.v
add.v.v
push.v self.xx
pushi.e 325
add.i.v
call.i draw_text(argc=3)
popz.v

:[138]
b [159]

:[139]
pushglb.v global.is_console
conv.v.b
bf [152]

:[140]
pushi.e 0
conv.b.v
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
pushi.e -4
cmp.i.v NEQ
bf [142]

:[141]
pushi.e 0
conv.b.v
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
b [143]

:[142]
pushi.e 2578
conv.i.v

:[143]
pop.v.v local._sprite
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [145]

:[144]
push.v self.xx
pushi.e 475
add.i.v
b [146]

:[145]
push.v self.xx
pushi.e 465
add.i.v

:[146]
pop.v.v local._xPos
pushloc.v local._sprite
pushi.e 2595
cmp.i.v EQ
bt [148]

:[147]
pushloc.v local._sprite
pushi.e 2596
cmp.i.v EQ
b [149]

:[148]
push.e 1

:[149]
bf [151]

:[150]
push.v local._xPos
pushi.e 3
sub.i.v
pop.v.v local._xPos

:[151]
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
push.v self.yy
pushi.e 144
add.i.v
pushloc.v local.i
pushi.e 28
pushloc.v local.line_padding
add.v.i
mul.v.v
add.v.v
pushloc.v local._yOffset
add.v.v
pushloc.v local._xPos
pushi.e 0
conv.i.v
pushloc.v local._sprite
call.i draw_sprite_ext(argc=9)
popz.v
b [159]

:[152]
pushi.e -5
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
conv.v.i
push.v [array]self.asc_def
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 140
add.i.v
pushloc.v local.i
pushi.e 28
mul.i.v
add.v.v
push.v self.xx
pushi.e 325
add.i.v
call.i draw_text(argc=3)
popz.v
push.v 1112.gamepad_active
conv.v.b
bf [159]

:[153]
pushi.e 0
conv.b.v
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
pop.v.v local._sprite
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [155]

:[154]
push.v self.xx
pushi.e 475
add.i.v
b [156]

:[155]
push.v self.xx
pushi.e 465
add.i.v

:[156]
pop.v.v local._xPos
pushloc.v local._sprite
call.i sprite_get_width(argc=1)
pushi.e 12
cmp.i.v LT
bf [158]

:[157]
push.v local._xPos
pushi.e 2
add.i.v
pop.v.v local._xPos

:[158]
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
push.v self.yy
pushi.e 144
add.i.v
pushloc.v local.i
pushi.e 28
pushloc.v local.line_padding
add.v.i
mul.v.v
add.v.v
pushloc.v local._yOffset
add.v.v
pushloc.v local._xPos
pushi.e 0
conv.i.v
pushloc.v local._sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[159]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [106]

:[160]
pushglb.v global.menuno
pushi.e 4
cmp.i.v EQ
bf [240]

:[161]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [163]

:[162]
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 410
add.i.v
push.v self.xx
pushi.e 612
add.i.v
push.v self.yy
pushi.e 90
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e 420
add.i.v
push.v self.xx
pushi.e 622
add.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 50
add.i.v
call.i gml_Script_scr_darkbox_ch1(argc=4)
popz.v
b [164]

:[163]
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 410
add.i.v
push.v self.xx
pushi.e 580
add.i.v
push.v self.yy
pushi.e 90
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e 420
add.i.v
push.v self.xx
pushi.e 590
add.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 50
add.i.v
call.i gml_Script_scr_darkbox_ch1(argc=4)
popz.v

:[164]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 216
add.i.v
pushi.e 5
add.i.v
push.v self.xx
pushi.e 60
add.i.v
pushi.e 520
add.i.v
push.v self.yy
pushi.e 216
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 220
add.i.v
pushi.e 190
add.i.v
push.v self.xx
pushi.e 294
add.i.v
pushi.e 5
add.i.v
push.v self.yy
pushi.e 220
add.i.v
push.v self.xx
pushi.e 294
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [166]

:[165]
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 216
add.i.v
pushi.e 5
add.i.v
push.v self.xx
pushi.e 60
add.i.v
pushi.e 552
add.i.v
push.v self.yy
pushi.e 216
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[166]
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
push.v self.yy
pushi.e 84
add.i.v
push.v self.xx
pushi.e 124
add.i.v
pushi.e 0
conv.i.v
push.s "spr_dmenu_captions"@12019
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
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
push.v self.yy
pushi.e 210
add.i.v
push.v self.xx
pushi.e 124
add.i.v
pushi.e 4
conv.i.v
push.s "spr_dmenu_captions"@12019
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
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
push.v self.yy
pushi.e 210
add.i.v
push.v self.xx
pushi.e 380
add.i.v
pushi.e 5
conv.i.v
push.s "spr_dmenu_captions"@12019
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
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
push.v self.yy
pushi.e 225
add.i.v
push.v self.xx
pushi.e 340
add.i.v
pushi.e 6
conv.i.v
pushi.e 4169
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -5
pushi.e 20
push.v [array]self.submenucoord
pop.v.v self.coord
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
pop.v.v self.charcoord
push.v self.menusiner
pushi.e 1
add.i.v
pop.v.v self.menusiner
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font_ch1(argc=1)
popz.v
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [array]self.charname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 105
add.i.v
push.v self.xx
pushi.e 130
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
pop.v.i local.i

:[167]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [171]

:[168]
push.d 0.4
pop.v.d self.chosen
pushloc.v local.i
push.v self.coord
cmp.v.v EQ
bf [170]

:[169]
pushi.e 1
pop.v.i self.chosen

:[170]
push.v self.chosen
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 160
push.v self.yy
add.v.i
pushi.e 90
push.v self.xx
add.v.i
pushloc.v local.i
pushi.e 50
mul.i.v
add.v.v
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
pushi.e 4182
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [167]

:[171]
pushglb.v global.submenu
pushi.e 20
cmp.i.v EQ
bf [173]

:[172]
pushi.e 141
push.v self.yy
add.v.i
pushi.e 100
push.v self.xx
add.v.i
push.v self.coord
pushi.e 50
mul.i.v
add.v.v
push.v self.menusiner
pushi.e 20
conv.i.d
div.d.v
pushi.e 4184
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[173]
push.v self.yy
pushi.e 230
add.i.v
pop.v.v local.ch_yoff
pushi.e 25
pop.v.i local.ch_vspace
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [175]

:[174]
pushi.e 28
pop.v.i local.ch_vspace

:[175]
pushi.e 0
pop.v.i local.ch_i

:[176]
pushloc.v local.ch_i
pushi.e 6
cmp.i.v LT
bf [178]

:[177]
push.i 169176
setowner.e
pushloc.v local.ch_yoff
pushloc.v local.ch_i
pushloc.v local.ch_vspace
mul.v.v
add.v.v
pushi.e -7
pushloc.v local.ch_i
conv.v.i
pop.v.v [array]self.ch_y
push.v local.ch_i
push.e 1
add.i.v
pop.v.v local.ch_i
b [176]

:[178]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_207_0"@20546
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 0
push.v [array]self.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e -7
pushi.e 0
push.v [array]self.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_208_0"@20548
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 1
push.v [array]self.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 4
conv.i.v
pushi.e -7
pushi.e 1
push.v [array]self.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_209_0"@20550
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 2
push.v [array]self.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 5
conv.i.v
pushi.e -7
pushi.e 2
push.v [array]self.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_212_0"@20552
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 5
push.v [array]self.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 9
conv.i.v
pushi.e -7
pushi.e 5
push.v [array]self.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_214_0"@20554
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.char_desc
pushi.e 0
pop.v.i self.guts_amount
pushi.e 0
pop.v.i self.fluff_amount
push.v self.charcoord
pushi.e 1
cmp.i.v EQ
bf [186]

:[179]
pushi.e 1
pop.v.i self.guts_amount
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_226_0"@20559
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 4
push.v [array]self.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.dograndom
pushi.e 99
cmp.i.v GTE
bf [181]

:[180]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_231_0"@20560
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
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
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
pushi.e 5
add.i.v
push.v self.xx
pushi.e 220
add.i.v
push.v self.threebuffer
neg.v
pushi.e 30
conv.i.d
div.d.v
pushi.e 4168
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [182]

:[181]
push.s "obj_darkcontroller_slash_Draw_0_gml_236_0"@20562
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v

:[182]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_239_0"@20563
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.char_desc
pushglb.v global.plot
pushi.e 30
cmp.i.v GTE
bf [184]

:[183]
push.s "obj_darkcontroller_slash_Draw_0_gml_240_0"@20565
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.char_desc

:[184]
pushi.e -5
pushi.e 252
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [186]

:[185]
push.s "obj_darkcontroller_slash_Draw_0_gml_241_0"@20567
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.char_desc

:[186]
push.v self.charcoord
pushi.e 2
cmp.i.v EQ
bf [196]

:[187]
pushi.e 2
pop.v.i self.guts_amount
pushi.e 100
pop.v.i self.rude_amount
pushglb.v global.plot
pushi.e 154
cmp.i.v GTE
bf [189]

:[188]
pushi.e 99
pop.v.i self.rude_amount

:[189]
pushi.e 100
pop.v.i self.crude_amount
pushi.e -5
pushi.e 214
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [191]

:[190]
pushi.e 101
pop.v.i self.crude_amount

:[191]
push.s "obj_darkcontroller_slash_Draw_0_gml_251_0"@20580
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 13
conv.i.v
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [193]

:[192]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "obj_darkcontroller_slash_Draw_0_gml_252_0"@20583
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 4
push.v [array]self.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 13
conv.i.v
pushi.e -7
pushi.e 4
push.v [array]self.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
b [194]

:[193]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
push.s "obj_darkcontroller_slash_Draw_0_gml_252_0"@20583
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 4
push.v [array]self.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 13
conv.i.v
pushi.e -7
pushi.e 4
push.v [array]self.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v

:[194]
push.v self.rude_amount
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.crude_amount
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 4
push.v [array]self.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_255_0"@20585
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.char_desc
pushglb.v global.plot
pushi.e 154
cmp.i.v GTE
bf [196]

:[195]
push.s "obj_darkcontroller_slash_Draw_0_gml_256_0"@20587
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.char_desc

:[196]
push.v self.charcoord
pushi.e 3
cmp.i.v EQ
bf [208]

:[197]
pushi.e 0
pop.v.i self.guts_amount
pushi.e 1
pop.v.i self.fluff_amount
pushi.e 100
pop.v.i self.kindness_amount
pushi.e 10
pop.v.i self.kind_icon
push.s "obj_darkcontroller_slash_Draw_0_gml_265_0"@40758
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.kind_text
push.v self.dograndom
pushi.e 99
cmp.i.v GTE
bf [199]

:[198]
pushi.e 11
pop.v.i self.kind_icon
push.s "obj_darkcontroller_slash_Draw_0_gml_269_0"@40759
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.kind_text
pushi.e 1
pop.v.i self.kindness_amount

:[199]
push.s "obj_darkcontroller_slash_Draw_0_gml_272_0"@20604
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.char_desc
pushi.e -5
pushi.e 3
push.v [array]self.charweapon
pushi.e 9
cmp.i.v EQ
bf [201]

:[200]
push.s "obj_darkcontroller_slash_Draw_0_gml_275_0"@20606
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.char_desc

:[201]
pushi.e -5
pushi.e 3
push.v [array]self.charweapon
pushi.e 10
cmp.i.v EQ
bf [203]

:[202]
push.s "obj_darkcontroller_slash_Draw_0_gml_279_0"@20608
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.char_desc
push.v self.fluff_amount
pushi.e 1
add.i.v
pop.v.v self.fluff_amount

:[203]
push.v self.kind_text
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.kind_icon
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
push.v self.kindness_amount
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.d 0.8
pop.v.d self.fluff_xscale
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [205]

:[204]
pushi.e 1
pop.v.i self.fluff_xscale

:[205]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.fluff_xscale
push.s "obj_darkcontroller_slash_Draw_0_gml_286_0"@20623
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 4
push.v [array]self.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 12
conv.i.v
pushi.e -7
pushi.e 4
push.v [array]self.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
pushi.e 0
pop.v.i local.i

:[206]
pushloc.v local.i
push.v self.fluff_amount
cmp.v.v LT
bf [208]

:[207]
pushi.e 12
conv.i.v
pushi.e -7
pushi.e 4
push.v [array]self.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 230
add.i.v
pushloc.v local.i
pushi.e 20
mul.i.v
add.v.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [206]

:[208]
push.v self.char_desc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 105
add.i.v
push.v self.xx
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
pop.v.i self.guts_xoff
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [210]

:[209]
pushi.e 16
pop.v.i self.guts_xoff

:[210]
pushi.e 0
pop.v.i local.i

:[211]
pushloc.v local.i
push.v self.guts_amount
cmp.v.v LT
bf [213]

:[212]
pushi.e 9
conv.i.v
pushi.e -7
pushi.e 5
push.v [array]self.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 190
add.i.v
pushloc.v local.i
pushi.e 20
mul.i.v
add.v.v
push.v self.guts_xoff
add.v.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [211]

:[213]
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.at
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemat
pushi.e 0
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemat
pushi.e 1
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemat
pushi.e 2
pushaf.e
add.v.v
pop.v.v self.atsum
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.df
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemdf
pushi.e 0
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemdf
pushi.e 1
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemdf
pushi.e 2
pushaf.e
add.v.v
pop.v.v self.dfsum
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.mag
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemmag
pushi.e 0
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemmag
pushi.e 1
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemmag
pushi.e 2
pushaf.e
add.v.v
pop.v.v self.magsum
pushglb.v global.grazeamt
pop.v.v self.grazesum
pushglb.v global.grazesize
pop.v.v self.sizesum
pushi.e 0
pop.v.i local.i

:[214]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [221]

:[215]
pushi.e 0
pop.v.i self.j

:[216]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [220]

:[217]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [219]

:[218]
push.v self.grazesum
pushi.e -5
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemgrazeamt
push.v self.j
conv.v.i
pushaf.e
add.v.v
pop.v.v self.grazesum
push.v self.sizesum
pushi.e -5
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemgrazesize
push.v self.j
conv.v.i
pushaf.e
add.v.v
pop.v.v self.sizesum

:[219]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [216]

:[220]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [214]

:[221]
push.v self.atsum
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 0
push.v [array]self.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.dfsum
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 1
push.v [array]self.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.magsum
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 2
push.v [array]self.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
pop.v.i self.spell_xoff
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [223]

:[222]
pushi.e -10
pop.v.i self.spell_xoff

:[223]
pushi.e 0
pop.v.i local.i

:[224]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [236]

:[225]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spell
pushloc.v local.i
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v GT
bf [235]

:[226]
pushi.e 0
pop.v.i self.g
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spellusable
pushloc.v local.i
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [228]

:[227]
pushi.e 1
pop.v.i self.g

:[228]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spellcost
pushloc.v local.i
conv.v.i
pushaf.e
pushglb.v global.tension
cmp.v.v GT
bf [230]

:[229]
pushi.e 1
pop.v.i self.g

:[230]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [232]

:[231]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[232]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [234]

:[233]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[234]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spellcost
pushloc.v local.i
conv.v.i
pushaf.e
pushglb.v global.maxtension
div.v.v
pushi.e 100
mul.i.v
call.i round(argc=1)
call.i string(argc=1)
push.s "%"@14906
add.s.v
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.ch_y
push.v self.xx
pushi.e 340
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spellname
pushloc.v local.i
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.ch_y
push.v self.xx
pushi.e 410
add.i.v
push.v self.spell_xoff
add.v.v
call.i draw_text(argc=3)
popz.v

:[235]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [224]

:[236]
pushglb.v global.submenu
pushi.e 21
cmp.i.v EQ
bf [238]

:[237]
push.v self.yy
pushi.e 240
add.i.v
pushi.e -5
pushi.e 21
push.v [array]self.submenucoord
pushloc.v local.ch_vspace
mul.v.v
add.v.v
push.v self.xx
pushi.e 320
add.i.v
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[238]
push.v self.deschaver
pushi.e 1
cmp.i.v EQ
bf [240]

:[239]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spelldesc
pushi.e -5
pushi.e 21
push.v [array]self.submenucoord
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[240]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [485]

:[241]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 27
pop.v.i local.ch_vspace
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [243]

:[242]
pushi.e 28
pop.v.i local.ch_vspace
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 410
add.i.v
push.v self.xx
pushi.e 626
add.i.v
push.v self.yy
pushi.e 90
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e 420
add.i.v
push.v self.xx
pushi.e 636
add.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 50
add.i.v
call.i gml_Script_scr_darkbox_ch1(argc=4)
popz.v
b [244]

:[243]
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 410
add.i.v
push.v self.xx
pushi.e 580
add.i.v
push.v self.yy
pushi.e 90
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e 420
add.i.v
push.v self.xx
pushi.e 590
add.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 50
add.i.v
call.i gml_Script_scr_darkbox_ch1(argc=4)
popz.v

:[244]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 91
add.i.v
pushi.e 135
add.i.v
push.v self.xx
pushi.e 275
add.i.v
push.v self.yy
pushi.e 91
add.i.v
push.v self.xx
pushi.e 270
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 221
add.i.v
pushi.e 5
add.i.v
push.v self.xx
pushi.e 59
add.i.v
pushi.e 523
add.i.v
push.v self.yy
pushi.e 221
add.i.v
push.v self.xx
pushi.e 59
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [246]

:[245]
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 221
add.i.v
pushi.e 5
add.i.v
push.v self.xx
pushi.e 63
add.i.v
pushi.e 565
add.i.v
push.v self.yy
pushi.e 221
add.i.v
push.v self.xx
pushi.e 59
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[246]
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 221
add.i.v
pushi.e 190
add.i.v
push.v self.xx
pushi.e 318
add.i.v
pushi.e 5
add.i.v
push.v self.yy
pushi.e 221
add.i.v
push.v self.xx
pushi.e 318
add.i.v
call.i draw_rectangle(argc=5)
popz.v
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
push.v self.yy
pushi.e 86
add.i.v
push.v self.xx
pushi.e 118
add.i.v
pushi.e 0
conv.i.v
push.s "spr_dmenu_captions"@12019
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
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
push.v self.yy
pushi.e 86
add.i.v
push.v self.xx
pushi.e 376
add.i.v
pushi.e 1
conv.i.v
push.s "spr_dmenu_captions"@12019
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 1
cmp.i.v EQ
bt [248]

:[247]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
b [249]

:[248]
push.e 1

:[249]
bf [251]

:[250]
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
push.v self.yy
pushi.e 216
add.i.v
push.v self.xx
pushi.e 372
add.i.v
pushi.e 2
conv.i.v
push.s "spr_dmenu_captions"@12019
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
b [252]

:[251]
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
push.v self.yy
pushi.e 216
add.i.v
push.v self.xx
pushi.e 372
add.i.v
pushi.e 3
conv.i.v
push.s "spr_dmenu_captions"@12019
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[252]
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
push.v self.yy
pushi.e 216
add.i.v
push.v self.xx
pushi.e 116
add.i.v
pushi.e 4
conv.i.v
push.s "spr_dmenu_captions"@12019
conv.s.v
call.i gml_Script_scr_84_get_sprite_ch1(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -5
pushi.e 10
push.v [array]self.submenucoord
pop.v.v self.coord
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
pop.v.v self.charcoord
push.v self.menusiner
pushi.e 1
add.i.v
pop.v.v self.menusiner
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.charname_xoff
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [254]

:[253]
pushi.e -25
pop.v.i self.charname_xoff

:[254]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [array]self.charname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 107
add.i.v
push.v self.xx
pushi.e 135
add.i.v
push.v self.charname_xoff
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
pop.v.i local.i

:[255]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [259]

:[256]
push.d 0.4
pop.v.d self.chosen
pushloc.v local.i
push.v self.coord
cmp.v.v EQ
bf [258]

:[257]
pushi.e 1
pop.v.i self.chosen

:[258]
push.v self.chosen
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 160
push.v self.yy
add.v.i
pushi.e 90
push.v self.xx
add.v.i
pushloc.v local.i
pushi.e 50
mul.i.v
add.v.v
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
pushi.e 4182
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [255]

:[259]
pushglb.v global.submenu
pushi.e 10
cmp.i.v EQ
bf [261]

:[260]
pushi.e 142
push.v self.yy
add.v.i
pushi.e 100
push.v self.xx
add.v.i
push.v self.coord
pushi.e 50
mul.i.v
add.v.v
push.v self.menusiner
pushi.e 20
conv.i.d
div.d.v
pushi.e 4184
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[261]
pushglb.v global.submenu
pushi.e 11
cmp.i.v NEQ
bf [263]

:[262]
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
push.v self.yy
pushi.e 108
add.i.v
push.v self.xx
pushi.e 302
add.i.v
push.v self.charcoord
pushi.e 1
sub.i.v
pushi.e 4170
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
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
push.v self.yy
pushi.e 142
add.i.v
push.v self.xx
pushi.e 302
add.i.v
pushi.e 3
conv.i.v
pushi.e 4170
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
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
push.v self.yy
pushi.e 172
add.i.v
push.v self.xx
pushi.e 302
add.i.v
pushi.e 4
conv.i.v
pushi.e 4170
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[263]
pushglb.v global.submenu
pushi.e 11
cmp.i.v EQ
bf [273]

:[264]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v EQ
bf [266]

:[265]
push.v self.yy
pushi.e 122
add.i.v
push.v self.xx
pushi.e 308
add.i.v
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [267]

:[266]
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
push.v self.yy
pushi.e 108
add.i.v
push.v self.xx
pushi.e 302
add.i.v
push.v self.charcoord
pushi.e 1
sub.i.v
pushi.e 4170
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[267]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 1
cmp.i.v EQ
bf [269]

:[268]
push.v self.yy
pushi.e 152
add.i.v
push.v self.xx
pushi.e 308
add.i.v
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [270]

:[269]
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
push.v self.yy
pushi.e 142
add.i.v
push.v self.xx
pushi.e 302
add.i.v
pushi.e 3
conv.i.v
pushi.e 4170
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[270]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
bf [272]

:[271]
push.v self.yy
pushi.e 182
add.i.v
push.v self.xx
pushi.e 308
add.i.v
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [273]

:[272]
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
push.v self.yy
pushi.e 172
add.i.v
push.v self.xx
pushi.e 302
add.i.v
pushi.e 4
conv.i.v
pushi.e 4170
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[273]
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweaponname
push.s " "@353
cmp.s.v NEQ
bf [275]

:[274]
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweaponname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 112
add.i.v
push.v self.xx
pushi.e 365
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweaponicon
push.v self.yy
pushi.e 118
add.i.v
push.v self.xx
pushi.e 343
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
b [276]

:[275]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_423_0"@40761
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 112
add.i.v
push.v self.xx
pushi.e 365
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[276]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor1
pushi.e 0
cmp.i.v NEQ
bf [278]

:[277]
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor1name
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 142
add.i.v
push.v self.xx
pushi.e 365
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor1icon
push.v self.yy
pushi.e 148
add.i.v
push.v self.xx
pushi.e 343
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
b [279]

:[278]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_435_0"@40762
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 142
add.i.v
push.v self.xx
pushi.e 365
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[279]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor2
pushi.e 0
cmp.i.v NEQ
bf [281]

:[280]
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor2name
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 172
add.i.v
push.v self.xx
pushi.e 365
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor2icon
push.v self.yy
pushi.e 178
add.i.v
push.v self.xx
pushi.e 343
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
b [282]

:[281]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_447_0"@40763
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 172
add.i.v
push.v self.xx
pushi.e 365
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[282]
pushi.e 0
pop.v.i self.eq_xoff
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [284]

:[283]
pushi.e -6
pop.v.i self.eq_xoff

:[284]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v EQ
bf [310]

:[285]
pushi.e 0
pop.v.i self.j
pushi.e -1
pushi.e 0
push.v [array]self.pagemax
pop.v.v local.i

:[286]
pushloc.v local.i
pushi.e 6
pushi.e -1
pushi.e 0
push.v [array]self.pagemax
add.v.i
cmp.v.v LT
bf [310]

:[287]
pushi.e 0
pop.v.i self.g
push.v self.charcoord
pushi.e 1
cmp.i.v EQ
bf [289]

:[288]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.weaponchar1
pushi.e 0
cmp.i.v EQ
b [290]

:[289]
push.e 0

:[290]
bf [292]

:[291]
pushi.e 1
pop.v.i self.g

:[292]
push.v self.charcoord
pushi.e 2
cmp.i.v EQ
bf [294]

:[293]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.weaponchar2
pushi.e 0
cmp.i.v EQ
b [295]

:[294]
push.e 0

:[295]
bf [297]

:[296]
pushi.e 1
pop.v.i self.g

:[297]
push.v self.charcoord
pushi.e 3
cmp.i.v EQ
bf [299]

:[298]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.weaponchar3
pushi.e 0
cmp.i.v EQ
b [300]

:[299]
push.e 0

:[300]
bf [302]

:[301]
pushi.e 1
pop.v.i self.g

:[302]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [304]

:[303]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[304]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [306]

:[305]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[306]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.weaponicon
push.v self.yy
pushi.e 236
add.i.v
push.v self.j
pushloc.v local.ch_vspace
mul.v.v
add.v.v
push.v self.xx
pushi.e 364
add.i.v
push.v self.eq_xoff
add.v.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.weapon
pushi.e 0
cmp.i.v NEQ
bf [308]

:[307]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.weaponname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
push.v self.j
pushloc.v local.ch_vspace
mul.v.v
add.v.v
push.v self.xx
pushi.e 384
add.i.v
push.v self.eq_xoff
add.v.v
call.i draw_text(argc=3)
popz.v
b [309]

:[308]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "---------"@20657
conv.s.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
push.v self.j
pushloc.v local.ch_vspace
mul.v.v
add.v.v
push.v self.xx
pushi.e 384
add.i.v
push.v self.eq_xoff
add.v.v
call.i draw_text(argc=3)
popz.v

:[309]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [286]

:[310]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 1
cmp.i.v EQ
bt [312]

:[311]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
b [313]

:[312]
push.e 1

:[313]
bf [339]

:[314]
pushi.e 0
pop.v.i self.j
pushi.e -1
pushi.e 1
push.v [array]self.pagemax
pop.v.v local.i

:[315]
pushloc.v local.i
pushi.e 6
pushi.e -1
pushi.e 1
push.v [array]self.pagemax
add.v.i
cmp.v.v LT
bf [339]

:[316]
pushi.e 0
pop.v.i self.g
push.v self.charcoord
pushi.e 1
cmp.i.v EQ
bf [318]

:[317]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.armorchar1
pushi.e 0
cmp.i.v EQ
b [319]

:[318]
push.e 0

:[319]
bf [321]

:[320]
pushi.e 1
pop.v.i self.g

:[321]
push.v self.charcoord
pushi.e 2
cmp.i.v EQ
bf [323]

:[322]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.armorchar2
pushi.e 0
cmp.i.v EQ
b [324]

:[323]
push.e 0

:[324]
bf [326]

:[325]
pushi.e 1
pop.v.i self.g

:[326]
push.v self.charcoord
pushi.e 3
cmp.i.v EQ
bf [328]

:[327]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.armorchar3
pushi.e 0
cmp.i.v EQ
b [329]

:[328]
push.e 0

:[329]
bf [331]

:[330]
pushi.e 1
pop.v.i self.g

:[331]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [333]

:[332]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[333]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [335]

:[334]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[335]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.armoricon
push.v self.yy
pushi.e 236
add.i.v
push.v self.j
pushloc.v local.ch_vspace
mul.v.v
add.v.v
push.v self.xx
pushi.e 364
add.i.v
push.v self.eq_xoff
add.v.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.armor
pushi.e 0
cmp.i.v NEQ
bf [337]

:[336]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.armorname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
push.v self.j
pushloc.v local.ch_vspace
mul.v.v
add.v.v
push.v self.xx
pushi.e 384
add.i.v
push.v self.eq_xoff
add.v.v
call.i draw_text(argc=3)
popz.v
b [338]

:[337]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "---------"@20657
conv.s.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
push.v self.j
pushloc.v local.ch_vspace
mul.v.v
add.v.v
push.v self.xx
pushi.e 384
add.i.v
push.v self.eq_xoff
add.v.v
call.i draw_text(argc=3)
popz.v

:[338]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [315]

:[339]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bt [342]

:[340]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [342]

:[341]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [343]

:[342]
push.e 1

:[343]
bf [364]

:[344]
pushi.e 0
pop.v.i self.scroll_xoff
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [346]

:[345]
pushi.e 54
pop.v.i self.scroll_xoff

:[346]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [348]

:[347]
pushi.e 0
pop.v.i self.pm
b [349]

:[348]
pushi.e 1
pop.v.i self.pm

:[349]
push.v self.yy
pushi.e 240
add.i.v
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
pushi.e -1
push.v self.pm
conv.v.i
push.v [array]self.pagemax
sub.v.v
pushloc.v local.ch_vspace
mul.v.v
add.v.v
push.v self.xx
pushi.e 344
add.i.v
push.v self.eq_xoff
add.v.v
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[350]
pushloc.v local.i
pushi.e 12
cmp.i.v LT
bf [360]

:[351]
pushi.e 0
pop.v.i self.buff
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
pushloc.v local.i
cmp.v.v EQ
bf [353]

:[352]
push.v self.buff
pushi.e 3
add.i.v
pop.v.v self.buff

:[353]
push.v self.pm
pushi.e 0
cmp.i.v EQ
bf [356]

:[354]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.weapon
pushi.e 0
cmp.i.v EQ
bf [356]

:[355]
push.v self.buff
pushi.e 1
sub.i.v
pop.v.v self.buff

:[356]
push.v self.pm
pushi.e 1
cmp.i.v EQ
bf [359]

:[357]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.armor
pushi.e 0
cmp.i.v EQ
bf [359]

:[358]
push.v self.buff
pushi.e 1
sub.i.v
pop.v.v self.buff

:[359]
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 263
add.i.v
pushloc.v local.i
pushi.e 10
mul.i.v
add.v.v
push.v self.buff
add.v.v
push.v self.xx
pushi.e 558
add.i.v
push.v self.buff
add.v.v
push.v self.scroll_xoff
add.v.v
push.v self.yy
pushi.e 260
add.i.v
pushloc.v local.i
pushi.e 10
mul.i.v
add.v.v
push.v self.buff
sub.v.v
push.v self.xx
pushi.e 555
add.i.v
push.v self.buff
sub.v.v
push.v self.scroll_xoff
add.v.v
call.i draw_rectangle(argc=5)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [350]

:[360]
pushi.e -1
push.v self.pm
conv.v.i
push.v [array]self.pagemax
pushi.e 0
cmp.i.v GT
bf [362]

:[361]
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
pushi.e 250
add.i.v
push.v self.cur_jewel
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
sub.v.v
push.v self.xx
pushi.e 551
add.i.v
push.v self.scroll_xoff
add.v.v
pushi.e 0
conv.i.v
pushi.e 3740
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[362]
pushi.e 5
pushi.e -1
push.v self.pm
conv.v.i
push.v [array]self.pagemax
add.v.i
pushi.e 11
cmp.i.v LT
bf [364]

:[363]
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
push.v self.yy
pushi.e 385
add.i.v
push.v self.cur_jewel
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.xx
pushi.e 551
add.i.v
push.v self.scroll_xoff
add.v.v
pushi.e 0
conv.i.v
pushi.e 3740
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[364]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 11
cmp.i.v EQ
bf [371]

:[365]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v EQ
bf [367]

:[366]
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweapondesc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[367]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 1
cmp.i.v EQ
bf [369]

:[368]
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor1desc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[369]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
bf [371]

:[370]
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor2desc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[371]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [373]

:[372]
pushi.e -1
pushi.e -5
pushi.e 12
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.weapondesc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[373]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [375]

:[374]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [376]

:[375]
push.e 1

:[376]
bf [378]

:[377]
pushi.e -1
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.armordesc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[378]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_556_0"@40764
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v self.yy
pushi.e 236
add.i.v
pushloc.v local.ch_vspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_557_0"@40765
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 4
conv.i.v
push.v self.yy
pushi.e 236
add.i.v
pushloc.v local.ch_vspace
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_558_0"@40766
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 5
conv.i.v
push.v self.yy
pushi.e 236
add.i.v
pushloc.v local.ch_vspace
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.at
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemat
pushi.e 0
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemat
pushi.e 1
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemat
pushi.e 2
pushaf.e
add.v.v
pop.v.v self.atsum
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.df
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemdf
pushi.e 0
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemdf
pushi.e 1
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemdf
pushi.e 2
pushaf.e
add.v.v
pop.v.v self.dfsum
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.mag
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemmag
pushi.e 0
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemmag
pushi.e 1
pushaf.e
add.v.v
pushi.e -5
pushi.e -5
push.v self.coord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemmag
pushi.e 2
pushaf.e
add.v.v
pop.v.v self.magsum
pushglb.v global.grazeamt
pop.v.v self.grazesum
pushglb.v global.grazesize
pop.v.v self.sizesum
pushi.e 0
pop.v.i local.i

:[379]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [386]

:[380]
pushi.e 0
pop.v.i self.j

:[381]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [385]

:[382]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [384]

:[383]
push.v self.grazesum
pushi.e -5
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemgrazeamt
push.v self.j
conv.v.i
pushaf.e
add.v.v
pop.v.v self.grazesum
push.v self.sizesum
pushi.e -5
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemgrazesize
push.v self.j
conv.v.i
pushaf.e
add.v.v
pop.v.v self.sizesum

:[384]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [381]

:[385]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [379]

:[386]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bt [389]

:[387]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [389]

:[388]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [390]

:[389]
push.e 1

:[390]
bf [479]

:[391]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
pop.v.v self.cur
pushi.e 0
pop.v.i self.g
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [407]

:[392]
push.v self.charcoord
pushi.e 1
cmp.i.v EQ
bf [394]

:[393]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponchar1
pushi.e 0
cmp.i.v EQ
b [395]

:[394]
push.e 0

:[395]
bf [397]

:[396]
pushi.e 1
pop.v.i self.g

:[397]
push.v self.charcoord
pushi.e 2
cmp.i.v EQ
bf [399]

:[398]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponchar2
pushi.e 0
cmp.i.v EQ
b [400]

:[399]
push.e 0

:[400]
bf [402]

:[401]
pushi.e 1
pop.v.i self.g

:[402]
push.v self.charcoord
pushi.e 3
cmp.i.v EQ
bf [404]

:[403]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponchar3
pushi.e 0
cmp.i.v EQ
b [405]

:[404]
push.e 0

:[405]
bf [407]

:[406]
pushi.e 1
pop.v.i self.g

:[407]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [409]

:[408]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [410]

:[409]
push.e 1

:[410]
bf [426]

:[411]
push.v self.charcoord
pushi.e 1
cmp.i.v EQ
bf [413]

:[412]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorchar1
pushi.e 0
cmp.i.v EQ
b [414]

:[413]
push.e 0

:[414]
bf [416]

:[415]
pushi.e 1
pop.v.i self.g

:[416]
push.v self.charcoord
pushi.e 2
cmp.i.v EQ
bf [418]

:[417]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorchar2
pushi.e 0
cmp.i.v EQ
b [419]

:[418]
push.e 0

:[419]
bf [421]

:[420]
pushi.e 1
pop.v.i self.g

:[421]
push.v self.charcoord
pushi.e 3
cmp.i.v EQ
bf [423]

:[422]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorchar3
pushi.e 0
cmp.i.v EQ
b [424]

:[423]
push.e 0

:[424]
bf [426]

:[425]
pushi.e 1
pop.v.i self.g

:[426]
push.i 169205
setowner.e
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweaponability
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilitytext
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor1ability
pushi.e -1
pushi.e 1
pop.v.v [array]self._abilitytext
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor2ability
pushi.e -1
pushi.e 2
pop.v.v [array]self._abilitytext
push.i 169206
setowner.e
push.i 4210752
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilitycolor
push.i 4210752
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self._abilitycolor
push.i 4210752
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self._abilitycolor
push.i 169207
setowner.e
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweaponabilityicon
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilityicon
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor1abilityicon
pushi.e -1
pushi.e 1
pop.v.v [array]self._abilityicon
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor2abilityicon
pushi.e -1
pushi.e 2
pop.v.v [array]self._abilityicon
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [428]

:[427]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
b [429]

:[428]
push.e 0

:[429]
bf [449]

:[430]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponat
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.itemat
pushi.e 0
pushaf.e
sub.v.v
pop.v.v self.atup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weapondf
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.itemdf
pushi.e 0
pushaf.e
sub.v.v
pop.v.v self.dfup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponmag
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.itemmag
pushi.e 0
pushaf.e
sub.v.v
pop.v.v self.magup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponstyle
pop.v.v self.styleup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weapongrazeamt
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.itemgrazeamt
pushi.e 0
pushaf.e
sub.v.v
pop.v.v self.grazeup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weapongrazesize
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.itemgrazesize
pushi.e 0
pushaf.e
sub.v.v
pop.v.v self.sizeup
push.i 169206
setowner.e
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilitycolor
push.i 169207
setowner.e
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponabilityicon
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilityicon
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponability
pushi.e -1
pushi.e 0
push.v [array]self._abilitytext
cmp.v.v NEQ
bf [433]

:[431]
push.i 169206
setowner.e
push.i 65535
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilitycolor
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponability
push.s " "@353
cmp.s.v EQ
bf [433]

:[432]
pushi.e 255
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilitycolor

:[433]
push.i 169205
setowner.e
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponability
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilitytext
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.atup
pushi.e 0
cmp.i.v GT
bf [435]

:[434]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[435]
push.v self.atup
pushi.e 0
cmp.i.v LT
bf [437]

:[436]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[437]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [439]

:[438]
push.v self.atsum
push.v self.atup
add.v.v
call.i string(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
b [440]

:[439]
push.v self.atsum
push.v self.atup
add.v.v
call.i string(argc=1)
push.s "obj_darkcontroller_slash_Draw_0_gml_643_0"@40767
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
add.v.v
push.v self.atup
call.i string(argc=1)
add.v.v
push.s ")"@12074
add.s.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v

:[440]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.dfup
pushi.e 0
cmp.i.v GT
bf [442]

:[441]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[442]
push.v self.dfup
pushi.e 0
cmp.i.v LT
bf [444]

:[443]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[444]
push.v self.dfsum
push.v self.dfup
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.magup
pushi.e 0
cmp.i.v GT
bf [446]

:[445]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[446]
push.v self.magup
pushi.e 0
cmp.i.v LT
bf [448]

:[447]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[448]
push.v self.magsum
push.v self.magup
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v

:[449]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [470]

:[450]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [452]

:[451]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [453]

:[452]
push.e 1

:[453]
bf [470]

:[454]
pushglb.v global.submenu
pushi.e 12
sub.i.v
pop.v.v self.arno
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorat
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.itemat
push.v self.arno
conv.v.i
pushaf.e
sub.v.v
pop.v.v self.atup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armordf
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.itemdf
push.v self.arno
conv.v.i
pushaf.e
sub.v.v
pop.v.v self.dfup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armormag
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.itemmag
push.v self.arno
conv.v.i
pushaf.e
sub.v.v
pop.v.v self.magup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorgrazeamt
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.itemgrazeamt
push.v self.arno
conv.v.i
pushaf.e
sub.v.v
pop.v.v self.grazeup
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorgrazesize
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.itemgrazesize
push.v self.arno
conv.v.i
pushaf.e
sub.v.v
pop.v.v self.sizeup
push.i 169206
setowner.e
push.i 16777215
conv.i.v
pushi.e -1
push.v self.arno
conv.v.i
pop.v.v [array]self._abilitycolor
push.i 169207
setowner.e
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorabilityicon
pushi.e -1
push.v self.arno
conv.v.i
pop.v.v [array]self._abilityicon
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorability
pushi.e -1
push.v self.arno
conv.v.i
push.v [array]self._abilitytext
cmp.v.v NEQ
bf [457]

:[455]
push.i 169206
setowner.e
push.i 65535
conv.i.v
pushi.e -1
push.v self.arno
conv.v.i
pop.v.v [array]self._abilitycolor
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorability
push.s " "@353
cmp.s.v EQ
bf [457]

:[456]
pushi.e 255
conv.i.v
pushi.e -1
push.v self.arno
conv.v.i
pop.v.v [array]self._abilitycolor

:[457]
push.i 169205
setowner.e
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorability
pushi.e -1
push.v self.arno
conv.v.i
pop.v.v [array]self._abilitytext
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.atup
pushi.e 0
cmp.i.v GT
bf [459]

:[458]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[459]
push.v self.atup
pushi.e 0
cmp.i.v LT
bf [461]

:[460]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[461]
push.v self.atsum
push.v self.atup
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.dfup
pushi.e 0
cmp.i.v GT
bf [463]

:[462]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[463]
push.v self.dfup
pushi.e 0
cmp.i.v LT
bf [465]

:[464]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[465]
push.v self.dfsum
push.v self.dfup
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.magup
pushi.e 0
cmp.i.v GT
bf [467]

:[466]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[467]
push.v self.magup
pushi.e 0
cmp.i.v LT
bf [469]

:[468]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[469]
push.v self.magsum
push.v self.magup
add.v.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v

:[470]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [472]

:[471]
push.v self.atsum
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.dfsum
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.magsum
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v

:[472]
pushi.e 0
pop.v.i local.i

:[473]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [478]

:[474]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self._abilitytext
push.s " "@353
cmp.s.v EQ
bf [476]

:[475]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self._abilitycolor
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_736_0"@40768
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushloc.v local.i
pushi.e 3
add.i.v
mul.v.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
b [477]

:[476]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self._abilitycolor
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self._abilitytext
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushloc.v local.i
pushi.e 3
add.i.v
mul.v.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self._abilityicon
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushloc.v local.i
pushi.e 3
add.i.v
mul.v.v
add.v.v
pushi.e 8
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v

:[477]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [473]

:[478]
b [485]

:[479]
push.v self.atsum
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 0
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.dfsum
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 1
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.magsum
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushi.e 2
mul.i.v
add.v.v
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 169205
setowner.e
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweaponability
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilitytext
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor1ability
pushi.e -1
pushi.e 1
pop.v.v [array]self._abilitytext
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor2ability
pushi.e -1
pushi.e 2
pop.v.v [array]self._abilitytext
push.i 169206
setowner.e
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilitycolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self._abilitycolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self._abilitycolor
push.i 169207
setowner.e
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweaponabilityicon
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilityicon
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor1abilityicon
pushi.e -1
pushi.e 1
pop.v.v [array]self._abilityicon
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor2abilityicon
pushi.e -1
pushi.e 2
pop.v.v [array]self._abilityicon
pushi.e 0
pop.v.i local.i

:[480]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [485]

:[481]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self._abilitytext
push.s " "@353
cmp.s.v EQ
bf [483]

:[482]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_773_0"@40769
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushloc.v local.i
pushi.e 3
add.i.v
mul.v.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
b [484]

:[483]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self._abilitycolor
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self._abilitytext
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushloc.v local.i
pushi.e 3
add.i.v
mul.v.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self._abilityicon
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
pushloc.v local.i
pushi.e 3
add.i.v
mul.v.v
add.v.v
pushi.e 8
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon_ch1(argc=3)
popz.v

:[484]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [480]

:[485]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [end]

:[486]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [488]

:[487]
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 360
add.i.v
push.v self.xx
pushi.e 594
add.i.v
push.v self.yy
pushi.e 90
add.i.v
push.v self.xx
pushi.e 46
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e 370
add.i.v
push.v self.xx
pushi.e 604
add.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 36
add.i.v
call.i gml_Script_scr_darkbox_ch1(argc=4)
popz.v
b [489]

:[488]
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 360
add.i.v
push.v self.xx
pushi.e 570
add.i.v
push.v self.yy
pushi.e 90
add.i.v
push.v self.xx
pushi.e 70
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e 370
add.i.v
push.v self.xx
pushi.e 580
add.i.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i gml_Script_scr_darkbox_ch1(argc=4)
popz.v

:[489]
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font_ch1(argc=1)
popz.v
call.i gml_Script_scr_itemname_ch1(argc=0)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [505]

:[490]
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [492]

:[491]
push.v self.yy
pushi.e 120
add.i.v
push.v self.xx
pushi.e 134
add.i.v
pushi.e 120
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
mul.v.i
add.v.v
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[492]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v GT
bf [496]

:[493]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v EQ
bf [495]

:[494]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [496]

:[495]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[496]
push.s "obj_darkcontroller_slash_Draw_0_gml_807_0"@40770
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e 158
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v GT
bf [500]

:[497]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 1
cmp.i.v EQ
bf [499]

:[498]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [500]

:[499]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[500]
push.s "obj_darkcontroller_slash_Draw_0_gml_809_0"@40771
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e 278
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v GT
bf [504]

:[501]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
bf [503]

:[502]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [504]

:[503]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[504]
push.s "obj_darkcontroller_slash_Draw_0_gml_811_0"@40772
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e 398
add.i.v
call.i draw_text(argc=3)
popz.v
b [520]

:[505]
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [507]

:[506]
push.v self.yy
pushi.e 120
add.i.v
push.v self.xx
pushi.e 155
add.i.v
pushi.e 120
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
mul.v.i
add.v.v
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[507]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v GT
bf [511]

:[508]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v EQ
bf [510]

:[509]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [511]

:[510]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[511]
push.s "obj_darkcontroller_slash_Draw_0_gml_807_0"@40770
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e 180
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v GT
bf [515]

:[512]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 1
cmp.i.v EQ
bf [514]

:[513]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [515]

:[514]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[515]
push.s "obj_darkcontroller_slash_Draw_0_gml_809_0"@40771
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e 300
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v GT
bf [519]

:[516]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
bf [518]

:[517]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [519]

:[518]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[519]
push.s "obj_darkcontroller_slash_Draw_0_gml_811_0"@40772
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e 420
add.i.v
call.i draw_text(argc=3)
popz.v

:[520]
pushglb.v global.submenu
pushi.e 2
cmp.i.v GTE
bf [523]

:[521]
pushglb.v global.submenu
pushi.e 6
cmp.i.v LTE
bf [523]

:[522]
pushglb.v global.submenu
pushi.e 4
cmp.i.v NEQ
b [524]

:[523]
push.e 0

:[524]
bf [551]

:[525]
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 30
mul.i.v
pushi.e 162
add.i.v
push.v self.yy
add.v.v
pop.v.v self.yheart
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [536]

:[526]
pushi.e 72
push.v self.xx
add.v.i
pop.v.v self.xheart
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [532]

:[527]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [532]

:[528]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [532]

:[529]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [532]

:[530]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [532]

:[531]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [533]

:[532]
push.e 1

:[533]
bf [535]

:[534]
pushi.e 334
push.v self.xx
add.v.i
pop.v.v self.xheart

:[535]
b [545]

:[536]
pushi.e 120
push.v self.xx
add.v.i
pop.v.v self.xheart
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [542]

:[537]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [542]

:[538]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [542]

:[539]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [542]

:[540]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [542]

:[541]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [543]

:[542]
push.e 1

:[543]
bf [545]

:[544]
pushi.e 330
push.v self.xx
add.v.i
pop.v.v self.xheart

:[545]
pushglb.v global.submenu
pushi.e 2
cmp.i.v EQ
bt [547]

:[546]
pushglb.v global.submenu
pushi.e 3
cmp.i.v EQ
b [548]

:[547]
push.e 1

:[548]
bf [550]

:[549]
push.v self.yheart
push.v self.xheart
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[550]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.itemdesc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[551]
pushglb.v global.submenu
pushi.e 7
cmp.i.v EQ
bf [555]

:[552]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [554]

:[553]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.itemname
push.s "obj_darkcontroller_slash_Draw_0_gml_829_0"@40773
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
add.v.v
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v
b [555]

:[554]
push.s "obj_darkcontroller_slash_Draw_0_gml_829_0"@40773
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.itemname
add.v.v
push.s "?"@4913
add.s.v
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[555]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v NEQ
bf [574]

:[556]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [566]

:[557]
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[558]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [560]

:[559]
pushi.e -5
pushloc.v local.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
pushloc.v local.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 94
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
pushloc.v local.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
pushloc.v local.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 358
add.i.v
call.i draw_text(argc=3)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [558]

:[560]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [562]

:[561]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[562]
pushi.e 0
pop.v.i local.i

:[563]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [565]

:[564]
pushi.e -5
pushloc.v local.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
pushloc.v local.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 92
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
pushloc.v local.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
pushloc.v local.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 356
add.i.v
call.i draw_text(argc=3)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [563]

:[565]
b [574]

:[566]
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[567]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [569]

:[568]
pushi.e -5
pushloc.v local.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
pushloc.v local.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 148
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
pushloc.v local.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
pushloc.v local.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 358
add.i.v
call.i draw_text(argc=3)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [567]

:[569]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [571]

:[570]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[571]
pushi.e 0
pop.v.i local.i

:[572]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [574]

:[573]
pushi.e -5
pushloc.v local.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
pushloc.v local.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 146
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
pushloc.v local.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
pushloc.v local.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 356
add.i.v
call.i draw_text(argc=3)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [572]

:[574]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
bf [end]

:[575]
call.i gml_Script_scr_keyiteminfo_all_ch1(argc=0)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [593]

:[576]
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[577]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [579]

:[578]
pushi.e -1
pushloc.v local.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
pushloc.v local.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 94
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
pushloc.v local.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
pushloc.v local.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 358
add.i.v
call.i draw_text(argc=3)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [577]

:[579]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [581]

:[580]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[581]
pushi.e 0
pop.v.i local.i

:[582]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [592]

:[583]
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [587]

:[584]
pushi.e -1
pushloc.v local.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.keyitemusable
pushi.e 1
cmp.i.v EQ
bf [586]

:[585]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [587]

:[586]
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[587]
pushi.e -1
pushloc.v local.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
pushloc.v local.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 92
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [591]

:[588]
pushi.e -1
pushloc.v local.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.keyitemusable
pushi.e 1
cmp.i.v EQ
bf [590]

:[589]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [591]

:[590]
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[591]
pushi.e -1
pushloc.v local.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
pushloc.v local.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 356
add.i.v
call.i draw_text(argc=3)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [582]

:[592]
b [609]

:[593]
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[594]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [596]

:[595]
pushi.e -1
pushloc.v local.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
pushloc.v local.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 148
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
pushloc.v local.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
pushloc.v local.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 358
add.i.v
call.i draw_text(argc=3)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [594]

:[596]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [598]

:[597]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[598]
pushi.e 0
pop.v.i local.i

:[599]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [609]

:[600]
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [604]

:[601]
pushi.e -1
pushloc.v local.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.keyitemusable
pushi.e 1
cmp.i.v EQ
bf [603]

:[602]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [604]

:[603]
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[604]
pushi.e -1
pushloc.v local.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
pushloc.v local.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 146
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [608]

:[605]
pushi.e -1
pushloc.v local.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.keyitemusable
pushi.e 1
cmp.i.v EQ
bf [607]

:[606]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [608]

:[607]
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[608]
pushi.e -1
pushloc.v local.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
pushloc.v local.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 356
add.i.v
call.i draw_text(argc=3)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [599]

:[609]
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [end]

:[610]
pushi.e -5
pushi.e 4
push.v [array]self.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 30
mul.i.v
pushi.e 162
add.i.v
push.v self.yy
add.v.v
pop.v.v self.yheart
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [621]

:[611]
pushi.e 72
push.v self.xx
add.v.i
pop.v.v self.xheart
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [617]

:[612]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [617]

:[613]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [617]

:[614]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [617]

:[615]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [617]

:[616]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [618]

:[617]
push.e 1

:[618]
bf [620]

:[619]
pushi.e 334
push.v self.xx
add.v.i
pop.v.v self.xheart

:[620]
b [630]

:[621]
pushi.e 120
push.v self.xx
add.v.i
pop.v.v self.xheart
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [627]

:[622]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [627]

:[623]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [627]

:[624]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [627]

:[625]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [627]

:[626]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [628]

:[627]
push.e 1

:[628]
bf [630]

:[629]
pushi.e 330
push.v self.xx
add.v.i
pop.v.v self.xheart

:[630]
push.v self.yheart
push.v self.xheart
pushi.e 0
conv.i.v
pushi.e 4281
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e -5
pushi.e 4
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.keyitemdesc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[end]