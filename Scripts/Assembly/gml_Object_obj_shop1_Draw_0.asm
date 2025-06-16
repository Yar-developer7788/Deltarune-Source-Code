.localvar 2 arguments
.localvar 27870 y1_off 15113
.localvar 27871 y2_off 15114
.localvar 28053 show_jevil 15119
.localvar 28119 normal_post_plot 15120
.localvar 28164 have_jevil 15121
.localvar 28165 sentence_end 15122
.localvar 28182 first_line 15123

:[0]
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
pushi.e 3131
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
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
pushi.e 2
conv.i.v
pushi.e 3131
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [2]

:[1]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [13]

:[4]
push.v self.shopcharx
pushi.e -20
cmp.i.v GT
bf [6]

:[5]
push.v self.shopcharx
pushi.e 4
sub.i.v
pop.v.v self.shopcharx

:[6]
push.v self.shopcharx
pushi.e -40
cmp.i.v GT
bf [8]

:[7]
push.v self.shopcharx
pushi.e 4
sub.i.v
pop.v.v self.shopcharx

:[8]
push.v self.shopcharx
pushi.e -80
cmp.i.v GT
bf [10]

:[9]
push.v self.shopcharx
pushi.e 4
sub.i.v
pop.v.v self.shopcharx

:[10]
push.v self.shopcharx
pushi.e -80
cmp.i.v LTE
bf [12]

:[11]
pushi.e -80
pop.v.i self.shopcharx

:[12]
b [21]

:[13]
push.v self.shopcharx
pushi.e -50
cmp.i.v LT
bf [15]

:[14]
push.v self.shopcharx
pushi.e 4
add.i.v
pop.v.v self.shopcharx

:[15]
push.v self.shopcharx
pushi.e -30
cmp.i.v LT
bf [17]

:[16]
push.v self.shopcharx
pushi.e 4
add.i.v
pop.v.v self.shopcharx

:[17]
push.v self.shopcharx
pushi.e 0
cmp.i.v LT
bf [19]

:[18]
push.v self.shopcharx
pushi.e 4
add.i.v
pop.v.v self.shopcharx

:[19]
push.v self.shopcharx
pushi.e 0
cmp.i.v GT
bf [21]

:[20]
pushi.e 0
pop.v.i self.shopcharx

:[21]
pushi.e 0
pop.v.i self.talkanim
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[22]
push.v 64.pos
push.v 64.length
cmp.v.v LT
bf [26]

:[23]
push.v self.talkbuffer
pushi.e 0
cmp.i.v LT
bf [25]

:[24]
pushi.e 0
pop.v.i self.talkfacer

:[25]
pushi.e 16
pop.v.i self.talkbuffer
pushi.e 1
pop.v.i self.talkanim
pushi.e 0
pop.v.i self.idletimer
pushi.e 0
pop.v.i self.idlefacer
push.v self.talkfacer
push.d 0.2
add.d.v
pop.v.v self.talkfacer

:[26]
pushi.e 2496
pop.v.i self.shopkeepsprite
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushi.e 2497
pop.v.i self.shopkeepsprite

:[28]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [30]

:[29]
pushi.e 2498
pop.v.i self.shopkeepsprite

:[30]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [32]

:[31]
pushi.e 2499
pop.v.i self.shopkeepsprite

:[32]
pushi.e 0
pop.v.i self.qualify
pushglb.v global.fe
pushi.e 0
cmp.i.v NEQ
bf [34]

:[33]
push.v self.talkbuffer
pushi.e 0
cmp.i.v LT
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 0
pop.v.i self.talkbuffer

:[37]
push.v self.talkbuffer
pushi.e 0
cmp.i.v GTE
bf [42]

:[38]
push.v self.talkbuffer
pushi.e 16
cmp.i.v LT
bf [41]

:[39]
push.v self.talkfacer
pushi.e 1
add.i.v
pushi.e 3
mod.i.v
pushi.e 0
cmp.i.v NEQ
bf [41]

:[40]
push.v self.talkfacer
push.d 0.2
add.d.v
pop.v.v self.talkfacer

:[41]
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
pushi.e 34
conv.i.v
push.v self.shopcharx
pushi.e 160
add.i.v
push.v self.talkfacer
push.v self.shopkeepsprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
pop.v.i self.qualify

:[42]
push.v self.qualify
pushi.e 0
cmp.i.v EQ
bf [48]

:[43]
push.v self.idletimer
pushi.e 1
add.i.v
pop.v.v self.idletimer
push.v self.idletimer
pushi.e 60
cmp.i.v GTE
bf [45]

:[44]
push.v self.idlefacer
push.d 0.2
add.d.v
pop.v.v self.idlefacer

:[45]
push.v self.idlefacer
pushi.e 5
cmp.i.v GTE
bf [47]

:[46]
pushi.e 0
pop.v.i self.idletimer
pushi.e 0
pop.v.i self.idlefacer

:[47]
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
pushi.e 34
conv.i.v
push.v self.shopcharx
pushi.e 160
add.i.v
push.v self.idlefacer
pushi.e 2495
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[48]
push.v self.talkbuffer
pushi.e 1
sub.i.v
pop.v.v self.talkbuffer
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
bt [50]

:[49]
push.v self.menu
pushi.e 10
cmp.i.v GTE
b [51]

:[50]
push.e 1

:[51]
bf [53]

:[52]
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

:[53]
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [55]

:[54]
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

:[55]
push.v self.menu
pushi.e 0
cmp.i.v EQ
bf [75]

:[56]
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
bf [60]

:[57]
pushi.e 6
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_shop1_slash_Draw_0_gml_98_0"@27844
conv.s.v
push.s "\\E0* Take your time..^1.&* Ain't like it's&better spent."@27845
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.mainmessage
pushi.e 0
cmp.i.v EQ
bf [59]

:[58]
push.s "obj_shop1_slash_Draw_0_gml_99_0"@27846
conv.s.v
push.s "\\E0* Hee hee..^1.&* Welcome, travellers."@27847
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[59]
pushi.e 64
conv.i.v
pushi.e 270
conv.i.v
pushi.e 30
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[60]
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
bf [75]

:[61]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 1
pop.v.i self.mainmessage
pushi.e 64
pushenv [63]

:[62]
call.i instance_destroy(argc=0)
popz.v

:[63]
popenv [62]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
pushi.e 1
pop.v.i self.menu

:[65]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
pushi.e 10
pop.v.i self.menu
pushi.e 0
pop.v.i self.sidemessage

:[67]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 2
cmp.i.v EQ
bf [73]

:[68]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
pushi.e 3
pop.v.i self.menu

:[70]
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [72]

:[71]
pushi.e 4
pop.v.i self.menu

:[72]
pushi.e 10
pop.v.i self.sell

:[73]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [75]

