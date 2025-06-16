.localvar 2 arguments
.localvar 14540 spacing 13888
.localvar 12067 date 13889

:[0]
push.d 0.8
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.i 8421376
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 12
pop.v.i local.spacing
push.s "[1]     Light World"@14541
conv.s.v
pushi.e -3
pushloc.v local.spacing
pushi.e 0
mul.i.v
add.v.i
pushi.e 1
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "[2]     Dark World"@14542
conv.s.v
pushi.e -3
pushloc.v local.spacing
pushi.e 1
mul.i.v
add.v.i
pushi.e 1
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "[SPACE] Test Choicer"@26851
conv.s.v
pushi.e -3
pushloc.v local.spacing
pushi.e 2
mul.i.v
add.v.i
pushi.e 1
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "[C] Switch Language global.lang="@14544
pushglb.v global.lang
call.i string(argc=1)
add.v.s
pushi.e -3
pushloc.v local.spacing
pushi.e 3
mul.i.v
add.v.i
pushi.e 1
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 52
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [2]

:[1]
push.v global.typer
push.e 1
sub.i.v
pop.v.v global.typer

:[2]
pushi.e 53
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [4]

:[3]
push.v global.typer
push.e 1
add.i.v
pop.v.v global.typer

:[4]
push.s "[P]     Screenshot"@14545
conv.s.v
pushi.e -3
pushloc.v local.spacing
pushi.e 0
mul.i.v
add.v.i
pushi.e 141
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "[R]     Reset Room"@14546
conv.s.v
pushi.e -3
pushloc.v local.spacing
pushi.e 1
mul.i.v
add.v.i
pushi.e 141
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.haswritten
pushi.e 1
cmp.i.v EQ
bf [11]

:[5]
pushi.e 3
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [7]

:[6]
pushi.e 10
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[7]
pushi.e 14
pop.v.i local.spacing
pushi.e 72
pop.v.i self.ypos
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "c1 = \""@26852
push.v self.c1
add.v.s
push.s "\""@14552
add.s.v
push.v self.ypos
pushloc.v local.spacing
pushi.e 0
mul.i.v
add.v.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "c2 = \""@26853
push.v self.c2
add.v.s
push.s "\""@14552
add.s.v
push.v self.ypos
pushloc.v local.spacing
pushi.e 1
mul.i.v
add.v.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.promptcount
pushi.e 2
cmp.i.v GT
bf [9]

:[8]
push.s "c3 = \""@26854
push.v self.c3
add.v.s
push.s "\""@14552
add.s.v
push.v self.ypos
pushloc.v local.spacing
pushi.e 2
mul.i.v
add.v.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v

:[9]
push.v self.promptcount
pushi.e 3
cmp.i.v GT
bf [11]

:[10]
push.s "c4 = \""@26855
push.v self.c4
add.v.s
push.s "\""@14552
add.s.v
push.v self.ypos
pushloc.v local.spacing
pushi.e 3
mul.i.v
add.v.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v

:[11]
pushi.e 49
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [13]

:[12]
pushi.e 0
pop.v.i global.darkzone
pushi.e 5
conv.i.v
call.i room_goto(argc=1)
popz.v

:[13]
pushi.e 50
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [15]

:[14]
pushi.e 1
pop.v.i global.darkzone
pushi.e 9
conv.i.v
call.i room_goto(argc=1)
popz.v

:[15]
pushi.e 67
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [19]

:[16]
push.d 0.9
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[18]
push.s "PLEASE WAIT WHILE WE LOAD THE TEXT"@14456
conv.s.v
pushi.e 100
pushi.e 1
pushglb.v global.darkzone
add.v.i
mul.v.i
pushi.e 160
pushi.e 1
pushglb.v global.darkzone
add.v.i
mul.v.i
call.i draw_text(argc=3)
popz.v
push.s "THE ROOM WILL BE RELOADED"@14457
conv.s.v
pushi.e 120
pushi.e 1
pushglb.v global.darkzone
add.v.i
mul.v.i
pushi.e 160
pushi.e 1
pushglb.v global.darkzone
add.v.i
mul.v.i
call.i draw_text(argc=3)
popz.v
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[19]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [33]

