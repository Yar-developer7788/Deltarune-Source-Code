.localvar 2 arguments
.localvar 173 is_valid 1888
.localvar 9683 uraboss 1890

:[0]
b [17]

> gml_Script_scr_save (locals=2, argc=0)
:[1]
pushglb.v global.filechoice
call.i gml_Script_scr_saveprocess(argc=1)
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
call.i gml_Script_scr_saveprocess(argc=1)
pop.v.v local.is_valid

:[3]
pushloc.v local.is_valid
conv.v.b
bf [15]

:[4]
push.v self.filechoicebk2
pop.v.v global.filechoice
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_ini_open(argc=1)
pop.v.v self.iniwrite
pushglb.v global.truename
push.s "Name"@9672
conv.s.v
pushglb.v global.filechoice
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_string(argc=3)
popz.v
pushglb.v global.lv
push.s "Level"@9675
conv.s.v
pushglb.v global.filechoice
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.llv
push.s "Love"@9677
conv.s.v
pushglb.v global.filechoice
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.time
push.s "Time"@9678
conv.s.v
pushglb.v global.filechoice
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
call.i date_current_datetime(argc=0)
push.s "Date"@9680
conv.s.v
pushglb.v global.filechoice
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
pushbltn.v builtin.room
push.s "Room"@9681
conv.s.v
pushglb.v global.filechoice
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
pushi.e -5
pushi.e 912
push.v [array]self.flag
push.s "InitLang"@9682
conv.s.v
pushglb.v global.filechoice
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
pop.v.i local.uraboss
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [9]

:[5]
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i local.uraboss
b [9]

:[7]
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 7
cmp.i.v EQ
bf [9]

:[8]
pushi.e 2
pop.v.i local.uraboss

:[9]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [14]

:[10]
pushi.e -5
pushi.e 571
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i local.uraboss
b [14]

:[12]
pushi.e -5
pushi.e 571
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
pushi.e 2
pop.v.i local.uraboss

:[14]
pushloc.v local.uraboss
push.s "UraBoss"@9684
conv.s.v
pushglb.v global.filechoice
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
pushglb.v global.version
push.s "Version"@9686
conv.s.v
pushglb.v global.filechoice
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_string(argc=3)
popz.v
call.i gml_Script_ossafe_ini_close(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save(argc=0)
popz.v

:[15]
pushloc.v local.is_valid
ret.v

:[16]
exit.i

:[17]
push.i [function]gml_Script_scr_save
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_save
popz.v

:[end]