:[74]
pushi.e 2
pop.v.i self.sell
pushi.e 4
pop.v.i self.menu

:[75]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [77]

:[76]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [78]

:[77]
push.e 1

:[78]
bf [164]

:[79]
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

:[80]
push.v self.i
push.v self.itemtotal
cmp.v.v LT
bf [82]

:[81]
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
push.s "obj_shop1_slash_Draw_0_gml_143_0"@27854
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
b [80]

:[82]
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
bf [116]

:[83]
pushi.e 4
pop.v.i self.menumax
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [99]

:[84]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_shop1_slash_Draw_0_gml_148_0"@27856
conv.s.v
push.s "\\E0What do&you like&to buy?"@27857
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[86]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_shop1_slash_Draw_0_gml_149_0"@27858
conv.s.v
push.s "\\E2Thanks for&that."@27859
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[88]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_shop1_slash_Draw_0_gml_150_0"@27860
conv.s.v
push.s "\\E0What,&not good&enough?"@27861
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[90]
push.v self.sidemessage
pushi.e 3
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_shop1_slash_Draw_0_gml_151_0"@27862
conv.s.v
push.s "\\E3Not&enough&money."@27863
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[92]
push.v self.sidemessage
pushi.e 4
cmp.i.v EQ
bf [94]

:[93]
push.s "obj_shop1_slash_Draw_0_gml_152_0"@27864
conv.s.v
push.s "\\E3You're&carrying&too much."@27865
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[94]
push.v self.sidemessage
pushi.e 5
cmp.i.v EQ
bf [96]

:[95]
push.s "obj_shop1_slash_Draw_0_gml_159_0"@27866
conv.s.v
push.s "\\E2Thanks, it'll&be in your&STORAGE."@27867
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[96]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_shop1_slash_Draw_0_gml_153_0"@27868
conv.s.v
push.s "/*"@27869
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[98]
pushi.e 64
conv.i.v
pushi.e 260
conv.i.v
pushi.e 450
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[99]
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
bf [101]

:[100]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [102]

:[101]
push.e 0

:[102]
bf [107]

:[103]
pushi.e 2
pop.v.i self.menu
pushi.e 2
pop.v.i self.onebuffer
pushi.e 64
pushenv [105]

:[104]
call.i instance_destroy(argc=0)
popz.v

:[105]
popenv [104]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
push.v self.menumax
cmp.v.v EQ
bf [107]

:[106]
pushi.e 0
pop.v.i self.menu

:[107]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [110]

:[108]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [110]

:[109]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [111]

:[110]
push.e 0

:[111]
bf [115]

:[112]
pushi.e 0
pop.v.i self.menu
pushi.e 2
pop.v.i self.twobuffer
pushi.e 220
pop.v.i self.minimenuy
pushi.e 64
pushenv [114]

:[113]
call.i instance_destroy(argc=0)
popz.v

:[114]
popenv [113]

:[115]
push.i 166593
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuc

:[116]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [148]

:[117]
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
push.s "obj_shop1_slash_Draw_0_gml_177_0"@27874
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
bf [119]

:[118]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [120]

:[119]
push.e 0

:[120]
bf [122]

:[121]
pushi.e 1
pop.v.i self.menu
pushi.e 2
pop.v.i self.sidemessage
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[122]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [125]

:[123]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [125]

:[124]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [126]

:[125]
push.e 0

:[126]
bf [148]

:[127]
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [145]

:[128]
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
bf [130]

:[129]
pushi.e 1
pop.v.i self.afford

:[130]
push.v self.afford
pushi.e 1
cmp.i.v EQ
bf [144]

:[131]
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
bf [133]

:[132]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_itemget(argc=1)
popz.v

:[133]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@231
cmp.s.v EQ
bf [135]

:[134]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_weaponget(argc=1)
popz.v

:[135]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "armor"@232
cmp.s.v EQ
bf [137]

:[136]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_armorget(argc=1)
popz.v

:[137]
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [141]

:[138]
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
bf [140]

:[139]
pushi.e 5
pop.v.i self.sidemessage
b [141]

:[140]
pushi.e 1
pop.v.i self.sidemessage

:[141]
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [143]

:[142]
pushi.e 4
pop.v.i self.sidemessage

:[143]
b [145]

:[144]
pushi.e 3
pop.v.i self.sidemessage

:[145]
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [147]

:[146]
pushi.e 2
pop.v.i self.sidemessage

:[147]
pushi.e 1
pop.v.i self.menu

:[148]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 4
cmp.i.v NEQ
bf [160]

:[149]
push.v self.minimenuy
pushi.e 20
cmp.i.v LTE
bf [151]

:[150]
pushi.e 20
pop.v.i self.minimenuy

:[151]
push.v self.minimenuy
pushi.e 20
cmp.i.v GT
bf [153]

:[152]
push.v self.minimenuy
pushi.e 5
sub.i.v
pop.v.v self.minimenuy

:[153]
push.v self.minimenuy
pushi.e 50
cmp.i.v GT
bf [155]

:[154]
push.v self.minimenuy
pushi.e 5
sub.i.v
pop.v.v self.minimenuy

:[155]
push.v self.minimenuy
pushi.e 100
cmp.i.v GT
bf [157]

:[156]
push.v self.minimenuy
pushi.e 8
sub.i.v
pop.v.v self.minimenuy

:[157]
push.v self.minimenuy
pushi.e 150
cmp.i.v GT
bf [159]

:[158]
push.v self.minimenuy
pushi.e 10
sub.i.v
pop.v.v self.minimenuy

:[159]
b [162]

:[160]
push.v self.minimenuy
pushi.e 200
cmp.i.v LT
bf [162]

:[161]
push.v self.minimenuy
pushi.e 40
add.i.v
pop.v.v self.minimenuy

:[162]
push.v self.minimenuy
pushi.e 200
cmp.i.v GTE
bf [164]

:[163]
pushi.e 200
pop.v.i self.minimenuy

:[164]
push.v self.menu
pushi.e 3
cmp.i.v EQ
bf [195]

:[165]
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
push.s "obj_shop1_slash_Draw_0_gml_218_0"@27880
conv.s.v
push.s "Lightners"@27881
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 300
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 6
cmp.i.v LT
bf [167]

:[166]
push.s "obj_shop1_slash_Draw_0_gml_220_0"@27882
conv.s.v
push.s "Kingdom"@27883
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 340
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
b [168]

:[167]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_224_0"@27884
conv.s.v
push.s "About JEVIL"@27885
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 340
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v

:[168]
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [170]

:[169]
push.s "obj_shop1_slash_Draw_0_gml_227_0"@27886
conv.s.v
push.s "We're legendary"@27887
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 380
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
b [175]

