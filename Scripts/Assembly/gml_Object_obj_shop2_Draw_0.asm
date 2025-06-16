.localvar 2 arguments
.localvar 27870 y1_off 15139
.localvar 27871 y2_off 15140

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
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
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2486
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pushi.e 1
sub.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
pushi.e 1
sub.i.v
pushi.e 2
conv.i.v
pushi.e 52
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
add.v.i
pushi.e 148
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.i
pushi.e 0
conv.i.v
pushi.e 2491
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
pushi.e 1
sub.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 3
mul.i.v
pushi.e 1
sub.i.v
pushi.e 2
conv.i.v
pushi.e 42
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
add.v.i
pushi.e 48
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.i
pushi.e 0
conv.i.v
pushi.e 2491
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
pushi.e 62
conv.i.v
pushi.e 72
conv.i.v
pushglb.v global.fe
pushi.e 2487
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
pushi.e 56
conv.i.v
pushi.e 200
conv.i.v
push.v self.siner
push.d 3.73
div.d.v
pushi.e 2489
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
pushi.e 150
conv.i.v
pushi.e 340
conv.i.v
push.v self.siner
push.d 3.73
div.d.v
pushi.e 2488
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
pushi.e 168
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.i
pushi.e 422
conv.i.v
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
pushi.e 2492
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.worm_max
cmp.v.v LT
bf [7]

:[2]
push.i 172534
setowner.e
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.worm_image
push.d 0.2
add.d.v
pop.i.v [array]self.worm_image
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.worm_image
pushi.e 3
cmp.i.v GTE
bf [4]

:[3]
push.i 172533
setowner.e
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.worm_siner
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.worm_image
pushi.e 3
conv.i.d
div.d.v
add.v.v
pop.i.v [array]self.worm_siner

:[4]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.worm_image
pushi.e 6
cmp.i.v GTE
bf [6]

:[5]
push.i 172534
setowner.e
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.worm_image
pushi.e 6
sub.i.v
pop.i.v [array]self.worm_image

:[6]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.worm_siner
pushi.e 50
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 20
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.worm_siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.complexwormx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.worm_siner
pushi.e 8
conv.i.d
div.d.v
call.i cos(argc=1)
pop.v.v self.complexwormy
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
pushi.e 204
push.v self.complexwormy
add.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.worm_y
add.v.v
pushi.e 530
push.v self.complexwormx
add.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.worm_image
pushi.e 2493
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[7]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 240
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_shopmenu(argc=1)
popz.v
push.v self.menu
pushi.e 3
cmp.i.v LTE
bt [9]

:[8]
push.v self.menu
pushi.e 10
cmp.i.v GTE
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
pushi.e 480
conv.i.v
pushi.e 415
conv.i.v
pushi.e 240
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_darkbox_black(argc=4)
popz.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 240
conv.i.v
pushi.e 400
conv.i.v
call.i gml_Script_scr_darkbox_black(argc=4)
popz.v

:[12]
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [14]

:[13]
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 240
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_darkbox_black(argc=4)
popz.v

:[14]
push.v self.menu
pushi.e 0
cmp.i.v EQ
bf [31]

:[15]
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.selling
pushi.e 0
pop.v.i self.sidemessage
push.i 166593
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.menuc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.menuc
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [20]

:[16]
pushi.e 6
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_shop2_slash_Draw_0_gml_70_0"@28231
conv.s.v
push.s "\\E0* Anything else?"@28232
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.mainmessage
pushi.e 0
cmp.i.v EQ
bf [19]

:[17]
push.s "obj_shop2_slash_Draw_0_gml_73_0"@28233
conv.s.v
push.s "\\E0* Welcome to my&shop^1, you&ungrateful worms."@28234
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.friendly
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_shop2_slash_Draw_0_gml_74_0"@28235
conv.s.v
push.s "\\E0* Welcome^1, welcome^1,&my Heroick Comrades!"@28236
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[19]
pushi.e 64
conv.i.v
pushi.e 270
conv.i.v
pushi.e 30
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[20]
pushi.e 3
pop.v.i self.menumax
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_82_0"@28237
conv.s.v
push.s "Buy"@27849
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 260
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_83_0"@28238
conv.s.v
push.s "Sell"@27851
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 300
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_84_0"@28239
conv.s.v
push.s "Talk"@7313
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 340
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_85_0"@28240
conv.s.v
push.s "Exit"@5067
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 380
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 135
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 20
mul.i.v
add.v.i
pushi.e 2
mul.i.v
pushi.e 450
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [31]

