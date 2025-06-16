.localvar 2 arguments
.localvar 173 is_valid 21956
.localvar 9635 error_message 21957

:[0]
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
push.v self.coord
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [12]

:[4]
push.v self.save_data_error
conv.v.b
bf [10]

:[5]
pushi.e 27
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [9]

:[6]
pushi.e 0
pop.v.b self.save_data_error
pushi.e 0
pop.v.i global.interact
pushi.e 1351
pushenv [8]

:[7]
pushi.e 3
pop.v.i self.onebuffer

:[8]
popenv [7]
call.i instance_destroy(argc=0)
popz.v

:[9]
exit.i

:[10]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [12]

:[11]
pushi.e 99
pop.v.i self.coord
pushi.e 1
pop.v.i self.endme

:[12]
push.v self.coord
pushi.e 2
cmp.i.v LT
bf [20]

:[13]
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bt [15]

:[14]
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
b [16]

:[15]
push.e 1

:[16]
bf [20]

:[17]
push.v self.coord
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.i self.coord
b [20]

:[19]
pushi.e 1
pop.v.i self.coord

:[20]
push.v self.coord
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [23]

:[22]
push.e 0

:[23]
bf [34]

:[24]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [34]

:[25]
pushi.e 491
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.i [function]gml_Script_scr_save_ch1
conv.i.v
call.i script_execute(argc=1)
pop.v.v local.is_valid
pushi.e 2
pop.v.i self.coord
pushi.e 3
pop.v.i self.buffer
pushloc.v local.is_valid
conv.v.b
bf [33]

:[26]
push.v self.d
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
pushglb.v global.truename
pop.v.v self.name
pushglb.v global.llv
pop.v.v self.love

:[28]
pushbltn.v builtin.room
call.i gml_Script_scr_roomname_ch1(argc=1)
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
bf [30]

:[29]
pushi.e 59
pop.v.i self.seconds

:[30]
push.v self.seconds
pushi.e 10
cmp.i.v LT
bf [32]

:[31]
push.s "0"@3491
push.v self.seconds
call.i string(argc=1)
add.v.s
pop.v.v self.seconds

:[32]
b [34]

:[33]
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

:[34]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [37]

:[35]
push.v self.coord
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 1
pop.v.i self.endme

:[40]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [42]

:[41]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 1
pop.v.i self.endme

:[45]
push.v self.endme
pushi.e 1
cmp.i.v EQ
bf [end]

:[46]
pushi.e 0
pop.v.i global.interact
pushi.e 1351
pushenv [48]

:[47]
pushi.e 3
pop.v.i self.onebuffer

:[48]
popenv [47]
call.i instance_destroy(argc=0)
popz.v

:[end]