:[170]
push.s "obj_shop1_slash_Draw_0_gml_241_0"@27888
conv.s.v
push.s "Strange Prisoner"@27889
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._legendstring
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
pushi.e 115
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
bf [172]

:[171]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[172]
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 6
cmp.i.v GTE
bf [174]

:[173]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_244_0"@27891
conv.s.v
push.s "We Won"@27892
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._legendstring

:[174]
push.v self._legendstring
call.i string_hash_to_newline(argc=1)
pushi.e 380
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v

:[175]
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
bf [177]

:[176]
push.i 231251
setowner.e
push.s "obj_shop1_slash_Draw_0_gml_255_0"@27894
conv.s.v
push.s "\\E0Don't have&anything&better&to do."@27895
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

:[177]
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
bf [179]

:[178]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [180]

:[179]
push.e 0

:[180]
bf [187]

:[181]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 64
pushenv [183]

:[182]
call.i instance_destroy(argc=0)
popz.v

:[183]
popenv [182]
pushi.e -1
pushi.e 3
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [185]

:[184]
pushi.e -1
pushi.e 3
push.v [array]self.menuc
pushi.e 3
add.i.v
pop.v.v self.sell
pushi.e 4
pop.v.i self.menu
b [186]

:[185]
pushi.e 0
pop.v.i self.menu

:[186]
b [195]

:[187]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [190]

:[188]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [190]

:[189]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [191]

:[190]
push.e 0

:[191]
bf [195]

:[192]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.menu
pushi.e 64
pushenv [194]

:[193]
call.i instance_destroy(argc=0)
popz.v

:[194]
popenv [193]

:[195]
push.v self.menu
pushi.e 10
cmp.i.v EQ
bf [245]

:[196]
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
push.s "obj_shop1_slash_Draw_0_gml_292_0"@27902
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
push.s "obj_shop1_slash_Draw_0_gml_293_0"@27904
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
bf [204]

:[197]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [199]

:[198]
push.i 231251
setowner.e
push.s "obj_shop1_slash_Draw_0_gml_285_0"@27905
conv.s.v
push.s "\\E0What kind&of junk&you got?"@27906
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[199]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [201]

:[200]
push.s "obj_shop1_slash_Draw_0_gml_286_0"@27907
conv.s.v
push.s "\\E0That's it&for that."@27908
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[201]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [203]

:[202]
push.s "obj_shop1_slash_Draw_0_gml_287_0"@27909
conv.s.v
push.s "\\E3You don't&have&anything!"@27910
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[203]
pushi.e 64
conv.i.v
pushi.e 260
conv.i.v
pushi.e 460
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[204]
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
bf [206]

:[205]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [207]

:[206]
push.e 0

:[207]
bf [237]

:[208]
pushi.e 0
pop.v.i self.pagemax
pushi.e 0
pop.v.i self.sidemessage2
pushi.e 2
pop.v.i self.onebuffer
pushi.e 64
pushenv [210]

:[209]
call.i instance_destroy(argc=0)
popz.v

:[210]
popenv [209]
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
bf [216]

:[211]
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [213]

:[212]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[213]
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

:[214]
push.v self.i
push.v self.selltotal
cmp.v.v LT
bf [216]

:[215]
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
b [214]

:[216]
push.v self.idealmenu
pushi.e 12
cmp.i.v EQ
bf [220]

:[217]
pushi.e 0
conv.i.v
call.i gml_Script_scr_weaponcheck_inventory(argc=1)
popz.v
push.v self.itemcount
pushi.e 48
cmp.i.v EQ
bf [219]

:[218]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[219]
call.i gml_Script_scr_weaponinfo_all(argc=0)
popz.v

:[220]
push.v self.idealmenu
pushi.e 13
cmp.i.v EQ
bf [224]

:[221]
pushi.e 0
conv.i.v
call.i gml_Script_scr_armorcheck_inventory(argc=1)
popz.v
push.v self.itemcount
pushi.e 48
cmp.i.v EQ
bf [223]

:[222]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[223]
call.i gml_Script_scr_armorinfo_all(argc=0)
popz.v

:[224]
push.v self.idealmenu
pushi.e 14
cmp.i.v EQ
bf [231]

:[225]
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck_pocket(argc=1)
popz.v
push.v self.itemcount
pushi.e -5
pushi.e 64
push.v [array]self.flag
cmp.v.v EQ
bf [227]

:[226]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[227]
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

:[228]
push.v self.i
pushi.e -5
pushi.e 64
push.v [array]self.flag
cmp.v.v LT
bf [230]

:[229]
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
b [228]

:[230]
pushi.e 11
pop.v.i self.idealmenu

:[231]
pushi.e -1
pushi.e 10
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [235]

:[232]
push.v self.can
pushi.e 1
cmp.i.v EQ
bf [234]

:[233]
push.v self.idealmenu
pop.v.v self.menu

:[234]
pushi.e 0
pop.v.i self.sidemessage1
b [236]

:[235]
pushi.e 0
pop.v.i self.menu

:[236]
pushi.e 0
pop.v.i self.submenu
push.i 172495
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.submenuc

:[237]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [240]

:[238]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [240]

:[239]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [241]

:[240]
push.e 0

:[241]
bf [245]

:[242]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.menu
pushi.e 64
pushenv [244]

:[243]
call.i instance_destroy(argc=0)
popz.v

:[244]
popenv [243]

:[245]
push.v self.menu
pushi.e 11
cmp.i.v EQ
bt [249]

:[246]
push.v self.menu
pushi.e 12
cmp.i.v EQ
bt [249]

:[247]
push.v self.menu
pushi.e 13
cmp.i.v EQ
bt [249]

:[248]
push.v self.menu
pushi.e 14
cmp.i.v EQ
b [250]

:[249]
push.e 1

:[250]
bf [279]

:[251]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [279]

:[252]
push.v self.sidemessage2
pushi.e 0
cmp.i.v EQ
bf [257]

:[253]
push.v self.menu
pushi.e 11
cmp.i.v EQ
bt [255]

:[254]
push.v self.menu
pushi.e 14
cmp.i.v EQ
b [256]

:[255]
push.e 1

:[256]
b [258]

:[257]
push.e 0

:[258]
bf [260]

:[259]
push.i 231251
setowner.e
push.s "obj_shop1_slash_Draw_0_gml_347_0"@27914
conv.s.v
push.s "\\E0Alright,&give me&an ITEM."@27915
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[260]
push.v self.sidemessage2
pushi.e 0
cmp.i.v EQ
bf [262]

:[261]
push.v self.menu
pushi.e 12
cmp.i.v EQ
b [263]

:[262]
push.e 0

:[263]
bf [265]

:[264]
push.s "obj_shop1_slash_Draw_0_gml_348_0"@27916
conv.s.v
push.s "\\E0What WEAPON&will you&give me?"@27917
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[265]
push.v self.sidemessage2
pushi.e 0
cmp.i.v EQ
bf [267]

