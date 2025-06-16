.localvar 2 arguments
.localvar 6281 othername_list 4415
.localvar 6283 hp_list 4416
.localvar 6284 maxhp_list 4417
.localvar 6285 at_list 4418
.localvar 6286 df_list 4419
.localvar 6287 mag_list 4420
.localvar 6288 guts_list 4421
.localvar 6289 charweapon_list 4422
.localvar 6290 chararmor1_list 4423
.localvar 6291 chararmor2_list 4424
.localvar 6292 weaponstyle_list 4425
.localvar 6295 item_list 4426
.localvar 6296 keyitem_list 4427
.localvar 6297 weapon_list 4428
.localvar 6298 armor_list 4429
.localvar 6299 litem_list 4430
.localvar 6300 phone_list 4431
.localvar 6301 flag_list 4432
.localvar 12166 room_index 4433
.localvar 13533 room_offset 4434

:[0]
b [108]

> gml_Script_scr_load_ch1 (locals=20, argc=0)
:[1]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 0
pop.v.i self.filechoicebk
push.s "filechoice"@9628
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushglb.v global.filechoice
pop.v.v self.filechoicebk

:[3]
call.i gml_Script_scr_gamestart_ch1(argc=0)
popz.v
push.v self.filechoicebk
pop.v.v global.filechoice
push.s "filech1_"@6276
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
pop.v.v self.file
push.v self.file
call.i gml_Script_ossafe_file_text_open_read_ch1(argc=1)
pop.v.v self.myfileid
pushi.e 1467
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e 1
pop.v.b 1467.save_loaded

:[5]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_string_ch1(argc=1)
pop.v.v global.truename
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [10]

:[6]
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.othername_list
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
pushloc.v local.othername_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [9]

:[8]
push.i 125798091
setowner.e
push.v self.i
pushloc.v local.othername_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.othername
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[9]
pushloc.v local.othername_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
b [13]

:[10]
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [13]

:[12]
push.i 125798091
setowner.e
push.v self.myfileid
call.i file_text_read_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.othername
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[13]
push.i 125798094
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.char
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.char
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.char
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.gold
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.xp
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.lv
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.inv
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.invc
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.darkzone
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [45]

:[14]
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.hp_list
pushi.e 0
pop.v.i self.i

:[15]
push.v self.i
pushloc.v local.hp_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [17]

:[16]
push.i 125798107
setowner.e
push.v self.i
pushloc.v local.hp_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hp
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [15]

:[17]
pushloc.v local.hp_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.maxhp_list
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
pushloc.v local.maxhp_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [20]

:[19]
push.i 125798108
setowner.e
push.v self.i
pushloc.v local.maxhp_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.maxhp
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [18]

:[20]
pushloc.v local.maxhp_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.at_list
pushi.e 0
pop.v.i self.i

:[21]
push.v self.i
pushloc.v local.at_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [23]

:[22]
push.i 125798109
setowner.e
push.v self.i
pushloc.v local.at_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.at
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [21]

:[23]
pushloc.v local.at_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.df_list
pushi.e 0
pop.v.i self.i

:[24]
push.v self.i
pushloc.v local.df_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [26]

:[25]
push.i 125798110
setowner.e
push.v self.i
pushloc.v local.df_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.df
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [24]

:[26]
pushloc.v local.df_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.mag_list
pushi.e 0
pop.v.i self.i

:[27]
push.v self.i
pushloc.v local.mag_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [29]

:[28]
push.i 125798111
setowner.e
push.v self.i
pushloc.v local.mag_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.mag
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [27]

:[29]
pushloc.v local.mag_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.guts_list
pushi.e 0
pop.v.i self.i

:[30]
push.v self.i
pushloc.v local.guts_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [32]

:[31]
push.i 125798112
setowner.e
push.v self.i
pushloc.v local.guts_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.guts
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [30]

:[32]
pushloc.v local.guts_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.charweapon_list
pushi.e 0
pop.v.i self.i

:[33]
push.v self.i
pushloc.v local.charweapon_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [35]

:[34]
push.i 125798113
setowner.e
push.v self.i
pushloc.v local.charweapon_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charweapon
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [33]

:[35]
pushloc.v local.charweapon_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.chararmor1_list
pushi.e 0
pop.v.i self.i

:[36]
push.v self.i
pushloc.v local.chararmor1_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [38]

