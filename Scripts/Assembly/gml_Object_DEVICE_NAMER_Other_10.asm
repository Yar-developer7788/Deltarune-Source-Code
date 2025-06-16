.localvar 2 arguments

:[0]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [2]

:[1]
push.v self.FN
call.i gml_Script_string_to_hiragana(argc=1)
pop.v.v self.FN

:[2]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_3_0"@28976
conv.s.v
push.s "SUSIE"@28977
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i self.FOUND

:[4]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_4_0"@28979
conv.s.v
push.s "NOELLE"@28980
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [6]

:[5]
pushi.e 2
pop.v.i self.FOUND

:[6]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_5_0"@28981
conv.s.v
push.s "KRIS"@28982
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [8]

:[7]
pushi.e 2
pop.v.i self.FOUND

:[8]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_6_0"@28983
conv.s.v
push.s "TORIEL"@28984
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.FOUND

:[10]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_7_0"@28985
conv.s.v
push.s "ASRIEL"@28986
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.FOUND

:[12]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_8_0"@28987
conv.s.v
push.s "ASGORE"@28988
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.FOUND

:[14]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_9_0"@28989
conv.s.v
push.s "SANS"@28990
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i self.FOUND

:[16]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_10_0"@28991
conv.s.v
push.s "PAPYRUS"@28992
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [18]

:[17]
pushi.e 1
pop.v.i self.FOUND

:[18]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_11_0"@28993
conv.s.v
push.s "ALPHYS"@28994
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [20]

:[19]
pushi.e 1
pop.v.i self.FOUND

:[20]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_12_0"@28995
conv.s.v
push.s "UNDYNE"@28996
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.i self.FOUND

:[22]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_13_0"@28997
conv.s.v
push.s "RUDY"@28998
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [24]

:[23]
pushi.e 1
pop.v.i self.FOUND

:[24]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_14_0"@28999
conv.s.v
push.s "BERDLY"@29000
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [26]

:[25]
pushi.e 1
pop.v.i self.FOUND

:[26]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_15_0"@29001
conv.s.v
push.s "CATTY"@29002
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [28]

:[27]
pushi.e 1
pop.v.i self.FOUND

:[28]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_16_0"@29003
conv.s.v
push.s "CATTI"@29004
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i self.FOUND

:[30]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_17_0"@29005
conv.s.v
push.s "BRATTY"@29006
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i self.FOUND

:[32]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_18_0"@29007
conv.s.v
push.s "GERSON"@29008
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.i self.FOUND

:[34]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_19_0"@29009
conv.s.v
push.s "JOCKINGTON"@29010
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.i self.FOUND

:[36]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_20_0"@29011
conv.s.v
push.s "QC"@29012
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [38]

:[37]
pushi.e 1
pop.v.i self.FOUND

:[38]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [end]

:[39]
push.v self.FN
call.i gml_Script_string_to_ascii_from_full_width(argc=1)
pop.v.v self.FN
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_27_0"@29013
conv.s.v
push.s "SUSIE"@28977
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [41]

:[40]
pushi.e 2
pop.v.i self.FOUND

:[41]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_28_0"@29014
conv.s.v
push.s "NOELLE"@28980
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [43]

:[42]
pushi.e 2
pop.v.i self.FOUND

:[43]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_29_0"@29015
conv.s.v
push.s "KRIS"@28982
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [45]

:[44]
pushi.e 2
pop.v.i self.FOUND

:[45]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_30_0"@29016
conv.s.v
push.s "TORIEL"@28984
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [47]

:[46]
pushi.e 1
pop.v.i self.FOUND

:[47]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_31_0"@29017
conv.s.v
push.s "ASRIEL"@28986
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [49]

:[48]
pushi.e 1
pop.v.i self.FOUND

:[49]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_32_0"@29018
conv.s.v
push.s "ASGORE"@28988
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [51]

:[50]
pushi.e 1
pop.v.i self.FOUND

:[51]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_33_0"@29019
conv.s.v
push.s "SANS"@28990
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [53]

:[52]
pushi.e 1
pop.v.i self.FOUND

:[53]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_34_0"@29020
conv.s.v
push.s "PAPYRUS"@28992
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [55]

:[54]
pushi.e 1
pop.v.i self.FOUND

:[55]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_35_0"@29021
conv.s.v
push.s "ALPHYS"@28994
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [57]

:[56]
pushi.e 1
pop.v.i self.FOUND

:[57]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_36_0"@29022
conv.s.v
push.s "UNDYNE"@28996
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [59]

:[58]
pushi.e 1
pop.v.i self.FOUND

:[59]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_37_0"@29023
conv.s.v
push.s "RUDY"@28998
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [61]

:[60]
pushi.e 1
pop.v.i self.FOUND

:[61]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_38_0"@29024
conv.s.v
push.s "BERDLY"@29000
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [63]

:[62]
pushi.e 1
pop.v.i self.FOUND

:[63]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_39_0"@29025
conv.s.v
push.s "CATTY"@29002
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [65]

:[64]
pushi.e 1
pop.v.i self.FOUND

:[65]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_40_0"@29026
conv.s.v
push.s "CATTI"@29004
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [67]

:[66]
pushi.e 1
pop.v.i self.FOUND

:[67]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_41_0"@29027
conv.s.v
push.s "BRATTY"@29006
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [69]

:[68]
pushi.e 1
pop.v.i self.FOUND

:[69]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_42_0"@29028
conv.s.v
push.s "GERSON"@29008
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [71]

:[70]
pushi.e 1
pop.v.i self.FOUND

:[71]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_43_0"@29029
conv.s.v
push.s "JOCKINGTON"@29010
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [73]

:[72]
pushi.e 1
pop.v.i self.FOUND

:[73]
push.v self.FN
push.s "DEVICE_NAMER_slash_Other_10_gml_44_0"@29030
conv.s.v
push.s "QC"@29012
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [end]

:[74]
pushi.e 1
pop.v.i self.FOUND

:[end]