.localvar 2 arguments
.localvar 36947 stat_right 21972
.localvar 36954 _itemTextColor 21973

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
pushi.e 263
pop.v.i local.stat_right
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [3]

:[2]
pushi.e 300
pop.v.i local.stat_right

:[3]
push.v 1351.y
push.v self.yy
pushi.e 120
add.i.v
cmp.v.v GT
bf [5]

:[4]
push.v self.moveyy
pushi.e 135
add.i.v
pop.v.v self.moveyy

:[5]
pushglb.v global.menuno
pushi.e 4
cmp.i.v NEQ
bf [44]

:[6]
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
bt [9]

:[7]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bt [9]

:[8]
pushglb.v global.menuno
pushi.e 6
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
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

:[12]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
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

:[14]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [16]

:[15]
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

:[16]
pushglb.v global.menuno
pushi.e 7
cmp.i.v EQ
bf [18]

:[17]
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

:[18]
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
bt [21]

:[19]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bt [21]

:[20]
pushglb.v global.menuno
pushi.e 6
cmp.i.v EQ
b [22]

:[21]
push.e 1

:[22]
bf [24]

:[23]
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

:[24]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
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

:[26]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [28]

:[27]
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

:[28]
pushglb.v global.menuno
pushi.e 7
cmp.i.v EQ
bf [30]

:[29]
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

:[30]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_36_0"@41950
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.lhp
call.i string(argc=1)
add.v.v
push.s "/"@4448
add.s.v
pushglb.v global.lmaxhp
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 49
push.v self.moveyy
add.v.i
pushi.e 23
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_37_0"@36948
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.llv
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 40
push.v self.moveyy
add.v.i
pushi.e 23
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_39_0"@41951
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.lgold
call.i string(argc=1)
add.v.v
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
call.i gml_Script_scr_84_set_draw_font_ch1(argc=1)
popz.v
push.v self.hasitems
conv.v.b
bf [32]

:[31]
push.i 16777215
conv.i.v
b [33]

:[32]
push.i 8421504
conv.i.v

:[33]
pop.v.v local._itemTextColor
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [35]

:[34]
pushglb.v global.lcharname
call.i string_hash_to_newline(argc=1)
pushi.e 20
push.v self.moveyy
add.v.i
pushi.e 20
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushloc.v local._itemTextColor
call.i draw_set_color(argc=1)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_42_0"@36955
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 84
push.v self.yy
add.v.i
pushi.e 40
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
b [36]

:[35]
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
pushloc.v local._itemTextColor
call.i draw_set_color(argc=1)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_42_0"@36955
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 84
push.v self.yy
add.v.i
pushi.e 42
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v

:[36]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_43_0"@36956
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
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
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
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
bt [38]

:[37]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
b [39]

:[38]
push.e 1

:[39]
bf [44]

:[40]
pushi.e 0
pop.v.i self.i

:[41]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [43]

:[42]
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
b [41]

:[43]
push.s "obj_overworldc_slash_Draw_0_gml_52_0"@36960
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
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
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
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
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
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

:[44]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [48]

:[45]
pushi.e 0
pop.v.i self.i

:[46]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [48]

:[47]
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
b [46]

:[48]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [100]

:[49]
pushglb.v global.lcharname
push.s "obj_overworldc_slash_Draw_0_gml_66_0"@36965
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 32
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_67_0"@41952
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.llv
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 62
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushglb.v global.lhp
call.i string(argc=1)
push.s "obj_overworldc_slash_Draw_0_gml_68_0"@36967
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushglb.v global.lmaxhp
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 78
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushglb.v global.lat
call.i string(argc=1)
push.s "obj_overworldc_slash_Draw_0_gml_70_0"@41953
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushglb.v global.lwstrength
call.i string(argc=1)
add.v.v
push.s ")"@12074
add.s.v
call.i string_hash_to_newline(argc=1)
pushi.e 110
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushglb.v global.ldf
call.i string(argc=1)
push.s "obj_overworldc_slash_Draw_0_gml_71_0"@36970
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushglb.v global.ladef
call.i string(argc=1)
add.v.v
push.s ")"@12074
add.s.v
call.i string_hash_to_newline(argc=1)
pushi.e 126
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_72_0"@36972
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponname
push.s "obj_overworldc_slash_Draw_0_gml_73_0"@36974
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armorname
pushglb.v global.lweapon
pushi.e 2
cmp.i.v EQ
bf [51]

:[50]
push.s "obj_overworldc_slash_Draw_0_gml_74_0"@36975
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponname

:[51]
pushglb.v global.lweapon
pushi.e 6
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_overworldc_slash_Draw_0_gml_75_0"@36976
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponname

:[53]
pushglb.v global.lweapon
pushi.e 7
cmp.i.v EQ
bf [55]

:[54]
push.s "obj_overworldc_slash_Draw_0_gml_76_0"@36977
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponname

