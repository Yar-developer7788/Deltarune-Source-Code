.localvar 2 arguments
.localvar 36947 stat_right 18530
.localvar 36954 _itemTextColor 18531
.localvar 36992 krispreservationsociety 18532

:[0]
push.v self.buffer
pushi.e 1
add.i.v
pop.v.v self.buffer
pushglb.v global.interact
pushi.e 5
cmp.i.v EQ
bf [end]

:[1]
pushbltn.v builtin.view_current
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushbltn.v builtin.view_current
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 10
add.i.v
pop.v.v self.yy
push.v self.yy
pop.v.v self.moveyy
pushi.e 300
conv.i.v
pushi.e 263
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.stat_right
push.v 82.y
push.v self.yy
pushi.e 120
add.i.v
cmp.v.v GT
bf [3]

:[2]
push.v self.moveyy
pushi.e 135
add.i.v
pop.v.v self.moveyy

:[3]
pushglb.v global.menuno
pushi.e 4
cmp.i.v NEQ
bf [39]

:[4]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 70
push.v self.moveyy
add.v.i
pushi.e 86
push.v self.xx
add.v.i
pushi.e 16
push.v self.moveyy
add.v.i
pushi.e 16
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 147
push.v self.yy
add.v.i
pushi.e 86
push.v self.xx
add.v.i
pushi.e 74
push.v self.yy
add.v.i
pushi.e 16
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bt [7]

:[5]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bt [7]

:[6]
pushglb.v global.menuno
pushi.e 6
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
pushi.e 0
conv.b.v
pushi.e 196
push.v self.yy
add.v.i
pushi.e 266
push.v self.xx
add.v.i
pushi.e 16
push.v self.yy
add.v.i
pushi.e 94
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v

:[10]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
conv.b.v
pushi.e 224
push.v self.yy
add.v.i
pushloc.v local.stat_right
pushi.e 3
add.i.v
push.v self.xx
add.v.v
pushi.e 16
push.v self.yy
add.v.i
pushi.e 94
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v

:[12]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
conv.b.v
pushi.e 150
push.v self.yy
add.v.i
pushi.e 266
push.v self.xx
add.v.i
pushi.e 16
push.v self.yy
add.v.i
pushi.e 94
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v

:[14]
pushglb.v global.menuno
pushi.e 7
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
conv.b.v
pushi.e 216
push.v self.yy
add.v.i
pushi.e 266
push.v self.xx
add.v.i
pushi.e 16
push.v self.yy
add.v.i
pushi.e 94
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v

:[16]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 67
push.v self.moveyy
add.v.i
pushi.e 83
push.v self.xx
add.v.i
pushi.e 19
push.v self.moveyy
add.v.i
pushi.e 19
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.b.v
pushi.e 144
push.v self.yy
add.v.i
pushi.e 83
push.v self.xx
add.v.i
pushi.e 77
push.v self.yy
add.v.i
pushi.e 19
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bt [19]

:[17]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bt [19]

:[18]
pushglb.v global.menuno
pushi.e 6
cmp.i.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
pushi.e 0
conv.b.v
pushi.e 193
push.v self.yy
add.v.i
pushi.e 263
push.v self.xx
add.v.i
pushi.e 19
push.v self.yy
add.v.i
pushi.e 97
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v

:[22]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
pushi.e 0
conv.b.v
pushi.e 221
push.v self.yy
add.v.i
pushloc.v local.stat_right
push.v self.xx
add.v.v
pushi.e 19
push.v self.yy
add.v.i
pushi.e 97
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v

:[24]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [26]

:[25]
pushi.e 0
conv.b.v
pushi.e 147
push.v self.yy
add.v.i
pushi.e 263
push.v self.xx
add.v.i
pushi.e 19
push.v self.yy
add.v.i
pushi.e 97
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v

:[26]
pushglb.v global.menuno
pushi.e 7
cmp.i.v EQ
bf [28]

:[27]
pushi.e 0
conv.b.v
pushi.e 213
push.v self.yy
add.v.i
pushi.e 263
push.v self.xx
add.v.i
pushi.e 19
push.v self.yy
add.v.i
pushi.e 97
push.v self.xx
add.v.i
call.i draw_rectangle(argc=5)
popz.v

