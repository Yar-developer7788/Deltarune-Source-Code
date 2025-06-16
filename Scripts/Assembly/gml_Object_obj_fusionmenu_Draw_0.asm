.localvar 2 arguments
.localvar 20938 topbary 8932
.localvar 20939 botbary 8933
.localvar 14436 ymod 8939
.localvar 20966 memfont 8940
.localvar 21002 button_x 8948
.localvar 14922 x_offset 8949
.localvar 21020 tempSongName 8950
.localvar 21021 songNameLength 8951
.localvar 21022 tickerCount 8952
.localvar 21023 tickerSongNamePrep 8953
.localvar 21024 tickerSongName 8954

:[0]
push.v self.init
conv.v.b
bf [2]

:[1]
call.i event_inherited(argc=0)
popz.v

:[2]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.v self.init
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 206
pop.v.i local.topbary
pushi.e 0
conv.i.v
call.i gml_Script_cameray(argc=0)
pushloc.v local.topbary
add.v.v
pushi.e 2
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pushi.e 110
sub.i.v
call.i gml_Script_cameray(argc=0)
pushloc.v local.topbary
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 110
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[7]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.init
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [15]

:[11]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 179
pop.v.i local.topbary
pushi.e 278
pop.v.i local.botbary
pushi.e 0
conv.i.v
call.i gml_Script_cameray(argc=0)
pushloc.v local.topbary
add.v.v
pushi.e 2
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pushi.e 110
sub.i.v
pushi.e 20
add.i.v
call.i gml_Script_cameray(argc=0)
pushloc.v local.topbary
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 110
add.i.v
pushi.e 20
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_cameray(argc=0)
pushloc.v local.botbary
add.v.v
pushi.e 2
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pushi.e 110
sub.i.v
pushi.e 20
add.i.v
call.i gml_Script_cameray(argc=0)
pushloc.v local.botbary
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 110
add.i.v
pushi.e 20
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [13]

:[12]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushi.e -1
pushi.e 0
push.v [array]self.menuScrollCurrent
call.i floor(argc=1)
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
add.i.v
call.i string(argc=1)
push.s " / "@20876
add.s.v
pushi.e -1
pushi.e 0
push.v [array]self.menuMaximumID
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
call.i string(argc=1)
add.v.v
pushi.e 346
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pushi.e 110
sub.i.v
pushi.e 20
add.i.v
pushi.e 40
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
b [14]

:[13]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
push.s "obj_fusionmenu_slash_Draw_0_gml_171_0"@20940
conv.s.v
push.s "Page "@20941
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [array]self.menuScrollCurrent
call.i floor(argc=1)
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
add.i.v
call.i string(argc=1)
add.v.v
push.s " / "@20876
add.s.v
pushi.e -1
pushi.e 0
push.v [array]self.menuMaximumID
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
call.i string(argc=1)
add.v.v
pushi.e 346
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pushi.e 110
sub.i.v
pushi.e 20
add.i.v
pushi.e 40
add.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[14]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[15]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
push.v self.init
pushi.e 1
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [96]

:[19]
push.v self.menu
pushi.e 0
cmp.i.v EQ
bf [44]

:[20]
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_fusionmenu_slash_Draw_0_gml_14_0"@20942
conv.s.v
push.s "Recruits"@20943
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.yy
pushi.e 30
add.i.v
push.v self.xx
pushi.e 80
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.alternateMenu
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 440
add.i.v
push.v self.xx
pushi.e 620
add.i.v
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 330
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 440
add.i.v
pushi.e 4
sub.i.v
push.v self.xx
pushi.e 620
add.i.v
pushi.e 4
sub.i.v
push.v self.yy
pushi.e 14
add.i.v
push.v self.xx
pushi.e 334
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[22]
pushi.e 0
pop.v.i self.reccolor
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitChapter
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.i 8388736
pop.v.i self.reccolor

:[24]
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitChapter
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
push.i 16776960
pop.v.i self.reccolor

