.localvar 2 arguments
.localvar 27870 y1_off 15175
.localvar 27871 y2_off 15176

:[0]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.guysiner
pushi.e 3
add.i.v
pop.v.v self.guysiner
push.v self.guysiner
pushi.e 860
cmp.i.v GTE
bf [2]

:[1]
push.v self.guysiner
pushi.e 860
sub.i.v
pop.v.v self.guysiner

:[2]
push.v self.shinetimer
push.e 1
add.i.v
pop.v.v self.shinetimer
pushi.e 15
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 0
cmp.i.v EQ
bf [7]

:[3]
push.v self.menu
pushi.e 1
cmp.i.v NEQ
bf [5]

:[4]
pushi.e 128
conv.i.v
pushi.e 200
conv.i.v
call.i random(argc=1)
pushi.e 20
add.i.v
pushi.e 540
conv.i.v
pushi.e 100
conv.i.v
call.i random_range(argc=2)
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
b [6]

:[5]
pushi.e 128
conv.i.v
pushi.e 200
conv.i.v
call.i random(argc=1)
pushi.e 20
add.i.v
pushi.e 390
conv.i.v
pushi.e 100
conv.i.v
call.i random_range(argc=2)
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim

:[6]
pushi.e 2439
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 0.2
push.v self.anim
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.depth
pushi.e 1
sub.i.v
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i self.shinetimer

:[7]
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
pushi.e 1
conv.i.v
pushi.e 2517
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
pushi.e -10
push.v self.siner
pushi.e 60
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.i
push.v self.guysiner
neg.v
pushi.e 0
conv.i.v
pushi.e 2518
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
pushi.e -10
push.v self.siner
pushi.e 60
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.i
push.v self.guysiner
neg.v
pushi.e 860
add.i.v
pushi.e 0
conv.i.v
pushi.e 2518
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
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2517
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushglb.v global.fe
pushi.e 0
cmp.i.v EQ
bf [11]

:[8]
push.v self.talksiner
push.e 1
add.i.v
pop.v.v self.talksiner
push.v self.talksiner
pushi.e 16
cmp.i.v GTE
bf [10]

:[9]
pushi.e 0
pop.v.i self.talksiner

:[10]
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
push.v self.shx
push.v self.talksiner
pushi.e 9
conv.i.d
div.d.v
pushi.e 2519
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [12]

:[11]
pushi.e 0
pop.v.i self.talksiner
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
push.v self.shx
pushglb.v global.fe
pushi.e 1
sub.i.v
pushi.e 2519
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[12]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 500
conv.i.v
pushi.e 900
conv.i.v
pushi.e 240
conv.i.v
pushi.e -10
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
bt [14]

:[13]
push.v self.menu
pushi.e 10
cmp.i.v GTE
b [15]

:[14]
push.e 1

:[15]
bf [17]

:[16]
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

:[17]
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [19]

:[18]
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

:[19]
push.v self.menu
pushi.e 0
cmp.i.v EQ
bf [35]

:[20]
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
bf [24]

:[21]
pushi.e 6
pop.v.i global.typer
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_79_0"@28520
conv.s.v
push.s "\\E0* Don't be blue.&* We're here for you."@28521
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.mainmessage
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_81_0"@28522
conv.s.v
push.s "\\E0* Welcome to Color&Cafe.&* Let us warm your day."@28523
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[23]
pushi.e 64
conv.i.v
pushi.e 270
conv.i.v
pushi.e 30
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[24]
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
push.s "obj_shop1_slash_Draw_0_gml_106_0"@27848
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
push.s "obj_shop1_slash_Draw_0_gml_107_0"@27850
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
push.s "obj_shop1_slash_Draw_0_gml_108_0"@27852
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
push.s "obj_shop1_slash_Draw_0_gml_109_0"@27853
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
bf [35]

:[25]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 1
pop.v.i self.mainmessage
pushi.e 64
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1
pop.v.i self.menu