:[37]
push.i 125798114
setowner.e
push.v self.i
pushloc.v local.chararmor1_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [36]

:[38]
pushloc.v local.chararmor1_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.chararmor2_list
pushi.e 0
pop.v.i self.i

:[39]
push.v self.i
pushloc.v local.chararmor2_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [41]

:[40]
push.i 125798115
setowner.e
push.v self.i
pushloc.v local.chararmor2_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [39]

:[41]
pushloc.v local.chararmor2_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.weaponstyle_list
pushi.e 0
pop.v.i self.i

:[42]
push.v self.i
pushloc.v local.weaponstyle_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [44]

:[43]
push.i 125798116
setowner.e
push.v self.i
pushloc.v local.weaponstyle_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.weaponstyle
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [42]

:[44]
pushloc.v local.weaponstyle_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v

:[45]
pushi.e 0
pop.v.i self.i

:[46]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [56]

:[47]
pushglb.v global.is_console
conv.v.b
not.b
bf [49]

:[48]
push.i 125798107
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hp
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798108
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.maxhp
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798109
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.at
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798110
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.df
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798111
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.mag
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798112
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.guts
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798113
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charweapon
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798114
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798115
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798116
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.weaponstyle
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v

:[49]
pushi.e 0
pop.v.i self.q

:[50]
push.v self.q
pushi.e 4
cmp.i.v LT
bf [52]

:[51]
push.i 125798119
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemat
push.v self.q
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798121
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemdf
push.v self.q
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798123
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemmag
push.v self.q
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798125
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itembolts
push.v self.q
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798127
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemgrazeamt
push.v self.q
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798129
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemgrazesize
push.v self.q
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798131
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemboltspeed
push.v self.q
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798133
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemspecial
push.v self.q
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.q
pushi.e 1
add.i.v
pop.v.v self.q
b [50]

:[52]
pushi.e 0
pop.v.i self.j

:[53]
push.v self.j
pushi.e 12
cmp.i.v LT
bf [55]

:[54]
push.i 125798140
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.spell
push.v self.j
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [53]

:[55]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [46]

:[56]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.boltspeed
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.grazeamt
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.grazesize
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [70]

:[57]
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.item_list
pushi.e 0
pop.v.i self.i

:[58]
push.v self.i
pushloc.v local.item_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [60]

:[59]
push.i 125798147
setowner.e
push.v self.i
pushloc.v local.item_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.item
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [58]

:[60]
pushloc.v local.item_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.keyitem_list
pushi.e 0
pop.v.i self.i

:[61]
push.v self.i
pushloc.v local.keyitem_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [63]

:[62]
push.i 125798148
setowner.e
push.v self.i
pushloc.v local.keyitem_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.keyitem
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [61]

:[63]
pushloc.v local.keyitem_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.weapon_list
pushi.e 0
pop.v.i self.i

:[64]
push.v self.i
pushloc.v local.weapon_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [66]

:[65]
push.i 125798149
setowner.e
push.v self.i
pushloc.v local.weapon_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.weapon
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [64]

:[66]
pushloc.v local.weapon_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.armor_list
pushi.e 0
pop.v.i self.i

:[67]
push.v self.i
pushloc.v local.armor_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [69]

:[68]
push.i 125798150
setowner.e
push.v self.i
pushloc.v local.armor_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.armor
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [67]

:[69]
pushloc.v local.armor_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
b [73]

:[70]
pushi.e 0
pop.v.i self.j

:[71]
push.v self.j
pushi.e 13
cmp.i.v LT
bf [73]

:[72]
push.i 125798147
setowner.e
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.j
conv.v.i
pop.v.v [array]self.item
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.i 125798148
setowner.e
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.j
conv.v.i
pop.v.v [array]self.keyitem
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.i 125798149
setowner.e
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.j
conv.v.i
pop.v.v [array]self.weapon
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.i 125798150
setowner.e
push.v self.myfileid
call.i file_text_read_real(argc=1)
pushi.e -5
push.v self.j
conv.v.i
pop.v.v [array]self.armor
push.v self.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [71]

:[73]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.tension
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.maxtension
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.lweapon
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.larmor
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.lxp
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.llv
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.lgold
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.lhp
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.lmaxhp
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.lat
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.ldf
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.lwstrength
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.ladef
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [84]