:[26]
pushi.e 0
conv.b.v
push.v self.reccolor
push.v self.reccolor
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 75
add.i.v
pushi.e 150
add.i.v
push.v self.xx
pushi.e 370
add.i.v
pushi.e 205
add.i.v
push.v self.yy
pushi.e 75
add.i.v
push.v self.xx
pushi.e 370
add.i.v
call.i draw_rectangle_color(argc=9)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.b.v
push.v self.yy
pushi.e 75
add.i.v
pushi.e 150
add.i.v
push.v self.xx
pushi.e 370
add.i.v
pushi.e 205
add.i.v
push.v self.yy
pushi.e 75
add.i.v
push.v self.xx
pushi.e 370
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSprite
call.i sprite_get_height(argc=1)
pop.v.v self.recruitspriteheight
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSprite
call.i sprite_get_width(argc=1)
pop.v.v self.recruitspritewidth
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSprite
call.i sprite_get_xoffset(argc=1)
pushi.e 2
mul.i.v
push.v self.recruitspritewidth
sub.v.v
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSpriteX
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.rx
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSprite
call.i sprite_get_yoffset(argc=1)
pushi.e 2
mul.i.v
push.v self.recruitspriteheight
pushi.e 2
mul.i.v
sub.v.v
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSpriteY
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.ry
push.v self.animer
push.d 0.25
add.d.v
pop.v.v self.animer
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
pushi.e 220
add.i.v
push.v self.ry
add.v.v
push.v self.xx
pushi.e 470
add.i.v
push.v self.rx
add.v.v
push.v self.animer
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSprite
pushi.e 1710
cmp.i.v EQ
bf [28]

:[27]
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
pushi.e 220
add.i.v
push.v self.ry
add.v.v
pushi.e 12
sub.i.v
push.v self.xx
pushi.e 470
add.i.v
push.v self.rx
add.v.v
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
pushi.e 1738
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 220
add.i.v
push.v self.ry
add.v.v
pushi.e 12
sub.i.v
pushi.e 31
sub.i.v
push.v self.xx
pushi.e 470
add.i.v
push.v self.rx
add.v.v
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
pushi.e 1737
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[28]
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitName
push.v self.yy
pushi.e 240
add.i.v
push.v self.xx
pushi.e 473
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "obj_fusionmenu_slash_Draw_0_gml_47_0"@20950
conv.s.v
push.s "CHAPTER "@20951
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitChapter
call.i string(argc=1)
add.v.v
push.v self.yy
pushi.e 280
add.i.v
push.v self.xx
pushi.e 368
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "obj_fusionmenu_slash_Draw_0_gml_48_0"@20952
conv.s.v
push.s "LV "@20953
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitLevel
call.i string(argc=1)
add.v.v
push.v self.yy
pushi.e 280
add.i.v
push.v self.xx
pushi.e 576
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.alternateMenu
pushi.e 0
cmp.i.v EQ
bf [36]

:[29]
pushglb.v global.is_console
conv.v.b
bt [31]

:[30]
push.v 1112.gamepad_active
conv.v.b
b [32]

:[31]
push.e 1

:[32]
bf [34]

:[33]
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
pushi.e 323
add.i.v
push.v self.xx
pushi.e 380
add.i.v
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
pushi.e 353
add.i.v
push.v self.xx
pushi.e 380
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
pushi.e -5
pushi.e 5
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
call.i draw_sprite_ext(argc=9)
popz.v
push.s "obj_fusionmenu_slash_Draw_0_gml_70_0"@20954
conv.s.v
push.s "More Info"@20955
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 320
add.i.v
push.v self.xx
pushi.e 414
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_fusionmenu_slash_Draw_0_gml_71_0"@20956
conv.s.v
push.s "Quit"@14666
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 350
add.i.v
push.v self.xx
pushi.e 414
add.i.v
call.i draw_text(argc=3)
popz.v
b [35]