:[29]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 10
pop.v.i self.menu
pushi.e 0
pop.v.i self.sidemessage

:[31]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
pushi.e 3
pop.v.i self.menu

:[33]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [35]

:[34]
pushi.e 2
pop.v.i self.sell
pushi.e 4
pop.v.i self.menu

:[35]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [37]

:[36]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [38]

:[37]
push.e 1

:[38]
bf [124]

:[39]
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

:[40]
push.v self.i
push.v self.itemtotal
cmp.v.v LT
bf [42]

:[41]
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
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_120_0"@28524
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
b [40]

:[42]
push.s "obj_shop1_slash_Draw_0_gml_139_0"@27855
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
bf [76]

:[43]
pushi.e 4
pop.v.i self.menumax
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [59]

:[44]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_132_0"@28525
conv.s.v
push.s "\\E0Our menu&is&specially&prepared."@28526
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[46]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
pushi.e 10
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self._rr
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_136_0"@28527
conv.s.v
push.s "\\E0Queen&thanks you&for your&patronage."@28528
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[48]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_139_0"@28529
conv.s.v
push.s "\\E0Take your&time.&We'll be&waiting."@28530
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[50]
push.v self.sidemessage
pushi.e 3
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_140_0"@28531
conv.s.v
push.s "\\E0You can't&afford it.&... maybe&next time?"@28532
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[52]
push.v self.sidemessage
pushi.e 4
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_141_0"@28533
conv.s.v
push.s "\\E0Seems your&bags are&full. Shall&we assist?"@28534
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[54]
push.v self.sidemessage
pushi.e 5
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_142_0"@28535
conv.s.v
push.s "\\E2Thanks, it'll&be in your&STORAGE."@27867
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[56]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
push.i 231251
setowner.e
push.s "obj_shop1_slash_Draw_0_gml_153_0"@27868
conv.s.v
push.s "/*"@27869
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[58]
pushi.e 64
conv.i.v
pushi.e 260
conv.i.v
pushi.e 450
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[59]
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
bf [61]

:[60]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [62]

:[61]
push.e 0

:[62]
bf [67]

:[63]
pushi.e 2
pop.v.i self.menu
pushi.e 2
pop.v.i self.onebuffer
pushi.e 64
pushenv [65]

:[64]
call.i instance_destroy(argc=0)
popz.v

:[65]
popenv [64]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
push.v self.menumax
cmp.v.v EQ
bf [67]

:[66]
pushi.e 0
pop.v.i self.menu

:[67]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [70]

:[68]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [70]

:[69]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [71]

:[70]
push.e 0

:[71]
bf [75]

:[72]
pushi.e 0
pop.v.i self.menu
pushi.e 2
pop.v.i self.twobuffer
pushi.e 220
pop.v.i self.minimenuy
pushi.e 64
pushenv [74]

:[73]
call.i instance_destroy(argc=0)
popz.v

:[74]
popenv [73]

:[75]
push.i 166593
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuc

:[76]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [108]

:[77]
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
push.s "obj_shop1_slash_Draw_0_gml_167_0"@27872
conv.s.v
push.s "Buy it for"@27873
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushloc.v local.y1_off
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_160_0"@28536
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
push.s "obj_shop1_slash_Draw_0_gml_169_0"@27876
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
push.s "obj_shop1_slash_Draw_0_gml_170_0"@27877
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
bf [79]

:[78]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
pushi.e 1
pop.v.i self.menu
pushi.e 2
pop.v.i self.sidemessage
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[82]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [85]

:[83]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [85]

:[84]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [86]

:[85]
push.e 0

:[86]
bf [108]

:[87]
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [105]

:[88]
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
bf [90]

:[89]
pushi.e 1
pop.v.i self.afford

:[90]
push.v self.afford
pushi.e 1
cmp.i.v EQ
bf [104]

:[91]
pushi.e 0
pop.v.i self._pocketed
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "item"@229
cmp.s.v EQ
bf [93]

