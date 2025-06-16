.localvar 2 arguments
.localvar 14540 spacing 6325
.localvar 12067 date 6328

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
push.s "[SPACE] Test Smallface"@14543
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
push.v self.fileExists
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "The file ``smallface.txt`` is not found."@14547
conv.s.v
pushi.e 57
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "Ask for new smallface.txt and add it to"@14548
conv.s.v
pushi.e 71
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "your save directory, then reboot."@14549
conv.s.v
pushi.e 85
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v

:[2]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.haswritten
pushi.e 1
cmp.i.v EQ
bf [9]

:[3]
pushi.e 3
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [5]

:[4]
pushi.e 10
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[5]
pushi.e 14
pop.v.i local.spacing
pushi.e 50
pop.v.i self.ypos
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "smallname = \""@14551
push.v self.smallname
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
push.s "emotion = "@14553
push.v self.emotion
call.i string(argc=1)
add.v.s
push.v self.ypos
pushloc.v local.spacing
pushi.e 1
mul.i.v
add.v.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.position
push.s "name"@3439
cmp.s.v EQ
bf [7]

:[6]
push.s "position = \""@14554
push.v self.position
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
push.s "name_xpos = \""@14555
push.v self.name_xpos
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
push.s "name_ypos = \""@14556
push.v self.name_ypos
add.v.s
push.s "\""@14552
add.s.v
push.v self.ypos
pushloc.v local.spacing
pushi.e 4
mul.i.v
add.v.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v
b [8]

:[7]
push.s "position = \""@14554
push.v self.position
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
push.s "numb_xpos = "@14557
push.v self.numb_xpos
call.i string(argc=1)
add.v.s
push.v self.ypos
pushloc.v local.spacing
pushi.e 3
mul.i.v
add.v.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "numb_ypos = "@14558
push.v self.numb_ypos
call.i string(argc=1)
add.v.s
push.v self.ypos
pushloc.v local.spacing
pushi.e 4
mul.i.v
add.v.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v

:[8]
push.s "smalltext = \""@14560
push.v self.smalltext
add.v.s
push.s "\""@14552
add.s.v
push.v self.ypos
pushloc.v local.spacing
pushi.e 5
mul.i.v
add.v.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "maintext = \""@14561
push.v self.maintext
add.v.s
push.s "\""@14552
add.s.v
push.v self.ypos
pushloc.v local.spacing
pushi.e 6
mul.i.v
add.v.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v

:[9]
pushi.e 49
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [11]

:[10]
pushi.e 0
pop.v.i global.darkzone
pushi.e 6
conv.i.v
call.i room_goto(argc=1)
popz.v

:[11]
pushi.e 50
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [13]

:[12]
pushi.e 1
pop.v.i global.darkzone
pushi.e 8
conv.i.v
call.i room_goto(argc=1)
popz.v

:[13]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [20]

:[14]
pushi.e 1
pop.v.i self.haswritten
pushi.e 64
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
push.v self.fileExists
conv.v.b
bf [19]

:[15]
push.s "smallface.txt"@14539
conv.s.v
call.i ini_open(argc=1)
popz.v
push.s "susie"@70
conv.s.v
push.s "smallname"@14529
conv.s.v
push.s "smallface"@14562
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.smallname
pushi.e 0
conv.i.v
push.s "emotion"@9308
conv.s.v
push.s "smallface"@14562
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.emotion
push.s "name"@3439
conv.s.v
push.s "position"@14530
conv.s.v
push.s "smallface"@14562
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.position
push.s "right"@4637
conv.s.v
push.s "name_xpos"@14531
conv.s.v
push.s "smallface"@14562
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.name_xpos
push.s "bottom"@4636
conv.s.v
push.s "name_ypos"@14532
conv.s.v
push.s "smallface"@14562
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.name_ypos
pushi.e 80
conv.i.v
push.s "numb_xpos"@14533
conv.s.v
push.s "smallface"@14562
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.numb_xpos
pushi.e 120
conv.i.v
push.s "numb_ypos"@14559
conv.s.v
push.s "smallface"@14562
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.numb_ypos
push.s "Example Dialogue."@14534
conv.s.v
push.s "smalltext"@14535
conv.s.v
push.s "smallface"@14562
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.smalltext
push.s "* Example text."@14563
conv.s.v
push.s "maintext"@14537
conv.s.v
push.s "smallface"@14562
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.maintext
call.i ini_close(argc=0)
popz.v
push.v self.position
push.s "name"@3439
cmp.s.v EQ
bf [17]

:[16]
push.v self.smalltext
push.v self.name_ypos
push.v self.name_xpos
push.v self.emotion
push.v self.smallname
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
b [18]

:[17]
push.v self.smalltext
push.v self.numb_ypos
push.v self.numb_xpos
push.v self.emotion
push.v self.smallname
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v

:[18]
push.i 231251
setowner.e
push.v self.maintext
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
b [20]

:[19]
pushi.e 290
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[20]
call.i gml_Script_d_ex(argc=0)
conv.v.b
bf [22]

:[21]
pushi.e 1
pop.v.i global.interact
b [23]

:[22]
pushi.e 0
pop.v.i global.interact

:[23]
pushi.e 80
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [25]

:[24]
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
push.s "Smallface_Screenshot_"@14564
pushloc.v local.date
add.v.s
push.s ".png"@14465
add.s.v
call.i screen_save(argc=1)
popz.v

:[25]
pushi.e 67
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[26]
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
bf [28]

:[27]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[28]
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

:[end]