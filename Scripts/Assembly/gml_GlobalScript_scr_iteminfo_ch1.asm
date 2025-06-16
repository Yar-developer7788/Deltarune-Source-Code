.localvar 2 arguments

:[0]
b [35]

> gml_Script_scr_iteminfo_ch1 (locals=0, argc=1)
:[1]
pushi.e 0
pop.v.i self.usable
pushi.e 0
pop.v.i self.value
pushi.e 0
pop.v.i self.itemtarget
push.s " "@353
pop.v.s self.itemnameb
push.s " "@353
pop.v.s self.itemdescb
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [18]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [19]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [20]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [21]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [22]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [23]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [24]

:[8]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [25]

:[9]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [26]

:[10]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [27]

:[11]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [28]

:[12]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [29]

:[13]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [30]

:[14]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [31]

:[15]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [32]

:[16]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [33]

:[17]
b [34]

:[18]
push.s " "@353
pop.v.s self.itemnameb
push.s "---"@8074
pop.v.s self.itemdescb
b [34]

:[19]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_14_0"@13279
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_15_0"@8175
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 25
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [34]

:[20]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_21_0"@13280
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_22_0"@8179
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 400
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [34]

:[21]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_28_0"@13281
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_29_0"@8183
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemdescb
pushi.e 0
pop.v.i self.itemtarget
pushi.e 200
pop.v.i self.value
pushi.e 0
pop.v.i self.usable
b [34]

:[22]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_35_0"@13282
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_36_0"@8187
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 1
pop.v.i self.value
pushi.e 0
pop.v.i self.usable
b [34]

:[23]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_42_0"@13283
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_43_0"@8191
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 5
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [34]

:[24]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_49_0"@13284
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_50_0"@8194
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 150
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [34]

:[25]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_56_0"@13285
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_57_0"@13286
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 5
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [34]

:[26]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_63_0"@13287
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_64_0"@13288
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 70
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [34]

:[27]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_70_0"@13289
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_71_0"@13290
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 10
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [34]

:[28]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_77_0"@13291
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_78_0"@13292
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 10
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [34]

:[29]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_84_0"@13293
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_85_0"@13294
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 70
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [34]

:[30]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_91_0"@13295
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_92_0"@13296
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 40
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [34]

:[31]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_98_0"@13297
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_99_0"@13298
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 40
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [34]

:[32]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_105_0"@13299
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_106_0"@13300
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 10
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [34]

:[33]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_112_0"@13301
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_113_0"@13302
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 50
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [34]

:[34]
popz.v
exit.i

:[35]
push.i [function]gml_Script_scr_iteminfo_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_iteminfo_ch1
popz.v

:[end]