:[266]
push.v self.menu
pushi.e 13
cmp.i.v EQ
b [268]

:[267]
push.e 0

:[268]
bf [270]

:[269]
push.s "obj_shop1_slash_Draw_0_gml_349_0"@27918
conv.s.v
push.s "\\E0What ARMOR&will you&give me?"@27919
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[270]
push.v self.sidemessage2
pushi.e 1
cmp.i.v EQ
bf [272]

:[271]
push.s "obj_shop1_slash_Draw_0_gml_350_0"@27920
conv.s.v
push.s "\\E2Thanks for&that."@27859
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[272]
push.v self.sidemessage2
pushi.e 2
cmp.i.v EQ
bf [274]

:[273]
push.s "obj_shop1_slash_Draw_0_gml_351_0"@27921
conv.s.v
push.s "\\E0No?"@27922
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[274]
push.v self.sidemessage2
pushi.e 3
cmp.i.v EQ
bf [276]

:[275]
push.s "obj_shop1_slash_Draw_0_gml_352_0"@27923
conv.s.v
push.s "\\E3Y'think I&WANT that?"@27924
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[276]
push.v self.sidemessage2
pushi.e 4
cmp.i.v EQ
bf [278]

:[277]
push.s "obj_shop1_slash_Draw_0_gml_353_0"@27925
conv.s.v
push.s "\\E0That's&nothing."@27926
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[278]
pushi.e 64
conv.i.v
pushi.e 260
conv.i.v
pushi.e 450
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[279]
pushi.e 4
conv.i.v
call.i gml_Script_scr_shopmenu(argc=1)
popz.v
push.v self.menu
pushi.e 15
cmp.i.v EQ
bt [283]

:[280]
push.v self.menu
pushi.e 16
cmp.i.v EQ
bt [283]

:[281]
push.v self.menu
pushi.e 17
cmp.i.v EQ
bt [283]

:[282]
push.v self.menu
pushi.e 18
cmp.i.v EQ
b [284]

:[283]
push.e 1

:[284]
bf [286]

:[285]
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
push.s "obj_shop1_slash_Draw_0_gml_407_0"@27929
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

:[286]
pushi.e 5
conv.i.v
call.i gml_Script_scr_shopmenu(argc=1)
popz.v
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [412]

:[287]
push.v self.sell
pushi.e 0
cmp.i.v EQ
bf [289]

:[288]
pushi.e 0
pop.v.i self.menu

:[289]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [291]

:[290]
push.v self.selling
pushi.e 0
cmp.i.v EQ
b [292]

:[291]
push.e 0

:[292]
bf [396]

:[293]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bf [294]

:[294]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [296]

:[295]
push.s "obj_shop1_slash_Draw_0_gml_395_0"@27932
conv.s.v
push.s "\\E0* See you again..^1.&* Or not^1.&* Ha ha ha ha.../%"@27933
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[296]
push.v self.sell
pushi.e 3
cmp.i.v EQ
bf [298]

:[297]
push.s "obj_shop1_slash_Draw_0_gml_399_0"@27934
conv.s.v
push.s "\\E0* The name's Seam.&* Pronounced \"Shawm.\"/"@27935
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_400_0"@27936
conv.s.v
push.s "\\E0* And this is my little Seap^1.&* Ha ha ha ha.../"@27937
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_401_0"@27938
conv.s.v
push.s "\\E0* Over the years, I've collected odds and ends./"@27939
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_402_0"@27940
conv.s.v
push.s "* 'Course, I've no attachment to any of it^1.&* It's just a hobby of mine./"@27941
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_403_0"@27942
conv.s.v
push.s "* Around here, you learn to find ways to pass the time...&* ... or go mad like everyone else./%"@27943
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[298]
push.v self.sell
pushi.e 4
cmp.i.v EQ
bf [300]

:[299]
push.s "obj_shop1_slash_Draw_0_gml_411_0"@27944
conv.s.v
push.s "\\E1* Long ago, the Darkners lived in harmony with the Lightners./"@27945
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_412_0"@27946
conv.s.v
push.s "\\E0* They were like Gods to us.&* Our protectors.&* Our creators.&* Those who gave us purpose.../"@27947
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_413_0"@27948
conv.s.v
push.s "\\E3* Then, one day we were all locked away in this prison..^1.&* And the Lightners never returned./"@27949
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_414_0"@27950
conv.s.v
push.s "\\E1* Embittered^1, the King took up arms^1, and aims to take revenge upon the Lightners that left us behind./"@27951
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_415_0"@27952
conv.s.v
push.s "\\E0* 'Course^1, even among his troops^1, some still distantly hope the Lightners will return.../%"@27953
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[300]
push.v self.sell
pushi.e 5
cmp.i.v EQ
bf [303]

:[301]
push.s "obj_shop1_slash_Draw_0_gml_421_0"@27954
conv.s.v
push.s "\\E0* Historically^1, this land was ruled by the Four Kings^1, from \\cYCARD CASTLE\\cW to the East./"@27955
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_422_0"@27956
conv.s.v
push.s "\\E1* But, recently, a \\cRstrange knight\\cW appeared..^1.&* And three of the kings were locked away./"@27957
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_423_0"@27958
conv.s.v
push.s "\\E0* The remaining king put him and his strange son into power./"@27959
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_424_0"@27960
conv.s.v
push.s "\\E1* This land hasn't seen THIS much chaos since.../"@27961
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_425_0"@27962
conv.s.v
push.s "\\E2* Ha ha ha..^1.&* Well, you don't need to know about THAT./%"@27963
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 6
cmp.i.v GTE
bf [303]

:[302]
push.s "obj_shop1_slash_Draw_0_gml_429_0"@27964
conv.s.v
push.s "\\E0* He..^1. was a funny little man^1. Once^1, the court jester^1. I^1, the court magician./"@27965
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_430_0"@27966
conv.s.v
push.s "\\E1* A friend...^1? Could I consider him a friend...^1? Perhaps^1, perhaps not./"@27967
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_431_0"@27968
conv.s.v
push.s "\\E2* But he was the only one who matched me in the games we used to play./"@27969
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_432_0"@27970
conv.s.v
push.s "\\E3* One day^1, he met a strange someone..^1. and since then^1, he began to change./"@27971
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_433_0"@27972
conv.s.v
push.s "\\E1* He started saying bizarre things that didn't completely make sense -/"@27973
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_434_0"@27974
conv.s.v
push.s "\\E3* But didn't completely not make sense^1, either./"@27975
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_435_0"@27976
conv.s.v
push.s "* Soon^1, he began to see the world as a game^1, and everyone as its participants./"@27977
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_436_0"@27978
conv.s.v
push.s "* As the court mage^1, and his only companion^1, I was forced to lock him away.../"@27979
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_437_0"@27980
conv.s.v
push.s "\\E2* Or^1, rather^1, lock US all away^1, in his own words./"@27981
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_438_0"@27982
conv.s.v
push.s "\\E1* Since that time^1, the strange words he's said have stuck inside my cotton.../"@27983
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_439_0"@27984
conv.s.v
push.s "\\E3* And my view of this world has become darker^1, yet darker./"@27985
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_440_0"@27986
conv.s.v
push.s "\\E2* Reflecting on these old memories^1, I think^1, perhaps ^1- I miss playing games with him./"@27987
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_441_0"@27988
conv.s.v
push.s "\\E3* And I wonder^1, if I hadn't been asked to lock him up.../"@27989
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_442_0"@27990
conv.s.v
push.s "\\E2* Would I have found a little more purpose in my life...?/%"@27991
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 13
pop.v.v [array]self.msg