:[92]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_itemget(argc=1)
popz.v

:[93]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@231
cmp.s.v EQ
bf [95]

:[94]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_weaponget(argc=1)
popz.v

:[95]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "armor"@232
cmp.s.v EQ
bf [97]

:[96]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_armorget(argc=1)
popz.v

:[97]
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [101]

:[98]
push.v global.gold
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.buyvalue
sub.v.v
pop.v.v global.gold
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self._pocketed
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
pushi.e 5
pop.v.i self.sidemessage
b [101]

:[100]
pushi.e 1
pop.v.i self.sidemessage

:[101]
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [103]

:[102]
pushi.e 4
pop.v.i self.sidemessage

:[103]
b [105]

:[104]
pushi.e 3
pop.v.i self.sidemessage

:[105]
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [107]

:[106]
pushi.e 2
pop.v.i self.sidemessage

:[107]
pushi.e 1
pop.v.i self.menu

:[108]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 4
cmp.i.v NEQ
bf [120]

:[109]
push.v self.minimenuy
pushi.e 20
cmp.i.v LTE
bf [111]

:[110]
pushi.e 20
pop.v.i self.minimenuy

:[111]
push.v self.minimenuy
pushi.e 20
cmp.i.v GT
bf [113]

:[112]
push.v self.minimenuy
pushi.e 5
sub.i.v
pop.v.v self.minimenuy

:[113]
push.v self.minimenuy
pushi.e 50
cmp.i.v GT
bf [115]

:[114]
push.v self.minimenuy
pushi.e 5
sub.i.v
pop.v.v self.minimenuy

:[115]
push.v self.minimenuy
pushi.e 100
cmp.i.v GT
bf [117]

:[116]
push.v self.minimenuy
pushi.e 8
sub.i.v
pop.v.v self.minimenuy

:[117]
push.v self.minimenuy
pushi.e 150
cmp.i.v GT
bf [119]

:[118]
push.v self.minimenuy
pushi.e 10
sub.i.v
pop.v.v self.minimenuy

:[119]
b [122]

:[120]
push.v self.minimenuy
pushi.e 200
cmp.i.v LT
bf [122]

:[121]
push.v self.minimenuy
pushi.e 40
add.i.v
pop.v.v self.minimenuy

:[122]
push.v self.minimenuy
pushi.e 200
cmp.i.v GTE
bf [124]

:[123]
pushi.e 200
pop.v.i self.minimenuy

:[124]
push.v self.menu
pushi.e 3
cmp.i.v EQ
bf [153]

:[125]
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
push.s "obj_shop1_slash_Draw_0_gml_217_0"@27878
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
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_213_0"@28537
conv.s.v
push.s "Mission Statement"@28538
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 300
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_214_0"@28539
conv.s.v
push.s "Rouxls Kaard"@8145
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 340
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 5
cmp.i.v GTE
bf [127]

:[126]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v LT
b [128]

:[127]
push.e 0

:[128]
bf [130]

:[129]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_222_0"@28540
conv.s.v
push.s "Basement"@28541
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 380
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
b [133]

:[130]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v EQ
bf [132]

:[131]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_227_0"@28542
conv.s.v
push.s "Basement Robot"@28543
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 380
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
b [133]

:[132]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_217_0"@28544
conv.s.v
push.s "Outfit"@28545
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 380
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v

:[133]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_240_0"@27893
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
bf [135]

:[134]
push.i 231251
setowner.e
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_236_0"@28546
conv.s.v
push.s "Chatting&would be&our&pleasure."@28547
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

:[135]
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
bf [137]

:[136]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [138]

:[137]
push.e 0

:[138]
bf [145]

:[139]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 64
pushenv [141]

:[140]
call.i instance_destroy(argc=0)
popz.v

:[141]
popenv [140]
pushi.e -1
pushi.e 3
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [143]