:[21]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 1
pop.v.i self.mainmessage
pushi.e 64
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
pop.v.i self.menu

:[25]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
pushi.e 10
pop.v.i self.menu
pushi.e 0
pop.v.i self.sidemessage

:[27]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 2
cmp.i.v EQ
bf [29]

:[28]
pushi.e 3
pop.v.i self.menu

:[29]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [31]

:[30]
pushi.e 2
pop.v.i self.sell
pushi.e 4
pop.v.i self.menu

:[31]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [33]

:[32]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [34]

:[33]
push.e 1

:[34]
bf [117]

:[35]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[36]
push.v self.i
push.v self.itemtotal
cmp.v.v LT
bf [38]

:[37]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shopitemname
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.i
pushi.e 40
mul.i.v
add.v.i
pushi.e 60
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_113_0"@28241
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.buyvalue
call.i string(argc=1)
push.s "$~1"@9735
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.i
pushi.e 40
mul.i.v
add.v.i
pushi.e 300
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [36]

:[38]
push.s "obj_shop2_slash_Draw_0_gml_115_0"@28242
conv.s.v
push.s "Exit"@5067
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.itemtotal
pushi.e 40
mul.i.v
add.v.i
pushi.e 60
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.menu
pushi.e 1
cmp.i.v EQ
bf [71]

:[39]
pushi.e 4
pop.v.i self.menumax
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [54]

:[40]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_shop2_slash_Draw_0_gml_124_0"@28243
conv.s.v
push.s "\\E0What&shalt&thou buy?"@28244
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[42]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [45]

:[43]
push.s "obj_shop2_slash_Draw_0_gml_125_0"@28245
conv.s.v
push.s "\\E2Thanks,&worm."@28246
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.friendly
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_shop2_slash_Draw_0_gml_126_0"@28247
conv.s.v
push.s "\\E2Thanks,&hero!"@28248
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[45]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [47]

:[46]
push.s "obj_shop2_slash_Draw_0_gml_127_0"@28249
conv.s.v
push.s "\\E3Perhaps&another&ware?"@28250
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[47]
push.v self.sidemessage
pushi.e 3
cmp.i.v EQ
bf [49]

:[48]
push.s "obj_shop2_slash_Draw_0_gml_128_0"@28251
conv.s.v
push.s "\\E6Your&funds are&lacking."@28252
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[49]
push.v self.sidemessage
pushi.e 4
cmp.i.v EQ
bf [51]

:[50]
push.s "obj_shop2_slash_Draw_0_gml_129_0"@28253
conv.s.v
push.s "\\E3Thou doth&carry&too much!"@28254
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[51]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_shop2_slash_Draw_0_gml_130_0"@28255
conv.s.v
push.s "/*"@27869
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[53]
pushi.e 64
conv.i.v
pushi.e 260
conv.i.v
pushi.e 450
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[54]
pushi.e 270
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 40
mul.i.v
add.v.i
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [56]

:[55]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [57]

:[56]
push.e 0

:[57]
bf [62]

:[58]
pushi.e 2
pop.v.i self.menu
pushi.e 2
pop.v.i self.onebuffer
pushi.e 64
pushenv [60]

:[59]
call.i instance_destroy(argc=0)
popz.v

:[60]
popenv [59]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
push.v self.menumax
cmp.v.v EQ
bf [62]

:[61]
pushi.e 0
pop.v.i self.menu

:[62]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [65]

:[63]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [65]

:[64]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [66]

:[65]
push.e 0

:[66]
bf [70]

:[67]
pushi.e 0
pop.v.i self.menu
pushi.e 2
pop.v.i self.twobuffer
pushi.e 220
pop.v.i self.minimenuy
pushi.e 64
pushenv [69]