:[303]
push.v self.sell
pushi.e 6
cmp.i.v EQ
bf [324]

:[304]
push.s "obj_shop1_slash_Draw_0_gml_448_0"@27992
conv.s.v
push.s "\\E2* Ha ha ha ..^1.&* So you are the \"heroes\" who are going to seal our Fountain?/"@27993
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_449_0"@27994
conv.s.v
push.s "\\E0* Ha, good luck^1.&* It makes no difference to me./"@27995
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_450_0"@27996
conv.s.v
push.s "\\E3* Neither Light nor Dark hold a future for a Darkner in my condition./%"@27997
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
bf [306]

:[305]
pushi.e -5
pushi.e 115
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [307]

:[306]
push.e 0

:[307]
bf [309]

:[308]
push.s "obj_shop1_slash_Draw_0_gml_459_0"@27998
conv.s.v
push.s "\\E1* Trouble opening the door...?/"@27999
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_460_0"@28000
conv.s.v
push.s "\\E0* Ha ha ha^1, well^1, whether you can or not^1, it doesn't matter to me./"@28001
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_461_0"@28002
conv.s.v
push.s "\\E2* But here's a hint ^1- \\cYwalk where the stars don't shine\\cW./%"@28003
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[309]
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
bf [311]

:[310]
pushi.e -5
pushi.e 115
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [312]

:[311]
push.e 0

:[312]
bf [314]

:[313]
push.s "obj_shop1_slash_Draw_0_gml_472_0"@28004
conv.s.v
push.s "\\E3* Eh...^1? What are you talking about...^1? A prisoner with an odd manner...?/"@28005
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_473_0"@28006
conv.s.v
push.s "\\E1* ... No^1, you couldn't possibly be talking about HIM...?/"@28007
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_474_0"@28008
conv.s.v
push.s "\\E3* ... I see^1.&* After all the trouble I went through to lock him up^1, you want to release him?/"@28009
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_475_0"@28010
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_476_0"@28011
conv.s.v
push.s "\\E1* Hmm^1, now that you mention it^1, it could be troublesome if he was left alone.../"@28012
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_477_0"@28013
conv.s.v
push.s "\\E0* Yes^1, perhaps it's better if you Heroes dealt with him now...?/"@28014
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_478_0"@28015
conv.s.v
push.s "\\E2* After all^1, it's not as if whatever happens^1, will matter in the end./"@28016
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_479_0"@28017
conv.s.v
push.s "* Perhaps a little chaos might be fun./"@28018
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_480_0"@28019
conv.s.v
push.s "\\E0* So then, take this./"@28020
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.i 231332
setowner.e
pushi.e 173
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.writersnd
push.i 231251
setowner.e
push.s "obj_shop1_slash_Draw_0_gml_482_0"@28021
conv.s.v
push.s "\\S0* (\\cYBROKEN KEY A\\cW was added to your \\cYKEY ITEMS\\cW.)/"@28022
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_483_0"@28023
conv.s.v
push.s "* If you're so driven^1, find the other \\cYtwo\\cW pieces^1, and get someone to \\cYfix\\cW them./"@28024
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_484_0"@28025
conv.s.v
push.s "* I'll even give you a hint - \\cYWalk where the stars don't shine\\cW./"@28026
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_485_0"@28027
conv.s.v
push.s "* Anyhow^1, if you succeed^1, come back here and tell me^1! Good luck!!/"@28028
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_486_0"@28029
conv.s.v
push.s "* If you can call THIS luck..^1. No^1, it's more like a curse...!/%"@28030
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 13
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
call.i gml_Script_scr_keyitemget(argc=1)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 115
pop.v.v [array]self.flag

:[314]
pushi.e -5
pushi.e 115
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [316]

:[315]
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 5
cmp.i.v GTE
b [317]

:[316]
push.e 0

:[317]
bf [319]

:[318]
push.i 231251
setowner.e
push.s "obj_shop1_slash_Draw_0_gml_493_0"@28031
conv.s.v
push.s "\\E1* You already opened the door...?/"@28032
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_494_0"@28033
conv.s.v
push.s "\\E2* Ha ha ha..^1. I almost wish I could watch^1! Tell me what happens!/"@28034
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_495_0"@28035
conv.s.v
push.s "\\E2* Ha ha ha..^1. though^1, I suppose if you don't come back^1, I'll understand^1, too!/%"@28036
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[319]
pushi.e -5
pushi.e 115
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [321]

:[320]
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 6
cmp.i.v GTE
b [322]

:[321]
push.e 0

:[322]
bf [324]

:[323]
push.s "obj_shop1_slash_Draw_0_gml_500_0"@28037
conv.s.v
push.s "\\E1* You defeated him!^1? You REALLY defeated him!?/"@28038
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_501_0"@28039
conv.s.v
push.s "\\E0* I see..^1. perhaps you three may truly be \"Heroes\" after all.../"@28040
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_502_0"@28041
conv.s.v
push.s "\\E1* But JEVIL was just a taste of what you'll face from now on./"@28042
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_503_0"@28043
conv.s.v
push.s "\\E0* One day soon.../"@28044
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_504_0"@28045
conv.s.v
push.s "\\E1* You too^1, will begin to realize the futility of your actions./"@28046
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_505_0"@28047
conv.s.v
push.s "\\E2* Ha ha ha.../"@28048
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_506_0"@28049
conv.s.v
push.s "\\E0* At that time^1, feel free to come back here^1.&* I'll make you tea.../"@28050
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_shop1_slash_Draw_0_gml_507_0"@28051
conv.s.v
push.s "\\E2* And we can toast..^1. to the end of the world!/%"@28052
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg

:[324]
push.v self.sell
pushi.e 10
cmp.i.v EQ
bf [395]

:[325]
pushi.e 13
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
popz.v
pushi.e 0
pop.v.b local.show_jevil
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [349]