:[142]
pushi.e -1
pushi.e 3
push.v [array]self.menuc
pushi.e 3
add.i.v
pop.v.v self.sell
pushi.e 4
pop.v.i self.menu
b [144]

:[143]
pushi.e 0
pop.v.i self.menu

:[144]
b [153]

:[145]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [148]

:[146]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [148]

:[147]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [149]

:[148]
push.e 0

:[149]
bf [153]

:[150]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.menu
pushi.e 64
pushenv [152]

:[151]
call.i instance_destroy(argc=0)
popz.v

:[152]
popenv [151]

:[153]
push.v self.menu
pushi.e 10
cmp.i.v EQ
bf [203]

:[154]
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
push.s "obj_shop1_slash_Draw_0_gml_278_0"@27896
conv.s.v
push.s "Sell Items"@27897
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 260
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_279_0"@27898
conv.s.v
push.s "Sell Weapons"@27899
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 300
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_280_0"@27900
conv.s.v
push.s "Sell Armor"@27901
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 340
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_273_0"@28548
conv.s.v
push.s "Sell Pocket Items"@27903
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 380
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_274_0"@28549
conv.s.v
push.s "Return"@20999
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
bf [162]

:[155]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [157]

:[156]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_278_0"@28550
conv.s.v
push.s "Queen...&Makes us&buy trash&for her."@28551
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[157]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [159]

:[158]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_279_0"@28552
conv.s.v
push.s "That's all.&Need any&help with&your bags?"@28553
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[159]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [161]

:[160]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_280_0"@28554
conv.s.v
push.s "It seems&you don't&have&anything."@28555
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[161]
pushi.e 64
conv.i.v
pushi.e 260
conv.i.v
pushi.e 460
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[162]
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
bf [164]

:[163]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [165]

:[164]
push.e 0

:[165]
bf [195]

:[166]
pushi.e 0
pop.v.i self.pagemax
pushi.e 0
pop.v.i self.sidemessage2
pushi.e 2
pop.v.i self.onebuffer
pushi.e 64
pushenv [168]

:[167]
call.i instance_destroy(argc=0)
popz.v

:[168]
popenv [167]
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
bf [174]

:[169]
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [171]

:[170]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[171]
push.v self.itemcount
pop.v.v self.nothingcount
call.i gml_Script_scr_iteminfo_all(argc=0)
popz.v
push.s "item"@229
pop.v.s self.selltype
pushi.e 12
pop.v.i self.selltotal
pushi.e 0
pop.v.i self.i

:[172]
push.v self.i
push.v self.selltotal
cmp.v.v LT
bf [174]

:[173]
push.i 166616
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.itemvalue
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemsellvalue
push.i 166591
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.itemnameb
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemsellname
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [172]

:[174]
push.v self.idealmenu
pushi.e 12
cmp.i.v EQ
bf [178]

:[175]
pushi.e 0
conv.i.v
call.i gml_Script_scr_weaponcheck_inventory(argc=1)
popz.v
push.v self.itemcount
pushi.e 48
cmp.i.v EQ
bf [177]

:[176]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[177]
call.i gml_Script_scr_weaponinfo_all(argc=0)
popz.v

:[178]
push.v self.idealmenu
pushi.e 13
cmp.i.v EQ
bf [182]

:[179]
pushi.e 0
conv.i.v
call.i gml_Script_scr_armorcheck_inventory(argc=1)
popz.v
push.v self.itemcount
pushi.e 48
cmp.i.v EQ
bf [181]

:[180]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[181]
call.i gml_Script_scr_armorinfo_all(argc=0)
popz.v

:[182]
push.v self.idealmenu
pushi.e 14
cmp.i.v EQ
bf [189]

:[183]
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck_pocket(argc=1)
popz.v
push.v self.itemcount
pushi.e -5
pushi.e 64
push.v [array]self.flag
cmp.v.v EQ
bf [185]