:[68]
call.i instance_destroy(argc=0)
popz.v

:[69]
popenv [68]

:[70]
push.i 166593
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuc

:[71]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [101]

:[72]
pushi.e 1
pop.v.i self.menumax
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 290
conv.i.v
pushi.e 260
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.y1_off
pushi.e 260
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.y2_off
push.s "obj_shop2_slash_Draw_0_gml_144_0"@28256
conv.s.v
push.s "Buyeth for"@28257
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushloc.v local.y1_off
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_147_0_b"@28258
conv.s.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.buyvalue
call.i string(argc=1)
push.s "$~1 ?"@27875
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushloc.v local.y2_off
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_146_0"@28259
conv.s.v
push.s "Yes"@5613
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 340
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_147_0"@28260
conv.s.v
push.s "No"@2449
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 370
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 350
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 30
mul.i.v
add.v.i
pushi.e 450
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [74]

:[73]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e 1
pop.v.i self.menu
pushi.e 2
pop.v.i self.sidemessage
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[77]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [80]

:[78]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [80]

:[79]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [81]

:[80]
push.e 0

:[81]
bf [101]

:[82]
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [98]

:[83]
pushi.e 0
pop.v.i self.afford
pushglb.v global.gold
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.buyvalue
cmp.v.v GTE
bf [85]

:[84]
pushi.e 1
pop.v.i self.afford

:[85]
push.v self.afford
pushi.e 1
cmp.i.v EQ
bf [97]

:[86]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "item"@229
cmp.s.v EQ
bf [88]

:[87]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_itemget(argc=1)
popz.v

:[88]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@231
cmp.s.v EQ
bf [90]

:[89]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_weaponget(argc=1)
popz.v

:[90]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "armor"@232
cmp.s.v EQ
bf [92]

:[91]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_armorget(argc=1)
popz.v

:[92]
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [94]

:[93]
push.v global.gold
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.buyvalue
sub.v.v
pop.v.v global.gold
pushi.e 1
pop.v.i self.sidemessage
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[94]
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
pushi.e 4
pop.v.i self.sidemessage

:[96]
b [98]

:[97]
pushi.e 3
pop.v.i self.sidemessage

:[98]
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
pushi.e 2
pop.v.i self.sidemessage

:[100]
pushi.e 1
pop.v.i self.menu

:[101]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 4
cmp.i.v NEQ
bf [113]

:[102]
push.v self.minimenuy
pushi.e 20
cmp.i.v LTE
bf [104]

:[103]
pushi.e 20
pop.v.i self.minimenuy

:[104]
push.v self.minimenuy
pushi.e 20
cmp.i.v GT
bf [106]

:[105]
push.v self.minimenuy
pushi.e 5
sub.i.v
pop.v.v self.minimenuy

:[106]
push.v self.minimenuy
pushi.e 50
cmp.i.v GT
bf [108]

:[107]
push.v self.minimenuy
pushi.e 5
sub.i.v
pop.v.v self.minimenuy

:[108]
push.v self.minimenuy
pushi.e 100
cmp.i.v GT
bf [110]

:[109]
push.v self.minimenuy
pushi.e 8
sub.i.v
pop.v.v self.minimenuy

:[110]
push.v self.minimenuy
pushi.e 150
cmp.i.v GT
bf [112]

:[111]
push.v self.minimenuy
pushi.e 10
sub.i.v
pop.v.v self.minimenuy

:[112]
b [115]

:[113]
push.v self.minimenuy
pushi.e 200
cmp.i.v LT
bf [115]

:[114]
push.v self.minimenuy
pushi.e 40
add.i.v
pop.v.v self.minimenuy

:[115]
push.v self.minimenuy
pushi.e 200
cmp.i.v GTE
bf [117]

:[116]
pushi.e 200
pop.v.i self.minimenuy

:[117]
push.v self.menu
pushi.e 3
cmp.i.v EQ
bf [138]

