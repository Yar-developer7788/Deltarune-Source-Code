.localvar 2 arguments
.localvar 12067 date 6227

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [2]

:[1]
push.v self.marker3
push.v self.marker2
push.v self.marker1
pushi.e 0
conv.i.v
pushi.e 74
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v

:[2]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [4]

:[3]
call.i audio_stop_all(argc=0)
popz.v

:[4]
push.v self.timer
pushi.e 60
cmp.i.v GT
bf [17]

:[5]
pushi.e 49
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 870
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 50
pop.v.i global.typer
push.s "ballooner.txt"@14441
conv.s.v
call.i ini_open(argc=1)
popz.v
push.v self.text
push.s "text"@164
conv.s.v
push.s "ballooner"@14442
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.text
call.i ini_close(argc=0)
popz.v
push.v self.text
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
push.s "kr"@69
conv.s.v
call.i gml_Script_scr_heroblcon(argc=1)
popz.v

:[7]
pushi.e 50
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [9]

:[8]
pushi.e 870
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 50
pop.v.i global.typer
push.s "ballooner.txt"@14441
conv.s.v
call.i ini_open(argc=1)
popz.v
push.v self.text
push.s "text"@164
conv.s.v
push.s "ballooner"@14442
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.text
call.i ini_close(argc=0)
popz.v
push.v self.text
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
push.s "su"@71
conv.s.v
call.i gml_Script_scr_heroblcon(argc=1)
popz.v

:[9]
pushi.e 51
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [11]

:[10]
pushi.e 870
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 50
pop.v.i global.typer
push.s "ballooner.txt"@14441
conv.s.v
call.i ini_open(argc=1)
popz.v
push.v self.text
push.s "text"@164
conv.s.v
push.s "ballooner"@14442
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.text
call.i ini_close(argc=0)
popz.v
push.v self.text
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
push.s "ra"@73
conv.s.v
call.i gml_Script_scr_heroblcon(argc=1)
popz.v

:[11]
pushi.e 52
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [13]

:[12]
pushi.e 870
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 50
pop.v.i global.typer
push.s "ballooner.txt"@14441
conv.s.v
call.i ini_open(argc=1)
popz.v
push.v self.text
push.s "text"@164
conv.s.v
push.s "ballooner"@14442
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.text
call.i ini_close(argc=0)
popz.v
push.v self.text
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.monstery
push.v self.ymod
add.v.v
pushi.e -5
pushi.e 0
push.v [array]self.monsterx
push.v self.xmod
add.v.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v

:[13]
pushi.e 53
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [15]

:[14]
pushi.e 870
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 50
pop.v.i global.typer
push.s "ballooner.txt"@14441
conv.s.v
call.i ini_open(argc=1)
popz.v
push.v self.text
push.s "text"@164
conv.s.v
push.s "ballooner"@14442
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.text
call.i ini_close(argc=0)
popz.v
push.v self.text
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.monstery
push.v self.ymod
add.v.v
pushi.e -5
pushi.e 1
push.v [array]self.monsterx
push.v self.xmod
add.v.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v

:[15]
pushi.e 54
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [17]

:[16]
pushi.e 870
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 50
pop.v.i global.typer
push.s "ballooner.txt"@14441
conv.s.v
call.i ini_open(argc=1)
popz.v
push.v self.text
push.s "text"@164
conv.s.v
push.s "ballooner"@14442
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.text
call.i ini_close(argc=0)
popz.v
push.v self.text
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]self.monstery
push.v self.ymod
add.v.v
pushi.e -5
pushi.e 2
push.v [array]self.monsterx
push.v self.xmod
add.v.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v

:[17]
pushi.e 84
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [19]

:[18]
push.s "ballooner.txt"@14441
conv.s.v
call.i ini_open(argc=1)
popz.v
push.v self.text
push.s "text"@164
conv.s.v
push.s "ballooner"@14442
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.text
call.i ini_close(argc=0)
popz.v

:[19]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 300
conv.i.v
pushi.e 640
conv.i.v
pushi.e 292
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
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
pushi.e 296
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "[1] kris balloon"@14444
conv.s.v
pushi.e 300
conv.i.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "[2] ralsei balloon"@14445
conv.s.v
pushi.e 320
conv.i.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "[3] susie balloon"@14446
conv.s.v
pushi.e 340
conv.i.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "[4] enemy 1 balloon"@14447
conv.s.v
pushi.e 300
conv.i.v
pushi.e 150
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "[5] enemy 2 balloon"@14448
conv.s.v
pushi.e 320
conv.i.v
pushi.e 150
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "[6] enemy 3 balloon"@14449
conv.s.v
pushi.e 340
conv.i.v
pushi.e 150
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "[P] Take Screenshot"@14450
conv.s.v
pushi.e 360
conv.i.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "[C] Switch Language"@14451
conv.s.v
pushi.e 360
conv.i.v
pushi.e 150
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "global.lang="@14452
pushglb.v global.lang
add.v.s
pushi.e 360
conv.i.v
pushi.e 300
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "Current Text String Loaded (Press T to Reload from ballooner.txt)"@14453
conv.s.v
pushi.e 390
conv.i.v
pushi.e 320
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [21]

:[20]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
b [22]

:[21]
pushi.e 8
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[22]
push.v self.text
pushi.e 410
conv.i.v
pushi.e 320
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "[  LEFT  /  RIGHT]    Balloon X Modifier:"@14454
conv.s.v
pushi.e 310
conv.i.v
pushi.e 300
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "[   UP   /      DOWN ]    Balloon Y Modifier:"@14455
conv.s.v
pushi.e 330
conv.i.v
pushi.e 300
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.xmod
call.i string(argc=1)
pushi.e 310
conv.i.v
pushi.e 570
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.ymod
call.i string(argc=1)
pushi.e 330
conv.i.v
pushi.e 570
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.timer
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [31]

:[23]
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [25]

:[24]
push.v self.xmod
push.e 1
sub.i.v
pop.v.v self.xmod

:[25]
call.i gml_Script_right_h(argc=0)
conv.v.b
bf [27]

:[26]
push.v self.xmod
push.e 1
add.i.v
pop.v.v self.xmod

:[27]
call.i gml_Script_up_h(argc=0)
conv.v.b
bf [29]

:[28]
push.v self.ymod
push.e 1
sub.i.v
pop.v.v self.ymod

:[29]
call.i gml_Script_down_h(argc=0)
conv.v.b
bf [31]

:[30]
push.v self.ymod
push.e 1
add.i.v
pop.v.v self.ymod

:[31]
pushi.e 67
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [33]

:[32]
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
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.s "PLEASE WAIT WHILE WE LOAD THE TEXT"@14456
conv.s.v
pushi.e 200
conv.i.v
pushi.e 320
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "THE ROOM WILL BE RELOADED"@14457
conv.s.v
pushi.e 240
conv.i.v
pushi.e 320
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[33]
pushi.e 80
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[34]
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
push.s "Ballooner_Screenshot_"@14464
pushloc.v local.date
add.v.s
push.s ".png"@14465
add.s.v
call.i screen_save(argc=1)
popz.v

:[end]