:[28]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_37_0"@36948
conv.s.v
pushglb.v global.lmaxhp
call.i string(argc=1)
pushglb.v global.lhp
call.i string(argc=1)
push.s "HP  ~1/~2"@36949
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
call.i string_hash_to_newline(argc=1)
pushi.e 49
push.v self.moveyy
add.v.i
pushi.e 23
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_38_0"@36950
conv.s.v
pushglb.v global.llv
call.i string(argc=1)
push.s "LV  ~1"@36951
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushi.e 40
push.v self.moveyy
add.v.i
pushi.e 23
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_40_0"@36952
conv.s.v
pushglb.v global.lgold
call.i string(argc=1)
push.s "$   ~1"@36953
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushi.e 58
push.v self.moveyy
add.v.i
pushi.e 23
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushglb.v global.lcharname
call.i string_hash_to_newline(argc=1)
pushi.e 20
push.v self.moveyy
add.v.i
pushi.e 23
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.v self.hasitems
conv.v.b
bf [30]

:[29]
push.i 16777215
conv.i.v
b [31]

:[30]
push.i 8421504
conv.i.v

:[31]
pop.v.v local._itemTextColor
pushloc.v local._itemTextColor
call.i draw_set_color(argc=1)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_42_0"@36955
conv.s.v
push.s "ITEM"@15458
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 84
push.v self.yy
add.v.i
pushi.e 42
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_43_0"@36956
conv.s.v
push.s "STAT"@36957
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 102
push.v self.yy
add.v.i
pushi.e 42
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_44_0"@36958
conv.s.v
push.s "CELL"@36959
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 120
push.v self.yy
add.v.i
pushi.e 42
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bt [33]

:[32]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
b [34]

:[33]
push.e 1

:[34]
bf [39]

:[35]
pushi.e 0
pop.v.i self.i

:[36]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [38]

:[37]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.litemname
call.i string_hash_to_newline(argc=1)
pushi.e 30
push.v self.yy
add.v.i
push.v self.i
pushi.e 16
mul.i.v
add.v.v
pushi.e 116
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [36]

:[38]
push.s "obj_overworldc_slash_Draw_0_gml_52_0"@36960
conv.s.v
push.s "USE"@20683
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 170
push.v self.yy
add.v.i
pushi.e 116
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_53_0"@36961
conv.s.v
push.s "INFO"@36962
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 170
push.v self.yy
add.v.i
pushi.e 116
push.v self.xx
add.v.i
pushi.e 48
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_54_0"@36963
conv.s.v
push.s "DROP"@36964
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 170
push.v self.yy
add.v.i
pushi.e 116
push.v self.xx
add.v.i
pushi.e 105
add.i.v
call.i draw_text(argc=3)
popz.v

:[39]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [43]

:[40]
pushi.e 0
pop.v.i self.i

:[41]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [43]

:[42]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.phonename
call.i string_hash_to_newline(argc=1)
pushi.e 30
push.v self.yy
add.v.i
push.v self.i
pushi.e 16
mul.i.v
add.v.v
pushi.e 116
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [41]

:[43]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [103]

:[44]
push.s "obj_overworldc_slash_Draw_0_gml_66_0"@36965
conv.s.v
pushglb.v global.lcharname
push.s "\"~1\""@36966
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushi.e 32
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_68_0"@36967
conv.s.v
pushglb.v global.llv
call.i string(argc=1)
push.s "LV  ~1"@36951
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushi.e 62
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_69_0"@36968
conv.s.v
pushglb.v global.lmaxhp
call.i string(argc=1)
pushglb.v global.lhp
call.i string(argc=1)
push.s "HP  ~1 / ~2"@36969
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
call.i string_hash_to_newline(argc=1)
pushi.e 78
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_71_0"@36970
conv.s.v
pushglb.v global.lwstrength
call.i string(argc=1)
pushglb.v global.lat
call.i string(argc=1)
push.s "AT  ~1 (~2)"@36971
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
call.i string_hash_to_newline(argc=1)
pushi.e 110
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_72_0"@36972
conv.s.v
pushglb.v global.ladef
call.i string(argc=1)
pushglb.v global.ldf
call.i string(argc=1)
push.s "DF  ~1 (~2)"@36973
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
call.i string_hash_to_newline(argc=1)
pushi.e 126
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_73_0"@36974
conv.s.v
push.s "None"@7824
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponname
push.s "obj_overworldc_slash_Draw_0_gml_74_0"@36975
conv.s.v
push.s "None"@7824
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorname
pushglb.v global.lweapon
pushi.e 2
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_overworldc_slash_Draw_0_gml_75_0"@36976
conv.s.v
push.s "Pencil"@686
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponname

