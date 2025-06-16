.localvar 2 arguments
.localvar 29032 CANCELMENU 15291

:[0]
pushi.e -10000
pop.v.i self.depth
push.v self.EVENT
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.DRAWNAME
pushi.e 70
pop.v.i self.EVENT

:[2]
pushi.e 0
pop.v.i local.CANCELMENU
push.v self.EVENT
pushi.e 70
cmp.i.v EQ
bf [4]

:[3]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [18]

:[6]
pushi.e -12
pop.v.i self.JA_XOFF
pushi.e 0
pop.v.i self.JA_YOFF
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [8]

:[7]
pushi.e -50
pop.v.i self.JA_XOFF
pushi.e 10
pop.v.i self.JA_YOFF

:[8]
pushi.e 64
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
push.s "DEVICE_NAMER_slash_Draw_0_gml_18_0"@29034
conv.s.v
push.s "ENTER YOUR OWN NAME."@29035
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 64
conv.i.v
pushi.e 20
push.v self.JA_YOFF
add.v.i
pushi.e 80
push.v self.JA_XOFF
add.v.i
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
push.v self.W
pushi.e -9
pushenv [12]

:[11]
push.v self.hspace
push.d 0.8
mul.d.v
pop.v.v self.hspace
pushi.e 1
pop.v.i self.skipme

:[12]
popenv [11]
pushi.e 881
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e 71
pop.v.i self.EVENT
push.v self.CHOICE
pushi.e -9
pushenv [14]

:[13]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[14]
popenv [13]
push.v self.CHOICE
pushi.e -9
pushenv [17]

:[15]
pushi.e -100
pop.v.i self.depth
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [17]

:[16]
pushi.e 7
pop.v.i self.STRINGMAX

:[17]
popenv [15]

:[18]
push.v self.EVENT
pushi.e 71
cmp.i.v EQ
bf [32]

:[19]
push.v self.CHOICE
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [31]

:[20]
push.v self.CHOICE
pushi.e -9
push.v [stacktop]self.NAMESTRING
pop.v.v global.truename
pushglb.v global.truename
pop.v.v self.FN_3
push.v self.FN_3
push.s "GASTER"@29038
cmp.s.v EQ
bt [23]

:[21]
push.v self.FN_3
push.s "がすたー"@29039
cmp.s.v EQ
bt [23]

:[22]
push.v self.FN_3
push.s "ガスター"@29040
cmp.s.v EQ
b [24]

:[23]
push.e 1

:[24]
bf [26]

:[25]
call.i gml_Script_snd_free_all(argc=0)
popz.v
call.i gml_Script_game_restart_true(argc=0)
popz.v

:[26]
push.v self.CHOICE
pushi.e -9
push.v [stacktop]self.backout
pushi.e 1
cmp.i.v EQ
bf [30]

:[27]
pushi.e 1
pop.v.i local.CANCELMENU
push.v self.CHOICE
pushi.e -9
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]

:[30]
b [32]

:[31]
pushi.e 73
pop.v.i self.EVENT

:[32]
push.v self.EVENT
pushi.e 73
cmp.i.v EQ
bf [40]

:[33]
pushi.e 64
pushenv [35]

:[34]
call.i instance_destroy(argc=0)
popz.v

:[35]
popenv [34]
pushi.e 0
pop.v.i self.FOUND
pushglb.v global.truename
pop.v.v self.FN
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.s "DEVICE_NAMER_slash_Draw_0_gml_84_0"@29041
conv.s.v
push.s "THIS IS YOUR NAME."@29042
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [37]

:[36]
pushi.e -30
pop.v.i self.JA_XOFF

:[37]
pushi.e 64
conv.i.v
pushi.e 20
push.v self.JA_YOFF
add.v.i
pushi.e 78
push.v self.JA_XOFF
add.v.i
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
push.v self.W
pushi.e -9
pushenv [39]

:[38]
push.v self.hspace
push.d 0.8
mul.d.v
pop.v.v self.hspace
pushi.e 1
pop.v.i self.skipme

:[39]
popenv [38]
pushi.e 1
pop.v.i self.DRAWNAME
pushi.e 0
pop.v.i self.FIXY
pushi.e 74
pop.v.i self.EVENT
pushi.e -1
pop.v.i global.choice
pushi.e 881
conv.i.v
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.CHOICE
pushi.e -100
push.v self.CHOICE
pushi.e -9
pop.v.i [stacktop]self.depth

:[40]
push.v self.EVENT
pushi.e 74
cmp.i.v EQ
bf [47]

:[41]
push.v self.FIXY
pushi.e 100
cmp.i.v LT
bf [43]

:[42]
push.v self.FIXY
pushi.e 2
add.i.v
pop.v.v self.FIXY

:[43]
pushglb.v global.choice
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
pushi.e 1
pop.v.i local.CANCELMENU

:[45]
pushglb.v global.choice
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 246
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 80
conv.i.v
call.i gml_Script_scr_fadeout(argc=1)
pop.v.v self.fade
pushi.e -1
push.v self.fade
pushi.e -9
pop.v.i [stacktop]self.depth
push.i 16777215
push.v self.fade
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 75
pop.v.i self.EVENT
pushi.e 0
pop.v.i self.TIMER

:[47]
pushloc.v local.CANCELMENU
pushi.e 1
cmp.i.v EQ
bf [57]

:[48]
push.v self.EVENT
pushi.e 74
cmp.i.v EQ
bf [52]

:[49]
pushi.e 0
pop.v.i self.DRAWNAME
pushi.e 70
pop.v.i self.EVENT
pushi.e 886
pushenv [51]

:[50]
pushi.e 3
pop.v.i self.ONEBUFFER
pushi.e 3
pop.v.i self.TWOBUFFER

:[51]
popenv [50]
pushi.e 64
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 881
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
b [57]

:[52]
pushi.e 0
pop.v.i self.DRAWNAME
pushi.e 886
pushenv [54]

:[53]
pushi.e 0
pop.v.i self.MENU_NO
pushi.e 3
pop.v.i self.ONEBUFFER
pushi.e 3
pop.v.i self.TWOBUFFER

:[54]
popenv [53]
pushi.e 64
pushenv [56]

:[55]
call.i instance_destroy(argc=0)
popz.v

:[56]
popenv [55]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[57]
push.v self.EVENT
pushi.e 75
cmp.i.v EQ
bf [60]

:[58]
push.v self.TIMER
push.e 1
add.i.v
pop.v.v self.TIMER
push.v self.TIMER
pushi.e 130
cmp.i.v GTE
bf [60]

:[59]
pushi.e 76
pop.v.i self.EVENT

:[60]
push.v self.EVENT
pushi.e 76
cmp.i.v EQ
bf [62]

:[61]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.plot
call.i gml_Script_scr_initialize_charnames(argc=0)
popz.v
pushi.e 28
conv.i.v
call.i room_goto(argc=1)
popz.v

:[62]
push.v self.DRAWNAME
conv.v.b
bf [64]

:[63]
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 1
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e 1
push.v self.FIXY
pushi.e 100
conv.i.d
div.d.v
add.v.i
pushi.e 1
push.v self.FIXY
pushi.e 100
conv.i.d
div.d.v
add.v.i
pushglb.v global.truename
call.i gml_Script_cameray(argc=0)
pushi.e 40
add.i.v
push.v self.FIXY
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 160
add.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[64]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [66]

:[65]
pushi.e 82
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [67]

:[66]
push.e 0

:[67]
bf [end]

:[68]
call.i room_restart(argc=0)
popz.v

:[end]