:[20]
pushi.e 1
pop.v.i self.haswritten
pushi.e 59
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
push.v self.fileExists
conv.v.b
bf [33]

:[21]
push.s "choicer.txt"@26849
conv.s.v
call.i ini_open(argc=1)
popz.v
push.v self.q
push.s "question"@26850
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.q
push.v self.c1
push.s "c1"@26841
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.c1
push.v self.c2
push.s "c2"@26843
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.c2
push.v self.c3
push.s "c3"@26845
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.c3
push.v self.c4
push.s "c4"@26847
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.c4
push.v self.promptcount
push.s "promptcount"@26848
conv.s.v
push.s "choicer"@14923
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.promptcount
call.i ini_close(argc=0)
popz.v
push.v self.position
push.s "name"@3439
cmp.s.v EQ
bf [23]

:[22]
push.v self.smalltext
push.v self.name_ypos
push.v self.name_xpos
push.v self.emotion
push.v self.smallname
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
b [24]

:[23]
push.v self.smalltext
push.v self.numb_ypos
push.v self.numb_xpos
push.v self.emotion
push.v self.smallname
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v

:[24]
push.i 231305
setowner.e
push.v self.c1
pushi.e -5
pushi.e 0
pop.v.v [array]self.choicemsg
push.v self.c2
pushi.e -5
pushi.e 1
pop.v.v [array]self.choicemsg
push.v self.c3
pushi.e -5
pushi.e 2
pop.v.v [array]self.choicemsg
push.v self.c4
pushi.e -5
pushi.e 3
pop.v.v [array]self.choicemsg
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.v self.q
push.s "/"@4448
add.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
push.v self.promptcount
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.s "\\C1 "@26856
conv.s.v
call.i gml_Script_msgnext(argc=1)
popz.v

:[26]
push.v self.promptcount
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
push.s "\\C2 "@799
conv.s.v
call.i gml_Script_msgnext(argc=1)
popz.v

:[28]
push.v self.promptcount
pushi.e 3
cmp.i.v EQ
bf [30]

:[29]
push.s "\\C3 "@1161
conv.s.v
call.i gml_Script_msgnext(argc=1)
popz.v

:[30]
push.v self.promptcount
pushi.e 4
cmp.i.v EQ
bf [32]

:[31]
push.s "\\C4 "@1286
conv.s.v
call.i gml_Script_msgnext(argc=1)
popz.v

:[32]
push.s "obj_debug_choicer_slash_Draw_0_gml_105_0"@26857
conv.s.v
push.s "\\C4 "@1286
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side

:[33]
call.i gml_Script_d_ex(argc=0)
conv.v.b
bf [35]

:[34]
pushi.e 1
pop.v.i global.interact
b [36]

:[35]
pushi.e 0
pop.v.i global.interact

:[36]
pushi.e 80
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[37]
pushi.e 204
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i date_current_datetime(argc=0)
call.i date_get_year(argc=1)
call.i string(argc=1)
push.s "_"@9692
add.s.v
call.i date_current_datetime(argc=0)
call.i date_get_month(argc=1)
call.i string(argc=1)
add.v.v
push.s "_"@9692
add.s.v
call.i date_current_datetime(argc=0)
call.i date_get_day(argc=1)
call.i string(argc=1)
add.v.v
push.s "_"@9692
add.s.v
call.i date_current_datetime(argc=0)
call.i date_get_hour(argc=1)
call.i string(argc=1)
add.v.v
push.s "_"@9692
add.s.v
call.i date_current_datetime(argc=0)
call.i date_get_minute(argc=1)
call.i string(argc=1)
add.v.v
push.s "_"@9692
add.s.v
call.i date_current_datetime(argc=0)
call.i date_get_second(argc=1)
call.i string(argc=1)
add.v.v
pop.v.v local.date
push.s "Choicer_Screenshot_"@26858
pushloc.v local.date
add.v.s
push.s ".png"@14465
add.s.v
call.i screen_save(argc=1)
popz.v

:[end]