:[46]
pushglb.v global.lweapon
pushi.e 6
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_overworldc_slash_Draw_0_gml_76_0"@36977
conv.s.v
push.s "Halloween Pencil"@694
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponname

:[48]
pushglb.v global.lweapon
pushi.e 7
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_overworldc_slash_Draw_0_gml_77_0"@36978
conv.s.v
push.s "Lucky Pencil"@696
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponname

:[50]
pushglb.v global.lweapon
pushi.e 12
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_overworldc_slash_Draw_0_gml_78_0_b"@36979
conv.s.v
push.s "Eraser"@706
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponname

:[52]
pushglb.v global.lweapon
pushi.e 13
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_overworldc_slash_Draw_0_gml_79_0"@36980
conv.s.v
push.s "Mech. Pencil"@708
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.weaponname

:[54]
pushglb.v global.larmor
pushi.e 3
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_overworldc_slash_Draw_0_gml_78_0"@36981
conv.s.v
push.s "Bandage"@688
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorname

:[56]
pushglb.v global.larmor
pushi.e 14
cmp.i.v EQ
bf [58]

:[57]
push.s "obj_overworldc_slash_Draw_0_gml_81_0_b"@36982
conv.s.v
push.s "Wristwatch"@710
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.armorname

:[58]
push.s "obj_overworldc_slash_Draw_0_gml_81_0"@36983
conv.s.v
push.v self.weaponname
push.s "WEAPON: ~1"@36984
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushi.e 156
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_82_0"@36985
conv.s.v
push.v self.armorname
push.s "ARMOR: ~1"@36986
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushi.e 172
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_83_0"@36987
conv.s.v
pushglb.v global.lgold
call.i string(argc=1)
push.s "MONEY: ~1"@36988
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushi.e 192
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushglb.v global.lcharname
call.i string_length(argc=1)
pushi.e 7
cmp.i.v GTE
bf [60]

:[59]
push.s "obj_overworldc_slash_Draw_0_gml_88_0"@36989
conv.s.v
push.s "???"@9069
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 32
push.v self.yy
add.v.i
pushi.e 192
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
b [62]

:[60]
pushi.e -5
pushi.e 914
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [62]

:[61]
push.s "obj_overworldc_slash_Draw_0_gml_95_0"@36990
conv.s.v
pushi.e -5
pushi.e 914
push.v [array]self.flag
push.s "Since#Chapter ~1"@36991
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v local.krispreservationsociety
pushloc.v local.krispreservationsociety
call.i string_hash_to_newline(argc=1)
pushi.e 32
push.v self.yy
add.v.i
pushi.e 192
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v

:[62]
pushi.e 0
pop.v.i self.nextlevel
push.s "obj_overworldc_slash_Draw_0_gml_92_0"@36994
conv.s.v
pushglb.v global.lxp
call.i string(argc=1)
push.s "EXP: ~1"@36995
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushi.e 110
push.v self.yy
add.v.i
pushi.e 192
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushglb.v global.llv
pushi.e 1
cmp.i.v EQ
bf [64]

:[63]
pushi.e 10
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[64]
pushglb.v global.llv
pushi.e 2
cmp.i.v EQ
bf [66]

:[65]
pushi.e 30
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[66]
pushglb.v global.llv
pushi.e 3
cmp.i.v EQ
bf [68]

:[67]
pushi.e 70
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[68]
pushglb.v global.llv
pushi.e 4
cmp.i.v EQ
bf [70]

:[69]
pushi.e 120
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[70]
pushglb.v global.llv
pushi.e 5
cmp.i.v EQ
bf [72]

:[71]
pushi.e 200
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[72]
pushglb.v global.llv
pushi.e 6
cmp.i.v EQ
bf [74]

:[73]
pushi.e 300
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[74]
pushglb.v global.llv
pushi.e 7
cmp.i.v EQ
bf [76]

:[75]
pushi.e 500
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[76]
pushglb.v global.llv
pushi.e 8
cmp.i.v EQ
bf [78]

:[77]
pushi.e 800
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[78]
pushglb.v global.llv
pushi.e 9
cmp.i.v EQ
bf [80]

:[79]
pushi.e 1200
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[80]
pushglb.v global.llv
pushi.e 10
cmp.i.v EQ
bf [82]