:[326]
pushi.e -5
pushi.e 312
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [335]

:[327]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 312
pop.v.v [array]self.flag
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 6
cmp.i.v LT
bf [329]

:[328]
push.s "seam"@28054
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_567_0"@28055
conv.s.v
push.s "\\E1* Hmm..^1. So we are now in the Castle Town./"@28056
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_568_0"@28057
conv.s.v
push.s "\\E0* Well^1, now. It makes no difference to me./"@28058
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_569_0"@28059
conv.s.v
push.s "\\E2* As long as I stay in my shop^1, these walls won't change./"@28060
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_570_0"@28061
conv.s.v
push.s "\\E0* ..^1. But./"@28062
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_571_0_b"@28063
conv.s.v
push.s "\\E2* In a way^1, I suppose it's just a little bit amusing to see you again./"@28064
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_572_0"@28065
conv.s.v
push.s "\\E0* I'm sure you three will have an interesting journey./"@28066
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_573_0"@28067
conv.s.v
push.s "\\E1* Me? I'll just be here offering the same old junk./"@28068
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_574_0"@28069
conv.s.v
push.s "\\E0* As you find stronger treasure^1, I'm sure you'll have little reason to return here./"@28070
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_575_0"@28071
conv.s.v
push.s "\\E2* But if you have some time^1, I'll offer you a biscuit and a hint!/%"@28072
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [334]

:[329]
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 6
cmp.i.v GTE
bt [331]

:[330]
pushi.e -5
pushi.e 460
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [332]

:[331]
push.e 1

:[332]
bf [334]

:[333]
pushi.e 1
pop.v.b local.show_jevil
push.s "obj_shop1_slash_Draw_0_gml_582_0"@28073
conv.s.v
push.s "\\E1* So we are here now^1, in a new world./"@28074
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_583_0"@28075
conv.s.v
push.s "\\E2* And right off the heels of defeating that clown..^1. Incredible./"@28076
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[334]
b [346]

:[335]
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 6
cmp.i.v GTE
bt [337]

:[336]
pushi.e -5
pushi.e 460
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [338]

:[337]
push.e 1

:[338]
bf [343]

:[339]
pushi.e -5
pushi.e 954
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [341]

:[340]
pushi.e 1
pop.v.b local.show_jevil
push.s "obj_shop1_slash_Draw_0_gml_601_0_b"@28077
conv.s.v
push.s "\\E1* Ah^1, yes^1, that's right^1. It didn't occur to me until just now^1, but.../"@28078
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_602_0_b"@28079
conv.s.v
push.s "\\E2* You three defeated that clown last time^1, didn't you^1?/"@28080
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [342]

:[341]
push.s "seam"@28054
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_674_0"@28081
conv.s.v
push.s "* If you can defeat more strong adversaries^1, you may find more Shadow Crystals./"@28082
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_675_0"@28083
conv.s.v
push.s "\\E2* Try your best^1! It may be tough^1, but I'm sure it will be worth it!/%"@28084
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[342]
b [346]

:[343]
push.v self.talk_counter
push.e 1
add.i.v
pop.v.v self.talk_counter
pushglb.v global.plot
pushi.e 15
cmp.i.v LT
bf [345]

:[344]
push.s "seam"@28054
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_640_0"@28085
conv.s.v
push.s "\\E0* The little prince has something to show you in his castle./"@28086
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_641_0"@28087
conv.s.v
push.s "\\E3* Well now^1, are you going to turn down a royal invitation?/%"@28088
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [346]

:[345]
push.s "seam"@28054
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_645_0"@28089
conv.s.v
push.s "\\E0* If I were you^1, I would head home to the LIGHT WORLD./"@28090
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_646_0"@28091
conv.s.v
push.s "\\E1* Of course^1, I'm not you. So^1, I'm staying right here./"@28092
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_647_0"@28093
conv.s.v
push.s "\\E1* By the by^1, I can't offer any advice when you're not here.../"@28094
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_648_0"@28095
conv.s.v
push.s "\\E2* So I'm not sure my hints will be much use after all^1! Ha ha!/%"@28096
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[346]
pushloc.v local.show_jevil
conv.v.b
bf [348]

:[347]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 954
pop.v.v [array]self.flag
pushi.e 13
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 1
pop.v.b self.took_crystal
push.s "obj_shop1_slash_Draw_0_gml_584_0"@28097
conv.s.v
push.s "\\E1* ..^1. Oh? What's that? It seems like he gave something to you./"@28098
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_585_0"@28099
conv.s.v
push.s "\\E0* That's right..^1. You must not have noticed it./"@28100
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_586_0"@28101
conv.s.v
push.s "\\E3* That Crystal..^1. It's nearly invisible^1, but you've been holding it this whole time./"@28102
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_587_0"@28103
conv.s.v
push.s "\\E0* Here^1, I'll take it off your hands and appraise it./"@28104
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_588_0"@28105
conv.s.v
push.s "\\E3* .../"@620
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_589_0"@28106
conv.s.v
push.s "\\E1* Incredible^1! To think he had a Shadow Crystal.../"@28107
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_590_0"@28108
conv.s.v
push.s "\\E0* Shadow Crystals^1, so called because you can only see their shadow./"@28109
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_591_0"@28110
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_592_0"@28111
conv.s.v
push.s "\\E3* Call it a premonition^1, but I get the feeling you may find more of these.../"@28112
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_593_0"@28113
conv.s.v
push.s "\\E2* ..^1. If you continue to defeat strong adversaries like \\cYhim\\c0^1, that is./"@28114
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_594_0"@28115
conv.s.v
push.s "\\E0* If you can gather more Shadow Crystals^1, bring them here!/"@28116
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_595_0"@28117
conv.s.v
push.s "\\E2* I'm sure I can stitch together something incredible for you.../%"@28118
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[348]
b [395]

:[349]
pushi.e 0
pop.v.b local.normal_post_plot
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v LT
bf [359]

:[350]
pushi.e -5
pushi.e 954
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [352]

:[351]
pushi.e -5
pushi.e 961
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [353]

:[352]
push.e 0

:[353]
bf [355]

:[354]
push.s "seam"@28054
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_681_0"@28120
conv.s.v
push.s "\\E1* ..^1. It seems that you didn't get another Shadow Crystal./"@28121
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_682_0"@28122
conv.s.v
push.s "\\E0* Hm. I understand. It's no small feat to fight an opponent that has one./"@28123
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_683_0"@28124
conv.s.v
push.s "\\E3* .../"@620
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_684_0"@28125
conv.s.v
push.s "\\E1* Well then^1, forget it all./"@28126
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_685_0"@28127
conv.s.v
push.s "\\E0* You're a Lightner. Don't take your life^1, well^1, lightly!/%"@28128
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 961
pop.v.v [array]self.flag
b [358]