:[55]
pushglb.v global.larmor
pushi.e 3
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_overworldc_slash_Draw_0_gml_77_0"@36978
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armorname

:[57]
push.s "obj_overworldc_slash_Draw_0_gml_80_0"@41954
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.weaponname
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 156
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_81_0"@36983
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.armorname
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 172
push.v self.yy
add.v.i
pushi.e 108
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
push.s "obj_overworldc_slash_Draw_0_gml_82_0"@36985
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.lgold
call.i string(argc=1)
add.v.v
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
bf [59]

:[58]
push.s "obj_overworldc_slash_Draw_0_gml_88_0"@36989
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 32
push.v self.yy
add.v.i
pushi.e 192
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v

:[59]
pushi.e 0
pop.v.i self.nextlevel
push.s "obj_overworldc_slash_Draw_0_gml_91_0"@41955
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushglb.v global.lxp
call.i string(argc=1)
add.v.v
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
bf [61]

:[60]
pushi.e 10
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[61]
pushglb.v global.llv
pushi.e 2
cmp.i.v EQ
bf [63]

:[62]
pushi.e 30
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[63]
pushglb.v global.llv
pushi.e 3
cmp.i.v EQ
bf [65]

:[64]
pushi.e 70
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[65]
pushglb.v global.llv
pushi.e 4
cmp.i.v EQ
bf [67]

:[66]
pushi.e 120
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[67]
pushglb.v global.llv
pushi.e 5
cmp.i.v EQ
bf [69]

:[68]
pushi.e 200
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[69]
pushglb.v global.llv
pushi.e 6
cmp.i.v EQ
bf [71]

:[70]
pushi.e 300
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[71]
pushglb.v global.llv
pushi.e 7
cmp.i.v EQ
bf [73]

:[72]
pushi.e 500
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[73]
pushglb.v global.llv
pushi.e 8
cmp.i.v EQ
bf [75]

:[74]
pushi.e 800
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[75]
pushglb.v global.llv
pushi.e 9
cmp.i.v EQ
bf [77]

:[76]
pushi.e 1200
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[77]
pushglb.v global.llv
pushi.e 10
cmp.i.v EQ
bf [79]

:[78]
pushi.e 1700
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[79]
pushglb.v global.llv
pushi.e 11
cmp.i.v EQ
bf [81]

:[80]
pushi.e 2500
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[81]
pushglb.v global.llv
pushi.e 12
cmp.i.v EQ
bf [83]

:[82]
pushi.e 3500
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[83]
pushglb.v global.llv
pushi.e 13
cmp.i.v EQ
bf [85]

:[84]
pushi.e 5000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[85]
pushglb.v global.llv
pushi.e 14
cmp.i.v EQ
bf [87]

:[86]
pushi.e 7000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[87]
pushglb.v global.llv
pushi.e 15
cmp.i.v EQ
bf [89]

:[88]
pushi.e 10000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[89]
pushglb.v global.llv
pushi.e 16
cmp.i.v EQ
bf [91]

:[90]
pushi.e 15000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[91]
pushglb.v global.llv
pushi.e 17
cmp.i.v EQ
bf [93]

:[92]
pushi.e 25000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[93]
pushglb.v global.llv
pushi.e 18
cmp.i.v EQ
bf [95]

:[94]
push.i 50000
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[95]
pushglb.v global.llv
pushi.e 19
cmp.i.v EQ
bf [97]

:[96]
push.i 99999
pushglb.v global.lxp
sub.v.i
pop.v.v self.nextlevel

:[97]
pushglb.v global.llv
pushi.e 20
cmp.i.v GTE
bf [99]

:[98]
pushi.e 0
pop.v.i self.nextlevel

:[99]
push.s "obj_overworldc_slash_Draw_0_gml_112_0"@41956
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.nextlevel
call.i string(argc=1)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 126
push.v self.yy
add.v.i
pushi.e 192
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v

:[100]
pushglb.v global.menuno
pushi.e 444
cmp.i.v EQ
bf [101]

:[101]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [103]

:[102]
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
pushi.e 4283
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[103]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
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
pushi.e 4283
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[105]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [107]

:[106]
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
pushi.e 4283
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[107]
pushglb.v global.menuno
pushi.e 6
cmp.i.v EQ
bf [109]

:[108]
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
pushi.e 4283
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[109]
pushglb.v global.menuno
pushi.e 7
cmp.i.v EQ
bf [111]

:[110]
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
pushi.e 4283
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[111]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [end]

:[112]
pushi.e -5
pushi.e 5
push.v [array]self.menucoord
pushi.e 0
cmp.i.v EQ
bf [114]

:[113]
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
pushi.e 4283
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[114]
pushi.e -5
pushi.e 5
push.v [array]self.menucoord
pushi.e 1
cmp.i.v EQ
bf [116]

:[115]
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
pushi.e 4283
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[116]
pushi.e -5
pushi.e 5
push.v [array]self.menucoord
pushi.e 2
cmp.i.v EQ
bf [end]

:[117]
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
pushi.e 4283
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]