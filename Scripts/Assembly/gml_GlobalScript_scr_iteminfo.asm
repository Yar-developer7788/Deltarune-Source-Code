.localvar 2 arguments
.localvar 7922 healamount 1463

:[0]
b [74]

> gml_Script_scr_iteminfo (locals=1, argc=1)
:[1]
pushi.e 0
pop.v.i self.usable
pushi.e 0
pop.v.i self.replaceable
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
bt [36]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [37]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [38]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [39]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [40]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [41]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [42]

:[8]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [43]

:[9]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [47]

:[10]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [48]

:[11]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [49]

:[12]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [50]

:[13]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [51]

:[14]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [52]

:[15]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [53]

:[16]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [54]

:[17]
dup.v 0
pushi.e 16
cmp.i.v EQ
bt [55]

:[18]
dup.v 0
pushi.e 17
cmp.i.v EQ
bt [56]

:[19]
dup.v 0
pushi.e 18
cmp.i.v EQ
bt [57]

:[20]
dup.v 0
pushi.e 19
cmp.i.v EQ
bt [58]

:[21]
dup.v 0
pushi.e 20
cmp.i.v EQ
bt [59]

:[22]
dup.v 0
pushi.e 21
cmp.i.v EQ
bt [60]

:[23]
dup.v 0
pushi.e 22
cmp.i.v EQ
bt [61]

:[24]
dup.v 0
pushi.e 23
cmp.i.v EQ
bt [62]

:[25]
dup.v 0
pushi.e 24
cmp.i.v EQ
bt [63]

:[26]
dup.v 0
pushi.e 25
cmp.i.v EQ
bt [64]

:[27]
dup.v 0
pushi.e 26
cmp.i.v EQ
bt [65]

:[28]
dup.v 0
pushi.e 27
cmp.i.v EQ
bt [66]

:[29]
dup.v 0
pushi.e 28
cmp.i.v EQ
bt [67]

:[30]
dup.v 0
pushi.e 29
cmp.i.v EQ
bt [68]

:[31]
dup.v 0
pushi.e 30
cmp.i.v EQ
bt [69]

:[32]
dup.v 0
pushi.e 31
cmp.i.v EQ
bt [70]

:[33]
dup.v 0
pushi.e 32
cmp.i.v EQ
bt [71]

:[34]
dup.v 0
pushi.e 33
cmp.i.v EQ
bt [72]

:[35]
b [73]

:[36]
push.s " "@353
pop.v.s self.itemnameb
push.s "---"@8074
pop.v.s self.itemdescb
b [73]

:[37]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_15_0"@8175
conv.s.v
push.s "Dark Candy"@8176
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_16_0"@8177
conv.s.v
push.s "Heals#40HP"@8178
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 25
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[38]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_22_0"@8179
conv.s.v
push.s "ReviveMint"@8180
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_23_0"@8181
conv.s.v
push.s "Heal#Downed#Ally"@8182
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 400
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[39]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_29_0"@8183
conv.s.v
push.s "Glowshard"@8184
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_30_0"@8185
conv.s.v
push.s "Sell#at#shops"@8186
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 0
pop.v.i self.itemtarget
pushi.e 200
pushglb.v global.chapter
pushi.e 100
mul.i.v
add.v.i
pop.v.v self.value
pushi.e 0
pop.v.i self.usable
b [73]

:[40]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_36_0"@8187
conv.s.v
push.s "Manual"@8188
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_37_0"@8189
conv.s.v
push.s "Read#out of#battle"@8190
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 1
pop.v.i self.value
pushi.e 0
pop.v.i self.usable
b [73]

:[41]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_43_0"@8191
conv.s.v
push.s "BrokenCake"@8088
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_44_0"@8192
conv.s.v
push.s "Heals#20HP"@8193
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 5
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[42]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_50_0"@8194
conv.s.v
push.s "Top Cake"@8195
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_51_0"@8196
conv.s.v
push.s "Heals#team#160HP"@8197
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 150
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[43]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
pushi.e 80
conv.i.v
b [46]

:[45]
pushi.e 140
conv.i.v