:[355]
pushi.e -5
pushi.e 312
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [357]

:[356]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 312
pop.v.v [array]self.flag
push.s "seam"@28054
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_567_0"@28055
conv.s.v
push.s "\\E1* Hmm..^1. So we are now in the Castle Town./"@28056
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_568_0"@28057
conv.s.v
push.s "\\E0* Well^1, now. It makes no difference to me./"@28058
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_569_0"@28059
conv.s.v
push.s "\\E2* As long as I stay in my shop^1, these walls won't change./"@28060
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_570_0"@28061
conv.s.v
push.s "\\E0* ..^1. But./"@28062
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_571_0_b"@28063
conv.s.v
push.s "\\E2* In a way^1, I suppose it's just a little bit amusing to see you again./"@28064
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_572_0"@28065
conv.s.v
push.s "\\E0* I'm sure you three will have an interesting journey./"@28066
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_573_0"@28067
conv.s.v
push.s "\\E1* Me? I'll just be here offering the same old junk./"@28068
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_574_0"@28069
conv.s.v
push.s "\\E0* As you find stronger treasure^1, I'm sure you'll have little reason to return here./"@28070
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_575_0"@28071
conv.s.v
push.s "\\E2* But if you have some time^1, I'll offer you a biscuit and a hint!/%"@28072
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [358]

:[357]
pushi.e 1
pop.v.b local.normal_post_plot

:[358]
b [388]

:[359]
pushi.e -5
pushi.e 954
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [366]

:[360]
pushi.e -5
pushi.e 353
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [362]

:[361]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 353
pop.v.v [array]self.flag
push.s "obj_shop1_slash_Draw_0_gml_601_0"@28129
conv.s.v
push.s "\\E2* Well^1, what have we here^1! You managed to find another Shadow Crystal.../"@28130
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_602_0"@28131
conv.s.v
push.s "\\E1* Oh^1, is that so^1? That salesman had found the crystal in the old machine...?/"@28132
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_603_0"@28133
conv.s.v
push.s "\\E0* I wonder..^1. if perhaps^1, long ago^1, that old machine was very important to someone./"@28134
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_604_0"@28135
conv.s.v
push.s "\\E3* A certain Lightner^1, perhaps..^1. or maybe it's just a hunch^1. Haha!/"@28136
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_605_0"@28137
conv.s.v
push.s "\\E0* At any rate^1, it's truly unfortunate a Darkner decided to steal that power.../"@28138
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_606_0"@28139
conv.s.v
push.s "\\E0* Or^1, is it fortunate? Because of that^1, you found a new Crystal./"@28140
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_607_0"@28141
conv.s.v
push.s "\\E2* Here^1, let me hold onto that for you. Ha ha ha!/%"@28142
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 13
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 1
pop.v.b self.took_crystal
b [365]

:[362]
pushi.e -5
pushi.e 353
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [364]

:[363]
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 353
pop.v.v [array]self.flag
push.s "seam"@28054
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_706_0"@28143
conv.s.v
push.s "* You have collected 2 Shadow Crystals./"@28144
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_707_0"@28145
conv.s.v
push.s "\\E1* But don't let down your guard. I feel your next opponent may be..^1. hm./"@28146
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_708_0"@28147
conv.s.v
push.s "\\E3* In reality^1, it may be impossible to win./"@28148
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_709_0"@28149
conv.s.v
push.s "\\E0* ..^1. Unless you use the power of the Shadow Mantle./"@28150
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_710_0"@28151
conv.s.v
push.s "\\E0* Here^1, it may look like an old scrap of cloth^1, but.../"@28152
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_711_0"@28153
conv.s.v
push.s "\\E1* ..^1. eh?/"@28154
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_712_0"@28155
conv.s.v
push.s "\\E3* I can't find it. Did someone..^1. take it...?/"@28156
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_713_0"@28157
conv.s.v
push.s "\\E2* Hahaha^1! Well now^1, there goes your one chance of victory!/%"@28158
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [365]

:[364]
push.s "seam"@28054
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_717_0"@28159
conv.s.v
push.s "* You have collected 2 Shadow Crystals./"@28144
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_718_0"@28160
conv.s.v
push.s "\\E3* Unfortunately^1, without the Shadow Mantle^1, at 2 you may remain./"@28161
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_719_0"@28162
conv.s.v
push.s "\\E0* Fate is approaching..^1. and it is not on your side./%"@28163
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[365]
b [388]

:[366]
pushi.e -5
pushi.e 460
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bt [368]

:[367]
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 6
cmp.i.v GTE
b [369]

:[368]
push.e 1

:[369]
pop.v.b local.have_jevil
pushloc.v local.have_jevil
conv.v.b
bf [371]

:[370]
push.s "/"@4448
conv.s.v
b [372]

:[371]
push.s "/%"@4449
conv.s.v

:[372]
pop.v.v local.sentence_end
push.v self.haveit
pushi.e 1
cmp.i.v EQ
bf [374]

:[373]
push.s "seam"@28054
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_619_0"@28166
conv.s.v
push.s "\\E1* ..^1. What is that? It appears you have a Shadow Crystal./"@28167
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_620_0"@28168
conv.s.v
push.s "\\E3* .../"@620
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_621_0"@28169
conv.s.v
push.s "\\E0* Unfortunately^1, I believe that you are missing one from your previous adventures./"@28170
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_622_0"@28171
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_623_0"@28172
conv.s.v
push.s "\\E3* But^1, are you sure? Are you sure you didn't defeat that clown...?/"@28173
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_624_0"@28174
conv.s.v
push.s "\\E0* Perhaps..^1. You just haven't remembered that you had yet./"@28175
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_625_0"@28176
conv.s.v
push.s "\\E2* That's right^1, as long as you ever defeated that enemy in the past.../"@28177
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_638_0"@28178
conv.s.v
pushloc.v local.sentence_end
push.s "\\E2* Then perhaps^1, even now^1, that Crystal might turn up somewhere close..^1. Perhaps!~1"@28179
conv.s.v
call.i gml_Script_msgnextsubloc(argc=3)
popz.v

:[374]
pushloc.v local.have_jevil
conv.v.b
bf [379]

:[375]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 954
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 353
pop.v.v [array]self.flag
push.s "obj_shop1_slash_Draw_0_gml_639_0"@28180
conv.s.v
push.s "\\E2* Aha^1! Another Shadow Crystal^1! You found it.../"@28181
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.first_line
pushi.e -5
pushi.e 312
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [377]

:[376]
pushloc.v local.first_line
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
b [378]

:[377]
pushloc.v local.first_line
call.i gml_Script_msgnext(argc=1)
popz.v

