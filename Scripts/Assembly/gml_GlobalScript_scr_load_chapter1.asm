.localvar 2 arguments
.localvar 6281 othername_list 1868
.localvar 6283 hp_list 1869
.localvar 6284 maxhp_list 1870
.localvar 6285 at_list 1871
.localvar 6286 df_list 1872
.localvar 6287 mag_list 1873
.localvar 6288 guts_list 1874
.localvar 6289 charweapon_list 1875
.localvar 6290 chararmor1_list 1876
.localvar 6291 chararmor2_list 1877
.localvar 6292 weaponstyle_list 1878
.localvar 6295 item_list 1879
.localvar 6296 keyitem_list 1880
.localvar 6297 weapon_list 1881
.localvar 6298 armor_list 1882
.localvar 6299 litem_list 1883
.localvar 6300 phone_list 1884
.localvar 6301 flag_list 1885

:[0]
b [92]

> gml_Script_scr_load_chapter1 (locals=18, argc=0)
:[1]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushglb.v global.filechoice
pop.v.v self.filechoicebk
call.i gml_Script_scr_gamestart(argc=0)
popz.v
push.v self.filechoicebk
pop.v.v global.filechoice
push.s "filech1_"@6276
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
pop.v.v self.file
push.v self.file
call.i gml_Script_ossafe_file_text_open_read(argc=1)
pop.v.v self.myfileid
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_string(argc=1)
pop.v.v global.truename
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [6]

:[2]
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.othername_list
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushloc.v local.othername_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [5]

:[4]
push.i 41780939
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
b [3]

:[5]
pushloc.v local.othername_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
b [9]

:[6]
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [9]