:[184]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[185]
push.s "pocket"@9747
pop.v.s self.selltype
pushi.e 0
pop.v.i self.nothingcount
pushi.e -5
pushi.e 64
push.v [array]self.flag
pop.v.v self.selltotal
pushi.e 0
pop.v.i self.i

:[186]
push.v self.i
pushi.e -5
pushi.e 64
push.v [array]self.flag
cmp.v.v LT
bf [188]

:[187]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.pocketitem
call.i gml_Script_scr_iteminfo(argc=1)
popz.v
push.i 166616
setowner.e
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemsellvalue
push.i 166591
setowner.e
push.v self.itemnameb
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemsellname
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [186]

:[188]
pushi.e 11
pop.v.i self.idealmenu

:[189]
pushi.e -1
pushi.e 10
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [193]

:[190]
push.v self.can
pushi.e 1
cmp.i.v EQ
bf [192]

:[191]
push.v self.idealmenu
pop.v.v self.menu

:[192]
pushi.e 0
pop.v.i self.sidemessage1
b [194]

:[193]
pushi.e 0
pop.v.i self.menu

:[194]
pushi.e 0
pop.v.i self.submenu
push.i 172495
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.submenuc

:[195]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [198]

:[196]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [198]

:[197]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [199]

:[198]
push.e 0

:[199]
bf [203]

:[200]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.menu
pushi.e 64
pushenv [202]

:[201]
call.i instance_destroy(argc=0)
popz.v

:[202]
popenv [201]

:[203]
push.v self.menu
pushi.e 11
cmp.i.v EQ
bt [206]

:[204]
push.v self.menu
pushi.e 12
cmp.i.v EQ
bt [206]

:[205]
push.v self.menu
pushi.e 13
cmp.i.v EQ
b [207]

:[206]
push.e 1

:[207]
bf [233]

:[208]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [233]

:[209]
push.v self.sidemessage2
pushi.e 0
cmp.i.v EQ
bf [211]

:[210]
push.v self.menu
pushi.e 11
cmp.i.v EQ
b [212]

:[211]
push.e 0

:[212]
bf [214]

:[213]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_366_0"@28556
conv.s.v
push.s "An ITEM&to delight&our Queen?"@28557
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[214]
push.v self.sidemessage2
pushi.e 0
cmp.i.v EQ
bf [216]

:[215]
push.v self.menu
pushi.e 12
cmp.i.v EQ
b [217]

:[216]
push.e 0

:[217]
bf [219]

:[218]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_367_0"@28558
conv.s.v
push.s "A WEAPON&to protect&our Queen?"@28559
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[219]
push.v self.sidemessage2
pushi.e 0
cmp.i.v EQ
bf [221]

:[220]
push.v self.menu
pushi.e 13
cmp.i.v EQ
b [222]

:[221]
push.e 0

:[222]
bf [224]

:[223]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_368_0"@28560
conv.s.v
push.s "ARMOR&to adorn&our Queen?"@28561
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[224]
push.v self.sidemessage2
pushi.e 1
cmp.i.v EQ
bf [226]

:[225]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_369_0"@28562
conv.s.v
push.s "I'm sure&she's going&to enjoy&this."@28563
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[226]
push.v self.sidemessage2
pushi.e 2
cmp.i.v EQ
bf [228]

:[227]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_370_0"@28564
conv.s.v
push.s "Changed&your mind?&We'll&wait."@28565
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[228]
push.v self.sidemessage2
pushi.e 3
cmp.i.v EQ
bf [230]

:[229]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_371_0"@28566
conv.s.v
push.s "There are&some things&we cannot&buy."@28567
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[230]
push.v self.sidemessage2
pushi.e 4
cmp.i.v EQ
bf [232]

:[231]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_372_0"@28568
conv.s.v
push.s "Black is&the color&of&sorrow."@28569
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[232]
pushi.e 64
conv.i.v
pushi.e 260
conv.i.v
pushi.e 450
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[233]
pushi.e 4
conv.i.v
call.i gml_Script_scr_shopmenu(argc=1)
popz.v
push.v self.menu
pushi.e 15
cmp.i.v EQ
bt [236]