:[34]
push.s "obj_fusionmenu_slash_Draw_0_gml_50_0"@20957
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "~1: More Info#~2: Quit"@20958
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 320
add.i.v
push.v self.xx
pushi.e 380
add.i.v
call.i draw_text(argc=3)
popz.v

:[35]
b [42]

:[36]
pushglb.v global.is_console
conv.v.b
bt [38]

:[37]
push.v 1112.gamepad_active
conv.v.b
b [39]

:[38]
push.e 1

:[39]
bf [41]

:[40]
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
pushi.e 323
add.i.v
push.v self.xx
pushi.e 380
add.i.v
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
pushi.e 353
add.i.v
push.v self.xx
pushi.e 380
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
pushi.e -5
pushi.e 5
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
call.i draw_sprite_ext(argc=9)
popz.v
push.s "obj_fusionmenu_slash_Draw_0_gml_83_0"@20959
conv.s.v
push.s "More Info"@20955
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 320
add.i.v
push.v self.xx
pushi.e 414
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_fusionmenu_slash_Draw_0_gml_84_0_b"@20960
conv.s.v
push.s "Quit"@14666
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 350
add.i.v
push.v self.xx
pushi.e 414
add.i.v
call.i draw_text(argc=3)
popz.v
b [42]

:[41]
push.s "obj_fusionmenu_slash_Draw_0_gml_51_0"@20961
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "~1: More Info#~2: Quit"@20958
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 320
add.i.v
push.v self.xx
pushi.e 380
add.i.v
call.i draw_text(argc=3)
popz.v

:[42]
push.v self.alternateMenu
conv.v.b
bf [44]

:[43]
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.squished
push.s "obj_fusionmenu_slash_Draw_0_gml_56_0"@20962
conv.s.v
push.s "PROGRESS"@20963
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.yy
pushi.e 30
add.i.v
push.v self.xx
pushi.e 298
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[44]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bf [96]

:[45]
pushi.e 0
pop.v.i self.reccolor
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitChapter
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
push.i 8388736
pop.v.i self.reccolor

:[47]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitChapter
pushi.e 2
cmp.i.v EQ
bf [49]

:[48]
push.i 16776960
pop.v.i self.reccolor

:[49]
pushi.e 0
conv.b.v
push.v self.reccolor
push.v self.reccolor
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 70
add.i.v
pushi.e 150
add.i.v
push.v self.xx
pushi.e 80
add.i.v
pushi.e 205
add.i.v
push.v self.yy
pushi.e 70
add.i.v
push.v self.xx
pushi.e 80
add.i.v
call.i draw_rectangle_color(argc=9)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.b.v
push.v self.yy
pushi.e 70
add.i.v
pushi.e 150
add.i.v
push.v self.xx
pushi.e 80
add.i.v
pushi.e 205
add.i.v
push.v self.yy
pushi.e 70
add.i.v
push.v self.xx
pushi.e 80
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSprite
call.i sprite_get_height(argc=1)
pop.v.v self.recruitspriteheight
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSprite
call.i sprite_get_width(argc=1)
pop.v.v self.recruitspritewidth
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSprite
call.i sprite_get_xoffset(argc=1)
pushi.e 2
mul.i.v
push.v self.recruitspritewidth
sub.v.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSpriteX
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.rx
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSprite
call.i sprite_get_yoffset(argc=1)
pushi.e 2
mul.i.v
push.v self.recruitspriteheight
pushi.e 2
mul.i.v
sub.v.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSpriteY
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.ry
push.v self.animer
push.d 0.25
add.d.v
pop.v.v self.animer
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
pushi.e 215
add.i.v
push.v self.ry
add.v.v
push.v self.xx
pushi.e 180
add.i.v
push.v self.rx
add.v.v
push.v self.animer
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitSprite
pushi.e 1710
cmp.i.v EQ
bf [51]