:[8]
push.i 41780939
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_string(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.othername
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[9]
push.i 41780942
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.char
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.char
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.char
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.gold
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.xp
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.lv
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.inv
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.invc
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.darkzone
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [41]

:[10]
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.hp_list
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
pushloc.v local.hp_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [13]

:[12]
push.i 41780955
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
b [11]

:[13]
pushloc.v local.hp_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.maxhp_list
pushi.e 0
pop.v.i self.i

:[14]
push.v self.i
pushloc.v local.maxhp_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [16]

:[15]
push.i 41780956
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
b [14]

:[16]
pushloc.v local.maxhp_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.at_list
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
pushloc.v local.at_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [19]

:[18]
push.i 41780957
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
b [17]

:[19]
pushloc.v local.at_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.df_list
pushi.e 0
pop.v.i self.i

:[20]
push.v self.i
pushloc.v local.df_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [22]

:[21]
push.i 41780958
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
b [20]

:[22]
pushloc.v local.df_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.mag_list
pushi.e 0
pop.v.i self.i

:[23]
push.v self.i
pushloc.v local.mag_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [25]

:[24]
push.i 41780959
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
b [23]

:[25]
pushloc.v local.mag_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.guts_list
pushi.e 0
pop.v.i self.i

:[26]
push.v self.i
pushloc.v local.guts_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [28]

:[27]
push.i 41780960
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
b [26]

:[28]
pushloc.v local.guts_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.charweapon_list
pushi.e 0
pop.v.i self.i

:[29]
push.v self.i
pushloc.v local.charweapon_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [31]

:[30]
push.i 41780961
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
b [29]

:[31]
pushloc.v local.charweapon_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.chararmor1_list
pushi.e 0
pop.v.i self.i

:[32]
push.v self.i
pushloc.v local.chararmor1_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [34]

:[33]
push.i 41780962
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
b [32]

:[34]
pushloc.v local.chararmor1_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.chararmor2_list
pushi.e 0
pop.v.i self.i

:[35]
push.v self.i
pushloc.v local.chararmor2_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [37]

:[36]
push.i 41780963
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
b [35]

:[37]
pushloc.v local.chararmor2_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.weaponstyle_list
pushi.e 0
pop.v.i self.i

:[38]
push.v self.i
pushloc.v local.weaponstyle_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [40]

:[39]
push.i 41780964
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
b [38]

:[40]
pushloc.v local.weaponstyle_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[41]
pushi.e 0
pop.v.i self.i

:[42]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [52]

:[43]
pushglb.v global.is_console
conv.v.b
not.b
bf [45]

:[44]
push.i 41780955
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hp
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780956
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.maxhp
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780957
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.at
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780958
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.df
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780959
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.mag
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780960
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.guts
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780961
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.charweapon
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780962
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor1
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780963
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.chararmor2
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780964
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.weaponstyle
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[45]
pushi.e 0
pop.v.i self.q

:[46]
push.v self.q
pushi.e 4
cmp.i.v LT
bf [48]

:[47]
push.i 41780967
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemat
push.v self.q
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780969
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemdf
push.v self.q
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780971
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemmag
push.v self.q
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780973
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itembolts
push.v self.q
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780975
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemgrazeamt
push.v self.q
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780977
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemgrazesize
push.v self.q
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780979
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemboltspeed
push.v self.q
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780981
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.itemspecial
push.v self.q
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.q
pushi.e 1
add.i.v
pop.v.v self.q
b [46]

:[48]
pushi.e 0
pop.v.i self.j

:[49]
push.v self.j
pushi.e 12
cmp.i.v LT
bf [51]

:[50]
push.i 41780988
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.spell
push.v self.j
conv.v.i
popaf.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [49]

:[51]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [42]

:[52]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.boltspeed
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.grazeamt
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.grazesize
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [66]

:[53]
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.item_list
pushi.e 0
pop.v.i self.i

:[54]
push.v self.i
pushloc.v local.item_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [56]

:[55]
push.i 41780995
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
b [54]

:[56]
pushloc.v local.item_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.keyitem_list
pushi.e 0
pop.v.i self.i

:[57]
push.v self.i
pushloc.v local.keyitem_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [59]

:[58]
push.i 41780996
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
b [57]

:[59]
pushloc.v local.keyitem_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.weapon_list
pushi.e 0
pop.v.i self.i

:[60]
push.v self.i
pushloc.v local.weapon_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [62]

:[61]
push.i 41780997
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
b [60]

:[62]
pushloc.v local.weapon_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.armor_list
pushi.e 0
pop.v.i self.i

:[63]
push.v self.i
pushloc.v local.armor_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [65]

:[64]
push.i 41780998
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
b [63]

:[65]
pushloc.v local.armor_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
b [69]

:[66]
pushi.e 0
pop.v.i self.j

:[67]
push.v self.j
pushi.e 13
cmp.i.v LT
bf [69]

:[68]
push.i 41780995
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.j
conv.v.i
pop.v.v [array]self.item
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780996
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.j
conv.v.i
pop.v.v [array]self.keyitem
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780997
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.j
conv.v.i
pop.v.v [array]self.weapon
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41780998
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.j
conv.v.i
pop.v.v [array]self.armor
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [67]

:[69]
push.i 41780997
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 12
pop.v.v [array]self.weapon
push.i 41780998
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 12
pop.v.v [array]self.armor
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.tension
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.maxtension
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.lweapon
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.larmor
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.lxp
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.llv
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.lgold
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.lhp
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.lmaxhp
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.lat
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.ldf
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.lwstrength
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.ladef
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [80]

:[70]
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.litem_list
pushi.e 0
pop.v.i self.i

:[71]
push.v self.i
pushloc.v local.litem_list
call.i ds_list_size(argc=1)
pushi.e 1
sub.i.v
cmp.v.v LT
bf [73]

:[72]
push.i 41781026
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
b [71]

:[73]
pushloc.v local.litem_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.phone_list
pushi.e 0
pop.v.i self.i

:[74]
push.v self.i
pushloc.v local.phone_list
call.i ds_list_size(argc=1)
pushi.e 1
sub.i.v
cmp.v.v LT
bf [76]

:[75]
push.i 41781027
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
b [74]

:[76]
pushloc.v local.phone_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.flag_list
pushi.e 0
pop.v.i self.i

:[77]
push.v self.i
pushloc.v local.flag_list
call.i ds_list_size(argc=1)
pushi.e 1
sub.i.v
cmp.v.v LT
bf [79]

:[78]
push.i 41781028
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
b [77]

:[79]
pushloc.v local.flag_list
call.i ds_list_destroy(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
b [86]

:[80]
pushi.e 0
pop.v.i self.i

:[81]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [83]

:[82]
push.i 41781026
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litem
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.i 41781027
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.phone
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [81]

:[83]
pushi.e 0
pop.v.i self.i

:[84]
push.v self.i
pushi.e 9999
cmp.i.v LT
bf [86]

:[85]
push.i 41781028
setowner.e
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.flag
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [84]

:[86]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.plot
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.currentroom
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v global.time
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_close(argc=1)
popz.v
pushglb.v global.time
pop.v.v global.lastsavedtime
pushglb.v global.lv
pop.v.v global.lastsavedlv
call.i gml_Script_scr_gamestart_chapter_override(argc=0)
popz.v
pushglb.v global.is_console
conv.v.b
bf [88]

:[87]
pushglb.v global.game_won
pushi.e 1
cmp.i.v EQ
b [89]

:[88]
push.e 0

:[89]
bf [91]

:[90]
pushi.e 0
pop.v.i global.darkzone

:[91]
call.i gml_Script_scr_tempsave(argc=0)
popz.v
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
exit.i

:[92]
push.i [function]gml_Script_scr_load_chapter1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_load_chapter1
popz.v

:[end]