:[234]
push.v self.menu
pushi.e 16
cmp.i.v EQ
bt [236]

:[235]
push.v self.menu
pushi.e 17
cmp.i.v EQ
b [237]

:[236]
push.e 1

:[237]
bf [239]

:[238]
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
push.s "obj_shop1_slash_Draw_0_gml_365_0"@27927
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
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_387_0"@28570
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
push.s "obj_shop1_slash_Draw_0_gml_367_0"@27930
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
push.s "obj_shop1_slash_Draw_0_gml_368_0"@27931
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

:[239]
pushi.e 5
conv.i.v
call.i gml_Script_scr_shopmenu(argc=1)
popz.v
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [280]

:[240]
push.v self.sell
pushi.e 0
cmp.i.v EQ
bf [242]

:[241]
pushi.e 0
pop.v.i self.menu

:[242]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [244]

:[243]
push.v self.selling
pushi.e 0
cmp.i.v EQ
b [245]

:[244]
push.e 0

:[245]
bf [267]

:[246]
pushi.e 1
pop.v.i self.selling
push.v self.sell
pushi.e 1
cmp.i.v EQ
bf [247]

:[247]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [249]

:[248]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_415_0"@28571
conv.s.v
push.s "\\E0* Please come again.&* We'll be waiting for you&with rose-tinted glasses.../%"@28572
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[249]
push.v self.sell
pushi.e 3
cmp.i.v EQ
bf [251]

:[250]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_421_0"@28573
conv.s.v
push.s "* Ah^1, forgive me for not introducing myself sooner^1, young masters./"@28574
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_422_0"@28575
conv.s.v
push.s "* I am Swatch^1, Our Lady Grace's head butler./"@28576
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_423_0"@28577
conv.s.v
push.s "* When we are not attending to her needs^1, I and the Queen's other staff^1,/"@28578
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_424_0"@28579
conv.s.v
push.s "* Use this room as our humble yet colorful gift-shop-slash-cafe./"@28580
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_425_0"@28581
conv.s.v
push.s "* Please^1, shop to your heart's content. We are eager to serve your any wish./%"@28582
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[251]
push.v self.sell
pushi.e 4
cmp.i.v EQ
bf [253]

:[252]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_431_0"@28583
conv.s.v
push.s "* Does a woman of Our Lady Grace's caliber not deserve -/"@28584
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_432_0"@28585
conv.s.v
push.s "* A coven of powerful men and women to dote upon her every movement?/"@28586
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_433_0"@28587
conv.s.v
push.s "* To have rap anthems written to her kindness --/"@28588
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_434_0"@28589
conv.s.v
push.s "* Which are then bitcrushed beyond recognition to make them more 'computer'?/"@28590
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_435_0"@28591
conv.s.v
push.s "* To have melons^1, smashed^1, with karate chops^1, repeatedly^1, for no apparent reason?/"@28592
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_436_0"@28593
conv.s.v
push.s "* To have barrels^1, thrown^1, from the rafters --/"@28594
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_437_0"@28595
conv.s.v
push.s "* And make us smash them all with karate chops before the timer runs out?/"@28596
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_438_0"@28597
conv.s.v
push.s "* But the barrels^1, are full of melons^1, and we have to smash those too?/"@28598
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_439_0"@28599
conv.s.v
push.s "* Yes. The answer is..^1. yes./%"@28600
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[253]
push.v self.sell
pushi.e 5
cmp.i.v EQ
bf [257]

:[254]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
bf [256]