:[74]
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.litem_list
pushi.e 0
pop.v.i self.i

:[75]
push.v self.i
pushloc.v local.litem_list
call.i ds_list_size(argc=1)
pushi.e 1
sub.i.v
cmp.v.v LT
bf [77]

:[76]
push.i 125798178
setowner.e
push.v self.i
pushloc.v local.litem_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litem
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [75]

:[77]
pushloc.v local.litem_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.phone_list
pushi.e 0
pop.v.i self.i

:[78]
push.v self.i
pushloc.v local.phone_list
call.i ds_list_size(argc=1)
pushi.e 1
sub.i.v
cmp.v.v LT
bf [80]

:[79]
push.i 125798179
setowner.e
push.v self.i
pushloc.v local.phone_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.phone
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [78]

:[80]
pushloc.v local.phone_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read_ch1(argc=1)
pop.v.v local.flag_list
pushi.e 0
pop.v.i self.i

:[81]
push.v self.i
pushloc.v local.flag_list
call.i ds_list_size(argc=1)
pushi.e 1
sub.i.v
cmp.v.v LT
bf [83]

:[82]
push.i 125798180
setowner.e
push.v self.i
pushloc.v local.flag_list
call.i ds_list_find_value(argc=2)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.flag
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [81]

:[83]
pushloc.v local.flag_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
b [90]

:[84]
pushi.e 0
pop.v.i self.i

:[85]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [87]

:[86]
push.i 125798178
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litem
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.i 125798179
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.phone
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [85]

:[87]
pushi.e 0
pop.v.i self.i

:[88]
push.v self.i
pushi.e 9999
cmp.i.v LT
bf [90]

:[89]
push.i 125798180
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.flag
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [88]

:[90]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.plot
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.currentroom
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real_ch1(argc=1)
pop.v.v global.time
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln_ch1(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_close_ch1(argc=1)
popz.v
pushglb.v global.time
pop.v.v global.lastsavedtime
pushglb.v global.lv
pop.v.v global.lastsavedlv
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 15
push.v [array]self.flag
pushi.e 1
conv.i.v
call.i audio_group_set_gain(argc=3)
popz.v
pushi.e -5
pushi.e 17
push.v [array]self.flag
pushi.e 0
conv.i.v
call.i audio_set_master_gain(argc=2)
popz.v
pushglb.v global.plot
pushi.e 156
cmp.i.v GTE
bf [94]

:[91]
pushi.e 0
pop.v.i self.i

:[92]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [94]

:[93]
push.i 125798835
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charauto
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [92]

:[94]
pushi.e -5
pushi.e 279
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [98]

:[95]
push.i 125798180
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 279
pop.v.v [array]self.flag
pushglb.v global.currentroom
pop.v.v local.room_index
pushloc.v local.room_index
pop.v.v local.room_offset
pushloc.v local.room_index
pushi.e 281
cmp.i.v LT
bf [97]

:[96]
pushi.e 281
pushloc.v local.room_index
add.v.i
pop.v.v local.room_offset

:[97]
pushloc.v local.room_offset
pop.v.v global.currentroom

:[98]
pushglb.v global.filechoice
pushi.e 9
cmp.i.v NEQ
bf [100]

:[99]
pushglb.v global.currentroom
pushglb.v global.chapter
call.i gml_Script_scr_get_valid_room(argc=2)
pop.v.v global.currentroom

:[100]
pushglb.v global.currentroom
pop.v.v self.__loadedroom
push.v self.__loadedroom
pushi.e 377
cmp.i.v EQ
bf [102]

:[101]
pushglb.v global.plot
pushi.e 130
cmp.i.v GTE
b [103]

:[102]
push.e 0

:[103]
bf [105]

:[104]
pushi.e 378
pop.v.i self.__loadedroom

:[105]
call.i gml_Script_scr_dogcheck_ch1(argc=0)
conv.v.b
bf [107]

:[106]
pushi.e 412
pop.v.i self.__loadedroom

:[107]
push.v self.__loadedroom
call.i room_goto(argc=1)
popz.v
push.v self.__loadedroom
pop.v.v global.currentroom
call.i gml_Script_scr_tempsave_ch1(argc=0)
popz.v
exit.i

:[108]
push.i [function]gml_Script_scr_load_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_load_ch1
popz.v

:[end]