.localvar 2 arguments
.localvar 6272 item_knife 590
.localvar 6273 item_tail 591
.localvar 6275 k 593
.localvar 6278 file 594
.localvar 161 myfileid 595
.localvar 107 i 596
.localvar 6281 othername_list 597
.localvar 6283 hp_list 598
.localvar 6284 maxhp_list 599
.localvar 6285 at_list 600
.localvar 6286 df_list 601
.localvar 6287 mag_list 602
.localvar 6288 guts_list 603
.localvar 6289 charweapon_list 604
.localvar 6290 chararmor1_list 605
.localvar 6291 chararmor2_list 606
.localvar 6292 weaponstyle_list 607
.localvar 199 q 608
.localvar 220 j 609
.localvar 6295 item_list 610
.localvar 6296 keyitem_list 611
.localvar 6297 weapon_list 612
.localvar 6298 armor_list 613
.localvar 6299 litem_list 614
.localvar 6300 phone_list 615
.localvar 6301 flag_list 616

:[0]
b [61]

> gml_Script_scr_jevil_check (locals=26, argc=0)
:[1]
pushi.e 0
pop.v.b local.item_knife
pushi.e 0
pop.v.b local.item_tail
push.i 5867526
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.jevil_status
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.jevil_status
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.jevil_status
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 6
cmp.i.v GTE
bf [3]

:[2]
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
pop.v.b local.item_knife
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 7
cmp.i.v EQ
pop.v.b local.item_tail
b [56]

:[3]
pushi.e 0
pop.v.i local.k

:[4]
pushloc.v local.k
pushi.e 3
cmp.i.v LT
bf [48]

:[5]
push.s "filech1_"@6276
pushloc.v local.k
call.i string(argc=1)
add.v.s
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [47]

:[6]
push.s "filech1_"@6276
pushloc.v local.k
call.i string(argc=1)
add.v.s
pop.v.v local.file
pushloc.v local.file
call.i gml_Script_ossafe_file_text_open_read(argc=1)
pop.v.v local.myfileid
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_string(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
not.b
bf [11]

:[7]
pushi.e 0
pop.v.i local.i

:[8]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [10]

:[9]
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_string(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [8]

:[10]
b [12]

:[11]
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.othername_list
pushloc.v local.othername_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[12]
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [14]

:[13]
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.hp_list
pushloc.v local.hp_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.maxhp_list
pushloc.v local.maxhp_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.at_list
pushloc.v local.at_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.df_list
pushloc.v local.df_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.mag_list
pushloc.v local.mag_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.guts_list
pushloc.v local.guts_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.charweapon_list
pushloc.v local.charweapon_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.chararmor1_list
pushloc.v local.chararmor1_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.chararmor2_list
pushloc.v local.chararmor2_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.weaponstyle_list
pushloc.v local.weaponstyle_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[14]
pushi.e 0
pop.v.i local.i

:[15]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [25]

:[16]
pushglb.v global.is_console
conv.v.b
not.b
bf [18]

:[17]
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v

:[18]
pushi.e 0
pop.v.i local.q

:[19]
pushloc.v local.q
pushi.e 4
cmp.i.v LT
bf [21]

:[20]
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v local.q
pushi.e 1
add.i.v
pop.v.v local.q
b [19]

:[21]
pushi.e 0
pop.v.i local.j

:[22]
pushloc.v local.j
pushi.e 12
cmp.i.v LT
bf [24]

:[23]
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
push.v local.j
pushi.e 1
add.i.v
pop.v.v local.j
b [22]

:[24]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [15]

:[25]
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [27]

:[26]
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.item_list
pushloc.v local.item_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.keyitem_list
pushloc.v local.keyitem_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.weapon_list
pushloc.v local.weapon_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.armor_list
pushloc.v local.armor_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
b [30]

:[27]
pushi.e 0
pop.v.i local.j

:[28]
pushloc.v local.j
pushi.e 13
cmp.i.v LT
bf [30]

:[29]
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v local.j
pushi.e 1
add.i.v
pop.v.v local.j
b [28]

:[30]
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [37]

:[31]
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.litem_list
pushloc.v local.litem_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.phone_list
pushloc.v local.phone_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.flag_list
pushi.e 0
pop.v.i local.i

:[32]
pushloc.v local.i
pushi.e 242
cmp.i.v LT
bf [36]

:[33]
pushloc.v local.i
pushi.e 241
cmp.i.v EQ
bf [35]

:[34]
pushloc.v local.i
pushloc.v local.flag_list
call.i ds_list_find_value(argc=2)
pushi.e -1
pushloc.v local.k
conv.v.i
pop.v.v [array]self.jevil_status

:[35]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [32]

:[36]
pushloc.v local.flag_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v
b [46]

:[37]
pushi.e 0
pop.v.i local.i

:[38]
pushloc.v local.i
pushi.e 8
cmp.i.v LT
bf [40]

:[39]
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [38]

:[40]
pushi.e 0
pop.v.i local.i

:[41]
pushloc.v local.i
pushi.e 242
cmp.i.v LT
bf [46]

:[42]
pushloc.v local.i
pushi.e 241
cmp.i.v EQ
bf [44]

:[43]
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
pushi.e -1
pushloc.v local.k
conv.v.i
pop.v.v [array]self.jevil_status
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v
b [45]

:[44]
pushloc.v local.myfileid
call.i file_text_read_real(argc=1)
popz.v
pushloc.v local.myfileid
call.i file_text_readln(argc=1)
popz.v

:[45]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [41]

:[46]
pushloc.v local.myfileid
call.i gml_Script_ossafe_file_text_close(argc=1)
popz.v

:[47]
push.v local.k
push.e 1
add.i.v
pop.v.v local.k
b [4]

:[48]
pushi.e 0
pop.v.i local.i

:[49]
pushloc.v local.i
push.v self.jevil_status
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [56]

:[50]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.jevil_status
pushi.e 6
cmp.i.v GTE
bf [55]

:[51]
pushloc.v local.item_knife
conv.v.b
not.b
bf [53]

:[52]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.jevil_status
pushi.e 6
cmp.i.v EQ
pop.v.b local.item_knife

:[53]
pushloc.v local.item_tail
conv.v.b
not.b
bf [55]

:[54]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.jevil_status
pushi.e 7
cmp.i.v EQ
pop.v.b local.item_tail

:[55]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [49]

:[56]
pushloc.v local.item_knife
conv.v.b
bf [58]

:[57]
push.i 11634639
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 36
pop.v.v [array]self.tempflag
b [60]

:[58]
pushloc.v local.item_tail
conv.v.b
bf [60]

:[59]
push.i 11634639
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 36
pop.v.v [array]self.tempflag

:[60]
exit.i

:[61]
push.i [function]gml_Script_scr_jevil_check
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_jevil_check
popz.v

:[end]