:[255]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_447_0"@28601
conv.s.v
push.s "* Rouxls? I am afraid I am not familiar with a guest of that moniker.../"@28602
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_448_0"@28603
conv.s.v
push.s "* Ah^1, wait. Are you perchance referring to that unbearable -/"@28604
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_449_0"@28605
conv.s.v
push.s "* Err^1, UNIQUE Man who barged in here and demanded to be made \"Butler Supremeth?\"/"@28606
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_450_0"@28607
conv.s.v
push.s "* I am afraid that person..^1. is now banned from this establishment./"@28608
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_451_0"@28609
conv.s.v
push.s "* And may have suffered injuries as a result of his^1, err..^1. rather swift ejection./"@28610
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_452_0"@28611
conv.s.v
push.s "* Please do not mention him again./"@28612
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_453_0"@28613
conv.s.v
push.s "* We are still cleaning up the worms he left on the floor./%"@28614
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [257]

:[256]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_457_0"@28615
conv.s.v
push.s "* Oh^1, you defeated that simpleton? Wonderful^1, wonderful./"@28616
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_458_0"@28617
conv.s.v
push.s "* After he stole our flower display for one of his \"boo-kettes^1,\"/"@28618
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_459_0"@28619
conv.s.v
push.s "* Tasque Manager told me she saw him in the hallway^1,/"@28620
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_460_0"@28621
conv.s.v
push.s "* Where^1, opening with \"Ah^1, thou muste be 50`% Likelye to be Queene\"^1,/"@28622
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_461_0"@28623
conv.s.v
push.s "* He thrust the vase upon her^1, and asked to be her \"minion for life.\"/"@28624
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_462_0"@28625
conv.s.v
push.s "* ..^1. he was promptly electrocuted to the ground./"@28626
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_463_0"@28627
conv.s.v
push.s "* Well. Enough of the unpleasantries. Would you like a toasted marshmallow?/%"@28628
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[257]
push.v self.sell
pushi.e 6
cmp.i.v EQ
bf [266]

:[258]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 5
cmp.i.v GTE
bf [260]

:[259]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v LT
b [261]

:[260]
push.e 0

:[261]
bf [263]

:[262]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_480_0"@28629
conv.s.v
push.s "* What? Basement? There's no basement here./"@28630
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_481_0"@28631
conv.s.v
push.s "* You need to relax. Have a drink^1, and talk softly.../"@28632
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_482_0"@28633
conv.s.v
push.s "* You're bothering the other customers./%"@28634
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [266]

:[263]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v EQ
bf [265]

:[264]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_487_0"@28635
conv.s.v
push.s "* ..^1. So that's what happened./"@28636
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_488_0"@28637
conv.s.v
push.s "* .../"@897
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_489_0"@28638
conv.s.v
push.s "* That robot was the embodiment of a Lightner's dream./"@28639
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_490_0"@28640
conv.s.v
push.s "* A dream I helped create..^1. once./"@28641
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_491_0"@28642
conv.s.v
push.s "* Splashing color from the motion of their hand./"@28643
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_492_0"@28644
conv.s.v
push.s "* The Lightner filled it with their own hope^1, giving it an incredible power./"@28645
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_493_0"@28646
conv.s.v
push.s "* ..^1. but^1, in the end^1, nothing ever came of it./"@28647
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_494_0"@28648
conv.s.v
push.s "* And it was left in the basement with the rest of the corrupted data./"@28649
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_495_0"@28650
conv.s.v
push.s "* ..^1. But that crooked salesman^1! Somehow^1, he learned about the robot^1,/"@28651
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_496_0"@28652
conv.s.v
push.s "* And thought he could use its power to fulfill his own twisted dreams./"@28653
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_497_0"@28654
conv.s.v
push.s "* What a pity. To think he was once a valued customer.../%"@28655
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [266]

:[265]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_472_0"@28656
conv.s.v
push.s "* Ah^1, my outfit. Yes^1, the monochrome look is quite suitable^1, isn't it?/"@28657
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_473_0"@28658
conv.s.v
push.s "* Black suit^1, colored glasses. Many people have failed to imitate this look./"@28659
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_474_0"@28660
conv.s.v
push.s "* Some even going so far as to attempt to impersonate me.../"@28661
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_475_0"@28662
conv.s.v
push.s "* In order to get the..^1. Oh^1, nevermind. Macaron?/%"@28663
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[266]
pushi.e 64
conv.i.v
pushi.e 270
conv.i.v
pushi.e 30
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[267]
push.v self.selling
pushi.e 1
cmp.i.v EQ
bf [269]

