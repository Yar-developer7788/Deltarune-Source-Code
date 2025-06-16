.localvar 2 arguments
.localvar 12081 yoff 18494
.localvar 36902 wmod 18495
.localvar 36903 mwidth 18496
.localvar 36904 mheight 18497
.localvar 26657 mx 18498
.localvar 29971 my 18499
.localvar 107 i 18500
.localvar 14644 mspace 18502
.localvar 173 is_valid 18504
.localvar 9635 error_message 18505
.localvar 36912 currentSpace 18507
.localvar 36913 horzspace 18508

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
push.v self.saved
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.time
pop.v.v self.time_current

:[2]
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.d
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v

:[4]
push.v self.menuno
pushi.e 0
cmp.i.v EQ
bf [24]

:[5]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 135
push.v self.yy
add.v.i
pushi.e 269
push.v self.xx
add.v.i
pushi.e 49
push.v self.yy
add.v.i
pushi.e 50
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 132
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 266
push.v self.d
mul.v.i
push.v self.xx
add.v.v
pushi.e 52
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 53
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_rectangle(argc=5)
popz.v
b [8]

:[7]
pushi.e 135
push.v self.d
mul.v.i
push.v self.yy
add.v.v
push.v self.type
pushi.e 45
mul.i.v
add.v.v
pushi.e 265
push.v self.d
mul.v.i
push.v self.xx
add.v.v
pushi.e 16
add.i.v
pushi.e 49
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 54
push.v self.d
mul.v.i
push.v self.xx
add.v.v
pushi.e 16
sub.i.v
call.i gml_Script_scr_darkbox(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 125
push.v self.d
mul.v.i
push.v self.yy
add.v.v
push.v self.type
pushi.e 45
mul.i.v
add.v.v
pushi.e 255
push.v self.d
mul.v.i
push.v self.xx
add.v.v
pushi.e 16
add.i.v
pushi.e 59
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 64
push.v self.d
mul.v.i
push.v self.xx
add.v.v
pushi.e 16
sub.i.v
call.i draw_rectangle(argc=5)
popz.v

:[8]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.xcoord
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[10]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.name
call.i gml_Script_scr_kana_check(argc=1)
conv.v.b
not.b
bf [12]

:[11]
push.v self.name
call.i string_hash_to_newline(argc=1)
pushi.e 60
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 60
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_text(argc=3)
popz.v
b [14]

:[12]
pushi.e 8
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.v self.name
call.i string_hash_to_newline(argc=1)
pushi.e 60
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 60
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v NEQ
bf [14]

:[13]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[14]
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "obj_savemenu_slash_Draw_0_gml_34_0"@36892
conv.s.v
pushglb.v global.chapter
push.s "LV ~1"@36893
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushi.e 60
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 200
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.time_current
call.i gml_Script_scr_timedisp(argc=1)
pushi.e 60
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 261
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 360
conv.i.v
pushbltn.v builtin.room
call.i gml_Script_scr_roomname(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 85
push.v self.d
mul.v.i
push.v self.yy
add.v.v
pushi.e 160
push.v self.d
mul.v.i
push.v self.xx
add.v.v
call.i gml_Script_draw_text_width(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.xcoord
pushi.e 2
cmp.i.v LT
bf [16]

:[15]
push.v self.yy
pushi.e 114
push.v self.d
mul.v.i
add.v.v
push.v self.ycoord
pushi.e 42
mul.i.v
add.v.v
push.v self.xx
pushi.e 71
push.v self.d
mul.v.i
add.v.v
push.v self.xcoord
pushi.e 90
mul.i.v
push.v self.d
mul.v.v
add.v.v
pushi.e 0
conv.i.v
push.v self.heartsprite
call.i draw_sprite(argc=4)
popz.v

:[16]
push.v self.xcoord
pushi.e 2
cmp.i.v LT
bf [22]

:[17]
push.s "obj_savemenu_slash_Draw_0_gml_47_0"@36894
conv.s.v
push.s "Save"@36895
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
push.v self.d
mul.v.i
add.v.v
push.v self.xx
pushi.e 85
push.v self.d
mul.v.i
add.v.v
call.i draw_text(argc=3)
popz.v
push.s "obj_savemenu_slash_Draw_0_gml_48_0"@36896
conv.s.v
push.s "Return"@20999
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
push.v self.d
mul.v.i
add.v.v
push.v self.xx
pushi.e 175
push.v self.d
mul.v.i
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [21]

:[18]
push.s "obj_savemenu_slash_Draw_0_gml_52_0_b"@36897
conv.s.v
push.s "Storage"@36898
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.yy
pushi.e 130
push.v self.d
mul.v.i
add.v.v
push.v self.xx
pushi.e 85
push.v self.d
mul.v.i
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.haverecruited
conv.v.b
not.b
bf [20]

:[19]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[20]
push.s "obj_savemenu_slash_Draw_0_gml_54_0"@36899
conv.s.v
push.s "Recruits"@20943
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.yy
pushi.e 130
push.v self.d
mul.v.i
add.v.v
push.v self.xx
pushi.e 175
push.v self.d
mul.v.i
add.v.v
call.i draw_text(argc=3)
popz.v

:[21]
b [23]

:[22]
push.s "obj_savemenu_slash_Draw_0_gml_52_0"@36900
conv.s.v
push.s "File saved."@36901
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 110
push.v self.d
mul.v.i
add.v.v
push.v self.xx
pushi.e 85
push.v self.d
mul.v.i
add.v.v
call.i draw_text(argc=3)
popz.v

:[23]
b [end]

:[24]
push.v self.menuno
pushi.e 1
cmp.i.v EQ
bf [132]

:[25]
push.v self.overwrite
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.8
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 480
add.i.v
pushi.e 10
add.i.v
push.v self.xx
pushi.e 640
add.i.v
pushi.e 10
add.i.v
push.v self.yy
pushi.e 10
sub.i.v
push.v self.xx
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[27]
pushi.e 0
pop.v.i local.yoff
pushi.e 28
pop.v.i local.wmod
pushi.e 520
pop.v.i local.mwidth
pushi.e 105
pop.v.i local.mheight
pushi.e 60
pop.v.i local.mx
pushi.e 12
pushloc.v local.yoff
add.v.i
pop.v.v local.my
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushloc.v local.mheight
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
pushloc.v local.mwidth
add.v.v
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
call.i gml_Script_scr_darkbox_black(argc=4)
popz.v
pushi.e 520
pop.v.i local.mwidth
pushi.e 321
pop.v.i local.mheight
pushi.e 60
pop.v.i local.mx
pushi.e 124
pushloc.v local.yoff
add.v.i
pop.v.v local.my
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushloc.v local.mheight
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
pushloc.v local.mwidth
add.v.v
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
call.i gml_Script_scr_darkbox_black(argc=4)
popz.v
pushi.e 0
pop.v.i local.i

:[28]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [30]

:[29]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local.mwidth
push.d 0.948
mul.d.v
call.i gml_Script_cameray(argc=0)
pushi.e 208
add.i.v
pushi.e 84
pushloc.v local.i
mul.v.i
add.v.v
pushloc.v local.yoff
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
pushi.e 14
add.i.v
pushi.e 0
conv.i.v
pushi.e 2442
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [28]

:[30]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushglb.v global.truename
call.i gml_Script_cameray(argc=0)
pushi.e 32
add.i.v
pushloc.v local.yoff
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "obj_savemenu_slash_Draw_0_gml_34_0"@36892
conv.s.v
pushglb.v global.chapter
push.s "LV ~1"@36893
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
call.i gml_Script_cameray(argc=0)
pushi.e 32
add.i.v
pushloc.v local.yoff
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
pushi.e 40
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.time_current
call.i gml_Script_scr_timedisp(argc=1)
call.i gml_Script_cameray(argc=0)
pushi.e 32
add.i.v
pushloc.v local.yoff
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
pushi.e 483
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.room_current
call.i gml_Script_cameray(argc=0)
pushi.e 64
add.i.v
pushloc.v local.yoff
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "obj_savemenu_slash_Draw_0_gml_115_0"@36905
conv.s.v
push.s "New File"@36906
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.newfile
pushi.e 84
pop.v.i local.mspace
pushi.e 0
pop.v.i local.i

:[31]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [42]

:[32]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.mpos
pushloc.v local.i
cmp.v.v EQ
bf [34]

:[33]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[34]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.level_file
pushi.e 0
cmp.i.v NEQ
bf [40]

:[35]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "obj_savemenu_slash_Draw_0_gml_34_0"@36892
conv.s.v
pushglb.v global.chapter
push.s "LV ~1"@36893
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushi.e 20
add.i.v
pushloc.v local.i
pushloc.v local.mspace
mul.v.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
pushi.e 40
add.i.v
pushi.e 24
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.time_file
call.i gml_Script_scr_timedisp(argc=1)
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushi.e 20
add.i.v
pushloc.v local.i
pushloc.v local.mspace
mul.v.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
pushi.e 483
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.roome_file
call.i gml_Script_scr_roomname(argc=1)
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushi.e 52
add.i.v
pushloc.v local.i
pushloc.v local.mspace
mul.v.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.name_file
call.i gml_Script_scr_kana_check(argc=1)
conv.v.b
not.b
bf [37]

:[36]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.name_file
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushi.e 20
add.i.v
pushloc.v local.i
pushloc.v local.mspace
mul.v.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
b [39]

:[37]
pushi.e 8
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.name_file
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushi.e 20
add.i.v
pushloc.v local.i
pushloc.v local.mspace
mul.v.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v NEQ
bf [39]

:[38]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[39]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [41]

:[40]
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.newfile
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushi.e 36
add.i.v
pushloc.v local.i
pushloc.v local.mspace
mul.v.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[41]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [31]

:[42]
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.mpos
pushi.e 3
cmp.i.v EQ
bf [44]

:[43]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[44]
push.s "obj_savemenu_slash_Draw_0_gml_48_0"@36896
conv.s.v
push.s "Return"@20999
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.returntxt
push.v self.returntxt
call.i string_hash_to_newline(argc=1)
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushi.e 270
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.overwrite
pushi.e 0
cmp.i.v EQ
bf [51]

:[45]
push.v self.mpos
pushi.e 3
cmp.i.v LT
bf [50]

:[46]
pushi.e -1
push.v self.mpos
conv.v.i
push.v [array]self.level_file
pushi.e 0
cmp.i.v NEQ
bf [48]

:[47]
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushloc.v local.mspace
push.v self.mpos
mul.v.v
add.v.v
pushi.e 62
add.i.v
pushi.e 34
sub.i.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
pushi.e 32
add.i.v
pushi.e 0
conv.i.v
push.v self.heartsprite
call.i draw_sprite(argc=4)
popz.v
b [49]

:[48]
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushi.e 36
add.i.v
push.v self.mpos
pushloc.v local.mspace
mul.v.v
add.v.v
push.v self.newfile
call.i string_height(argc=1)
pushi.e 4
conv.i.d
div.d.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
push.v self.newfile
call.i string_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 32
sub.i.v
pushi.e 0
conv.i.v
push.v self.heartsprite
call.i draw_sprite(argc=4)
popz.v

:[49]
b [51]

:[50]
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushi.e 270
add.i.v
push.v self.returntxt
call.i string_height(argc=1)
pushi.e 4
conv.i.d
div.d.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
push.v self.returntxt
call.i string_width(argc=1)
sub.v.v
pushi.e 0
conv.i.v
push.v self.heartsprite
call.i draw_sprite(argc=4)
popz.v

:[51]
push.v self.overwrite
pushi.e 0
cmp.i.v EQ
bf [81]

:[52]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [54]

:[53]
push.v self.mpos
push.e 1
add.i.v
pop.v.v self.mpos

:[54]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [56]

:[55]
push.v self.mpos
push.e 1
sub.i.v
pop.v.v self.mpos

:[56]
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
push.v self.mpos
call.i clamp(argc=3)
pop.v.v self.mpos
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [58]

:[57]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [59]

:[58]
push.e 0

:[59]
bf [76]

:[60]
push.v self.mpos
pushi.e 3
cmp.i.v EQ
bf [62]

:[61]
pushi.e 0
pop.v.i self.menuno
pushi.e 3
pop.v.i self.buffer
pushglb.v global.filechoice
pop.v.v self.mpos
pushi.e 261
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [76]

:[62]
pushi.e -1
push.v self.mpos
conv.v.i
push.v [array]self.level_file
pushi.e 0
cmp.i.v NEQ
bf [64]

:[63]
push.v self.mpos
pushglb.v global.filechoice
cmp.v.v NEQ
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
push.d 0.5
pop.v.d self.overwrite
pushi.e 3
pop.v.i self.buffer
pushi.e 0
pop.v.i self.overcoord
b [76]

:[67]
pushi.e 2
pop.v.i self.menuno
push.v self.mpos
pop.v.v global.filechoice
pushi.e 258
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i gml_Script_scr_save(argc=0)
pop.v.v local.is_valid
pushloc.v local.is_valid
conv.v.b
bf [75]

:[68]
pushi.e 2
pop.v.i self.menuno
pushi.e 1
pop.v.i self.saved
pushi.e 2
pop.v.i self.xcoord
pushi.e 3
pop.v.i self.buffer
push.v self.d
pushi.e 2
cmp.i.v EQ
bf [70]

:[69]
pushglb.v global.truename
pop.v.v self.name
pushglb.v global.llv
pop.v.v self.love

:[70]
pushbltn.v builtin.room
call.i gml_Script_scr_roomname(argc=1)
popz.v
pushglb.v global.lv
pop.v.v self.level
pushglb.v global.time
pop.v.v self.time
push.v self.time
pushi.e 1800
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.minutes
push.v self.time
pushi.e 1800
conv.i.d
div.d.v
push.v self.minutes
sub.v.v
pushi.e 60
mul.i.v
call.i round(argc=1)
pop.v.v self.seconds
push.v self.seconds
pushi.e 60
cmp.i.v EQ
bf [72]

:[71]
pushi.e 59
pop.v.i self.seconds

:[72]
push.v self.seconds
pushi.e 10
cmp.i.v LT
bf [74]

:[73]
push.s "0"@3491
push.v self.seconds
call.i string(argc=1)
add.v.s
pop.v.v self.seconds

:[74]
b [76]

:[75]
pushi.e 1
pop.v.b self.save_data_error
pushi.e 27
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.error_message
push.s "save_failed"@14502
pushloc.v local.error_message
pushi.e -9
pop.v.s [stacktop]self.error_type

:[76]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [78]

:[77]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [79]

:[78]
push.e 0

:[79]
bf [81]

:[80]
pushi.e 0
pop.v.i self.menuno
pushi.e 3
pop.v.i self.buffer
pushglb.v global.filechoice
pop.v.v self.mpos
pushi.e 261
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[81]
push.v self.overwrite
pushi.e 1
cmp.i.v EQ
bf [129]

:[82]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.8
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 480
add.i.v
pushi.e 10
add.i.v
push.v self.xx
pushi.e 640
add.i.v
pushi.e 10
add.i.v
push.v self.yy
pushi.e 10
sub.i.v
push.v self.xx
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 2
pop.v.i self.saved
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
pushi.e 100
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pushi.e 10
sub.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 100
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 10
add.i.v
call.i gml_Script_scr_darkbox_black(argc=4)
popz.v
push.s "obj_savemenu_slash_Draw_0_gml_215_0"@36909
conv.s.v
push.v self.mpos
pushi.e 1
add.i.v
push.s "Overwrite Slot ~1?"@36910
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.overwritetext
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.overwritetext
call.i string_hash_to_newline(argc=1)
call.i gml_Script_cameray(argc=0)
pushi.e 120
add.i.v
pushi.e 4
sub.i.v
pushi.e 19
add.i.v
pushi.e 12
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 70
pop.v.i local.currentSpace
pushi.e 80
pop.v.i local.horzspace
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "obj_savemenu_slash_Draw_0_gml_34_0"@36892
conv.s.v
pushglb.v global.chapter
push.s "LV ~1"@36893
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushi.e 15
call.i gml_Script_cameray(argc=0)
add.v.i
pushi.e 180
add.i.v
pushi.e 30
sub.i.v
pushloc.v local.currentSpace
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.horzspace
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.time_current
call.i gml_Script_scr_timedisp(argc=1)
pushi.e 15
call.i gml_Script_cameray(argc=0)
add.v.i
pushi.e 180
add.i.v
pushi.e 30
sub.i.v
pushloc.v local.currentSpace
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pushloc.v local.horzspace
sub.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.room_current
pushi.e 15
call.i gml_Script_cameray(argc=0)
add.v.i
pushi.e 180
add.i.v
pushloc.v local.currentSpace
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.name_current
call.i gml_Script_scr_kana_check(argc=1)
conv.v.b
bf [84]

:[83]
pushi.e 8
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[84]
push.v self.name_current
pushi.e 15
call.i gml_Script_cameray(argc=0)
add.v.i
pushi.e 180
add.i.v
pushi.e 30
sub.i.v
pushloc.v local.currentSpace
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [86]

:[85]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[86]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "obj_savemenu_slash_Draw_0_gml_34_0"@36892
conv.s.v
pushglb.v global.chapter
push.s "LV ~1"@36893
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushi.e 15
call.i gml_Script_cameray(argc=0)
add.v.i
pushi.e 180
add.i.v
pushi.e 30
sub.i.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.horzspace
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e -1
push.v self.mpos
conv.v.i
push.v [array]self.time_file
call.i gml_Script_scr_timedisp(argc=1)
pushi.e 15
call.i gml_Script_cameray(argc=0)
add.v.i
pushi.e 180
add.i.v
pushi.e 30
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pushloc.v local.horzspace
sub.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e -1
push.v self.mpos
conv.v.i
push.v [array]self.roome_file
call.i gml_Script_scr_roomname(argc=1)
pushi.e 15
call.i gml_Script_cameray(argc=0)
add.v.i
pushi.e 180
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
push.v self.mpos
conv.v.i
push.v [array]self.name_file
call.i gml_Script_scr_kana_check(argc=1)
conv.v.b
bf [88]

:[87]
pushi.e 8
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[88]
pushi.e -1
push.v self.mpos
conv.v.i
push.v [array]self.name_file
pushi.e 15
call.i gml_Script_cameray(argc=0)
add.v.i
pushi.e 180
add.i.v
pushi.e 30
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [90]

:[89]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[90]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_savemenu_slash_Draw_0_gml_47_0"@36894
conv.s.v
push.s "Save"@36895
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.savetxt
push.s "obj_savemenu_slash_Draw_0_gml_48_0"@36896
conv.s.v
push.s "Return"@20999
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.returntxt
call.i gml_Script_left_p(argc=0)
conv.v.b
bt [92]

:[91]
call.i gml_Script_right_p(argc=0)
conv.v.b
b [93]

:[92]
push.e 1

:[93]
bf [95]

:[94]
pushi.e 1
push.v self.overcoord
sub.v.i
pop.v.v self.overcoord

:[95]
push.v self.overcoord
pushi.e 0
cmp.i.v EQ
bf [97]

:[96]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [98]

:[97]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[98]
push.v self.savetxt
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 300
add.i.v
pushi.e 12
add.i.v
pushi.e 12
add.i.v
push.v self.xx
pushi.e 170
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.overcoord
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [101]

:[100]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[101]
push.v self.returntxt
call.i string_hash_to_newline(argc=1)
push.v self.yy
pushi.e 300
add.i.v
pushi.e 12
add.i.v
pushi.e 12
add.i.v
push.v self.xx
pushi.e 350
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.overcoord
pushi.e 0
cmp.i.v EQ
bf [103]

:[102]
push.v self.yy
pushi.e 300
add.i.v
pushi.e 24
add.i.v
push.v self.savetxt
call.i string_height(argc=1)
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.xx
pushi.e 170
add.i.v
pushi.e 32
sub.i.v
pushi.e 4
add.i.v
pushi.e 0
conv.i.v
push.v self.heartsprite
call.i draw_sprite(argc=4)
popz.v
b [104]

:[103]
push.v self.yy
pushi.e 300
add.i.v
pushi.e 24
add.i.v
push.v self.returntxt
call.i string_height(argc=1)
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.xx
pushi.e 350
add.i.v
pushi.e 32
sub.i.v
pushi.e 4
add.i.v
pushi.e 0
conv.i.v
push.v self.heartsprite
call.i draw_sprite(argc=4)
popz.v

:[104]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [106]

:[105]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [107]

:[106]
push.e 0

:[107]
bf [122]

:[108]
push.v self.save_data_error
conv.v.b
bf [110]

:[109]
exit.i

:[110]
push.v self.overcoord
pushi.e 0
cmp.i.v EQ
bf [121]

:[111]
pushi.e 2
pop.v.i self.menuno
push.v self.mpos
pop.v.v global.filechoice
pushi.e 258
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.i [function]gml_Script_scr_save
conv.i.v
call.i script_execute(argc=1)
pop.v.v local.is_valid
pushloc.v local.is_valid
conv.v.b
bf [119]

:[112]
pushi.e 1
pop.v.i self.saved
pushi.e 2
pop.v.i self.xcoord
pushi.e 3
pop.v.i self.buffer
push.v self.d
pushi.e 2
cmp.i.v EQ
bf [114]

:[113]
pushglb.v global.truename
pop.v.v self.name
pushglb.v global.llv
pop.v.v self.love

:[114]
pushbltn.v builtin.room
call.i gml_Script_scr_roomname(argc=1)
popz.v
pushglb.v global.lv
pop.v.v self.level
pushglb.v global.time
pop.v.v self.time
push.v self.time
pushi.e 1800
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.minutes
push.v self.time
pushi.e 1800
conv.i.d
div.d.v
push.v self.minutes
sub.v.v
pushi.e 60
mul.i.v
call.i round(argc=1)
pop.v.v self.seconds
push.v self.seconds
pushi.e 60
cmp.i.v EQ
bf [116]

:[115]
pushi.e 59
pop.v.i self.seconds

:[116]
push.v self.seconds
pushi.e 10
cmp.i.v LT
bf [118]

:[117]
push.s "0"@3491
push.v self.seconds
call.i string(argc=1)
add.v.s
pop.v.v self.seconds

:[118]
b [120]

:[119]
pushi.e 1
pop.v.b self.save_data_error
pushi.e 27
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.error_message
push.s "save_failed"@14502
pushloc.v local.error_message
pushi.e -9
pop.v.s [stacktop]self.error_type

:[120]
b [122]

:[121]
pushi.e 0
pop.v.i self.overwrite
pushi.e 3
pop.v.i self.buffer
pushi.e 0
pop.v.i self.saved

:[122]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [124]

:[123]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [125]

:[124]
push.e 0

:[125]
bf [129]

:[126]
push.v self.save_data_error
conv.v.b
bf [128]

:[127]
exit.i

:[128]
pushi.e 0
pop.v.i self.overwrite
pushi.e 3
pop.v.i self.buffer
pushi.e 0
pop.v.i self.saved

:[129]
push.v self.overwrite
push.d 0.5
cmp.d.v EQ
bf [131]

:[130]
pushi.e 1
pop.v.i self.overwrite

:[131]
b [end]

:[132]
push.v self.menuno
pushi.e 2
cmp.i.v EQ
bf [end]

:[133]
push.v self.save_data_error
conv.v.b
bf [139]

:[134]
pushi.e 27
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [138]

:[135]
pushi.e 0
pop.v.b self.save_data_error
pushi.e 0
pop.v.i global.interact
pushi.e 82
pushenv [137]

:[136]
pushi.e 3
pop.v.i self.onebuffer

:[137]
popenv [136]
call.i instance_destroy(argc=0)
popz.v

:[138]
exit.i

:[139]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.8
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.yy
pushi.e 480
add.i.v
pushi.e 10
add.i.v
push.v self.xx
pushi.e 640
add.i.v
pushi.e 10
add.i.v
push.v self.yy
pushi.e 10
sub.i.v
push.v self.xx
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i local.yoff
pushi.e 28
pop.v.i local.wmod
pushi.e 520
pop.v.i local.mwidth
pushi.e 105
pop.v.i local.mheight
pushi.e 60
pop.v.i local.mx
pushi.e 12
pushloc.v local.yoff
add.v.i
pop.v.v local.my
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushloc.v local.mheight
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
pushloc.v local.mwidth
add.v.v
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
call.i gml_Script_scr_darkbox_black(argc=4)
popz.v
pushi.e 520
pop.v.i local.mwidth
pushi.e 273
pop.v.i local.mheight
pushi.e 60
pop.v.i local.mx
pushi.e 124
pushloc.v local.yoff
add.v.i
pop.v.v local.my
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushloc.v local.mheight
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
pushloc.v local.mwidth
add.v.v
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
call.i gml_Script_scr_darkbox_black(argc=4)
popz.v
pushi.e 0
pop.v.i local.i

:[140]
pushloc.v local.i
pushi.e 2
cmp.i.v LT
bf [142]

:[141]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local.mwidth
push.d 0.948
mul.d.v
call.i gml_Script_cameray(argc=0)
pushi.e 208
add.i.v
pushi.e 84
pushloc.v local.i
mul.v.i
add.v.v
pushloc.v local.yoff
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
pushi.e 14
add.i.v
pushi.e 0
conv.i.v
pushi.e 2442
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [140]

:[142]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushglb.v global.truename
call.i gml_Script_cameray(argc=0)
pushi.e 32
add.i.v
pushloc.v local.yoff
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "obj_savemenu_slash_Draw_0_gml_34_0"@36892
conv.s.v
pushglb.v global.chapter
push.s "LV ~1"@36893
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
call.i gml_Script_cameray(argc=0)
pushi.e 32
add.i.v
pushloc.v local.yoff
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
pushi.e 40
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.time_current
call.i gml_Script_scr_timedisp(argc=1)
call.i gml_Script_cameray(argc=0)
pushi.e 32
add.i.v
pushloc.v local.yoff
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
pushi.e 483
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.room_current
call.i gml_Script_cameray(argc=0)
pushi.e 64
add.i.v
pushloc.v local.yoff
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_savemenu_slash_Draw_0_gml_115_0"@36905
conv.s.v
push.s "New File"@36906
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.newfile
pushi.e 84
pop.v.i local.mspace
pushi.e 0
pop.v.i local.i

:[143]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [157]

:[144]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.mpos
pushloc.v local.i
cmp.v.v EQ
bf [146]

:[145]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[146]
push.v self.mpos
pushloc.v local.i
cmp.v.v NEQ
bf [155]

:[147]
push.i 4473924
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.level_file
pushi.e 0
cmp.i.v NEQ
bf [153]

:[148]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "obj_savemenu_slash_Draw_0_gml_34_0"@36892
conv.s.v
pushglb.v global.chapter
push.s "LV ~1"@36893
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushi.e 20
add.i.v
pushloc.v local.i
pushloc.v local.mspace
mul.v.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
pushi.e 40
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.time_file
call.i gml_Script_scr_timedisp(argc=1)
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushi.e 20
add.i.v
pushloc.v local.i
pushloc.v local.mspace
mul.v.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushloc.v local.mx
add.v.v
pushi.e 483
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.roome_file
call.i gml_Script_scr_roomname(argc=1)
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushi.e 52
add.i.v
pushloc.v local.i
pushloc.v local.mspace
mul.v.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.name_file
call.i gml_Script_scr_kana_check(argc=1)
conv.v.b
bf [150]

:[149]
pushi.e 8
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[150]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.name_file
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushi.e 20
add.i.v
pushloc.v local.i
pushloc.v local.mspace
mul.v.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [152]

:[151]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[152]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [154]

:[153]
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.newfile
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushi.e 36
add.i.v
pushloc.v local.i
pushloc.v local.mspace
mul.v.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[154]
b [156]

:[155]
push.s "obj_savemenu_slash_Draw_0_gml_371_0"@36915
conv.s.v
push.s "File Saved"@36916
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.filesaved
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.filesaved
call.i gml_Script_cameray(argc=0)
pushloc.v local.my
add.v.v
pushi.e 36
add.i.v
pushloc.v local.i
pushloc.v local.mspace
mul.v.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[156]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [143]

:[157]
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
call.i gml_Script_button1_p(argc=0)
conv.v.b
bt [159]

:[158]
call.i gml_Script_button2_p(argc=0)
conv.v.b
b [160]

:[159]
push.e 1

:[160]
bf [end]

:[161]
push.v self.buffer
pushi.e 0
cmp.i.v LT
bf [end]

:[162]
pushi.e 0
pop.v.i global.interact
pushi.e 82
pushenv [164]

:[163]
pushi.e 3
pop.v.i self.onebuffer

:[164]
popenv [163]
call.i instance_destroy(argc=0)
popz.v

:[end]