:[81]
pushi.e 1700
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[82]
pushglb.v global.llv
pushi.e 11
cmp.i.v EQ
bf [84]

:[83]
pushi.e 2500
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[84]
pushglb.v global.llv
pushi.e 12
cmp.i.v EQ
bf [86]

:[85]
pushi.e 3500
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[86]
pushglb.v global.llv
pushi.e 13
cmp.i.v EQ
bf [88]

:[87]
pushi.e 5000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[88]
pushglb.v global.llv
pushi.e 14
cmp.i.v EQ
bf [90]

:[89]
pushi.e 7000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[90]
pushglb.v global.llv
pushi.e 15
cmp.i.v EQ
bf [92]

:[91]
pushi.e 10000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[92]
pushglb.v global.llv
pushi.e 16
cmp.i.v EQ
bf [94]

:[93]
pushi.e 15000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[94]
pushglb.v global.llv
pushi.e 17
cmp.i.v EQ
bf [96]

:[95]
pushi.e 25000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[96]
pushglb.v global.llv
pushi.e 18
cmp.i.v EQ
bf [98]

:[97]
push.i 50000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[98]
pushglb.v global.llv
pushi.e 19
cmp.i.v EQ
bf [100]

:[99]
push.i 99999
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[100]
pushglb.v global.llv
pushi.e 20
cmp.i.v GTE
bf [102]

:[101]
pushi.e 0
pop.v.i self.nextlevel

:[102]
push.s "obj_overworldc_slash_Draw_0_gml_113_0"@36996
conv.s.v
push.v self.nextlevel
call.i string(argc=1)
push.s "NEXT: ~1"@36997
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushi.e 126
push.v self.yy
add.v.i
pushi.e 192
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v

:[103]
pushglb.v global.menuno
pushi.e 444
cmp.i.v EQ
bf [104]

:[104]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
pushi.e 88
push.v self.yy
add.v.i
pushi.e 18
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
mul.v.i
add.v.v
pushi.e 28
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushi.e 2537
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[106]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [108]

:[107]
pushi.e 34
push.v self.yy
add.v.i
pushi.e 16
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
mul.v.i
add.v.v
pushi.e 104
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushi.e 2537
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[108]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [110]

:[109]
pushi.e 34
push.v self.yy
add.v.i
pushi.e 16
pushi.e -5
pushi.e 3
push.v [array]self.menucoord
mul.v.i
add.v.v
pushi.e 104
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushi.e 2537
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[110]
pushglb.v global.menuno
pushi.e 6
cmp.i.v EQ
bf [112]

:[111]
pushi.e 34
push.v self.yy
add.v.i
pushi.e 16
pushi.e -5
pushi.e 6
push.v [array]self.menucoord
mul.v.i
add.v.v
pushi.e 104
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushi.e 2537
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[112]
pushglb.v global.menuno
pushi.e 7
cmp.i.v EQ
bf [114]

:[113]
pushi.e 34
push.v self.yy
add.v.i
pushi.e 16
pushi.e -5
pushi.e 7
push.v [array]self.menucoord
mul.v.i
add.v.v
pushi.e 104
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushi.e 2537
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[114]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [end]

:[115]
pushi.e -5
pushi.e 5
push.v [array]self.menucoord
pushi.e 0
cmp.i.v EQ
bf [117]

:[116]
pushi.e 174
push.v self.yy
add.v.i
pushi.e 104
push.v self.xx
add.v.i
pushi.e 45
pushi.e -5
pushi.e 5
push.v [array]self.menucoord
mul.v.i
add.v.v
pushi.e 0
conv.i.v
pushi.e 2537
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[117]
pushi.e -5
pushi.e 5
push.v [array]self.menucoord
pushi.e 1
cmp.i.v EQ
bf [119]

:[118]
pushi.e 174
push.v self.yy
add.v.i
pushi.e 104
push.v self.xx
add.v.i
pushi.e 45
pushi.e -5
pushi.e 5
push.v [array]self.menucoord
mul.v.i
pushi.e 3
add.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 2537
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[119]
pushi.e -5
pushi.e 5
push.v [array]self.menucoord
pushi.e 2
cmp.i.v EQ
bf [end]

:[120]
pushi.e 174
push.v self.yy
add.v.i
pushi.e 104
push.v self.xx
add.v.i
pushi.e 45
pushi.e -5
pushi.e 5
push.v [array]self.menucoord
mul.v.i
pushi.e 15
add.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 2537
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]