:[268]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [270]

:[269]
push.e 0

:[270]
bf [280]

:[271]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [273]

:[272]
pushi.e 2
pop.v.i self.selling
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
b [280]

:[273]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bt [275]

:[274]
push.v self.sell
pushi.e 7
cmp.i.v EQ
b [276]

:[275]
push.e 1

:[276]
bf [278]

:[277]
pushi.e 0
pop.v.i self.menu
b [279]

:[278]
pushi.e 3
pop.v.i self.menu

:[279]
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.selling

:[280]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [288]

:[281]
push.v self.menu
pushi.e 11
cmp.i.v NEQ
bf [284]

:[282]
push.v self.menu
pushi.e 12
cmp.i.v NEQ
bf [284]

:[283]
push.v self.menu
pushi.e 13
cmp.i.v NEQ
b [285]

:[284]
push.e 0

:[285]
bf [288]

:[286]
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
bf [288]

:[287]
pushi.e 0
conv.i.v
pushi.e -1
push.v self.menu
conv.v.i
pop.v.v [array]self.menuc

:[288]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [296]

:[289]
push.v self.menu
pushi.e 11
cmp.i.v NEQ
bf [292]

:[290]
push.v self.menu
pushi.e 12
cmp.i.v NEQ
bf [292]

:[291]
push.v self.menu
pushi.e 13
cmp.i.v NEQ
b [293]

:[292]
push.e 0

:[293]
bf [296]

:[294]
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
bf [296]

:[295]
push.v self.menumax
pushi.e -1
push.v self.menu
conv.v.i
pop.v.v [array]self.menuc

:[296]
push.v self.menu
pushi.e 4
cmp.i.v LT
bt [298]

:[297]
push.v self.menu
pushi.e 10
cmp.i.v GTE
b [299]

:[298]
push.e 1

:[299]
bf [318]

:[300]
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
bt [302]

:[301]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [303]

:[302]
push.e 1

:[303]
bf [318]

:[304]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 4
cmp.i.v LT
bf [318]

:[305]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "item"@229
cmp.s.v EQ
bf [307]

:[306]
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck_inventory_and_pocket(argc=1)
popz.v

:[307]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "armor"@232
cmp.s.v EQ
bf [309]

:[308]
pushi.e 0
conv.i.v
call.i gml_Script_scr_armorcheck_inventory(argc=1)
popz.v

:[309]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@231
cmp.s.v EQ
bf [311]

:[310]
pushi.e 0
conv.i.v
call.i gml_Script_scr_weaponcheck_inventory(argc=1)
popz.v

:[311]
push.s "dotumche"@6178
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.itemcount
pushi.e 10
cmp.i.v LT
bf [313]

:[312]
push.s "0"@3491
push.v self.itemcount
call.i string(argc=1)
add.v.s
pop.v.v self.roomstring
b [314]

:[313]
push.v self.itemcount
call.i string(argc=1)
pop.v.v self.roomstring

:[314]
push.v self.itemcount
pushi.e 0
cmp.i.v GT
bf [316]

:[315]
push.s "obj_shop_ch2_swatch_slash_Draw_0_gml_557_0"@28664
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

:[316]
push.v self.itemcount
pushi.e 0
cmp.i.v EQ
bf [318]

:[317]
push.s "obj_shop1_slash_Draw_0_gml_571_0"@28214
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

:[318]
push.v self.onebuffer
pushi.e 1
sub.i.v
pop.v.v self.onebuffer
push.v self.twobuffer
pushi.e 1
sub.i.v
pop.v.v self.twobuffer

:[end]