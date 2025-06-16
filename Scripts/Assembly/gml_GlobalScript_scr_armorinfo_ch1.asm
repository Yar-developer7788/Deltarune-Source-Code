.localvar 2 arguments

:[0]
b [21]

> gml_Script_scr_armorinfo_ch1 (locals=0, argc=1)
:[1]
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [10]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [11]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [12]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [13]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [14]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [17]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [18]

:[8]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [19]

:[9]
b [20]

:[10]
push.s " "@353
pop.v.s self.armornametemp
push.s " "@353
pop.v.s self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_8_0"@8887
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.amessage2temp
push.s " "@353
pop.v.s self.amessage3temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 0
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 0
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s " "@353
pop.v.s self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 0
pop.v.i self.armoricontemp
pushi.e 0
pop.v.i self.value
b [20]

:[11]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_26_0"@13403
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_27_0"@13404
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_28_0"@8892
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_29_0"@8894
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.amessage3temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 1
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s " "@353
pop.v.s self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 100
pop.v.i self.value
b [20]

:[12]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_46_0"@13405
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_47_0"@13406
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_48_0"@13407
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_49_0"@8903
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.amessage3temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s " "@353
pop.v.s self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 150
pop.v.i self.value
b [20]

:[13]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_66_0"@13408
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_67_0"@13409
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_68_0"@13410
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_69_0"@13411
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.amessage3temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 1
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 20
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 0
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_79_0"@8926
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armorabilitytemp
pushi.e 7
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 100
pop.v.i self.value
b [20]

:[14]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_87_0"@13412
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_88_0"@13413
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_89_0"@13414
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_90_0"@13415
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.amessage3temp
pushi.e 1380
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[15]
push.s " "@353
pop.v.s self.amessage3temp

:[16]
pushi.e 0
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 0
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_101_0"@8935
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armorabilitytemp
pushi.e 7
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 90
pop.v.i self.value
b [20]

:[17]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_108_0"@8939
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_109_0"@13416
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_110_0"@13417
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_111_0"@13418
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.amessage3temp
pushi.e 1
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 0
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s " "@353
pop.v.s self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 150
pop.v.i self.value
b [20]

:[18]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_128_0"@8948
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_129_0"@13419
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_130_0"@8950
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_131_0"@13420
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.amessage3temp
pushi.e 0
pop.v.i self.armorattemp
pushi.e 0
pop.v.i self.armordftemp
pushi.e 2
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s " "@353
pop.v.s self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 120
pop.v.i self.value
b [20]

:[19]
push.s "scr_armorinfo_slash_scr_armorinfo_gml_148_0"@8957
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armornametemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_149_0"@8959
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.armordesctemp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_150_0"@13421
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.amessage2temp
push.s "scr_armorinfo_slash_scr_armorinfo_gml_151_0"@8961
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.amessage3temp
pushi.e 2
pop.v.i self.armorattemp
pushi.e 2
pop.v.i self.armordftemp
pushi.e 2
pop.v.i self.armormagtemp
pushi.e 0
pop.v.i self.armorboltstemp
pushi.e 0
pop.v.i self.armorgrazeamttemp
pushi.e 0
pop.v.i self.armorgrazesizetemp
pushi.e 1
pop.v.i self.armorchar1temp
pushi.e 1
pop.v.i self.armorchar2temp
pushi.e 1
pop.v.i self.armorchar3temp
push.s " "@353
pop.v.s self.armorabilitytemp
pushi.e 0
pop.v.i self.armorabilityicontemp
pushi.e 4
pop.v.i self.armoricontemp
pushi.e 0
pop.v.i self.value
b [20]

:[20]
popz.v
exit.i

:[21]
push.i [function]gml_Script_scr_armorinfo_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_armorinfo_ch1
popz.v

:[end]