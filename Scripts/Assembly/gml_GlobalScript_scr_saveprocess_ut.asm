.localvar 2 arguments

:[0]
b [11]

> gml_Script_scr_saveprocess_ut (locals=0, argc=0)
:[1]
pushglb.v global.kills
pop.v.v global.lastsavedkills
push.v 1134.time
pop.v.v global.lastsavedtime
pushglb.v global.lv
pop.v.v global.lastsavedlv
push.s "file"@6278
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
pop.v.v self.file
push.v self.file
call.i file_text_open_write(argc=1)
pop.v.v self.myfileid
pushglb.v global.charname
push.v self.myfileid
call.i file_text_write_string(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.lv
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.maxhp
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.maxen
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.at
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.wstrength
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.df
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.adef
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.sp
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.xp
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.gold
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.kills
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [4]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.item
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.phone
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushglb.v global.weapon
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.armor
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 512
cmp.i.v LT
bf [7]

:[6]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.flag
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[7]
pushglb.v global.plot
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [10]

:[9]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.menuchoice
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [8]

:[10]
pushglb.v global.currentsong
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.currentroom
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
push.v 1134.time
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_close(argc=1)
popz.v
exit.i

:[11]
push.i [function]gml_Script_scr_saveprocess_ut
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_saveprocess_ut
popz.v

:[end]