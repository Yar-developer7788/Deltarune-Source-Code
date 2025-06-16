.localvar 2 arguments
.localvar 336 chapter 3518
.localvar 9628 filechoice 3519

:[0]
b [23]

> gml_Script_scr_debug_premade_save (locals=2, argc=0)
:[1]
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v local.chapter
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v local.filechoice
push.s "filech"@9691
pushloc.v local.chapter
call.i string(argc=1)
add.v.s
push.s "_"@9692
add.s.v
pushloc.v local.filechoice
call.i string(argc=1)
add.v.v
pop.v.v self.file
push.v self.file
call.i file_text_open_write(argc=1)
pop.v.v self.myfileid
pushglb.v global.truename
push.v self.myfileid
call.i file_text_write_string(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [4]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.othername
push.v self.myfileid
call.i file_text_write_string(argc=2)
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
pushi.e -5
pushi.e 0
push.v [array]self.char
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.char
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
pushi.e 2
push.v [array]self.char
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
conv.i.v
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
pushi.e 4
cmp.i.v LT
bf [13]

:[6]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.hp
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.maxhp
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.at
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.df
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.mag
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.guts
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charweapon
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.chararmor1
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.chararmor2
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.weaponstyle
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
pop.v.i self.q

:[7]
push.v self.q
pushi.e 4
cmp.i.v LT
bf [9]

:[8]
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.itemat
push.v self.q
conv.v.i
pushaf.e
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.itemdf
push.v self.q
conv.v.i
pushaf.e
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.itemmag
push.v self.q
conv.v.i
pushaf.e
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.itembolts
push.v self.q
conv.v.i
pushaf.e
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.itemgrazeamt
push.v self.q
conv.v.i
pushaf.e
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.itemgrazesize
push.v self.q
conv.v.i
pushaf.e
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.itemboltspeed
push.v self.q
conv.v.i
pushaf.e
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.itemspecial
push.v self.q
conv.v.i
pushaf.e
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
push.v self.q
pushi.e 1
add.i.v
pop.v.v self.q
b [7]

:[9]
pushi.e 0
pop.v.i self.j

:[10]
push.v self.j
pushi.e 12
cmp.i.v LT
bf [12]

:[11]
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.spell
push.v self.j
conv.v.i
pushaf.e
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [10]

:[12]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[13]
pushglb.v global.boltspeed
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.grazeamt
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.grazesize
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
pop.v.i self.j

:[14]
push.v self.j
pushi.e 13
cmp.i.v LT
bf [16]

:[15]
pushi.e -5
push.v self.j
conv.v.i
push.v [array]self.item
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.j
conv.v.i
push.v [array]self.keyitem
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.j
conv.v.i
push.v [array]self.weapon
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e -5
push.v self.j
conv.v.i
push.v [array]self.armor
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [14]

:[16]
pushglb.v global.tension
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushglb.v global.maxtension
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 2
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 3
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 2
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 10
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [19]

:[18]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.litem
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
b [17]

:[19]
pushi.e 0
pop.v.i self.i

:[20]
push.v self.i
pushi.e 9999
cmp.i.v LT
bf [22]

:[21]
pushi.e 0
conv.i.v
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
b [20]

:[22]
pushi.e 251
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 28
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
pushi.e 14400
conv.i.v
push.v self.myfileid
call.i file_text_write_real(argc=2)
popz.v
push.v self.myfileid
call.i file_text_close(argc=1)
popz.v
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_ini_open(argc=1)
popz.v
push.s "Kris"@1493
conv.s.v
push.s "Name"@9672
conv.s.v
push.s "G"@9482
pushloc.v local.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_string(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "Level"@9675
conv.s.v
push.s "G"@9482
pushloc.v local.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "Love"@9677
conv.s.v
push.s "G"@9482
pushloc.v local.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushi.e 14400
conv.i.v
push.s "Time"@9678
conv.s.v
push.s "G"@9482
pushloc.v local.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushi.e 28
conv.i.v
push.s "Room"@9681
conv.s.v
push.s "G"@9482
pushloc.v local.filechoice
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
pushloc.v local.filechoice
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
call.i gml_Script_ossafe_ini_close(argc=0)
popz.v
exit.i

:[23]
push.i [function]gml_Script_scr_debug_premade_save
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_debug_premade_save
popz.v

:[end]