:[50]
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
pushi.e 215
add.i.v
push.v self.ry
add.v.v
pushi.e 12
sub.i.v
push.v self.xx
pushi.e 180
add.i.v
push.v self.rx
add.v.v
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
pushi.e 1738
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 215
add.i.v
push.v self.ry
add.v.v
pushi.e 12
sub.i.v
pushi.e 31
sub.i.v
push.v self.xx
pushi.e 180
add.i.v
push.v self.rx
add.v.v
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
pushi.e 1737
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[51]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitName
push.v self.yy
pushi.e 70
add.i.v
push.v self.xx
pushi.e 300
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.squished
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuCoord
pushi.e 1
add.i.v
call.i string(argc=1)
push.s "/"@4448
add.s.v
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuMaximumID
pushi.e 1
add.i.v
call.i string(argc=1)
add.v.v
push.v self.yy
pushi.e 30
add.i.v
push.v self.xx
pushi.e 590
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.squished
push.s "obj_fusionmenu_slash_Draw_0_gml_84_0"@20964
conv.s.v
push.s "CHAPTER "@20951
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitChapter
call.i string(argc=1)
add.v.v
push.v self.yy
pushi.e 30
add.i.v
push.v self.xx
pushi.e 300
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 120
pop.v.i local.ymod
push.v self.jp
conv.v.b
bf [53]

:[52]
pushi.e 104
pop.v.i local.ymod

:[53]
call.i draw_get_font(argc=0)
pop.v.v local.memfont
push.v self.jp
conv.v.b
not.b
bf [55]

:[54]
pushi.e 1
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 280
conv.i.v
pushi.e 20
conv.i.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitDesc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushloc.v local.ymod
add.v.v
push.v self.xx
pushi.e 300
add.i.v
call.i draw_text_ext_transformed(argc=8)
popz.v
b [56]

:[55]
pushi.e 11
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 280
conv.i.v
pushi.e 25
conv.i.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitDesc
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 120
add.i.v
push.v self.xx
pushi.e 300
add.i.v
call.i draw_text_ext_transformed(argc=8)
popz.v

