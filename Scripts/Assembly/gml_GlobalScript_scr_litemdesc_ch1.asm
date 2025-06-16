.localvar 2 arguments

:[0]
b [25]

> gml_Script_scr_litemdesc_ch1 (locals=0, argc=1)
:[1]
push.i 102991699
setowner.e
push.s "scr_litemdesc_slash_scr_litemdesc_gml_1_0"@639
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [12]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [13]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [14]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [15]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [16]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [17]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [20]

:[8]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [21]

:[9]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [22]

:[10]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [23]

:[11]
b [24]

:[12]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_5_0"@641
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [24]

:[13]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_8_0"@643
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [24]

:[14]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_11_0"@645
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [24]

:[15]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_14_0"@647
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [24]

:[16]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_17_0"@649
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_litemdesc_slash_scr_litemdesc_gml_18_0"@651
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
b [24]

:[17]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_21_0"@653
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
call.i gml_Script_scr_itemcheck_ch1(argc=1)
conv.v.b
bf [19]

:[18]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_25_0"@656
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_litemdesc_slash_scr_litemdesc_gml_26_0"@658
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[19]
b [24]

:[20]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_30_0"@660
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [24]

:[21]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_33_0"@662
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [24]

:[22]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_36_0"@664
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [24]

:[23]
push.s "scr_litemdesc_slash_scr_litemdesc_gml_37_0"@12387
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_litemdesc_slash_scr_litemdesc_gml_38_0"@12388
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
b [24]

:[24]
popz.v
exit.i

:[25]
push.i [function]gml_Script_scr_litemdesc_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_litemdesc_ch1
popz.v

:[end]