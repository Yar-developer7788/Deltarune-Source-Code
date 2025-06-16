.localvar 2 arguments
.localvar 36750 gif_release 18420

:[0]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[1]
pushi.e 71
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [4]

:[2]
pushi.e 17
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
not.b
bf [4]

:[3]
push.v self.gif_recording
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.gif_recording
pushi.e 0
pop.v.i self.gif_timer
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
pop.v.v self.gif_date

:[7]
push.v self.gif_recording
conv.v.b
bf [end]

:[8]
pushi.e 0
pop.v.i local.gif_release
pushi.e 71
conv.i.v
call.i keyboard_check_released(argc=1)
conv.v.b
bf [10]

:[9]
pushi.e 1
pop.v.i local.gif_release

:[10]
push.v self.gif_timer
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
call.i gif_open(argc=2)
pop.v.v self.gif_image
b [21]

:[12]
push.v self.gif_timer
pushi.e 600
cmp.i.v LT
bf [14]

:[13]
pushloc.v local.gif_release
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [20]

:[16]
pushi.e 16
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [18]

:[17]
pushi.e 10
conv.i.v
pushbltn.v builtin.application_surface
push.v self.gif_image
call.i gif_add_surface(argc=3)
popz.v
b [19]

:[18]
push.d 3.3333333333333335
conv.d.v
pushbltn.v builtin.application_surface
push.v self.gif_image
call.i gif_add_surface(argc=3)
popz.v

:[19]
b [21]

:[20]
push.s "game_"@36754
push.v self.gif_date
add.v.s
push.s ".gif"@36755
add.s.v
push.v self.gif_image
call.i gif_save(argc=2)
popz.v
pushi.e 0
pop.v.i self.gif_timer
pushi.e 0
pop.v.b self.gif_recording

:[21]
push.v self.gif_timer
push.e 1
add.i.v
pop.v.v self.gif_timer

:[end]