.localvar 2 arguments

:[0]
b [27]

> gml_Script_scr_weaponinfo_ch1 (locals=0, argc=1)
:[1]
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [13]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [14]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [17]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [18]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [19]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [20]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [21]

:[8]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [22]

:[9]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [23]

:[10]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [24]

:[11]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [25]

:[12]
b [26]

:[13]
push.s " "@353
pop.v.s self.weaponnametemp
push.s " "@353
pop.v.s self.weapondesctemp
push.s " "@353
pop.v.s self.wmessage2temp
push.s " "@353
pop.v.s self.wmessage3temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 0
pop.v.i self.weaponboltstemp
push.s " "@353
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
push.s " "@353
pop.v.s self.weaponabilitytemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
pushi.e 0
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.value
b [26]

:[14]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_29_0"@13360
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_30_0"@13361
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_31_0"@13362
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage2temp
pushglb.v global.plot
pushi.e 30
cmp.i.v LT
bf [16]

:[15]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_34_0"@8640
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage2tempt

:[16]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_36_0"@13363
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage3temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 1
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 1
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@353
pop.v.s self.weaponabilitytemp
pushi.e 60
pop.v.i self.value
b [26]

:[17]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_54_0"@13364
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_55_0"@13365
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_56_0"@13366
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_57_0"@13367
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage3temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 2
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@353
pop.v.s self.weaponabilitytemp
pushi.e 80
pop.v.i self.value
b [26]

:[18]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_75_0"@13368
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_76_0"@13369
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_77_0"@13370
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_78_0"@13371
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage3temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 1
pop.v.i self.weaponchar3temp
pushi.e 3
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@353
pop.v.s self.weaponabilitytemp
pushi.e 100
pop.v.i self.value
b [26]

:[19]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_97_0"@13372
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_98_0"@13373
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_99_0"@13374
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_100_0"@13375
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage3temp
pushi.e 12
pop.v.i self.weaponattemp
pushi.e 6
pop.v.i self.weapondftemp
pushi.e 8
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 1
pop.v.i self.weaponchar1temp
pushi.e 1
pop.v.i self.weaponchar2temp
pushi.e 1
pop.v.i self.weaponchar3temp
pushi.e 0
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@353
pop.v.s self.weaponabilitytemp
pushi.e 150
pop.v.i self.value
b [26]

:[20]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_118_0"@13376
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_119_0"@13377
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_120_0"@13378
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_121_0"@13379
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage3temp
pushi.e 2
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 1
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 1
pop.v.i self.weaponicontemp
pushi.e 7
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_134_0"@13380
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponabilitytemp
pushi.e 200
pop.v.i self.value
b [26]

:[21]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_139_0"@13381
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_140_0"@13382
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_141_0"@13383
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_142_0"@13384
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage3temp
pushi.e 2
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 1
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 2
pop.v.i self.weaponicontemp
pushi.e 7
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_155_0"@13385
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponabilitytemp
pushi.e 150
pop.v.i self.value
b [26]

:[22]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_160_0"@13386
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_161_0"@13387
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_162_0"@13388
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_163_0"@13389
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage3temp
pushi.e 5
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 4
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 1
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 2
pop.v.i self.weaponicontemp
pushi.e 6
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_176_0"@8713
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponabilitytemp
pushi.e 0
pop.v.i self.value
b [26]

:[23]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_181_0"@13390
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_182_0"@13391
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_183_0"@13392
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_184_0"@13393
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage3temp
pushi.e 4
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 1
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 0
pop.v.i self.weaponchar3temp
pushi.e 1
pop.v.i self.weaponicontemp
pushi.e 7
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_197_0"@8723
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponabilitytemp
pushi.e 250
pop.v.i self.value
b [26]

:[24]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_202_0"@13394
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_203_0"@13395
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_204_0"@13396
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_205_0"@13397
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage3temp
pushi.e 2
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 0
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 1
pop.v.i self.weaponchar3temp
pushi.e 3
pop.v.i self.weaponicontemp
pushi.e 0
pop.v.i self.weaponabilityicontemp
push.s " "@353
pop.v.s self.weaponabilitytemp
pushi.e 200
pop.v.i self.value
b [26]

:[25]
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_223_0"@13398
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponnametemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_224_0"@13399
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weapondesctemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_225_0"@13400
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage2temp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_226_0"@13401
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.wmessage3temp
pushi.e 0
pop.v.i self.weaponattemp
pushi.e 0
pop.v.i self.weapondftemp
pushi.e 2
pop.v.i self.weaponmagtemp
pushi.e 1
pop.v.i self.weaponboltstemp
push.s "?"@4913
pop.v.s self.weaponstyletemp
pushi.e 0
pop.v.i self.weapongrazeamttemp
pushi.e 0
pop.v.i self.weapongrazesizetemp
pushi.e 0
pop.v.i self.weaponchar1temp
pushi.e 0
pop.v.i self.weaponchar2temp
pushi.e 1
pop.v.i self.weaponchar3temp
pushi.e 3
pop.v.i self.weaponicontemp
pushi.e 7
pop.v.i self.weaponabilityicontemp
push.s "scr_weaponinfo_slash_scr_weaponinfo_gml_239_0"@8743
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.weaponabilitytemp
pushi.e 200
pop.v.i self.value
b [26]

:[26]
popz.v
exit.i

:[27]
push.i [function]gml_Script_scr_weaponinfo_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_weaponinfo_ch1
popz.v

:[end]