:[378]
push.s "obj_shop1_slash_Draw_0_gml_640_0_b"@28183
conv.s.v
push.s "\\E0* You can't see it^1, so perhaps you didn't notice.../"@28184
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_641_0_b"@28185
conv.s.v
push.s "\\E0* Didn't you defeat him? Didn't you defeat Jevil?/"@28186
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_642_0"@28187
conv.s.v
push.s "\\E2* Here^1, I'll take that Crystal. Now^1, you have collected 2 of them^1! Huzzah!/%"@28188
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [384]

:[379]
pushi.e -5
pushi.e 312
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [381]

:[380]
push.v self.haveit
conv.v.b
not.b
b [382]

:[381]
push.e 0

:[382]
bf [384]

:[383]
pushi.e 1
pop.v.b local.normal_post_plot

:[384]
pushi.e -5
pushi.e 312
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [386]

:[385]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 312
pop.v.v [array]self.flag

:[386]
push.v self.haveit
pushi.e 1
cmp.i.v EQ
bf [388]

:[387]
pushi.e 13
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 1
pop.v.b self.took_crystal

:[388]
pushloc.v local.normal_post_plot
conv.v.b
bf [395]

:[389]
push.v self.talk_counter
push.e 1
add.i.v
pop.v.v self.talk_counter
push.v self.talk_counter
pushi.e 1
cmp.i.v EQ
bf [391]

:[390]
push.s "seam"@28054
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_654_0"@28189
conv.s.v
push.s "* There are many fresh faces in town^1, I see./"@28190
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_655_0"@28191
conv.s.v
push.s "\\E2* It warms this old fluff to see such hope./"@28192
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_656_0"@28193
conv.s.v
push.s "\\E3* I was even surprised to see the Queen again./"@28194
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_657_0"@28195
conv.s.v
push.s "\\E0* Same as ever..^1. Well^1, aren't we all./%"@28196
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [395]

:[391]
push.s "seam"@28054
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 9
cmp.i.v GTE
bf [393]

:[392]
push.s "obj_shop1_slash_Draw_0_gml_661_0"@28197
conv.s.v
push.s "* Those young men have made an interesting shop./"@28198
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_662_0"@28199
conv.s.v
push.s "\\E3* They're leaving the bagel business^1, so I have the rest of their remaining stock./"@28200
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [394]

:[393]
push.s "obj_shop1_slash_Draw_0_gml_674_0_b"@28201
conv.s.v
push.s "* Those three young musical men are thinking about setting up a shop here./"@28202
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_675_0_b"@28203
conv.s.v
push.s "\\E2* I'm sure you'd appreciate having an option other than me^1, ha ha./"@28204
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[394]
push.s "obj_shop1_slash_Draw_0_gml_663_0"@28205
conv.s.v
push.s "\\E3* ..^1. By the by^1, it's growing late^1, isn't it?/"@28206
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_664_0"@28207
conv.s.v
push.s "\\E0* You should hurry home once you finish your business here./"@28208
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_665_0"@28209
conv.s.v
push.s "\\E3* You don't want to get caught when the sun goes down.../%"@28210
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[395]
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

:[396]
push.v self.selling
pushi.e 1
cmp.i.v EQ
bf [398]

:[397]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [399]

:[398]
push.e 0

:[399]
bf [412]

:[400]
push.v self.took_crystal
conv.v.b
bf [402]

:[401]
pushi.e 0
pop.v.b self.took_crystal
pushi.e 173
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[402]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [404]

:[403]
pushi.e 2
pop.v.i self.selling
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
b [412]

:[404]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bt [407]

:[405]
push.v self.sell
pushi.e 7
cmp.i.v EQ
bt [407]

:[406]
push.v self.sell
pushi.e 10
cmp.i.v EQ
b [408]

:[407]
push.e 1

:[408]
bf [410]

:[409]
pushi.e 0
pop.v.i self.menu
b [411]

:[410]
pushi.e 3
pop.v.i self.menu

:[411]
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.selling

:[412]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [420]

:[413]
push.v self.menu
pushi.e 11
cmp.i.v NEQ
bf [416]

:[414]
push.v self.menu
pushi.e 12
cmp.i.v NEQ
bf [416]

:[415]
push.v self.menu
pushi.e 13
cmp.i.v NEQ
b [417]

:[416]
push.e 0

:[417]
bf [420]

:[418]
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
bf [420]

:[419]
pushi.e 0
conv.i.v
pushi.e -1
push.v self.menu
conv.v.i
pop.v.v [array]self.menuc

:[420]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [428]

:[421]
push.v self.menu
pushi.e 11
cmp.i.v NEQ
bf [424]

:[422]
push.v self.menu
pushi.e 12
cmp.i.v NEQ
bf [424]

:[423]
push.v self.menu
pushi.e 13
cmp.i.v NEQ
b [425]

:[424]
push.e 0

:[425]
bf [428]

:[426]
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
bf [428]

:[427]
push.v self.menumax
pushi.e -1
push.v self.menu
conv.v.i
pop.v.v [array]self.menuc

:[428]
push.v self.menu
pushi.e 4
cmp.i.v LT
bt [430]

:[429]
push.v self.menu
pushi.e 10
cmp.i.v GTE
b [431]

:[430]
push.e 1

:[431]
bf [450]

:[432]
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
bt [434]

:[433]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [435]

:[434]
push.e 1

:[435]
bf [450]

:[436]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 4
cmp.i.v LT
bf [450]

:[437]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "item"@229
cmp.s.v EQ
bf [439]

:[438]
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck_inventory_and_pocket(argc=1)
popz.v

:[439]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "armor"@232
cmp.s.v EQ
bf [441]

:[440]
pushi.e 0
conv.i.v
call.i gml_Script_scr_armorcheck_inventory(argc=1)
popz.v

:[441]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@231
cmp.s.v EQ
bf [443]

:[442]
pushi.e 0
conv.i.v
call.i gml_Script_scr_weaponcheck_inventory(argc=1)
popz.v

:[443]
push.s "dotumche"@6178
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.itemcount
pushi.e 10
cmp.i.v LT
bf [445]

:[444]
push.s "0"@3491
push.v self.itemcount
call.i string(argc=1)
add.v.s
pop.v.v self.roomstring
b [446]

:[445]
push.v self.itemcount
call.i string(argc=1)
pop.v.v self.roomstring

:[446]
push.v self.itemcount
pushi.e 0
cmp.i.v GT
bf [448]

:[447]
push.s "obj_shop1_slash_Draw_0_gml_784_0"@28212
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

:[448]
push.v self.itemcount
pushi.e 0
cmp.i.v EQ
bf [450]

:[449]
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

:[450]
push.v self.onebuffer
pushi.e 1
sub.i.v
pop.v.v self.onebuffer
push.v self.twobuffer
pushi.e 1
sub.i.v
pop.v.v self.twobuffer

:[end]