:[118]
pushi.e 4
pop.v.i self.menumax
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_194_0"@28261
conv.s.v
push.s "About yourself"@27879
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 260
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_195_0"@28262
conv.s.v
push.s "Why sell to us"@28263
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 300
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_196_0"@28264
conv.s.v
push.s "The King"@28265
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 340
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_197_0"@28266
conv.s.v
push.s "The King's Son"@28267
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 380
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_198_0"@28268
conv.s.v
push.s "Exit"@5067
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 420
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [120]

:[119]
push.i 231251
setowner.e
push.s "obj_shop2_slash_Draw_0_gml_202_0"@28269
conv.s.v
push.s "\\E5Ah^1, what is&thine&Intereste?"@28270
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 260
conv.i.v
pushi.e 440
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[120]
pushi.e 270
pushi.e -1
pushi.e 3
push.v [array]self.menuc
pushi.e 40
mul.i.v
add.v.i
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [122]

:[121]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [123]

:[122]
push.e 0

:[123]
bf [130]

:[124]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 64
pushenv [126]

:[125]
call.i instance_destroy(argc=0)
popz.v

:[126]
popenv [125]
pushi.e -1
pushi.e 3
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [128]

:[127]
pushi.e -1
pushi.e 3
push.v [array]self.menuc
pushi.e 3
add.i.v
pop.v.v self.sell
pushi.e 4
pop.v.i self.menu
b [129]

:[128]
pushi.e 0
pop.v.i self.menu

:[129]
b [138]

:[130]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [133]

:[131]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [133]

:[132]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [134]

:[133]
push.e 0

:[134]
bf [138]

:[135]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.menu
pushi.e 64
pushenv [137]

:[136]
call.i instance_destroy(argc=0)
popz.v

:[137]
popenv [136]

:[138]
push.v self.menu
pushi.e 10
cmp.i.v EQ
bf [179]

:[139]
push.i 166593
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.menuc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 12
pop.v.v [array]self.menuc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 13
pop.v.v [array]self.menuc
pushi.e 3
pop.v.i self.menumax
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_236_0"@28271
conv.s.v
push.s "Selleth Items"@28272
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 260
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_237_0"@28273
conv.s.v
push.s "Selleth Weapons"@28274
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 300
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_238_0"@28275
conv.s.v
push.s "Selleth Armor"@28276
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 340
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_239_0"@28277
conv.s.v
push.s "Returnst"@28278
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 380
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [147]

:[140]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [142]

:[141]
push.i 231251
setowner.e
push.s "obj_shop2_slash_Draw_0_gml_243_0"@28279
conv.s.v
push.s "\\E0Showeth&me your&treasure!"@28280
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[142]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [144]

:[143]
push.s "obj_shop2_slash_Draw_0_gml_244_0"@28281
conv.s.v
push.s "\\E2That seems&to be all,&no?"@28282
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[144]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [146]

:[145]
push.s "obj_shop2_slash_Draw_0_gml_245_0"@28283
conv.s.v
push.s "\\E6You have&none!"@28284
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[146]
pushi.e 64
conv.i.v
pushi.e 260
conv.i.v
pushi.e 460
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[147]
pushi.e 270
pushi.e -1
pushi.e 10
push.v [array]self.menuc
pushi.e 40
mul.i.v
add.v.i
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [149]

:[148]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [150]

:[149]
push.e 0

:[150]
bf [171]

:[151]
pushi.e 0
pop.v.i self.pagemax
pushi.e 0
pop.v.i self.sidemessage2
pushi.e 2
pop.v.i self.onebuffer
pushi.e 64
pushenv [153]

:[152]
call.i instance_destroy(argc=0)
popz.v

:[153]
popenv [152]
pushi.e 1
pop.v.i self.can
pushi.e -1
pushi.e 10
push.v [array]self.menuc
pushi.e 11
add.i.v
pop.v.v self.idealmenu
push.v self.idealmenu
pushi.e 11
cmp.i.v EQ
bf [157]

:[154]
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [156]

:[155]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[156]
call.i gml_Script_scr_iteminfo_all(argc=0)
popz.v

:[157]
push.v self.idealmenu
pushi.e 12
cmp.i.v EQ
bf [161]