:[56]
pushloc.v local.memfont
call.i draw_set_font(argc=1)
popz.v
push.i 169367
setowner.e
push.s "obj_fusionmenu_slash_Draw_0_gml_87_0"@20968
conv.s.v
push.s "LIKE"@20969
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.stringl
push.s "obj_fusionmenu_slash_Draw_0_gml_88_0"@20971
conv.s.v
push.s "DISLIKE"@20972
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.stringl
push.s "obj_fusionmenu_slash_Draw_0_gml_89_0"@20973
conv.s.v
push.s "?????"@20974
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.stringl
push.s "obj_fusionmenu_slash_Draw_0_gml_90_0"@20975
conv.s.v
push.s "?????"@20974
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.stringl
push.i 169368
setowner.e
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitLike
pushi.e -1
pushi.e 0
pop.v.v [array]self.stringm
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitDislike
pushi.e -1
pushi.e 1
pop.v.v [array]self.stringm
push.s "obj_fusionmenu_slash_Draw_0_gml_93_0"@20977
conv.s.v
push.s "?????????"@20978
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.stringm
push.s "obj_fusionmenu_slash_Draw_0_gml_94_0"@20979
conv.s.v
push.s "?????????"@20978
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.stringm
push.i 169369
setowner.e
push.s "obj_fusionmenu_slash_Draw_0_gml_95_0"@20980
conv.s.v
push.s "LEVEL"@12155
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.stringn
push.s "obj_fusionmenu_slash_Draw_0_gml_96_0"@20982
conv.s.v
push.s "ATTACK"@20983
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.stringn
push.s "obj_fusionmenu_slash_Draw_0_gml_97_0"@20984
conv.s.v
push.s "DEFENSE"@20985
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.stringn
push.s "obj_fusionmenu_slash_Draw_0_gml_98_0"@20986
conv.s.v
push.s "ELEMENT  "@20987
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.stringn
push.i 169370
setowner.e
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitLevel
call.i string(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.stringo
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitAttack
call.i string(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.stringo
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitDefense
call.i string(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.stringo
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitElement
pushi.e -1
pushi.e 3
pop.v.v [array]self.stringo
pushi.e -1
pushi.e 3
push.v [array]self.stringn
pushi.e -1
pushi.e 3
push.v [array]self.stringo
add.v.v
pop.v.v self.stringel
pushi.e 0
pop.v.i self.i

:[57]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [67]

:[58]
pushi.e 1
pop.v.i self.stringlscale
pushi.e 1
pop.v.i self.stringmscale
push.v self.jp
conv.v.b
not.b
bf [61]

:[59]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stringl
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pushi.e 60
cmp.i.v GTE
bf [61]

:[60]
pushi.e 80
conv.i.d
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stringl
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
div.v.d
pop.v.v self.stringlscale

:[61]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stringm
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pushi.e 290
cmp.i.v GTE
bf [63]

:[62]
pushi.e 290
conv.i.d
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stringm
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
div.v.d
pop.v.v self.stringmscale

:[63]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.stringlscale
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stringl
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 240
add.i.v
push.v self.i
pushi.e 40
mul.i.v
add.v.v
push.v self.xx
pushi.e 80
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.stringmscale
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stringm
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 240
add.i.v
push.v self.i
pushi.e 40
mul.i.v
add.v.v
push.v self.xx
pushi.e 80
add.i.v
pushi.e 100
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.i
pushi.e 3
cmp.i.v NEQ
bf [65]

:[64]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.squished
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stringn
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 240
add.i.v
push.v self.i
pushi.e 40
mul.i.v
add.v.v
push.v self.xx
pushi.e 560
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.squished
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stringo
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 240
add.i.v
push.v self.i
pushi.e 40
mul.i.v
add.v.v
push.v self.xx
pushi.e 590
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
b [66]

:[65]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.squished
push.v self.stringel
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 240
add.i.v
push.v self.i
pushi.e 40
mul.i.v
add.v.v
push.v self.xx
pushi.e 590
add.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[66]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [57]

:[67]
push.v self.alternateMenu
pushi.e 0
cmp.i.v EQ
bf [84]

:[68]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuCoord
conv.v.i
push.v [array]self.recruitPlaceable
conv.v.b
bf [76]

:[69]
pushglb.v global.is_console
conv.v.b
bt [71]

:[70]
push.v 1112.gamepad_active
conv.v.b
b [72]

:[71]
push.e 1

:[72]
bf [74]

:[73]
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
pushi.e 402
add.i.v
push.v self.xx
pushi.e 80
add.i.v
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
push.s "obj_fusionmenu_slash_Draw_0_gml_169_0"@20992
conv.s.v
push.s "Place"@20993
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.yy
pushi.e 400
add.i.v
push.v self.xx
pushi.e 114
add.i.v
call.i draw_text(argc=3)
popz.v
b [75]

:[74]
push.s "obj_fusionmenu_slash_Draw_0_gml_125_0"@20994
conv.s.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "~1: Place"@20995
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
push.v self.yy
pushi.e 400
add.i.v
push.v self.xx
pushi.e 80
add.i.v
call.i draw_text(argc=3)
popz.v

:[75]
b [77]

:[76]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_fusionmenu_slash_Draw_0_gml_129_0"@20996
conv.s.v
push.s "Cannot Place"@20997
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.yy
pushi.e 400
add.i.v
push.v self.xx
pushi.e 80
add.i.v
call.i draw_text(argc=3)
popz.v

:[77]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bt [79]

:[78]
push.v 1112.gamepad_active
conv.v.b
b [80]

:[79]
push.e 1

:[80]
bf [82]

:[81]
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
pushi.e 402
add.i.v
push.v self.xx
pushi.e 320
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
pushi.e -5
pushi.e 5
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
call.i draw_sprite_ext(argc=9)
popz.v
push.s "obj_fusionmenu_slash_Draw_0_gml_186_0"@20998
conv.s.v
push.s "Return"@20999
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.yy
pushi.e 400
add.i.v
push.v self.xx
pushi.e 354
add.i.v
call.i draw_text(argc=3)
popz.v
b [83]

:[82]
push.s "obj_fusionmenu_slash_Draw_0_gml_132_0"@21000
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "~1: Return"@21001
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
push.v self.yy
pushi.e 400
add.i.v
push.v self.xx
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v

:[83]
b [96]

:[84]
pushglb.v global.is_console
conv.v.b
bt [86]

:[85]
push.v 1112.gamepad_active
conv.v.b
b [87]

:[86]
push.e 1

:[87]
bf [95]

:[88]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [90]

:[89]
push.v self.xx
pushi.e 165
add.i.v
b [91]

:[90]
push.v self.xx
pushi.e 84
add.i.v

:[91]
pop.v.v local.button_x
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
pushi.e 402
add.i.v
pushloc.v local.button_x
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
pushi.e -5
pushi.e 5
push.v [array]self.input_g
call.i gml_Script_scr_getbuttonsprite(argc=2)
call.i draw_sprite_ext(argc=9)
popz.v
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [93]

:[92]
pushi.e 0
conv.i.v
b [94]

:[93]
pushi.e 38
conv.i.v

:[94]
pop.v.v local.x_offset
push.s "obj_fusionmenu_slash_Draw_0_gml_199_0"@21003
conv.s.v
push.s "Press         to Return"@21004
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 400
add.i.v
push.v self.xx
pushi.e 80
add.i.v
pushloc.v local.x_offset
add.v.v
call.i draw_text(argc=3)
popz.v
b [96]

:[95]
push.s "obj_fusionmenu_slash_Draw_0_gml_136_0"@21005
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "Press ~1 to Return"@21006
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
push.v self.yy
pushi.e 400
add.i.v
push.v self.xx
pushi.e 80
add.i.v
call.i draw_text(argc=3)
popz.v

:[96]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [98]

:[97]
push.v self.init
pushi.e 1
cmp.i.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [116]

:[100]
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.menu
pushi.e 0
cmp.i.v EQ
bf [102]

:[101]
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [103]

:[102]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[103]
push.v self.jp
conv.v.b
bf [105]

:[104]
call.i draw_get_font(argc=0)
pop.v.v local.memfont
pushi.e 11
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "obj_fusionmenu_slash_Draw_0_gml_154_0"@21007
conv.s.v
push.s "HELD"@21008
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.yy
pushi.e 140
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushloc.v local.memfont
call.i draw_set_font(argc=1)
popz.v
b [106]

:[105]
push.s "dotumche"@6178
conv.s.v
call.i gml_Script_scr_84_get_font(argc=1)
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "POCKET"@21009
conv.s.v
call.i gml_Script_stringset(argc=1)
push.v self.yy
pushi.e 140
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[106]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bf [108]

:[107]
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[108]
push.v self.menu
pushi.e 1
cmp.i.v LT
bf [110]

:[109]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[110]
push.v self.jp
conv.v.b
bf [112]

:[111]
call.i draw_get_font(argc=0)
pop.v.v local.memfont
pushi.e 11
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "obj_fusionmenu_slash_Draw_0_gml_159_0"@21010
conv.s.v
push.s "RESERVE"@21011
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.yy
pushi.e 290
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushloc.v local.memfont
call.i draw_set_font(argc=1)
popz.v
b [113]

:[112]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "STORAGE"@6956
conv.s.v
push.v self.yy
pushi.e 290
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[113]
push.v self.jp
conv.v.b
bf [115]

:[114]
call.i draw_get_font(argc=0)
pop.v.v local.memfont
pushi.e 11
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "obj_fusionmenu_slash_Draw_0_gml_161_0"@21012
conv.s.v
push.s "Page "@20941
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.yy
pushi.e 360
add.i.v
pushi.e 14
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.menuScrollCurrent
call.i floor(argc=1)
pushi.e 12
conv.i.d
div.d.v
pushi.e 1
add.i.v
call.i string(argc=1)
push.s "/"@4448
add.s.v
pushi.e -5
pushi.e 64
push.v [array]self.flag
pushi.e 12
conv.i.d
div.d.v
call.i floor(argc=1)
call.i string(argc=1)
add.v.v
push.v self.yy
pushi.e 380
add.i.v
pushi.e 14
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushloc.v local.memfont
call.i draw_set_font(argc=1)
popz.v
b [116]

:[115]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "obj_fusionmenu_slash_Draw_0_gml_161_0"@21012
conv.s.v
push.s "Page "@20941
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.yy
pushi.e 360
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.menuScrollCurrent
call.i floor(argc=1)
pushi.e 12
conv.i.d
div.d.v
pushi.e 1
add.i.v
call.i string(argc=1)
push.s "/"@4448
add.s.v
pushi.e -5
pushi.e 64
push.v [array]self.flag
pushi.e 12
conv.i.d
div.d.v
call.i floor(argc=1)
call.i string(argc=1)
add.v.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.xx
pushi.e 60
add.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[116]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [118]

:[117]
push.v self.init
pushi.e 1
cmp.i.v EQ
b [119]

:[118]
push.e 0

:[119]
bf [end]

:[120]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "obj_fusionmenu_slash_Draw_0_gml_171_0"@20940
conv.s.v
push.s "Page "@20941
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [array]self.menuScrollCurrent
call.i floor(argc=1)
pushi.e 6
conv.i.d
div.d.v
pushi.e 1
add.i.v
call.i string(argc=1)
add.v.v
push.s " / "@20876
add.s.v
pushi.e -1
pushi.e 0
push.v [array]self.menuMaximumID
pushi.e 6
conv.i.d
div.d.v
call.i ceil(argc=1)
call.i string(argc=1)
add.v.v
pushi.e 280
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
push.v self.tickerTimer
push.e 1
add.i.v
pop.v.v self.tickerTimer
push.s "dotumche"@6178
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "obj_fusionmenu_slash_Draw_0_gml_181_0"@21013
conv.s.v
push.s "Left / Right: \nChange Pages."@21014
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 375
conv.i.v
pushi.e 440
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
push.v self.subtype
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "obj_fusionmenu_slash_Draw_0_gml_182_0"@21015
conv.s.v
push.s "The song you play\nwill be the town\nBGM."@21016
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 410
conv.i.v
pushi.e 440
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
b [123]

:[122]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "obj_fusionmenu_slash_Draw_0_gml_183_0"@21017
conv.s.v
push.s "Play songs\nfreely."@21018
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 410
conv.i.v
pushi.e 440
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[123]
push.v self.chosenSongName
push.s "    "@21019
add.s.v
pop.v.v local.tempSongName
pushloc.v local.tempSongName
call.i string_length(argc=1)
pop.v.v local.songNameLength
pushloc.v local.songNameLength
pushi.e 24
cmp.i.v GTE
bf [125]

:[124]
push.v self.tickerTimer
pushi.e 60
sub.i.v
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 0
conv.i.v
call.i max(argc=2)
pushloc.v local.songNameLength
mod.v.v
pop.v.v local.tickerCount
pushloc.v local.tempSongName
push.v self.chosenSongName
add.v.v
pop.v.v local.tickerSongNamePrep
pushi.e 20
conv.i.v
pushi.e 1
pushloc.v local.tickerCount
add.v.i
pushloc.v local.tickerSongNamePrep
call.i string_copy(argc=3)
pop.v.v local.tickerSongName
b [126]

:[125]
pushloc.v local.tempSongName
pop.v.v local.tickerSongName

:[126]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "obj_fusionmenu_slash_Draw_0_gml_194_0"@21025
conv.s.v
push.s "Now Playing"@21026
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 320
conv.i.v
pushi.e 440
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.tickerSongName
pushi.e 345
conv.i.v
pushi.e 440
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[end]