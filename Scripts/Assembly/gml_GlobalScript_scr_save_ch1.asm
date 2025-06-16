.localvar 2 arguments
.localvar 173 is_valid 4445
.localvar 9683 uraboss 4446

:[0]
b [11]

> gml_Script_scr_save_ch1 (locals=2, argc=0)
:[1]
pushglb.v global.filechoice
call.i gml_Script_scr_saveprocess_ch1(argc=1)
pop.v.v local.is_valid
pushloc.v local.is_valid
conv.v.b
bf [3]

:[2]
pushglb.v global.filechoice
pop.v.v self.filechoicebk2
pushi.e 9
pop.v.i global.filechoice
pushi.e 9
conv.i.v
call.i gml_Script_scr_saveprocess_ch1(argc=1)
pop.v.v local.is_valid
push.v self.filechoicebk2
pop.v.v global.filechoice

:[3]
pushloc.v local.is_valid
conv.v.b
bf [9]

:[4]
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_ini_open_ch1(argc=1)
popz.v
pushglb.v global.truename
push.s "Name"@9672
conv.s.v
push.s "G"@9482
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_string(argc=3)
popz.v
pushglb.v global.lv
push.s "Level"@9675
conv.s.v
push.s "G"@9482
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.llv
push.s "Love"@9677
conv.s.v
push.s "G"@9482
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.time
push.s "Time"@9678
conv.s.v
push.s "G"@9482
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.currentroom
push.s "Room"@9681
conv.s.v
push.s "G"@9482
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushi.e -5
pushi.e 912
push.v [array]self.flag
push.s "InitLang"@9682
conv.s.v
push.s "G"@9482
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
pop.v.i local.uraboss
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i local.uraboss
b [8]

:[6]
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 7
cmp.i.v EQ
bf [8]

:[7]
pushi.e 2
pop.v.i local.uraboss

:[8]
pushloc.v local.uraboss
push.s "UraBoss"@9684
conv.s.v
push.s "G"@9482
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.version
push.s "Version"@9686
conv.s.v
push.s "G"@9482
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_string(argc=3)
popz.v
call.i gml_Script_ossafe_ini_close_ch1(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save_ch1(argc=0)
popz.v

:[9]
pushloc.v local.is_valid
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_scr_save_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_save_ch1
popz.v

:[end]