.localvar 2 arguments
.localvar 20464 lang_off 8698
.localvar 20465 _xPos 8700
.localvar 20466 _heartXPos 8701
.localvar 20467 _selectXPos 8702
.localvar 11955 is_dualshock 8709
.localvar 20500 _yOffset 8710
.localvar 20501 _headerOffset 8711
.localvar 20504 buttonXPos 8712
.localvar 20505 buttonYPos 8713
.localvar 20531 voff 8715
.localvar 11974 vspacing 8716
.localvar 20532 _heartYPos 8717
.localvar 20533 _heartHeight 8718
.localvar 20534 heart_offset 8719
.localvar 20535 line_padding 8720
.localvar 20536 _textHeight 8721
.localvar 20537 _textYPos 8722
.localvar 10449 _sprite 8723
.localvar 9175 _sprite_height 8724
.localvar 20538 _yPos 8725
.localvar 20541 ch_yoff 8728
.localvar 20542 ch_vspace 8729
.localvar 20543 falselv 8730
.localvar 20544 ch_i 8731
.localvar 20633 coldness_amount 8741
.localvar 20638 boldness_amount 8742
.localvar 20639 guts_xoff 8743
.localvar 20645 spell_xoff 8749
.localvar 20646 jpxoff 8750
.localvar 20647 ln_xoff1 8751
.localvar 20648 ln_xoff2 8752
.localvar 20649 charname_xoff 8753
.localvar 20655 eq_xoff 8755
.localvar 20452 __equipmenumax 8756
.localvar 20659 scroll_xoff 8757
.localvar 20674 atupsign 8769
.localvar 20676 s1_string 8770
.localvar 20681 itemoff 8772

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
pushi.e 1
sub.i.v
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
call.i gml_Script_scr_charbox(argc=0)
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
push.v self.menu_sprite
call.i draw_sprite_ext(argc=9)
popz.v
push.i 169145
setowner.e
pushi.e 2446
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.msprite
pushi.e 2445
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.msprite
pushi.e 2447
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.msprite
pushi.e 2448
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.msprite
pushi.e 2444
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.msprite
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [15]

:[6]
pushi.e 1
pop.v.i self.off
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
push.v self.i
cmp.v.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.off

:[8]
pushglb.v global.menuno
pushi.e 1
sub.i.v
push.v self.i
cmp.v.v EQ
bf [10]

:[9]
pushi.e 2
pop.v.i self.off

:[10]
pushi.e 0
pop.v.i self.spritemx
push.v self.i
pushi.e 2
cmp.i.v GTE
bf [12]

:[11]
pushi.e -100
pop.v.i self.spritemx

:[12]
push.v self.i
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
push.v self.i
pushi.e 100
mul.i.v
add.v.v
push.v self.spritemx
add.v.v
push.v self.off
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.msprite
call.i draw_sprite_ext(argc=9)
popz.v

:[14]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[15]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_47_0"@20462
conv.s.v
pushglb.v global.gold
call.i string(argc=1)
push.s "D$ ~1"@20463
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
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
bf [156]

:[17]
push.i 65536
setowner.e
pushi.e 422
conv.i.v
pushi.e 412
conv.i.v
pushi.e 85
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushi.e 420
conv.i.v
pushi.e 410
conv.i.v
pushi.e 90
conv.i.v
call.i @@NewGMLArray@@(argc=3)
call.i gml_Script_langopt(argc=2)
pop.v.v local.lang_off
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e -7
pushi.e 1
push.v [array]self.lang_off
add.v.v
push.v self.xx
pushi.e 580
add.i.v
push.v self.yy
pushi.e -7
pushi.e 0
push.v [array]self.lang_off
add.v.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e -7
pushi.e 2
push.v [array]self.lang_off
add.v.v
push.v self.xx
pushi.e 590
add.i.v
push.v self.yy
pushi.e -7
pushi.e 0
push.v [array]self.lang_off
add.v.v
pushi.e 10
sub.i.v
push.v self.xx
pushi.e 50
add.i.v
call.i gml_Script_scr_darkbox(argc=4)
popz.v
pushglb.v global.submenu
pushi.e 30
cmp.i.v GTE
bf [19]

:[18]
pushglb.v global.submenu
pushi.e 33
cmp.i.v LTE
b [20]

:[19]
push.e 0

:[20]
bt [22]

:[21]
pushglb.v global.submenu
pushi.e 36
cmp.i.v EQ
b [23]

:[22]
push.e 1

:[23]
bf [54]

:[24]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [26]

:[25]
push.v self.xx
pushi.e 170
add.i.v
b [27]

:[26]
push.v self.xx
pushi.e 150
add.i.v

:[27]
pop.v.v local._xPos
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [29]

:[28]
push.v self.xx
pushi.e 145
add.i.v
b [30]

:[29]
push.v self.xx
pushi.e 125
add.i.v

:[30]
pop.v.v local._heartXPos
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [32]

:[31]
pushglb.v global.is_console
conv.v.b
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
push.v self.xx
pushi.e 385
add.i.v
b [36]

:[35]
push.v self.xx
pushi.e 430
add.i.v

:[36]
pop.v.v local._selectXPos
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_74_0"@20468
conv.s.v
push.s "CONFIG"@20469
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
call.i abs(argc=1)
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
call.i round(argc=1)
call.i string(argc=1)
push.s "%"@14906
add.s.v
pop.v.v self.musvol
push.s "obj_darkcontroller_slash_Draw_0_gml_82_0"@20472
conv.s.v
push.s "OFF"@20473
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.runoff
pushi.e -5
pushi.e 11
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
push.s "obj_darkcontroller_slash_Draw_0_gml_82_1"@20475
conv.s.v
push.s "ON"@20476
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.runoff

:[38]
push.s "obj_darkcontroller_slash_Draw_0_gml_83_0"@20477
conv.s.v
push.s "OFF"@20473
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.flashoff
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
push.s "obj_darkcontroller_slash_Draw_0_gml_83_1"@20479
conv.s.v
push.s "ON"@20476
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.flashoff

:[40]
push.s "obj_darkcontroller_slash_Draw_0_gml_84_0"@20480
conv.s.v
push.s "OFF"@20473
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.shakeoff
pushi.e -5
pushi.e 12
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_darkcontroller_slash_Draw_0_gml_84_1"@20482
conv.s.v
push.s "ON"@20476
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.shakeoff

:[42]
pushglb.v global.is_console
conv.v.b
not.b
bf [45]

:[43]
push.s "obj_darkcontroller_slash_Draw_0_gml_87_0"@20483
conv.s.v
push.s "OFF"@20473
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.fullscreenoff
call.i window_get_fullscreen(argc=0)
conv.v.b
bf [45]

:[44]
push.s "obj_darkcontroller_slash_Draw_0_gml_87_1"@20486
conv.s.v
push.s "ON"@20476
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.fullscreenoff

:[45]
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
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushglb.v global.submenu
pushi.e 33
cmp.i.v EQ
bf [47]

