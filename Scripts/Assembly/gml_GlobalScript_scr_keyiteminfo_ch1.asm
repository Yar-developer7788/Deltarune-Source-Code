.localvar 2 arguments

:[0]
b [21]

> gml_Script_scr_keyiteminfo_ch1 (locals=0, argc=1)
:[1]
push.s "---"@8074
pop.v.s self.tempkeyitemdesc
push.s " "@353
pop.v.s self.tempkeyitemname
pushi.e 0
pop.v.i self.tempkeyitemusable
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [11]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [12]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [13]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [14]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [15]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [16]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [17]

:[8]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [18]

:[9]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [19]

:[10]
b [20]

:[11]
push.s "---"@8074
pop.v.s self.tempkeyitemdesc
push.s " "@353
pop.v.s self.tempkeyitemname
b [20]

:[12]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_13_0"@8078
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_14_0"@8080
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tempkeyitemname
pushi.e 1
pop.v.i self.tempkeyitemusable
b [20]

:[13]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_18_0"@8082
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_19_0"@8084
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tempkeyitemname
pushi.e 1
pop.v.i self.tempkeyitemusable
b [20]

:[14]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_23_0"@8085
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_24_0"@8087
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tempkeyitemname
b [20]

:[15]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_27_0"@8089
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_28_0"@8091
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tempkeyitemname
b [20]

:[16]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_31_0"@8093
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_32_0"@8095
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tempkeyitemname
b [20]

:[17]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_35_0"@8097
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_36_0"@8099
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tempkeyitemname
b [20]

:[18]
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_39_0"@8101
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_40_0"@8103
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tempkeyitemname
b [20]

:[19]
pushi.e 1
pop.v.i self.tempkeyitemusable
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_41_0"@13276
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tempkeyitemdesc
push.s "scr_keyiteminfo_slash_scr_keyiteminfo_gml_42_0"@13277
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tempkeyitemname
b [20]

:[20]
popz.v
exit.i

:[21]
push.i [function]gml_Script_scr_keyiteminfo_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_keyiteminfo_ch1
popz.v

:[end]