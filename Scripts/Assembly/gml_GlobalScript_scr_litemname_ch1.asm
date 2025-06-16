.localvar 2 arguments

:[0]
b [25]

> gml_Script_scr_litemname_ch1 (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [24]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.litem
pop.v.v self.itemid
push.v self.itemid
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.i 103384932
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[5]
push.v self.itemid
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.s "scr_litemname_slash_scr_litemname_gml_6_0"@683
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[7]
push.v self.itemid
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.s "scr_litemname_slash_scr_litemname_gml_7_0"@685
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[9]
push.v self.itemid
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
push.s "scr_litemname_slash_scr_litemname_gml_8_0"@687
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[11]
push.v self.itemid
pushi.e 4
cmp.i.v EQ
bf [13]

:[12]
push.s "scr_litemname_slash_scr_litemname_gml_9_0"@689
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[13]
push.v self.itemid
pushi.e 5
cmp.i.v EQ
bf [15]

:[14]
push.s "scr_litemname_slash_scr_litemname_gml_10_0"@691
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[15]
push.v self.itemid
pushi.e 6
cmp.i.v EQ
bf [17]

:[16]
push.s "scr_litemname_slash_scr_litemname_gml_11_0"@693
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[17]
push.v self.itemid
pushi.e 7
cmp.i.v EQ
bf [19]

:[18]
push.s "scr_litemname_slash_scr_litemname_gml_12_0"@695
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[19]
push.v self.itemid
pushi.e 8
cmp.i.v EQ
bf [21]

:[20]
push.s "scr_litemname_slash_scr_litemname_gml_13_0"@697
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[21]
push.v self.itemid
pushi.e 11
cmp.i.v EQ
bf [23]

:[22]
push.s "scr_litemname_slash_scr_litemname_gml_14_0"@699
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litemname

:[23]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[24]
exit.i

:[25]
push.i [function]gml_Script_scr_litemname_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_litemname_ch1
popz.v

:[end]