:[46]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[47]
push.s "obj_darkcontroller_slash_Draw_0_gml_86_0"@20487
conv.s.v
push.s "Master Volume"@20488
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
push.s "Controls"@6046
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 185
add.i.v
pushloc.v local._xPos
call.i draw_text(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_92_0"@20490
conv.s.v
push.s "Simplify VFX"@20491
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
bf [53]

:[48]
push.v self.autorun_text
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
bf [50]

:[49]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [52]

:[50]
pushglb.v global.disable_border
conv.v.b
bf [52]

:[51]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[52]
push.s "obj_darkcontroller_slash_Draw_0_gml_112_0"@20492
conv.s.v
push.s "Border"@20493
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
push.s "Return to Title"@20495
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 325
add.i.v
pushloc.v local._xPos
call.i draw_text(argc=3)
popz.v
push.v self.back_text
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 360
add.i.v
pushloc.v local._xPos
call.i draw_text(argc=3)
popz.v
b [54]

:[53]
push.s "obj_darkcontroller_slash_Draw_0_gml_93_0"@20496
conv.s.v
push.s "Fullscreen"@20497
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
push.v self.autorun_text
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
push.s "Return to Title"@20495
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 325
add.i.v
pushloc.v local._xPos
call.i draw_text(argc=3)
popz.v
push.v self.back_text
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 360
add.i.v
pushloc.v local._xPos
call.i draw_text(argc=3)
popz.v

:[54]
pushglb.v global.submenu
pushi.e 34
cmp.i.v EQ
bf [55]

:[55]
pushglb.v global.submenu
pushi.e 35
cmp.i.v EQ
bf [156]

:[56]
push.v 1112.gamepad_active
conv.v.b
bf [58]

:[57]
push.v 1112.gamepad_id
call.i gamepad_get_description(argc=1)
push.s "Sony DualShock 4"@20499
cmp.s.v EQ
b [59]

:[58]
push.e 0

:[59]
bt [61]

:[60]
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
b [62]

:[61]
push.e 1

:[62]
pop.v.b local.is_dualshock
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [64]

:[63]
pushi.e 0
conv.i.v
b [65]

:[64]
pushi.e -4
conv.i.v

:[65]
pop.v.v local._yOffset
pushloc.v local.is_dualshock
conv.v.b
bf [67]

:[66]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e -5
conv.i.v
b [71]

:[70]
pushi.e 0
conv.i.v

:[71]
pop.v.v local._headerOffset
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_113_0"@20502
conv.s.v
push.s "Function"@20503
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
bf [79]

:[72]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [74]

:[73]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
push.v self.xx
pushi.e 445
add.i.v
b [78]

:[77]
push.v self.xx
pushi.e 435
add.i.v

:[78]
pop.v.v local.buttonXPos
push.v self.yy
pushi.e 100
add.i.v
pushloc.v local._yOffset
add.v.v
pop.v.v local.buttonYPos
push.s "obj_darkcontroller_slash_Draw_0_gml_147_0"@20506
conv.s.v
push.s "Button"@20507
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushloc.v local.buttonYPos
pushloc.v local.buttonXPos
call.i draw_text(argc=3)
popz.v
b [81]

:[79]
push.s "obj_darkcontroller_slash_Draw_0_gml_114_0"@20508
conv.s.v
push.s "Key"@20509
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
bf [81]

:[80]
push.s "obj_darkcontroller_slash_Draw_0_gml_115_0"@20510
conv.s.v
push.s "Gamepad"@20511
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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

:[81]
push.i 169162
setowner.e
push.s "obj_darkcontroller_slash_Draw_0_gml_117_0"@20512
conv.s.v
push.s "DOWN"@20513
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.my_function
push.s "obj_darkcontroller_slash_Draw_0_gml_118_0"@20515
conv.s.v
push.s "RIGHT"@20516
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.my_function
push.s "obj_darkcontroller_slash_Draw_0_gml_119_0"@20517
conv.s.v
push.s "UP"@20518
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.my_function
push.s "obj_darkcontroller_slash_Draw_0_gml_120_0"@20519
conv.s.v
push.s "LEFT"@20520
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.my_function
push.s "obj_darkcontroller_slash_Draw_0_gml_121_0"@20521
conv.s.v
push.s "CONFIRM"@20522
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.my_function
push.s "obj_darkcontroller_slash_Draw_0_gml_122_0"@20523
conv.s.v
push.s "CANCEL"@20524
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 5
pop.v.v [array]self.my_function
push.s "obj_darkcontroller_slash_Draw_0_gml_123_0"@20525
conv.s.v
push.s "MENU"@20526
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 6
pop.v.v [array]self.my_function
push.s "obj_darkcontroller_slash_Draw_0_gml_124_0"@20527
conv.s.v
push.s "Reset to default"@20528
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 7
pop.v.v [array]self.my_function
push.s "obj_darkcontroller_slash_Draw_0_gml_125_0"@20529
conv.s.v
push.s "Finish"@20530
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 8
pop.v.v [array]self.my_function
pushi.e -8
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.voff
pushi.e 30
conv.i.v
pushi.e 28
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.vspacing
pushglb.v global.is_console
conv.v.b
bt [83]

:[82]
pushloc.v local.is_dualshock
conv.v.b
b [84]

:[83]
push.e 1

:[84]
bf [92]

:[85]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [87]

:[86]
push.v self.yy
pushi.e 146
add.i.v
b [88]

:[87]
push.v self.yy
pushi.e 144
add.i.v

:[88]
pop.v.v local._heartYPos
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [90]

:[89]
pushi.e 29
conv.i.v
b [91]

:[90]
pushi.e 30
conv.i.v

:[91]
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
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [96]

:[92]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [94]

:[93]
pushi.e 28
conv.i.v
b [95]

:[94]
pushi.e 29
conv.i.v

:[95]
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
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[96]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [98]

:[97]
pushi.e 1
conv.i.v
b [99]

:[98]
pushi.e 0
conv.i.v

:[99]
pop.v.v local.line_padding
pushi.e 0
pop.v.i self.i

:[100]
push.v self.i
pushi.e 8
cmp.i.v LTE
bf [156]

:[101]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
push.v self.i
cmp.v.v EQ
bf [103]

:[102]
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[103]
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
push.v self.i
cmp.v.v EQ
bf [105]

:[104]
push.v self.control_select_con
pushi.e 1
cmp.i.v EQ
b [106]

:[105]
push.e 0

:[106]
bf [108]

:[107]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[108]
push.v self.i
pushi.e 7
cmp.i.v EQ
bf [110]

:[109]
push.v self.control_flash_timer
pushi.e 0
cmp.i.v GT
b [111]

:[110]
push.e 0

:[111]
bf [113]

:[112]
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

:[113]
pushloc.v local.is_dualshock
conv.v.b
bf [118]

:[114]
pushi.e 29
pop.v.i local._textHeight
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [116]

:[115]
push.v self.yy
pushi.e 137
add.i.v
b [117]

:[116]
push.v self.yy
pushi.e 136
add.i.v

:[117]
pop.v.v local._textYPos
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.my_function
call.i string_hash_to_newline(argc=1)
pushloc.v local._textYPos
push.v self.i
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
b [119]

:[118]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.my_function
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 140
add.i.v
push.v self.i
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

:[119]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [155]

:[120]
pushloc.v local.is_dualshock
conv.v.b
bf [133]

:[121]
pushi.e 0
conv.b.v
pushi.e -5
push.v self.i
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
bt [125]

:[122]
pushloc.v local._sprite
pushi.e 2612
cmp.i.v EQ
bt [125]

:[123]
pushloc.v local._sprite
pushi.e 2609
cmp.i.v EQ
bt [125]

:[124]
pushloc.v local._sprite
pushi.e 2610
cmp.i.v EQ
b [126]

:[125]
push.e 1

:[126]
bf [128]

:[127]
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
b [130]

:[128]
pushloc.v local._sprite
pushi.e 2520
cmp.i.v EQ
bf [130]

:[129]
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

:[130]
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
push.v self.i
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
bf [132]

:[131]
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.input_k
conv.v.i
push.v [array]self.asc_def
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushloc.v local.voff
add.v.v
pushi.e 140
add.i.v
push.v self.i
pushloc.v local.vspacing
mul.v.v
add.v.v
push.v self.xx
pushi.e 325
add.i.v
call.i draw_text(argc=3)
popz.v

:[132]
b [155]

:[133]
pushglb.v global.is_console
conv.v.b
bf [148]

:[134]
push.v 1112.gamepad_active
conv.v.b
bf [147]

:[135]
pushi.e 0
conv.b.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
pushi.e -4
cmp.i.v NEQ
bf [137]

:[136]
pushi.e 0
conv.b.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
b [138]

:[137]
pushi.e 2578
conv.i.v

:[138]
pop.v.v local._sprite
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [140]

:[139]
push.v self.xx
pushi.e 475
add.i.v
b [141]

:[140]
push.v self.xx
pushi.e 465
add.i.v

:[141]
pop.v.v local._xPos
pushloc.v local._sprite
pushi.e 2595
cmp.i.v EQ
bt [143]

:[142]
pushloc.v local._sprite
pushi.e 2596
cmp.i.v EQ
b [144]

:[143]
push.e 1

:[144]
bf [146]

:[145]
push.v local._xPos
pushi.e 3
sub.i.v
pop.v.v local._xPos

:[146]
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
push.v self.i
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

:[147]
b [155]

:[148]
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.input_k
conv.v.i
push.v [array]self.asc_def
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushloc.v local.voff
add.v.v
pushi.e 140
add.i.v
push.v self.i
pushloc.v local.vspacing
mul.v.v
add.v.v
push.v self.xx
pushi.e 325
add.i.v
call.i draw_text(argc=3)
popz.v
push.v 1112.gamepad_active
conv.v.b
bf [155]

:[149]
pushi.e 0
conv.b.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
pop.v.v local._sprite
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [151]

:[150]
push.v self.xx
pushi.e 475
add.i.v
b [152]

:[151]
push.v self.xx
pushi.e 465
add.i.v

:[152]
pop.v.v local._xPos
pushloc.v local._sprite
call.i sprite_get_width(argc=1)
pushi.e 12
cmp.i.v LT
bf [154]

:[153]
push.v local._xPos
pushi.e 2
add.i.v
pop.v.v local._xPos

:[154]
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
push.v self.i
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

:[155]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [100]

:[156]
pushglb.v global.menuno
pushi.e 4
cmp.i.v EQ
bf [281]

:[157]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 410
add.i.v
push.v self.xx
pushi.e 612
conv.i.v
pushi.e 580
conv.i.v
call.i gml_Script_langopt(argc=2)
add.v.v
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
conv.i.v
pushi.e 590
conv.i.v
call.i gml_Script_langopt(argc=2)
add.v.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 50
add.i.v
call.i gml_Script_scr_darkbox(argc=4)
popz.v
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
pushi.e 552
conv.i.v
pushi.e 520
conv.i.v
call.i gml_Script_langopt(argc=2)
add.v.v
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
pushi.e 195
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
bf [159]

:[158]
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

:[159]
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
call.i gml_Script_scr_84_get_sprite(argc=1)
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
call.i gml_Script_scr_84_get_sprite(argc=1)
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
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [161]

:[160]
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
pushi.e 310
add.i.v
pushi.e 6
conv.i.v
pushi.e 2351
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [162]

:[161]
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
pushi.e 2351
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[162]
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
call.i gml_Script_scr_84_set_draw_font(argc=1)
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
pop.v.i self.i

:[163]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [167]

:[164]
push.d 0.4
pop.v.d self.chosen
push.v self.i
push.v self.coord
cmp.v.v EQ
bf [166]

:[165]
pushi.e 1
pop.v.i self.chosen

:[166]
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
push.v self.i
pushi.e 50
mul.i.v
add.v.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 2450
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [163]

:[167]
pushglb.v global.submenu
pushi.e 20
cmp.i.v EQ
bf [169]

:[168]
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
pushi.e 2452
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[169]
push.v self.yy
pushi.e 230
add.i.v
pop.v.v local.ch_yoff
pushi.e 28
conv.i.v
pushi.e 25
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.ch_vspace
push.s "1"@9475
pop.v.s local.falselv
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [172]

:[170]
push.s "2"@4175
pop.v.s local.falselv
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [172]

:[171]
push.s "3"@2741
pop.v.s local.falselv

:[172]
pushi.e 0
pop.v.i local.ch_i

:[173]
pushloc.v local.ch_i
pushi.e 6
cmp.i.v LT
bf [175]

:[174]
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
b [173]

:[175]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_207_0"@20546
conv.s.v
push.s "Attack: "@20547
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
call.i gml_Script_draw_item_icon(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_208_0"@20548
conv.s.v
push.s "Defense: "@20549
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
call.i gml_Script_draw_item_icon(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_209_0"@20550
conv.s.v
push.s "Magic: "@20551
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
call.i gml_Script_draw_item_icon(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_212_0"@20552
conv.s.v
push.s "Guts: "@20553
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
call.i gml_Script_draw_item_icon(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_214_0"@20554
conv.s.v
push.s "LV1 "@20555
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.char_desc
pushi.e 0
pop.v.i self.guts_amount
pushi.e 0
pop.v.i self.fluff_amount
push.v self.charcoord
pushi.e 1
cmp.i.v EQ
bf [195]

:[176]
pushi.e 1
pop.v.i self.guts_amount
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [178]

:[177]
pushi.e 2
pop.v.i self.guts_amount

:[178]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_226_0"@20559
conv.s.v
push.s "???"@9069
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
pushi.e 97
cmp.i.v GTE
bf [180]

:[179]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_231_0"@20560
conv.s.v
push.s "Dog:"@20561
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
pushi.e 2350
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [181]

:[180]
push.s "obj_darkcontroller_slash_Draw_0_gml_236_0"@20562
conv.s.v
push.s "???"@9069
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v

:[181]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [186]

:[182]
push.s "obj_darkcontroller_slash_Draw_0_gml_239_0"@20563
conv.s.v
push.s "LV1 Human#Body contains a#human SOUL."@20564
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.char_desc
pushglb.v global.plot
pushi.e 30
cmp.i.v GTE
bf [184]

:[183]
push.s "obj_darkcontroller_slash_Draw_0_gml_240_0"@20565
conv.s.v
push.s "LV1 Leader#Commands the party#with various ACTs."@20566
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
push.s "LV1 Bed Inspector#Inspects all beds#inexplicably."@20568
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.char_desc

:[186]
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [195]

:[187]
push.s "obj_darkcontroller_slash_Draw_0_gml_272_0_b"@20569
conv.s.v
pushloc.v local.falselv
push.s "LV~1 Leader#Commands the party#with various ACTs."@20570
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.char_desc
pushglb.v global.plot
pushi.e 60
cmp.i.v GTE
bf [189]

:[188]
push.s "obj_darkcontroller_slash_Draw_0_gml_273_0"@20571
conv.s.v
pushloc.v local.falselv
push.s "LV~1 Tactician#Commands the party#by ACTs. Sometimes."@20572
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.char_desc

:[189]
pushi.e -5
pushi.e 252
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [191]

:[190]
push.s "obj_darkcontroller_slash_Draw_0_gml_274_0"@20573
conv.s.v
pushloc.v local.falselv
push.s "LV~1 Bed Inspector#Inspects all beds#inexplicably."@20574
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.char_desc

:[191]
pushi.e -5
pushi.e 920
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [193]

:[192]
push.s "obj_darkcontroller_slash_Draw_0_gml_275_0_b"@20575
conv.s.v
pushloc.v local.falselv
push.s "LV~1 Moss Finder#Basic moss-finding#abilities."@20576
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.char_desc

:[193]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v GT
bf [195]

:[194]
push.s "obj_darkcontroller_slash_Draw_0_gml_276_0"@20577
conv.s.v
pushloc.v local.falselv
push.s "LV~1 Leader#Commands."@20578
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.char_desc

:[195]
push.v self.charcoord
pushi.e 2
cmp.i.v EQ
bf [211]

:[196]
pushi.e 2
pop.v.i self.guts_amount
pushi.e 100
pop.v.i self.rude_amount
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [199]

:[197]
pushglb.v global.plot
pushi.e 154
cmp.i.v GTE
bf [199]

:[198]
pushi.e 99
pop.v.i self.rude_amount

:[199]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [201]

:[200]
push.v self.rude_amount
pushi.e 11
sub.i.v
pop.v.v self.rude_amount

:[201]
push.s "obj_darkcontroller_slash_Draw_0_gml_251_0"@20580
conv.s.v
push.s "Rudeness "@20581
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
call.i gml_Script_draw_item_icon(argc=3)
popz.v
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
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [206]

:[202]
pushi.e 100
pop.v.i self.crude_amount
pushi.e -5
pushi.e 214
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [204]

:[203]
pushi.e 101
pop.v.i self.crude_amount

:[204]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
call.i gml_Script_langopt(argc=2)
push.s "obj_darkcontroller_slash_Draw_0_gml_252_0"@20583
conv.s.v
push.s "Crudeness "@20584
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
call.i gml_Script_draw_item_icon(argc=3)
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
push.s "LV1 Mean Girl#Won't do anything#but fight."@20586
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.char_desc
pushglb.v global.plot
pushi.e 154
cmp.i.v GTE
bf [206]

:[205]
push.s "obj_darkcontroller_slash_Draw_0_gml_256_0"@20587
conv.s.v
push.s "LV1 Dark Knight#Does damage using#dark energy."@20588
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.char_desc

:[206]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [211]

:[207]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
call.i gml_Script_langopt(argc=2)
push.s "obj_darkcontroller_slash_Draw_0_gml_311_0"@20589
conv.s.v
push.s "Purple "@20590
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
call.i gml_Script_draw_item_icon(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_312_0"@20591
conv.s.v
push.s "Yes"@5613
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 4
push.v [array]self.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_314_0"@20592
conv.s.v
pushloc.v local.falselv
push.s "LV~1 Dark Knight#Does damage using#dark energy."@20593
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.char_desc
pushglb.v global.plot
pushi.e 95
cmp.i.v GTE
bf [209]

:[208]
push.s "obj_darkcontroller_slash_Draw_0_gml_315_0"@20594
conv.s.v
pushloc.v local.falselv
push.s "LV~1 Healing Master#Can use ultimate#healing. (Losers!)"@20595
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.char_desc

:[209]
pushi.e -5
pushi.e 922
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [211]

:[210]
push.s "obj_darkcontroller_slash_Draw_0_gml_316_0"@20596
conv.s.v
pushloc.v local.falselv
push.s "LV~1 Moss Enjoyer#Supports those#that find moss."@20597
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.char_desc

:[211]
push.v self.charcoord
pushi.e 3
cmp.i.v EQ
bf [235]

:[212]
pushi.e 0
pop.v.i self.guts_amount
pushi.e 1
pop.v.i self.fluff_amount
pushi.e 100
pop.v.i self.kindness_amount
pushi.e 10
pop.v.i self.kind_icon
push.s "obj_darkcontroller_slash_Draw_0_gml_327_0"@20600
conv.s.v
push.s "Kindness"@7182
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.kind_text
push.v self.dograndom
pushi.e 97
cmp.i.v GTE
bf [214]

:[213]
pushi.e 11
pop.v.i self.kind_icon
push.s "obj_darkcontroller_slash_Draw_0_gml_331_0"@20602
conv.s.v
push.s "Dogness"@20603
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.kind_text
pushi.e 1
pop.v.i self.kindness_amount

:[214]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [220]

:[215]
push.s "obj_darkcontroller_slash_Draw_0_gml_272_0"@20604
conv.s.v
push.s "LV1 Lonely Prince#Dark-World being.#Has no subjects."@20605
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.char_desc
pushi.e -5
pushi.e 3
push.v [array]self.charweapon
pushi.e 9
cmp.i.v EQ
bf [217]

:[216]
push.s "obj_darkcontroller_slash_Draw_0_gml_275_0"@20606
conv.s.v
push.s "LV1 Prickly Prince#Deals damage with#his rugged scarf."@20607
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.char_desc

:[217]
pushi.e -5
pushi.e 3
push.v [array]self.charweapon
pushi.e 10
cmp.i.v EQ
bf [219]

:[218]
push.s "obj_darkcontroller_slash_Draw_0_gml_279_0"@20608
conv.s.v
push.s "LV1 Fluffy Prince#Weak^1, but has nice#healing powers."@20609
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.char_desc
push.v self.fluff_amount
pushi.e 1
add.i.v
pop.v.v self.fluff_amount

:[219]
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
call.i gml_Script_draw_item_icon(argc=3)
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

:[220]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [232]

:[221]
push.v self.fluff_amount
pushi.e 1
add.i.v
pop.v.v self.fluff_amount
push.s "obj_darkcontroller_slash_Draw_0_gml_356_0"@20610
conv.s.v
pushloc.v local.falselv
push.s "LV~1 Dark Prince#Dark-World being.#Has friends now."@20611
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.char_desc
pushi.e -5
pushi.e 325
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [223]

:[222]
push.s "obj_darkcontroller_slash_Draw_0_gml_357_0"@20612
conv.s.v
pushloc.v local.falselv
push.s "LV~1 Hug Prince#Receives and#gives many hugs."@20613
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.char_desc

:[223]
pushi.e -5
pushi.e 325
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [225]

:[224]
push.s "obj_darkcontroller_slash_Draw_0_gml_358_0"@20614
conv.s.v
pushloc.v local.falselv
push.s "LV~1 Pose Prince#Poses for photos#at times."@20615
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.char_desc

:[225]
pushi.e -5
pushi.e 325
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [227]

:[226]
push.s "obj_darkcontroller_slash_Draw_0_gml_359_0"@20616
conv.s.v
pushloc.v local.falselv
push.s "LV~1 Rude Prince#Friends with a#rude gesturer."@20617
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.char_desc

:[227]
pushi.e -5
pushi.e 325
push.v [array]self.flag
pushi.e 4
cmp.i.v EQ
bf [229]

:[228]
push.s "obj_darkcontroller_slash_Draw_0_gml_360_0"@20618
conv.s.v
pushloc.v local.falselv
push.s "LV~1 Blank Prince#Doesn't even#have a photo."@20619
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.char_desc

:[229]
push.s "obj_darkcontroller_slash_Draw_0_gml_362_0"@20620
conv.s.v
push.s "Sweetness "@20621
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon(argc=3)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [231]

:[230]
push.s ":"@6158
conv.s.v
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
push.v self.xx
pushi.e 230
add.i.v
pushi.e 14
add.i.v
pushi.e 2
sub.i.v
pushi.e 2
sub.i.v
call.i draw_text(argc=3)
popz.v
push.s "97"@20622
conv.s.v
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
push.v self.xx
pushi.e 230
add.i.v
pushi.e 14
add.i.v
pushi.e 16
add.i.v
pushi.e 2
sub.i.v
call.i draw_text(argc=3)
popz.v
b [232]

:[231]
push.s "97"@20622
conv.s.v
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v

:[232]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
push.s "obj_darkcontroller_slash_Draw_0_gml_286_0"@20623
conv.s.v
push.s "Fluffiness"@20624
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
call.i gml_Script_draw_item_icon(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[233]
push.v self.i
push.v self.fluff_amount
cmp.v.v LT
bf [235]

:[234]
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
push.v self.i
pushi.e 20
mul.i.v
add.v.v
call.i gml_Script_draw_item_icon(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [233]

:[235]
push.v self.charcoord
pushi.e 4
cmp.i.v EQ
bf [246]

:[236]
pushi.e 0
pop.v.i self.guts_amount
push.s "obj_darkcontroller_slash_Draw_0_gml_382_0"@20625
conv.s.v
push.s "LV1 Snowcaster#Might be able to#use some cool moves."@20626
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.char_desc
pushi.e -5
pushi.e 925
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [238]

:[237]
push.s "obj_darkcontroller_slash_Draw_0_gml_383_0"@20627
conv.s.v
pushloc.v local.falselv
push.s "LV~1 Frostmancer#Freezes the enemy."@20628
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.char_desc

:[238]
pushi.e -5
pushi.e 4
push.v [array]self.charweapon
pushi.e 13
cmp.i.v EQ
bf [240]

:[239]
push.s "obj_darkcontroller_slash_Draw_0_gml_384_0"@20629
conv.s.v
pushloc.v local.falselv
push.s "LV~1 Ice Trancer#Receives pain to#become stronger."@20630
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.char_desc

:[240]
pushi.e -5
pushi.e 921
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [242]

:[241]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v EQ
b [243]

:[242]
push.e 0

:[243]
bf [245]

:[244]
push.s "obj_darkcontroller_slash_Draw_0_gml_385_0"@20631
conv.s.v
pushloc.v local.falselv
push.s "LV~1 Moss Neutral#Neither chaotic nor#lawful to moss."@20632
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.char_desc

:[245]
pushi.e 100
conv.i.v
pushi.e 47
conv.i.v
pushi.e 47
pushi.e -5
pushi.e 925
push.v [array]self.flag
pushi.e 7
mul.i.v
add.v.i
call.i clamp(argc=3)
pop.v.v local.coldness_amount
push.s "obj_darkcontroller_slash_Draw_0_gml_388_0"@20634
conv.s.v
push.s "Coldness "@20635
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 17
conv.i.v
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon(argc=3)
popz.v
pushloc.v local.coldness_amount
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 3
push.v [array]self.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
call.i gml_Script_langopt(argc=2)
push.s "obj_darkcontroller_slash_Draw_0_gml_391_0"@20636
conv.s.v
push.s "Boldness"@20637
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 4
push.v [array]self.ch_y
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 16
conv.i.v
pushi.e -7
pushi.e 4
push.v [array]self.ch_y
pushi.e 6
add.i.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon(argc=3)
popz.v
pushi.e 100
conv.i.v
pushi.e -12
pushglb.v global.plot
pushi.e 70
sub.i.v
pushi.e 3
mul.i.v
add.v.i
call.i min(argc=2)
pop.v.v local.boldness_amount
pushloc.v local.boldness_amount
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 4
push.v [array]self.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v

:[246]
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
pushi.e 16
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.guts_xoff
pushi.e 0
pop.v.i self.i

:[247]
push.v self.i
push.v self.guts_amount
cmp.v.v LT
bf [249]

:[248]
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
push.v self.i
pushi.e 20
mul.i.v
add.v.v
pushloc.v local.guts_xoff
add.v.v
call.i gml_Script_draw_item_icon(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [247]

:[249]
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
pop.v.i self.i

:[250]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [257]

:[251]
pushi.e 0
pop.v.i self.j

:[252]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [256]

:[253]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [255]

:[254]
push.v self.grazesum
pushi.e -5
pushi.e -5
push.v self.i
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
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemgrazesize
push.v self.j
conv.v.i
pushaf.e
add.v.v
pop.v.v self.sizesum

:[255]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [252]

:[256]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [250]

:[257]
push.v self.atsum
call.i floor(argc=1)
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
call.i floor(argc=1)
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
call.i floor(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e -7
pushi.e 2
push.v [array]self.ch_y
push.v self.xx
pushi.e 230
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.spell_xoff
pushi.e 0
pop.v.i self.i

:[258]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [275]

:[259]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spell
push.v self.i
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v GT
bf [274]

:[260]
pushi.e 0
pop.v.i self.g
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spellusable
push.v self.i
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
bf [262]

:[261]
pushi.e 1
pop.v.i self.g

:[262]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spellcost
push.v self.i
conv.v.i
pushaf.e
pushglb.v global.tension
cmp.v.v GT
bf [264]

:[263]
pushi.e 1
pop.v.i self.g

:[264]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [266]

:[265]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[266]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [268]

:[267]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[268]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [270]

:[269]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spellcost
push.v self.i
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
push.v self.i
conv.v.i
push.v [array]self.ch_y
push.v self.xx
pushi.e 310
add.i.v
call.i draw_text(argc=3)
popz.v
b [271]

:[270]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spellcost
push.v self.i
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
push.v self.i
conv.v.i
push.v [array]self.ch_y
push.v self.xx
pushi.e 340
add.i.v
call.i draw_text(argc=3)
popz.v

:[271]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [273]

:[272]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spellname
push.v self.i
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
pushi.e -7
push.v self.i
conv.v.i
push.v [array]self.ch_y
push.v self.xx
pushi.e 390
add.i.v
pushloc.v local.spell_xoff
add.v.v
call.i draw_text(argc=3)
popz.v
b [274]

:[273]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spellname
push.v self.i
conv.v.i
pushaf.e
call.i string_hash_to_newline(argc=1)
pushi.e -7
push.v self.i
conv.v.i
push.v [array]self.ch_y
push.v self.xx
pushi.e 410
add.i.v
pushloc.v local.spell_xoff
add.v.v
call.i draw_text(argc=3)
popz.v

:[274]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [258]

:[275]
pushglb.v global.submenu
pushi.e 21
cmp.i.v EQ
bf [279]

:[276]
pushi.e 0
pop.v.i local.jpxoff
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [278]

:[277]
pushi.e 40
pop.v.i local.jpxoff

:[278]
push.v self.yy
pushi.e 240
add.i.v
pushi.e -5
pushi.e 21
push.v [array]self.submenucoord
pushi.e 25
mul.i.v
add.v.v
push.v self.xx
pushi.e 320
add.i.v
pushloc.v local.jpxoff
add.v.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[279]
push.v self.deschaver
pushi.e 1
cmp.i.v EQ
bf [281]

:[280]
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

:[281]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [525]

:[282]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 28
conv.i.v
pushi.e 27
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.ch_vspace
pushi.e 626
conv.i.v
pushi.e 580
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.ln_xoff1
pushi.e 636
conv.i.v
pushi.e 590
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.ln_xoff2
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 410
add.i.v
push.v self.xx
pushloc.v local.ln_xoff1
add.v.v
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
pushloc.v local.ln_xoff2
add.v.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 50
add.i.v
call.i gml_Script_scr_darkbox(argc=4)
popz.v
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
pushi.e 628
conv.i.v
pushi.e 584
conv.i.v
call.i gml_Script_langopt(argc=2)
add.v.v
push.v self.yy
pushi.e 221
add.i.v
push.v self.xx
pushi.e 59
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 221
add.i.v
pushi.e 190
add.i.v
push.v self.xx
pushi.e 323
add.i.v
pushi.e 5
add.i.v
push.v self.yy
pushi.e 221
add.i.v
push.v self.xx
pushi.e 323
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
pushi.e 2351
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
pushi.e 86
add.i.v
push.v self.xx
pushi.e 376
add.i.v
pushi.e 1
conv.i.v
pushi.e 2351
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 1
cmp.i.v EQ
bt [284]

:[283]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
b [285]

:[284]
push.e 1

:[285]
bf [287]

:[286]
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
pushi.e 2351
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [288]

:[287]
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
pushi.e 2351
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[288]
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
pushi.e 2351
conv.i.v
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
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e -25
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.charname_xoff
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
pushloc.v local.charname_xoff
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[289]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [293]

:[290]
push.d 0.4
pop.v.d self.chosen
push.v self.i
push.v self.coord
cmp.v.v EQ
bf [292]

:[291]
pushi.e 1
pop.v.i self.chosen

:[292]
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
push.v self.i
pushi.e 50
mul.i.v
add.v.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 2450
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [289]

:[293]
pushglb.v global.submenu
pushi.e 10
cmp.i.v EQ
bf [295]

:[294]
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
pushi.e 2452
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[295]
pushglb.v global.submenu
pushi.e 11
cmp.i.v NEQ
bf [299]

:[296]
push.v self.charcoord
pushi.e 1
sub.i.v
pop.v.v self.bicon
push.v self.charcoord
pushi.e 4
cmp.i.v EQ
bf [298]

:[297]
pushi.e 5
pop.v.i self.bicon

:[298]
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
push.v self.bicon
pushi.e 2352
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
pushi.e 2352
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
pushi.e 2352
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[299]
pushglb.v global.submenu
pushi.e 11
cmp.i.v EQ
bf [311]

:[300]
push.v self.charcoord
pushi.e 1
sub.i.v
pop.v.v self.bicon
push.v self.charcoord
pushi.e 4
cmp.i.v EQ
bf [302]

:[301]
pushi.e 5
pop.v.i self.bicon

:[302]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v EQ
bf [304]

:[303]
push.v self.yy
pushi.e 122
add.i.v
push.v self.xx
pushi.e 308
add.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [305]

:[304]
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
push.v self.bicon
pushi.e 2352
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[305]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 1
cmp.i.v EQ
bf [307]

:[306]
push.v self.yy
pushi.e 152
add.i.v
push.v self.xx
pushi.e 308
add.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [308]

:[307]
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
pushi.e 2352
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[308]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
bf [310]

:[309]
push.v self.yy
pushi.e 182
add.i.v
push.v self.xx
pushi.e 308
add.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [311]

:[310]
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
pushi.e 2352
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[311]
pushi.e -1
push.v self.charcoord
conv.v.i
push.v [array]self.charweaponname
push.s " "@353
cmp.s.v NEQ
bf [313]

:[312]
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
call.i gml_Script_draw_item_icon(argc=3)
popz.v
b [314]

:[313]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_453_0"@20651
conv.s.v
push.s "(Nothing)"@20652
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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

:[314]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor1
pushi.e 0
cmp.i.v NEQ
bf [316]

:[315]
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
call.i gml_Script_draw_item_icon(argc=3)
popz.v
b [317]

:[316]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_465_0"@20653
conv.s.v
push.s "(Nothing)"@20652
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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

:[317]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [array]self.chararmor2
pushi.e 0
cmp.i.v NEQ
bf [319]

:[318]
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
call.i gml_Script_draw_item_icon(argc=3)
popz.v
b [320]

:[319]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_477_0"@20654
conv.s.v
push.s "(Nothing)"@20652
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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

:[320]
pushi.e -6
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.eq_xoff
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v EQ
bf [351]

:[321]
pushi.e 0
pop.v.i self.j
pushi.e -1
pushi.e 0
push.v [array]self.pagemax
pop.v.v self.i

:[322]
push.v self.i
pushi.e -1
pushi.e 0
push.v [array]self.pagemax
pushi.e 6
add.i.v
cmp.v.v LT
bf [351]

:[323]
pushi.e 0
pop.v.i self.g
push.v self.charcoord
pushi.e 1
cmp.i.v EQ
bf [325]

:[324]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weaponchar1
pushi.e 0
cmp.i.v EQ
b [326]

:[325]
push.e 0

:[326]
bf [328]

:[327]
pushi.e 1
pop.v.i self.g

:[328]
push.v self.charcoord
pushi.e 2
cmp.i.v EQ
bf [330]

:[329]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weaponchar2
pushi.e 0
cmp.i.v EQ
b [331]

:[330]
push.e 0

:[331]
bf [333]

:[332]
pushi.e 1
pop.v.i self.g

:[333]
push.v self.charcoord
pushi.e 3
cmp.i.v EQ
bf [335]

:[334]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weaponchar3
pushi.e 0
cmp.i.v EQ
b [336]

:[335]
push.e 0

:[336]
bf [338]

:[337]
pushi.e 1
pop.v.i self.g

:[338]
push.v self.charcoord
pushi.e 4
cmp.i.v EQ
bf [340]

:[339]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weaponchar4
pushi.e 0
cmp.i.v EQ
b [341]

:[340]
push.e 0

:[341]
bf [343]

:[342]
pushi.e 1
pop.v.i self.g

:[343]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [345]

:[344]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[345]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [347]

:[346]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[347]
pushi.e -1
push.v self.i
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
pushloc.v local.eq_xoff
add.v.v
call.i gml_Script_draw_item_icon(argc=3)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.weapon
pushi.e 0
cmp.i.v NEQ
bf [349]

:[348]
pushi.e -1
push.v self.i
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
pushloc.v local.eq_xoff
add.v.v
call.i draw_text(argc=3)
popz.v
b [350]

:[349]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_585_0"@20656
conv.s.v
push.s "---------"@20657
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
pushloc.v local.eq_xoff
add.v.v
call.i draw_text(argc=3)
popz.v

:[350]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [322]

:[351]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 1
cmp.i.v EQ
bt [353]

:[352]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
b [354]

:[353]
push.e 1

:[354]
bf [385]

:[355]
pushi.e 0
pop.v.i self.j
pushi.e -1
pushi.e 1
push.v [array]self.pagemax
pop.v.v self.i

:[356]
push.v self.i
pushi.e 6
pushi.e -1
pushi.e 1
push.v [array]self.pagemax
add.v.i
cmp.v.v LT
bf [385]

:[357]
pushi.e 0
pop.v.i self.g
push.v self.charcoord
pushi.e 1
cmp.i.v EQ
bf [359]

:[358]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.armorchar1
pushi.e 0
cmp.i.v EQ
b [360]

:[359]
push.e 0

:[360]
bf [362]

:[361]
pushi.e 1
pop.v.i self.g

:[362]
push.v self.charcoord
pushi.e 2
cmp.i.v EQ
bf [364]

:[363]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.armorchar2
pushi.e 0
cmp.i.v EQ
b [365]

:[364]
push.e 0

:[365]
bf [367]

:[366]
pushi.e 1
pop.v.i self.g

:[367]
push.v self.charcoord
pushi.e 3
cmp.i.v EQ
bf [369]

:[368]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.armorchar3
pushi.e 0
cmp.i.v EQ
b [370]

:[369]
push.e 0

:[370]
bf [372]

:[371]
pushi.e 1
pop.v.i self.g

:[372]
push.v self.charcoord
pushi.e 4
cmp.i.v EQ
bf [374]

:[373]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.armorchar4
pushi.e 0
cmp.i.v EQ
b [375]

:[374]
push.e 0

:[375]
bf [377]

:[376]
pushi.e 1
pop.v.i self.g

:[377]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [379]

:[378]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[379]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [381]

:[380]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[381]
pushi.e -1
push.v self.i
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
call.i gml_Script_draw_item_icon(argc=3)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.armor
pushi.e 0
cmp.i.v NEQ
bf [383]

:[382]
pushi.e -1
push.v self.i
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
call.i draw_text(argc=3)
popz.v
b [384]

:[383]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_609_0"@20658
conv.s.v
push.s "---------"@20657
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
call.i draw_text(argc=3)
popz.v

:[384]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [356]

:[385]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bt [388]

:[386]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [388]

:[387]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [389]

:[388]
push.e 1

:[389]
bf [397]

:[390]
pushi.e 47
pop.v.i local.__equipmenumax
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.scroll_xoff
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [392]

:[391]
pushi.e 0
pop.v.i self.pm
b [393]

:[392]
pushi.e 1
pop.v.i self.pm

:[393]
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
pushi.e 27
mul.i.v
add.v.v
push.v self.xx
pushi.e 344
add.i.v
pushloc.v local.eq_xoff
add.v.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 263
add.i.v
pushi.e 115
add.i.v
push.v self.xx
pushi.e 560
add.i.v
pushloc.v local.scroll_xoff
add.v.v
push.v self.yy
pushi.e 260
add.i.v
push.v self.xx
pushi.e 555
add.i.v
pushloc.v local.scroll_xoff
add.v.v
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 263
add.i.v
pushi.e -1
push.v self.pm
conv.v.i
push.v [array]self.pagemax
push.d 2.738095238095238
mul.d.v
add.v.v
pushi.e 1
add.i.v
push.v self.xx
pushi.e 560
add.i.v
pushloc.v local.scroll_xoff
add.v.v
push.v self.yy
pushi.e 260
add.i.v
pushi.e -1
push.v self.pm
conv.v.i
push.v [array]self.pagemax
push.d 2.738095238095238
mul.d.v
add.v.v
pushi.e 1
sub.i.v
push.v self.xx
pushi.e 555
add.i.v
pushloc.v local.scroll_xoff
add.v.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e -1
push.v self.pm
conv.v.i
push.v [array]self.pagemax
pushi.e 0
cmp.i.v GT
bf [395]

:[394]
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
pushloc.v local.scroll_xoff
add.v.v
pushi.e 0
conv.i.v
pushi.e 1316
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[395]
pushi.e 5
pushi.e -1
push.v self.pm
conv.v.i
push.v [array]self.pagemax
add.v.i
pushloc.v local.__equipmenumax
cmp.v.v LT
bf [397]

:[396]
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
pushloc.v local.scroll_xoff
add.v.v
pushi.e 0
conv.i.v
pushi.e 1316
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[397]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 11
cmp.i.v EQ
bf [404]

:[398]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v EQ
bf [400]

:[399]
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

:[400]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 1
cmp.i.v EQ
bf [402]

:[401]
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

:[402]
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
bf [404]

:[403]
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

:[404]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [406]

:[405]
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

:[406]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [408]

:[407]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [409]

:[408]
push.e 1

:[409]
bf [411]

:[410]
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

:[411]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_586_0"@20661
conv.s.v
push.s "Attack: "@20547
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
call.i gml_Script_draw_item_icon(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_587_0"@20662
conv.s.v
push.s "Defense: "@20549
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
call.i gml_Script_draw_item_icon(argc=3)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_588_0"@20663
conv.s.v
push.s "Magic: "@20551
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
call.i gml_Script_draw_item_icon(argc=3)
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
push.v self.atsum
call.i floor(argc=1)
pop.v.v self.atsum
push.v self.dfsum
call.i floor(argc=1)
pop.v.v self.dfsum
push.v self.magsum
call.i floor(argc=1)
pop.v.v self.magsum
pushglb.v global.grazeamt
pop.v.v self.grazesum
pushglb.v global.grazesize
pop.v.v self.sizesum
pushi.e 0
pop.v.i self.i

:[412]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [419]

:[413]
pushi.e 0
pop.v.i self.j

:[414]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [418]

:[415]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [417]

:[416]
push.v self.grazesum
pushi.e -5
pushi.e -5
push.v self.i
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
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.itemgrazesize
push.v self.j
conv.v.i
pushaf.e
add.v.v
pop.v.v self.sizesum

:[417]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [414]

:[418]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [412]

:[419]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bt [422]

:[420]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [422]

:[421]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [423]

:[422]
push.e 1

:[423]
bf [519]

:[424]
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
bf [445]

:[425]
push.v self.charcoord
pushi.e 1
cmp.i.v EQ
bf [427]

:[426]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponchar1
pushi.e 0
cmp.i.v EQ
b [428]

:[427]
push.e 0

:[428]
bf [430]

:[429]
pushi.e 1
pop.v.i self.g

:[430]
push.v self.charcoord
pushi.e 2
cmp.i.v EQ
bf [432]

:[431]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponchar2
pushi.e 0
cmp.i.v EQ
b [433]

:[432]
push.e 0

:[433]
bf [435]

:[434]
pushi.e 1
pop.v.i self.g

:[435]
push.v self.charcoord
pushi.e 3
cmp.i.v EQ
bf [437]

:[436]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponchar3
pushi.e 0
cmp.i.v EQ
b [438]

:[437]
push.e 0

:[438]
bf [440]

:[439]
pushi.e 1
pop.v.i self.g

:[440]
push.v self.charcoord
pushi.e 4
cmp.i.v EQ
bf [442]

:[441]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.weaponchar4
pushi.e 0
cmp.i.v EQ
b [443]

:[442]
push.e 0

:[443]
bf [445]

:[444]
pushi.e 1
pop.v.i self.g

:[445]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [447]

:[446]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [448]

:[447]
push.e 1

:[448]
bf [469]

:[449]
push.v self.charcoord
pushi.e 1
cmp.i.v EQ
bf [451]

:[450]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorchar1
pushi.e 0
cmp.i.v EQ
b [452]

:[451]
push.e 0

:[452]
bf [454]

:[453]
pushi.e 1
pop.v.i self.g

:[454]
push.v self.charcoord
pushi.e 2
cmp.i.v EQ
bf [456]

:[455]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorchar2
pushi.e 0
cmp.i.v EQ
b [457]

:[456]
push.e 0

:[457]
bf [459]

:[458]
pushi.e 1
pop.v.i self.g

:[459]
push.v self.charcoord
pushi.e 3
cmp.i.v EQ
bf [461]

:[460]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorchar3
pushi.e 0
cmp.i.v EQ
b [462]

:[461]
push.e 0

:[462]
bf [464]

:[463]
pushi.e 1
pop.v.i self.g

:[464]
push.v self.charcoord
pushi.e 4
cmp.i.v EQ
bf [466]

:[465]
pushi.e -1
push.v self.cur
conv.v.i
push.v [array]self.armorchar4
pushi.e 0
cmp.i.v EQ
b [467]

:[466]
push.e 0

:[467]
bf [469]

:[468]
pushi.e 1
pop.v.i self.g

:[469]
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
bf [471]

:[470]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
b [472]

:[471]
push.e 0

:[472]
bf [489]

:[473]
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
bf [476]

:[474]
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
bf [476]

:[475]
pushi.e 255
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self._abilitycolor

:[476]
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
push.s ""@157
pop.v.s local.atupsign
push.v self.atup
pushi.e 0
cmp.i.v GT
bf [478]

:[477]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "+"@9721
pop.v.s local.atupsign

:[478]
push.v self.atup
pushi.e 0
cmp.i.v LT
bf [480]

:[479]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[480]
push.v self.atsum
push.v self.atup
add.v.v
call.i string(argc=1)
push.v self.atsum
push.v self.atup
add.v.v
call.i string(argc=1)
push.s "("@20675
add.s.v
pushloc.v local.atupsign
add.v.v
push.v self.atup
call.i string(argc=1)
add.v.v
push.s ")"@12074
add.s.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.s1_string
pushloc.v local.s1_string
call.i string(argc=1)
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
bf [482]

:[481]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[482]
push.v self.dfup
pushi.e 0
cmp.i.v LT
bf [484]

:[483]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[484]
push.v self.dfsum
push.v self.dfup
add.v.v
call.i string(argc=1)
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
bf [486]

:[485]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[486]
push.v self.magup
pushi.e 0
cmp.i.v LT
bf [488]

:[487]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[488]
push.v self.magsum
push.v self.magup
add.v.v
call.i string(argc=1)
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

:[489]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [510]

:[490]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [492]

:[491]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [493]

:[492]
push.e 1

:[493]
bf [510]

:[494]
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
bf [497]

:[495]
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
bf [497]

:[496]
pushi.e 255
conv.i.v
pushi.e -1
push.v self.arno
conv.v.i
pop.v.v [array]self._abilitycolor

:[497]
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
bf [499]

:[498]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[499]
push.v self.atup
pushi.e 0
cmp.i.v LT
bf [501]

:[500]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[501]
push.v self.atsum
push.v self.atup
add.v.v
call.i string(argc=1)
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
bf [503]

:[502]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[503]
push.v self.dfup
pushi.e 0
cmp.i.v LT
bf [505]

:[504]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[505]
push.v self.dfsum
push.v self.dfup
add.v.v
call.i string(argc=1)
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
bf [507]

:[506]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[507]
push.v self.magup
pushi.e 0
cmp.i.v LT
bf [509]

:[508]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[509]
push.v self.magsum
push.v self.magup
add.v.v
call.i string(argc=1)
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

:[510]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [512]

:[511]
push.v self.atsum
call.i string(argc=1)
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
call.i string(argc=1)
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
call.i string(argc=1)
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

:[512]
pushi.e 0
pop.v.i self.i

:[513]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [518]

:[514]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._abilitytext
push.s " "@353
cmp.s.v EQ
bf [516]

:[515]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._abilitycolor
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_766_0"@20678
conv.s.v
push.s "(No ability.)"@20679
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
push.v self.i
pushi.e 3
add.i.v
mul.v.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
b [517]

:[516]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._abilitycolor
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._abilitytext
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
push.v self.i
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
push.v self.i
conv.v.i
push.v [array]self._abilityicon
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
push.v self.i
pushi.e 3
add.i.v
mul.v.v
add.v.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon(argc=3)
popz.v

:[517]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [513]

:[518]
b [525]

:[519]
push.v self.atsum
call.i string(argc=1)
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
call.i string(argc=1)
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
call.i string(argc=1)
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
pop.v.i self.i

:[520]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [525]

:[521]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._abilitytext
push.s " "@353
cmp.s.v EQ
bf [523]

:[522]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_803_0"@20680
conv.s.v
push.s "(No ability.)"@20679
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
push.v self.i
pushi.e 3
add.i.v
mul.v.v
add.v.v
push.v self.xx
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
b [524]

:[523]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._abilitycolor
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self._abilitytext
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 230
add.i.v
pushloc.v local.ch_vspace
push.v self.i
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
push.v self.i
conv.v.i
push.v [array]self._abilityicon
push.v self.yy
pushi.e 238
add.i.v
pushloc.v local.ch_vspace
push.v self.i
pushi.e 3
add.i.v
mul.v.v
add.v.v
push.v self.xx
pushi.e 74
add.i.v
call.i gml_Script_draw_item_icon(argc=3)
popz.v

:[524]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [520]

:[525]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [end]

:[526]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 360
add.i.v
push.v self.xx
pushi.e 594
conv.i.v
pushi.e 570
conv.i.v
call.i gml_Script_langopt(argc=2)
add.v.v
push.v self.yy
pushi.e 90
add.i.v
push.v self.xx
pushi.e 46
conv.i.v
pushi.e 70
conv.i.v
call.i gml_Script_langopt(argc=2)
add.v.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.yy
pushi.e 370
add.i.v
push.v self.xx
pushi.e 604
conv.i.v
pushi.e 580
conv.i.v
call.i gml_Script_langopt(argc=2)
add.v.v
push.v self.yy
pushi.e 80
add.i.v
push.v self.xx
pushi.e 36
conv.i.v
pushi.e 60
conv.i.v
call.i gml_Script_langopt(argc=2)
add.v.v
call.i gml_Script_scr_darkbox(argc=4)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
call.i gml_Script_scr_itemname(argc=0)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [528]

:[527]
push.v self.yy
pushi.e 120
add.i.v
push.v self.xx
pushi.e 134
conv.i.v
pushi.e 155
conv.i.v
call.i gml_Script_langopt(argc=2)
add.v.v
pushi.e 120
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
mul.v.i
add.v.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[528]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.i 65536
setowner.e
pushi.e 398
conv.i.v
pushi.e 278
conv.i.v
pushi.e 158
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pushi.e 420
conv.i.v
pushi.e 300
conv.i.v
pushi.e 180
conv.i.v
call.i @@NewGMLArray@@(argc=3)
call.i gml_Script_langopt(argc=2)
pop.v.v local.itemoff
pushglb.v global.submenu
pushi.e 1
cmp.i.v GT
bf [532]

:[529]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v EQ
bf [531]

:[530]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [532]

:[531]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[532]
push.s "obj_darkcontroller_slash_Draw_0_gml_837_0"@20682
conv.s.v
push.s "USE"@20683
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e -7
pushi.e 0
push.v [array]self.itemoff
add.v.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v GT
bf [536]

:[533]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 1
cmp.i.v EQ
bf [535]

:[534]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [536]

:[535]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[536]
push.s "obj_darkcontroller_slash_Draw_0_gml_839_0"@20684
conv.s.v
push.s "TOSS"@20685
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e -7
pushi.e 1
push.v [array]self.itemoff
add.v.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v GT
bf [540]

:[537]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
bf [539]

:[538]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [540]

:[539]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[540]
push.s "obj_darkcontroller_slash_Draw_0_gml_841_0"@20686
conv.s.v
push.s "KEY"@20687
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e -7
pushi.e 2
push.v [array]self.itemoff
add.v.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 2
cmp.i.v GTE
bf [543]

:[541]
pushglb.v global.submenu
pushi.e 6
cmp.i.v LTE
bf [543]

:[542]
pushglb.v global.submenu
pushi.e 4
cmp.i.v NEQ
b [544]

:[543]
push.e 0

:[544]
bf [560]

:[545]
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
pushi.e 72
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_langopt(argc=2)
push.v self.xx
add.v.v
pop.v.v self.xheart
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [551]

:[546]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [551]

:[547]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [551]

:[548]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [551]

:[549]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [551]

:[550]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [552]

:[551]
push.e 1

:[552]
bf [554]

:[553]
pushi.e 334
conv.i.v
pushi.e 330
conv.i.v
call.i gml_Script_langopt(argc=2)
push.v self.xx
add.v.v
pop.v.v self.xheart

:[554]
pushglb.v global.submenu
pushi.e 2
cmp.i.v EQ
bt [556]

:[555]
pushglb.v global.submenu
pushi.e 3
cmp.i.v EQ
b [557]

:[556]
push.e 1

:[557]
bf [559]

:[558]
push.v self.yheart
push.v self.xheart
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[559]
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

:[560]
pushglb.v global.submenu
pushi.e 7
cmp.i.v EQ
bf [562]

:[561]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Draw_0_gml_956_0"@20690
conv.s.v
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.itemname
push.s "Really throw away the#~1?"@20691
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 20
add.i.v
call.i draw_text(argc=3)
popz.v

:[562]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v NEQ
bf [571]

:[563]
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[564]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [566]

:[565]
pushi.e -5
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 94
conv.i.v
pushi.e 148
conv.i.v
call.i gml_Script_langopt(argc=2)
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
push.v self.i
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
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 358
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [564]

:[566]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [568]

:[567]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[568]
pushi.e 0
pop.v.i self.i

:[569]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [571]

:[570]
pushi.e -5
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.itemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 92
conv.i.v
pushi.e 146
conv.i.v
call.i gml_Script_langopt(argc=2)
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
push.v self.i
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
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 356
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [569]

:[571]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
bf [end]

:[572]
call.i gml_Script_scr_keyiteminfo_all(argc=0)
popz.v
push.v self.bcolor
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[573]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [575]

:[574]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 154
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 94
conv.i.v
pushi.e 148
conv.i.v
call.i gml_Script_langopt(argc=2)
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.i
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
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 358
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [573]

:[575]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [577]

:[576]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[577]
pushi.e 0
pop.v.i self.i

:[578]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [588]

:[579]
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [583]

:[580]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.keyitemusable
pushi.e 1
cmp.i.v EQ
bf [582]

:[581]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [583]

:[582]
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[583]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.keyitemname
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 152
add.i.v
pushi.e 30
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 92
conv.i.v
pushi.e 146
conv.i.v
call.i gml_Script_langopt(argc=2)
add.v.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [587]

:[584]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
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
push.v self.i
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
push.v self.i
mul.v.i
add.v.v
push.v self.xx
pushi.e 356
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [578]

:[588]
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [end]

:[589]
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
pushi.e 72
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_langopt(argc=2)
push.v self.xx
add.v.v
pop.v.v self.xheart
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [595]

:[590]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [595]

:[591]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [595]

:[592]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [595]

:[593]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [595]

:[594]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [596]

:[595]
push.e 1

:[596]
bf [598]

:[597]
pushi.e 334
conv.i.v
pushi.e 330
conv.i.v
call.i gml_Script_langopt(argc=2)
push.v self.xx
add.v.v
pop.v.v self.xheart

:[598]
push.v self.yheart
push.v self.xheart
pushi.e 0
conv.i.v
pushi.e 2531
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