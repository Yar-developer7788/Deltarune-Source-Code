.localvar 2 arguments

:[0]
b [38]

> gml_Script_scr_itemdesc_ch1 (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [37]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.item
pop.v.v self.itemid
push.v self.itemid
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [20]

:[4]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [21]

:[5]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [22]

:[6]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [23]

:[7]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [24]

:[8]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [25]

:[9]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [26]

:[10]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [27]

:[11]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [28]

:[12]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [29]

:[13]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [30]

:[14]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [31]

:[15]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [32]

:[16]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [33]

:[17]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [34]

:[18]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [35]

:[19]
b [36]

:[20]
push.i 59738462
setowner.e
push.s "---"@8074
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [36]

:[21]
push.i 59738462
setowner.e
push.s "scr_itemdesc_slash_scr_itemdesc_gml_11_0"@13304
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [36]

:[22]
push.i 59738462
setowner.e
push.s "scr_itemdesc_slash_scr_itemdesc_gml_14_0"@13305
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [36]

:[23]
push.i 59738462
setowner.e
push.s "scr_itemdesc_slash_scr_itemdesc_gml_17_0"@13306
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [36]

:[24]
push.i 59738462
setowner.e
push.s "scr_itemdesc_slash_scr_itemdesc_gml_20_0"@13307
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [36]

:[25]
push.i 59738462
setowner.e
push.s "scr_itemdesc_slash_scr_itemdesc_gml_23_0"@13308
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [36]

:[26]
push.i 59738462
setowner.e
push.s "scr_itemdesc_slash_scr_itemdesc_gml_26_0"@13309
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [36]

:[27]
push.i 59738462
setowner.e
push.s "scr_itemdesc_slash_scr_itemdesc_gml_29_0"@13310
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [36]

:[28]
push.i 59738462
setowner.e
push.s "scr_itemdesc_slash_scr_itemdesc_gml_32_0"@13311
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [36]

:[29]
push.i 59738462
setowner.e
push.s "scr_itemdesc_slash_scr_itemdesc_gml_35_0"@13312
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [36]

:[30]
push.i 59738462
setowner.e
push.s "scr_itemdesc_slash_scr_itemdesc_gml_38_0"@13313
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [36]

:[31]
push.i 59738462
setowner.e
push.s "scr_itemdesc_slash_scr_itemdesc_gml_41_0"@13314
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [36]

:[32]
push.i 59738462
setowner.e
push.s "scr_itemdesc_slash_scr_itemdesc_gml_44_0"@13315
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [36]

:[33]
push.i 59738462
setowner.e
push.s "scr_itemdesc_slash_scr_itemdesc_gml_47_0"@13316
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [36]

:[34]
push.i 59738462
setowner.e
push.s "scr_itemdesc_slash_scr_itemdesc_gml_50_0"@13317
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [36]

:[35]
push.i 59738462
setowner.e
push.s "scr_itemdesc_slash_scr_itemdesc_gml_53_0"@13318
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemdesc
b [36]

:[36]
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[37]
exit.i

:[38]
push.i [function]gml_Script_scr_itemdesc_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemdesc_ch1
popz.v

:[end]