:[158]
pushi.e 0
conv.i.v
call.i gml_Script_scr_weaponcheck_inventory(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [160]

:[159]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[160]
call.i gml_Script_scr_weaponinfo_all(argc=0)
popz.v

:[161]
push.v self.idealmenu
pushi.e 13
cmp.i.v EQ
bf [165]

:[162]
pushi.e 0
conv.i.v
call.i gml_Script_scr_armorcheck_inventory(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [164]

:[163]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[164]
call.i gml_Script_scr_armorinfo_all(argc=0)
popz.v

:[165]
pushi.e -1
pushi.e 10
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [169]

:[166]
push.v self.can
pushi.e 1
cmp.i.v EQ
bf [168]

:[167]
pushi.e -1
pushi.e 10
push.v [array]self.menuc
pushi.e 11
add.i.v
pop.v.v self.menu

:[168]
pushi.e 0
pop.v.i self.sidemessage1
b [170]

:[169]
pushi.e 0
pop.v.i self.menu

:[170]
pushi.e 0
pop.v.i self.submenu
push.i 172495
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.submenuc

:[171]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [174]

:[172]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [174]

:[173]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [175]

:[174]
push.e 0

:[175]
bf [179]

:[176]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.menu
pushi.e 64
pushenv [178]

:[177]
call.i instance_destroy(argc=0)
popz.v

:[178]
popenv [177]

:[179]
push.v self.menu
pushi.e 11
cmp.i.v EQ
bt [182]

:[180]
push.v self.menu
pushi.e 12
cmp.i.v EQ
bt [182]

:[181]
push.v self.menu
pushi.e 13
cmp.i.v EQ
b [183]

:[182]
push.e 1

:[183]
bf [209]

:[184]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [209]

:[185]
push.v self.sidemessage2
pushi.e 0
cmp.i.v EQ
bf [187]

:[186]
push.v self.menu
pushi.e 11
cmp.i.v EQ
b [188]

:[187]
push.e 0

:[188]
bf [190]

:[189]
push.i 231251
setowner.e
push.s "obj_shop2_slash_Draw_0_gml_305_0"@28285
conv.s.v
push.s "\\E0What ITEM&shalt thou&proffer?"@28286
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[190]
push.v self.sidemessage2
pushi.e 0
cmp.i.v EQ
bf [192]

:[191]
push.v self.menu
pushi.e 12
cmp.i.v EQ
b [193]

:[192]
push.e 0

:[193]
bf [195]

:[194]
push.s "obj_shop2_slash_Draw_0_gml_306_0"@28287
conv.s.v
push.s "\\E0What WEAPON&shalt thou&proffer?"@28288
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[195]
push.v self.sidemessage2
pushi.e 0
cmp.i.v EQ
bf [197]

:[196]
push.v self.menu
pushi.e 13
cmp.i.v EQ
b [198]

:[197]
push.e 0

:[198]
bf [200]

:[199]
push.s "obj_shop2_slash_Draw_0_gml_307_0"@28289
conv.s.v
push.s "\\E0What ARMOR&shalt thou&proffer?"@28290
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[200]
push.v self.sidemessage2
pushi.e 1
cmp.i.v EQ
bf [202]

:[201]
push.s "obj_shop2_slash_Draw_0_gml_308_0"@28291
conv.s.v
push.s "\\E5I shall&make use&of this!"@28292
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[202]
push.v self.sidemessage2
pushi.e 2
cmp.i.v EQ
bf [204]

:[203]
push.s "obj_shop2_slash_Draw_0_gml_309_0"@28293
conv.s.v
push.s "\\E6What?"@28294
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[204]
push.v self.sidemessage2
pushi.e 3
cmp.i.v EQ
bf [206]

:[205]
push.s "obj_shop2_slash_Draw_0_gml_310_0"@28295
conv.s.v
push.s "\\E6Er, NO&thank you."@28296
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[206]
push.v self.sidemessage2
pushi.e 4
cmp.i.v EQ
bf [208]

:[207]
push.s "obj_shop2_slash_Draw_0_gml_311_0"@28297
conv.s.v
push.s "\\E6What?"@28294
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[208]
pushi.e 64
conv.i.v
pushi.e 260
conv.i.v
pushi.e 450
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[209]
pushi.e 4
conv.i.v
call.i gml_Script_scr_shopmenu(argc=1)
popz.v
push.v self.menu
pushi.e 15
cmp.i.v EQ
bt [212]

:[210]
push.v self.menu
pushi.e 16
cmp.i.v EQ
bt [212]

:[211]
push.v self.menu
pushi.e 17
cmp.i.v EQ
b [213]

:[212]
push.e 1

:[213]
bf [215]

:[214]
pushi.e 1
pop.v.i self.menumax
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 290
conv.i.v
pushi.e 260
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.y1_off
pushi.e 260
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.y2_off
push.s "obj_shop2_slash_Draw_0_gml_323_0"@28298
conv.s.v
push.s "Sell it for"@27928
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushloc.v local.y1_off
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_328_0"@28299
conv.s.v
push.v self.sellvalue
call.i string(argc=1)
push.s "$~1 ?"@27875
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushloc.v local.y2_off
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_325_0"@28300
conv.s.v
push.s "Yes"@5613
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 340
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop2_slash_Draw_0_gml_326_0"@28301
conv.s.v
push.s "No"@2449
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 370
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 350
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
pushi.e 30
mul.i.v
add.v.i
pushi.e 450
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[215]
pushi.e 5
conv.i.v
call.i gml_Script_scr_shopmenu(argc=1)
popz.v
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [252]

:[216]
push.v self.sell
pushi.e 0
cmp.i.v EQ
bf [218]

:[217]
pushi.e 0
pop.v.i self.menu

:[218]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [220]

:[219]
push.v self.selling
pushi.e 0
cmp.i.v EQ
b [221]

:[220]
push.e 0

:[221]
bf [239]

:[222]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bf [223]

:[223]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [226]

:[224]
push.s "obj_shop2_slash_Draw_0_gml_353_0"@28302
conv.s.v
push.s "\\E5* See thou in the Dungeon^1, Worms!/%"@28303
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.friendly
pushi.e 1
cmp.i.v EQ
bf [226]

:[225]
push.s "obj_shop2_slash_Draw_0_gml_354_0"@28304
conv.s.v
push.s "\\E5* Come by any time^1, my good Worms!/%"@28305
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[226]
push.v self.sell
pushi.e 3
cmp.i.v EQ
bf [229]

:[227]
push.s "obj_shop2_slash_Draw_0_gml_358_0"@28306
conv.s.v
push.s "\\E0* I amst the Duke of Puzzles^1, Rouxls Kaard./"@28307
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_359_0"@28308
conv.s.v
push.s "\\E4* My hobbies includest calligraphy^1, lawkeeping^1, bugkeeping^1, cages.../"@28309
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_360_0"@28310
conv.s.v
push.s "\\E1* ... and long walks in the dungeon./"@28311
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_361_0"@28312
conv.s.v
push.s "\\E5* Artest thou one of my admirers^1, worm?/%"@28313
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.friendly
pushi.e 1
cmp.i.v EQ
bf [229]

:[228]
push.s "obj_shop2_slash_Draw_0_gml_364_0"@28314
conv.s.v
push.s "\\E5* By the way^1, no hard feelingst about earlier^1, right?/%"@28315
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[229]
push.v self.sell
pushi.e 4
cmp.i.v EQ
bf [232]

:[230]
push.s "obj_shop2_slash_Draw_0_gml_371_0"@28316
conv.s.v
push.s "\\E4* Hahaha!^1! So I might amasseth funds^1, Worms^1! An army of funds.../"@28317
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_372_0"@28318
conv.s.v
push.s "\\E1* So that I may crushest thou like Fermented Grapes^1, into a most delicious and adult beverage -/"@28319
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_373_0"@28320
conv.s.v
push.s "\\E6* Vengeance!^1! Ahahaha!!!/"@28321
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_374_0"@28322
conv.s.v
push.s "\\E5* Oh^1, how I amuse myself!!!/%"@28323
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.friendly
pushi.e 1
cmp.i.v EQ
bf [232]

:[231]
push.s "obj_shop2_slash_Draw_0_gml_378_0"@28324
conv.s.v
push.s "\\E2* Haha^1, why of course I wouldst sell to my compatriarts^1, the Heroes Of Legend!/"@28325
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_379_0"@28326
conv.s.v
push.s "\\E5* Earlier art but a Test of your Heroick Resolve!/"@28327
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_380_0"@28328
conv.s.v
push.s "\\E6* Rouxls is ALWAYS on the winning side!^1! Thou can bet on that!!!/%"@28329
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[232]
push.v self.sell
pushi.e 5
cmp.i.v EQ
bf [235]

:[233]
push.s "obj_shop2_slash_Draw_0_gml_386_0"@28330
conv.s.v
push.s "\\E6* Our Lorde King art a cruel and terrifying Monarcke!/"@28331
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_387_0"@28332
conv.s.v
push.s "\\E2* However^1, he is also Brilliant^1, for he decidedesteth to appoinst ME^1, as Duke of Puzzles,/"@28333
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_388_0"@28334
conv.s.v
push.s "\\E6* After pretty mucheth everyone else was firedst or placed inside a cage./"@28335
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_389_0"@28336
conv.s.v
push.s "\\E4* Truly, a benevolent ruler!/%"@28337
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.friendly
pushi.e 1
cmp.i.v EQ
bf [235]

:[234]
push.s "obj_shop2_slash_Draw_0_gml_392_0"@28338
conv.s.v
push.s "\\E6* Yes, the King^1! A terrible Man^1! An awful Monarcke^1!/"@28339
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_393_0"@28340
conv.s.v
push.s "\\E2* Never likedeth that Guye^1, really!/"@28341
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_394_0"@28342
conv.s.v
push.s "\\E3* I just envisionethed^1, perhaps..^1. If I acceptedst this High Ranking Positione.../"@28343
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_395_0"@28344
conv.s.v
push.s "\\E5* I could assist to overthroweth him from the Inside!/"@28345
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_396_0"@28346
conv.s.v
push.s "\\E6* ... What!^1? Cannot thou conceiveth of my plan?!?/%"@28347
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[235]
push.v self.sell
pushi.e 6
cmp.i.v EQ
bf [238]

:[236]
push.s "obj_shop2_slash_Draw_0_gml_402_0"@28348
conv.s.v
push.s "\\E0* His Son^1, on the other hand^1, is more troublesome than a fistful of fleas!/"@28349
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_403_0"@28350
conv.s.v
push.s "\\E1* He alwayst asks me the Worste Queries,/"@28351
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_404_0"@28352
conv.s.v
push.s "\\E3* And calleth me his \"Lesser Dad.\"/"@28353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_405_0"@28354
conv.s.v
push.s "\\E6* Our relation is NONE^1, you little water-beetle^1! I placate you for your Father's sake!/"@28355
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_406_0"@28356
conv.s.v
push.s "\\E6* I do not Wisheth to hear your MP3's^1! I would rather listen to the sweet song of Death!/"@28357
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_407_0"@28358
conv.s.v
push.s "\\E3* .../"@620
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_408_0"@28359
conv.s.v
push.s "\\E2* How is he^1, anyhow?/%"@28360
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.v self.friendly
pushi.e 1
cmp.i.v EQ
bf [238]

:[237]
push.s "obj_shop2_slash_Draw_0_gml_413_0"@28361
conv.s.v
push.s "\\E3* Perhaps my wording art a bit Harshe earlier... The King's offspring is a Darling!/"@28362
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_414_0"@28363
conv.s.v
push.s "\\E6* A strange and irritating darling!/"@28364
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_415_0"@28365
conv.s.v
push.s "\\E3* When his Father does not cook^1, his Son yells like a baby bird^1, until I feed him worms!/"@28366
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_shop2_slash_Draw_0_gml_416_0"@28367
conv.s.v
push.s "\\E6* Is this what it means to be High Ranking!?/%"@28368
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[238]
pushi.e 64
conv.i.v
pushi.e 270
conv.i.v
pushi.e 30
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.selling

:[239]
push.v self.selling
pushi.e 1
cmp.i.v EQ
bf [241]

:[240]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [242]

:[241]
push.e 0

:[242]
bf [252]

:[243]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [245]

:[244]
pushi.e 2
pop.v.i self.selling
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
b [252]

:[245]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bt [247]

:[246]
push.v self.sell
pushi.e 7
cmp.i.v EQ
b [248]

:[247]
push.e 1

:[248]
bf [250]

:[249]
pushi.e 0
pop.v.i self.menu
b [251]

:[250]
pushi.e 3
pop.v.i self.menu

:[251]
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.selling

:[252]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [260]

:[253]
push.v self.menu
pushi.e 11
cmp.i.v NEQ
bf [256]

:[254]
push.v self.menu
pushi.e 12
cmp.i.v NEQ
bf [256]

:[255]
push.v self.menu
pushi.e 13
cmp.i.v NEQ
b [257]

:[256]
push.e 0

:[257]
bf [260]

:[258]
push.i 166593
setowner.e
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
add.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.menumax
cmp.v.v GT
bf [260]

:[259]
pushi.e 0
conv.i.v
pushi.e -1
push.v self.menu
conv.v.i
pop.v.v [array]self.menuc

:[260]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [268]

:[261]
push.v self.menu
pushi.e 11
cmp.i.v NEQ
bf [264]

:[262]
push.v self.menu
pushi.e 12
cmp.i.v NEQ
bf [264]

:[263]
push.v self.menu
pushi.e 13
cmp.i.v NEQ
b [265]

:[264]
push.e 0

:[265]
bf [268]

:[266]
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
sub.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
pushi.e 0
cmp.i.v LT
bf [268]

:[267]
push.v self.menumax
pushi.e -1
push.v self.menu
conv.v.i
pop.v.v [array]self.menuc

:[268]
push.v self.menu
pushi.e 4
cmp.i.v LT
bt [270]

:[269]
push.v self.menu
pushi.e 10
cmp.i.v GTE
b [271]

:[270]
push.e 1

:[271]
bf [290]

:[272]
push.s "$"@13512
pushglb.v global.gold
call.i string(argc=1)
call.i string_hash_to_newline(argc=1)
add.v.s
pushi.e 420
conv.i.v
pushi.e 440
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [274]

:[273]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [275]

:[274]
push.e 1

:[275]
bf [290]

:[276]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 4
cmp.i.v LT
bf [290]

:[277]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "item"@229
cmp.s.v EQ
bf [279]

:[278]
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck(argc=1)
popz.v

:[279]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "armor"@232
cmp.s.v EQ
bf [281]

:[280]
pushi.e 0
conv.i.v
call.i gml_Script_scr_armorcheck_inventory(argc=1)
popz.v

:[281]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@231
cmp.s.v EQ
bf [283]

:[282]
pushi.e 0
conv.i.v
call.i gml_Script_scr_weaponcheck_inventory(argc=1)
popz.v

:[283]
push.s "dotumche"@6178
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.itemcount
pushi.e 10
cmp.i.v LT
bf [285]

:[284]
push.s "0"@3491
push.v self.itemcount
call.i string(argc=1)
add.v.s
pop.v.v self.roomstring
b [286]

:[285]
push.v self.itemcount
call.i string(argc=1)
pop.v.v self.roomstring

:[286]
push.v self.itemcount
pushi.e 0
cmp.i.v GT
bf [288]

:[287]
push.s "obj_shop2_slash_Draw_0_gml_482_0"@28369
conv.s.v
push.v self.roomstring
push.s "Space:~1"@28213
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushi.e 430
conv.i.v
pushi.e 520
conv.i.v
call.i draw_text(argc=3)
popz.v

:[288]
push.v self.itemcount
pushi.e 0
cmp.i.v EQ
bf [290]

:[289]
push.s "obj_shop2_slash_Draw_0_gml_481_0"@28370
conv.s.v
push.s "NO SPACE"@28215
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 430
conv.i.v
pushi.e 520
conv.i.v
call.i draw_text(argc=3)
popz.v

:[290]
push.v self.onebuffer
pushi.e 1
sub.i.v
pop.v.v self.onebuffer
push.v self.twobuffer
pushi.e 1
sub.i.v
pop.v.v self.twobuffer

:[end]