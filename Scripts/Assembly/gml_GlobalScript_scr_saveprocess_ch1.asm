.localvar 2 arguments
.localvar 173 is_valid 4449

:[0]
b [36]

> gml_Script_scr_saveprocess_ch1 (locals=1, argc=1)
:[1]
pushglb.v global.time
pop.v.v global.lastsavedtime
pushglb.v global.lv
pop.v.v global.lastsavedlv
push.s "filech1_"@6276
push.v arg.argument0
call.i string(argc=1)
add.v.s
pop.v.v self.file
push.v self.file
call.i gml_Script_ossafe_file_text_open_write_ch1(argc=1)
pop.v.v self.myfileid
pushglb.v global.truename
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_string_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [3]

:[2]
pushi.e 6
conv.i.v
pushglb.v global.othername
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
b [6]

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [6]

:[5]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.othername
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_string_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
pushi.e -5
pushi.e 0
push.v [array]self.char
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.char
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e -5
pushi.e 2
push.v [array]self.char
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.gold
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.xp
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.lv
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.inv
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.invc
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.darkzone
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [8]

:[7]
pushi.e 4
conv.i.v
pushglb.v global.hp
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e 4
conv.i.v
pushglb.v global.maxhp
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e 4
conv.i.v
pushglb.v global.at
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e 4
conv.i.v
pushglb.v global.df
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e 4
conv.i.v
pushglb.v global.mag
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e 4
conv.i.v
pushglb.v global.guts
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e 4
conv.i.v
pushglb.v global.charweapon
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e 4
conv.i.v
pushglb.v global.chararmor1
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e 4
conv.i.v
pushglb.v global.chararmor2
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e 4
conv.i.v
pushglb.v global.weaponstyle
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v

:[8]
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [19]

:[10]
pushglb.v global.is_console
conv.v.b
not.b
bf [12]

:[11]
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
call.i file_text_write_string(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v

:[12]
pushi.e 0
pop.v.i self.q

:[13]
push.v self.q
pushi.e 4
cmp.i.v LT
bf [15]

:[14]
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.itemat
push.v self.q
conv.v.i
pushaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.itemdf
push.v self.q
conv.v.i
pushaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.itemmag
push.v self.q
conv.v.i
pushaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.itembolts
push.v self.q
conv.v.i
pushaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.itemgrazeamt
push.v self.q
conv.v.i
pushaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.itemgrazesize
push.v self.q
conv.v.i
pushaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.itemboltspeed
push.v self.q
conv.v.i
pushaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.itemspecial
push.v self.q
conv.v.i
pushaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
push.v self.q
pushi.e 1
add.i.v
pop.v.v self.q
b [13]

:[15]
pushi.e 0
pop.v.i self.j

:[16]
push.v self.j
pushi.e 12
cmp.i.v LT
bf [18]

:[17]
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypushaf]self.spell
push.v self.j
conv.v.i
pushaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [16]

:[18]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [9]

:[19]
pushglb.v global.boltspeed
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.grazeamt
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.grazesize
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [21]

:[20]
pushi.e 13
conv.i.v
pushglb.v global.item
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e 13
conv.i.v
pushglb.v global.keyitem
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e 13
conv.i.v
pushglb.v global.weapon
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e 13
conv.i.v
pushglb.v global.armor
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
b [24]

:[21]
pushi.e 0
pop.v.i self.j

:[22]
push.v self.j
pushi.e 13
cmp.i.v LT
bf [24]

:[23]
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
b [22]

:[24]
pushglb.v global.tension
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.maxtension
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.lweapon
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.larmor
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.lxp
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.llv
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.lgold
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.lhp
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.lmaxhp
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.lat
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.ldf
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.lwstrength
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.ladef
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [26]

:[25]
pushi.e 8
conv.i.v
pushglb.v global.litem
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e 8
conv.i.v
pushglb.v global.phone
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushi.e 9999
conv.i.v
pushglb.v global.flag
call.i gml_Script_scr_ds_list_write_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
b [32]

:[26]
pushi.e 0
pop.v.i self.i

:[27]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [29]

:[28]
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
b [27]

:[29]
pushi.e 0
pop.v.i self.i

:[30]
push.v self.i
pushi.e 9999
cmp.i.v LT
bf [32]

:[31]
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
b [30]

:[32]
pushglb.v global.plot
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.currentroom
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_writeln_ch1(argc=1)
popz.v
pushglb.v global.time
push.v self.myfileid
call.i gml_Script_ossafe_file_text_write_real_ch1(argc=2)
popz.v
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [34]

:[33]
pushglb.v global.plot
pushglb.v global.currentroom
pushglb.v global.chapter
call.i gml_Script_scr_add_valid_room(argc=3)
popz.v

:[34]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_close_ch1(argc=1)
pop.v.v local.is_valid
pushloc.v local.is_valid
ret.v

:[35]
exit.i

:[36]
push.i [function]gml_Script_scr_saveprocess_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_saveprocess_ch1
popz.v

:[end]