:[46]
pop.v.v local.healamount
push.s "scr_iteminfo_slash_scr_iteminfo_gml_58_0"@8198
conv.s.v
push.s "Spincake"@8199
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_59_0"@8200
conv.s.v
pushloc.v local.healamount
call.i string(argc=1)
push.s "Heals#team#~1HP"@8201
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 5
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[47]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_65_0"@8202
conv.s.v
push.s "Darkburger"@8203
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_66_0"@8204
conv.s.v
push.s "Heals#70HP"@8205
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 70
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[48]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_72_0"@8206
conv.s.v
push.s "LancerCookie"@8207
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_73_0"@8208
conv.s.v
push.s "Heals#50HP"@8209
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 10
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[49]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_79_0"@8210
conv.s.v
push.s "GigaSalad"@8211
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_80_0"@8212
conv.s.v
push.s "Heals#4HP"@8213
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 10
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[50]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_86_0"@8214
conv.s.v
push.s "ClubsSandwich"@8215
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_87_0"@8216
conv.s.v
push.s "Heals#team#70HP"@8217
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 70
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[51]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_93_0"@8218
conv.s.v
push.s "HeartsDonut"@8219
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_94_0"@8220
conv.s.v
push.s "Healing#varies"@8221
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 40
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[52]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_100_0"@8222
conv.s.v
push.s "ChocDiamond"@8223
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_101_0"@8224
conv.s.v
push.s "Healing#varies"@8221
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 40
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[53]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_107_0"@8225
conv.s.v
push.s "Favwich"@8226
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_108_0"@8227
conv.s.v
push.s "Heals#ALL HP"@8228
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 10
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[54]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_114_0"@8229
conv.s.v
push.s "RouxlsRoux"@8230
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_115_0"@8231
conv.s.v
push.s "Heals#50 HP"@8232
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 50
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[55]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_121_0"@8233
conv.s.v
push.s "CD Bagel"@8234
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_122_0"@8235
conv.s.v
push.s "Heals#80 HP"@8236
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 100
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[56]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_128_0"@8237
conv.s.v
push.s "Mannequin"@8238
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_129_0"@8239
conv.s.v
push.s "Useless"@8240
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 0
pop.v.i self.itemtarget
pushi.e 300
pop.v.i self.value
pushi.e 0
pop.v.i self.usable
b [73]

:[57]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_135_0"@8241
conv.s.v
push.s "Kris Tea"@8242
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_136_0"@8243
conv.s.v
push.s "Healing#varies"@8221
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 10
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[58]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_142_0"@8244
conv.s.v
push.s "Noelle Tea"@8245
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_143_0"@8246
conv.s.v
push.s "Healing#varies"@8221
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 10
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[59]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_149_0"@8247
conv.s.v
push.s "Ralsei Tea"@8248
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_150_0"@8249
conv.s.v
push.s "Healing#varies"@8221
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 10
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[60]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_156_0"@8250
conv.s.v
push.s "Susie Tea"@8251
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_157_0"@8252
conv.s.v
push.s "Healing#varies"@8221
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 10
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[61]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_163_0"@8253
conv.s.v
push.s "DD-Burger"@8254
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_164_0"@8255
conv.s.v
push.s "Heals#60HP 2x"@8256
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 110
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
pushi.e 8
pop.v.i self.replaceable
b [73]

:[62]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_171_0"@8257
conv.s.v
push.s "LightCandy"@8258
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_172_0"@8259
conv.s.v
push.s "Heals#120HP"@8260
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 200
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[63]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_178_0"@8261
conv.s.v
push.s "ButJuice"@8262
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_179_0"@8263
conv.s.v
push.s "Heals#100HP"@7613
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 200
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[64]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_185_0"@8264
conv.s.v
push.s "SpagettiCode"@8265
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_186_0"@8266
conv.s.v
push.s "Heals#team#30HP"@8267
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 180
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[65]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_192_0"@8268
conv.s.v
push.s "JavaCookie"@8269
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_193_0"@8270
conv.s.v
push.s "Healing#varies"@8221
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 160
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[66]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_199_0"@8271
conv.s.v
push.s "TensionBit"@8272
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_200_0"@8273
conv.s.v
push.s "Raises#TP#32%"@8274
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 100
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[67]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_206_0"@8275
conv.s.v
push.s "TensionGem"@8276
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_207_0"@8277
conv.s.v
push.s "Raises#TP#50%"@8278
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 300
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[68]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_213_0"@8279
conv.s.v
push.s "TensionMax"@8280
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_214_0"@8281
conv.s.v
push.s "Raises#TP#Max"@8282
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 1000
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[69]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_220_0"@8283
conv.s.v
push.s "ReviveDust"@8284
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_221_0"@8285
conv.s.v
push.s "Revives#team#25%"@8286
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 100
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[70]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_227_0"@8287
conv.s.v
push.s "ReviveBrite"@8288
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_228_0"@8289
conv.s.v
push.s "Revives#team#100%"@8290
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 2
pop.v.i self.itemtarget
pushi.e 4000
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[71]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_234_0"@8291
conv.s.v
push.s "S.POISON"@8292
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_235_0"@8293
conv.s.v
push.s "Hurts#party#member"@8294
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 1
pop.v.i self.itemtarget
pushi.e 110
pop.v.i self.value
pushi.e 1
pop.v.i self.usable
b [73]

:[72]
push.s "scr_iteminfo_slash_scr_iteminfo_gml_241_0"@8295
conv.s.v
push.s "DogDollar"@8296
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemnameb
push.s "scr_iteminfo_slash_scr_iteminfo_gml_242_0"@8297
conv.s.v
push.s "Not#so#useful"@8298
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.itemdescb
pushi.e 0
pop.v.i self.itemtarget
pushi.e 200
conv.i.d
pushglb.v global.chapter
div.v.d
call.i floor(argc=1)
pop.v.v self.value
pushi.e 0
pop.v.i self.usable
b [73]

:[73]
popz.v
exit.i

:[74]
push.i [function]gml_Script_scr_iteminfo
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_iteminfo
popz.v

:[end]