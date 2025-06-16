.localvar 2 arguments

:[0]
pushi.e 1494
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.charcon

:[2]
popenv [1]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 6
pop.v.i global.typer

:[4]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.image_index
push.i 231251
setowner.e
push.s "obj_treasure_room_slash_Other_10_gml_14_0"@19734
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
push.v self.itemflag
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [25]

:[5]
push.s "obj_treasure_room_slash_Other_10_gml_18_0"@18067
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushbltn.v builtin.room
pushi.e 337
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_treasure_room_slash_Other_10_gml_19_0"@40296
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[7]
pushbltn.v builtin.room
pushi.e 366
cmp.i.v EQ
bt [9]

:[8]
pushbltn.v builtin.room
pushi.e 401
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [22]

:[11]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [13]

:[12]
push.v self.extratext
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.s "obj_treasure_room_slash_Other_10_gml_24_0"@40297
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_treasure_room_slash_Other_10_gml_26_0"@40298
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[16]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [19]

:[17]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [19]

:[18]
push.v self.extratext
pushi.e 1
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.s "obj_treasure_room_slash_Other_10_gml_31_0"@40299
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_treasure_room_slash_Other_10_gml_33_0"@40300
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_treasure_room_slash_Other_10_gml_35_0"@40301
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[22]
pushbltn.v builtin.room
pushi.e 361
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_treasure_room_slash_Other_10_gml_40_0"@40302
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[24]
b [47]

:[25]
pushi.e 377
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.s "obj_treasure_room_slash_Other_10_gml_48_0"@40303
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemname
push.s "obj_treasure_room_slash_Other_10_gml_49_0"@40304
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemtypename
push.v self.itemtype
push.s "armor"@232
cmp.s.v EQ
bf [27]

:[26]
push.v self.t_itemid
call.i gml_Script_scr_armorinfo_ch1(argc=1)
popz.v
push.v self.armornametemp
pop.v.v self.itemname
push.s "obj_treasure_room_slash_Other_10_gml_54_0"@40305
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemtypename
push.v self.t_itemid
call.i gml_Script_scr_armorget_ch1(argc=1)
popz.v

:[27]
push.v self.itemtype
push.s "weapon"@231
cmp.s.v EQ
bf [29]

:[28]
push.v self.t_itemid
call.i gml_Script_scr_weaponinfo_ch1(argc=1)
popz.v
push.v self.weaponnametemp
pop.v.v self.itemname
push.s "obj_treasure_room_slash_Other_10_gml_61_0"@40306
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemtypename
push.v self.t_itemid
call.i gml_Script_scr_weaponget_ch1(argc=1)
popz.v

:[29]
push.v self.itemtype
push.s "item"@229
cmp.s.v EQ
bf [31]

:[30]
push.v self.t_itemid
call.i gml_Script_scr_iteminfo_ch1(argc=1)
popz.v
push.v self.itemnameb
pop.v.v self.itemname
push.s "obj_treasure_room_slash_Other_10_gml_68_0"@40307
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemtypename
push.v self.t_itemid
call.i gml_Script_scr_itemget_ch1(argc=1)
popz.v

:[31]
push.v self.itemtype
push.s "key"@39
cmp.s.v EQ
bf [33]

:[32]
push.v self.t_itemid
call.i gml_Script_scr_keyiteminfo_ch1(argc=1)
popz.v
push.v self.tempkeyitemname
pop.v.v self.itemname
push.s "obj_treasure_room_slash_Other_10_gml_75_0"@40308
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemtypename
push.v self.t_itemid
call.i gml_Script_scr_keyitemget_ch1(argc=1)
popz.v

:[33]
push.v self.itemtype
push.s "gold"@178
cmp.s.v EQ
bf [35]

:[34]
pushi.e 0
pop.v.i self.noroom
push.v global.gold
push.v self.t_itemid
add.v.v
pop.v.v global.gold
push.s "obj_treasure_room_slash_Other_10_gml_82_0"@40309
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemtypename
push.v self.t_itemid
call.i string(argc=1)
push.s "obj_treasure_room_slash_Other_10_gml_83_0"@6967
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
add.v.v
pop.v.v self.itemname

:[35]
push.v self.itemname
push.s "obj_treasure_room_slash_Other_10_gml_87_0"@40310
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.itemtype
push.s "gold"@178
cmp.s.v EQ
bf [37]

:[36]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.msg
push.s "%"@14906
add.s.v
pop.i.v [array]self.msg

:[37]
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [46]

:[38]
push.v self.itemtypename
push.v self.itemname
push.s "obj_treasure_room_slash_Other_10_gml_99_0"@40311
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 1380
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [40]

:[39]
pushglb.v global.plot
pushi.e 40
cmp.i.v LTE
b [41]

:[40]
push.e 0

:[41]
bf [45]

:[42]
push.v self.itemtypename
push.v self.itemname
push.s "obj_treasure_room_slash_Other_10_gml_103_0"@40312
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_treasure_room_slash_Other_10_gml_105_0"@40313
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_treasure_room_slash_Other_10_gml_106_0"@40314
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_treasure_room_slash_Other_10_gml_107_0"@40315
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 1380
pushenv [44]

:[43]
pushi.e 1
pop.v.i self.equipcon

:[44]
popenv [43]

:[45]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.itemflag
conv.v.i
pop.v.v [array]self.flag
b [47]

:[46]
push.v self.itemtypename
push.s "obj_treasure_room_slash_Other_10_gml_115_0"@40316
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 1
pop.v.i self.close

:[47]
pushi.e 3
pop.v.i self.myinteract
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.mydialoguer
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]