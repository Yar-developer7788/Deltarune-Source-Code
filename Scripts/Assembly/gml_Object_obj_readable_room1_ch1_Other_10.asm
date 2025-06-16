.localvar 2 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 6
pop.v.i global.typer

:[2]
pushi.e 0
pop.v.i global.fe
pushi.e 0
pop.v.i global.fc
pushi.e 1
pop.v.i global.interact
pushi.e 1494
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.charcon

:[4]
popenv [3]
push.i 231251
setowner.e
push.s "obj_readable_room1_slash_Other_10_gml_11_0"@39476
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushbltn.v builtin.room
pushi.e 283
cmp.i.v EQ
bf [29]

:[5]
push.v self.y
pushi.e 150
cmp.i.v LT
bf [7]

:[6]
push.s "obj_readable_room1_slash_Other_10_gml_17_0"@39477
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_18_0"@39478
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
b [8]

:[7]
push.s "obj_readable_room1_slash_Other_10_gml_22_0"@18272
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[8]
push.v self.x
pushi.e 100
cmp.i.v GT
bf [15]

:[9]
push.s "obj_readable_room1_slash_Other_10_gml_28_0"@18274
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_29_0"@18276
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushglb.v global.filechoice
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_readable_room1_slash_Other_10_gml_30_0"@39479
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[11]
pushglb.v global.filechoice
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_readable_room1_slash_Other_10_gml_33_0"@39480
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_34_0"@39481
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[13]
push.v self.read
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
push.s "obj_readable_room1_slash_Other_10_gml_38_0"@39482
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[15]
push.v self.x
pushi.e 136
cmp.i.v GT
bf [17]

:[16]
push.s "obj_readable_room1_slash_Other_10_gml_45_0"@18286
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[17]
push.v self.x
pushi.e 192
cmp.i.v GT
bf [19]

:[18]
push.s "obj_readable_room1_slash_Other_10_gml_50_0"@39483
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[19]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [27]

:[20]
push.s "obj_readable_room1_slash_Other_10_gml_55_0"@18290
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 10
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushglb.v global.plot
pushi.e 10
cmp.i.v LT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 402
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[25]
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [27]

:[26]
pushi.e 400
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[27]
push.v self.x
pushi.e 250
cmp.i.v GT
bf [29]

:[28]
push.s "obj_readable_room1_slash_Other_10_gml_71_0"@39484
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[29]
pushbltn.v builtin.room
pushi.e 284
cmp.i.v EQ
bf [39]

:[30]
push.s "obj_readable_room1_slash_Other_10_gml_79_0"@39485
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.x
pushi.e 120
cmp.i.v GT
bf [32]

:[31]
push.s "obj_readable_room1_slash_Other_10_gml_83_0"@39486
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[32]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [34]

:[33]
push.s "obj_readable_room1_slash_Other_10_gml_87_0"@39487
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[34]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [36]

:[35]
push.s "obj_readable_room1_slash_Other_10_gml_91_0"@18304
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[36]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [39]

:[37]
push.s "obj_readable_room1_slash_Other_10_gml_96_0"@18306
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_97_0"@39488
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_98_0"@39489
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_99_0"@39490
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_100_0"@39491
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.v self.read
pushi.e 0
cmp.i.v GT
bf [39]

:[38]
push.s "obj_readable_room1_slash_Other_10_gml_103_0"@39492
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[39]
pushbltn.v builtin.room
pushi.e 286
cmp.i.v EQ
bf [58]

:[40]
push.v self.x
pushi.e 190
cmp.i.v GT
bf [42]

:[41]
push.s "obj_readable_room1_slash_Other_10_gml_113_0"@39493
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[42]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [44]

:[43]
push.s "obj_readable_room1_slash_Other_10_gml_118_0"@39494
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[44]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [47]

:[45]
push.s "obj_readable_room1_slash_Other_10_gml_123_0"@39495
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [47]

:[46]
push.s "obj_readable_room1_slash_Other_10_gml_126_0"@39496
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[47]
push.v self.x
pushi.e 300
cmp.i.v GT
bf [49]

:[48]
push.s "obj_readable_room1_slash_Other_10_gml_132_0"@39497
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[49]
push.v self.x
pushi.e 340
cmp.i.v GT
bf [52]

:[50]
push.s "obj_readable_room1_slash_Other_10_gml_137_0"@39498
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 262
push.v [array]self.flag
pushi.e 4
cmp.i.v GTE
bf [52]

:[51]
push.s "obj_readable_room1_slash_Other_10_gml_140_0"@39499
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[52]
push.v self.x
pushi.e 369
cmp.i.v GT
bf [54]

:[53]
push.s "obj_readable_room1_slash_Other_10_gml_146_0"@39500
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[54]
push.v self.x
pushi.e 440
cmp.i.v GT
bf [56]

:[55]
push.s "obj_readable_room1_slash_Other_10_gml_151_0"@39501
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[56]
push.v self.x
pushi.e 560
cmp.i.v GT
bf [58]

:[57]
push.s "obj_readable_room1_slash_Other_10_gml_157_0"@39502
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[58]
pushbltn.v builtin.room
pushi.e 287
cmp.i.v EQ
bf [68]

:[59]
push.v self.x
pushi.e 100
cmp.i.v GTE
bf [61]

:[60]
push.s "obj_readable_room1_slash_Other_10_gml_167_0"@39503
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_168_0"@39504
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[61]
push.v self.x
pushi.e 160
cmp.i.v GTE
bf [63]

:[62]
push.v self.x
pushi.e 190
cmp.i.v LTE
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 355
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[66]
push.v self.x
pushi.e 190
cmp.i.v GTE
bf [68]

:[67]
push.s "obj_readable_room1_slash_Other_10_gml_177_0"@18327
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_178_0"@18329
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_179_0"@18331
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[68]
pushbltn.v builtin.room
pushi.e 310
cmp.i.v EQ
bf [108]

:[69]
push.v self.x
pushi.e 140
cmp.i.v GTE
bf [71]

:[70]
push.v self.x
pushi.e 240
cmp.i.v LT
b [72]

:[71]
push.e 0

:[72]
bf [86]

:[73]
push.v self.tempvar
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
push.s "obj_readable_room1_slash_Other_10_gml_190_0"@39505
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[75]
push.v self.tempvar
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
push.s "obj_readable_room1_slash_Other_10_gml_191_0"@39506
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[77]
push.v self.tempvar
pushi.e 2
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_readable_room1_slash_Other_10_gml_192_0"@39507
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[79]
push.v self.tempvar
pushi.e 3
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_readable_room1_slash_Other_10_gml_193_0"@39508
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[81]
push.v self.tempvar
pushi.e 4
cmp.i.v GTE
bf [83]

:[82]
push.s "obj_readable_room1_slash_Other_10_gml_194_0"@39509
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[83]
pushi.e 1409
pushenv [85]

:[84]
push.v self.tempvar
pushi.e 1
add.i.v
pop.v.v self.tempvar

:[85]
popenv [84]

:[86]
push.v self.x
pushi.e 240
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_readable_room1_slash_Other_10_gml_199_0"@39510
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[88]
push.v self.x
pushi.e 280
cmp.i.v GTE
bf [90]

:[89]
push.s "obj_readable_room1_slash_Other_10_gml_204_0"@39511
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_205_0"@39512
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_206_0"@39513
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[90]
push.v self.x
pushi.e 140
cmp.i.v LT
bf [92]

:[91]
push.s "obj_readable_room1_slash_Other_10_gml_211_0"@18352
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_212_0"@39514
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[92]
push.v self.x
pushi.e 520
cmp.i.v GTE
bf [100]

:[93]
push.s "obj_readable_room1_slash_Other_10_gml_217_0"@18354
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
push.s "obj_readable_room1_slash_Other_10_gml_218_0"@39515
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[95]
push.v self.read
pushi.e 2
cmp.i.v GTE
bf [97]

:[96]
push.s "obj_readable_room1_slash_Other_10_gml_219_0"@39516
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[97]
pushglb.v global.plot
pushi.e 10
cmp.i.v LT
bf [100]

:[98]
push.s "obj_readable_room1_slash_Other_10_gml_223_0"@39517
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_225_0"@39518
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [100]

:[99]
pushi.e 9
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_230_0"@39519
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[100]
push.v self.x
pushi.e 560
cmp.i.v GTE
bf [102]

:[101]
push.s "obj_readable_room1_slash_Other_10_gml_237_0"@39520
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_238_0"@39521
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_239_0"@39522
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[102]
push.v self.x
pushi.e 690
cmp.i.v GTE
bf [104]

:[103]
push.s "obj_readable_room1_slash_Other_10_gml_245_0"@18366
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[104]
push.v self.x
pushi.e 760
cmp.i.v EQ
bf [106]

:[105]
push.s "obj_readable_room1_slash_Other_10_gml_251_0"@18370
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[106]
push.v self.x
pushi.e 780
cmp.i.v EQ
bf [108]

:[107]
push.s "obj_readable_room1_slash_Other_10_gml_255_0"@39523
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[108]
pushbltn.v builtin.room
pushi.e 311
cmp.i.v EQ
bf [120]

:[109]
push.s "obj_readable_room1_slash_Other_10_gml_264_0"@18374
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_265_0"@39524
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [111]

:[110]
push.s "obj_readable_room1_slash_Other_10_gml_269_0"@39525
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_270_0"@39526
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[111]
push.v self.x
pushi.e 240
cmp.i.v GT
bf [113]

:[112]
pushi.e 1
pop.v.i global.fe
pushi.e 11
pop.v.i global.fc
pushi.e 20
pop.v.i global.typer
push.s "obj_readable_room1_slash_Other_10_gml_278_0"@39527
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_279_0"@39528
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[113]
push.v self.x
pushi.e 200
cmp.i.v LT
bf [116]

:[114]
push.s "obj_readable_room1_slash_Other_10_gml_284_0"@39529
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_285_0"@39530
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [116]

:[115]
push.s "obj_readable_room1_slash_Other_10_gml_289_0"@39531
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_290_0"@39532
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[116]
push.v self.x
pushi.e 150
cmp.i.v LT
bf [118]

:[117]
push.s "obj_readable_room1_slash_Other_10_gml_298_0"@39533
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[118]
push.v self.x
pushi.e 80
cmp.i.v LT
bf [120]

:[119]
push.s "obj_readable_room1_slash_Other_10_gml_304_0"@39534
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_305_0"@39535
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_306_0"@39536
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[120]
pushbltn.v builtin.room
pushi.e 309
cmp.i.v EQ
bf [140]

:[121]
push.v self.y
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [137]

:[122]
push.v self.x
pushi.e 100
cmp.i.v GTE
bf [124]

:[123]
push.s "obj_readable_room1_slash_Other_10_gml_318_0"@39537
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_319_0"@39538
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[124]
push.v self.x
pushi.e 130
cmp.i.v GTE
bf [126]

:[125]
push.s "obj_readable_room1_slash_Other_10_gml_323_0"@39539
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_324_0"@39540
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[126]
push.v self.x
pushi.e 170
cmp.i.v GTE
bf [128]

:[127]
pushi.e 350
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[128]
push.v self.x
pushi.e 198
cmp.i.v GTE
bf [130]

:[129]
push.s "obj_readable_room1_slash_Other_10_gml_333_0"@39541
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[130]
push.v self.x
pushi.e 204
cmp.i.v GTE
bf [132]

:[131]
push.s "obj_readable_room1_slash_Other_10_gml_338_0"@18399
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_339_0"@18401
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[132]
push.v self.x
pushi.e 230
cmp.i.v GTE
bf [134]

:[133]
push.s "obj_readable_room1_slash_Other_10_gml_343_0"@39542
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[134]
push.v self.x
pushi.e 256
cmp.i.v GTE
bf [136]

:[135]
push.s "obj_readable_room1_slash_Other_10_gml_347_0"@39543
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[136]
b [140]

:[137]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [139]

:[138]
push.s "obj_readable_room1_slash_Other_10_gml_354_0"@18384
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [140]

:[139]
push.s "obj_readable_room1_slash_Other_10_gml_358_0"@18387
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[140]
pushbltn.v builtin.room
pushi.e 312
cmp.i.v EQ
bf [142]

:[141]
push.s "obj_readable_room1_slash_Other_10_gml_366_0"@39544
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[142]
pushbltn.v builtin.room
pushi.e 314
cmp.i.v EQ
bf [161]

:[143]
push.v self.x
pushi.e 80
cmp.i.v LT
bf [145]

:[144]
push.s "obj_readable_room1_slash_Other_10_gml_371_0"@39545
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[145]
push.v self.x
pushi.e 100
cmp.i.v GT
bf [147]

:[146]
push.s "obj_readable_room1_slash_Other_10_gml_372_0"@39546
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[147]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [149]

:[148]
push.v self.y
pushi.e 100
cmp.i.v LT
b [150]

:[149]
push.e 0

:[150]
bf [152]

:[151]
push.s "obj_readable_room1_slash_Other_10_gml_373_0"@39547
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[152]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [154]

:[153]
push.v self.y
pushi.e 100
cmp.i.v GT
b [155]

:[154]
push.e 0

:[155]
bf [157]

:[156]
push.s "obj_readable_room1_slash_Other_10_gml_374_0"@39548
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[157]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [159]

:[158]
push.s "obj_readable_room1_slash_Other_10_gml_375_0"@18424
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[159]
push.v self.x
pushi.e 250
cmp.i.v GT
bf [161]

:[160]
push.s "obj_readable_room1_slash_Other_10_gml_378_0"@39549
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_379_0"@39550
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[161]
pushbltn.v builtin.room
pushi.e 299
cmp.i.v EQ
bf [166]

:[162]
push.v self.x
pushi.e 160
cmp.i.v LTE
bf [164]

:[163]
push.s "obj_readable_room1_slash_Other_10_gml_388_0"@39551
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_389_0"@39552
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[164]
push.v self.x
pushi.e 160
cmp.i.v GTE
bf [166]

:[165]
pushi.e 360
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[166]
pushbltn.v builtin.room
pushi.e 317
cmp.i.v EQ
bt [169]

:[167]
pushbltn.v builtin.room
pushi.e 318
cmp.i.v EQ
bt [169]

:[168]
pushbltn.v builtin.room
pushi.e 322
cmp.i.v EQ
b [170]

:[169]
push.e 1

:[170]
bf [172]

:[171]
push.s "obj_readable_room1_slash_Other_10_gml_400_0"@18436
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[172]
pushbltn.v builtin.room
pushi.e 319
cmp.i.v EQ
bf [174]

:[173]
pushi.e 110
pop.v.i global.msc
pushi.e 110
conv.i.v
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[174]
pushbltn.v builtin.room
pushi.e 321
cmp.i.v EQ
bf [176]

:[175]
push.s "obj_readable_room1_slash_Other_10_gml_411_0"@39553
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[176]
pushbltn.v builtin.room
pushi.e 326
cmp.i.v EQ
bf [182]

:[177]
push.s "obj_readable_room1_slash_Other_10_gml_416_0"@39554
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [179]

:[178]
push.s "obj_readable_room1_slash_Other_10_gml_419_0"@39555
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[179]
pushi.e 1409
pushenv [181]

:[180]
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read

:[181]
popenv [180]

:[182]
pushbltn.v builtin.room
pushi.e 327
cmp.i.v EQ
bf [185]

:[183]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_readable_room1_slash_Other_10_gml_429_0"@39556
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_430_0"@39557
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_431_0"@18449
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.read
pushi.e 0
cmp.i.v GT
bf [185]

:[184]
pushi.e 1
pop.v.i global.fe
push.s "obj_readable_room1_slash_Other_10_gml_435_0"@39558
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_436_0"@18453
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[185]
pushbltn.v builtin.room
pushi.e 325
cmp.i.v EQ
bf [187]

:[186]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_readable_room1_slash_Other_10_gml_446_0"@39559
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_447_0"@39560
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[187]
pushbltn.v builtin.room
pushi.e 336
cmp.i.v EQ
bf [189]

:[188]
push.s "obj_readable_room1_slash_Other_10_gml_452_0"@39561
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[189]
pushbltn.v builtin.room
pushi.e 340
cmp.i.v EQ
bf [191]

:[190]
push.s "obj_readable_room1_slash_Other_10_gml_457_0"@39562
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_458_0"@39563
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[191]
pushbltn.v builtin.room
pushi.e 350
cmp.i.v EQ
bt [194]

:[192]
pushbltn.v builtin.room
pushi.e 346
cmp.i.v EQ
bt [194]

:[193]
pushbltn.v builtin.room
pushi.e 348
cmp.i.v EQ
b [195]

:[194]
push.e 1

:[195]
bf [197]

:[196]
push.s "obj_readable_room1_slash_Other_10_gml_465_0"@39564
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[197]
pushbltn.v builtin.room
pushi.e 341
cmp.i.v EQ
bf [199]

:[198]
pushi.e 250
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[199]
pushbltn.v builtin.room
pushi.e 351
cmp.i.v EQ
bf [201]

:[200]
push.s "obj_readable_room1_slash_Other_10_gml_476_0"@39565
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[201]
pushbltn.v builtin.room
pushi.e 362
cmp.i.v EQ
bf [213]

:[202]
push.s "obj_readable_room1_slash_Other_10_gml_481_0"@18479
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_482_0"@39566
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_483_0"@39567
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [204]

:[203]
push.s "obj_readable_room1_slash_Other_10_gml_486_0"@39568
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[204]
push.v self.y
pushi.e 400
cmp.i.v GTE
bf [213]

:[205]
push.v self.x
pushi.e 600
cmp.i.v LT
bf [209]

:[206]
push.s "obj_readable_room1_slash_Other_10_gml_493_0"@39569
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_494_0"@39570
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_495_0"@39571
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_496_0"@39572
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [208]

:[207]
push.s "obj_readable_room1_slash_Other_10_gml_499_0"@39573
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[208]
b [211]

:[209]
push.s "obj_readable_room1_slash_Other_10_gml_504_0"@39574
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_505_0"@39575
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_506_0"@39576
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.x
pushi.e 1100
cmp.i.v GTE
bf [211]

:[210]
push.s "obj_readable_room1_slash_Other_10_gml_510_0"@18490
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_511_0"@18457
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_512_0"@18459
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[211]
pushglb.v global.plot
pushi.e 75
cmp.i.v GTE
bf [213]

:[212]
pushi.e 999
pop.v.i self.holecon
push.s "obj_readable_room1_slash_Other_10_gml_519_0"@39577
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[213]
pushbltn.v builtin.room
pushi.e 370
cmp.i.v EQ
bf [235]

:[214]
push.v self.x
pushi.e 340
cmp.i.v LTE
bf [216]

:[215]
push.s "obj_readable_room1_slash_Other_10_gml_530_0"@18500
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_531_0"@39578
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[216]
push.v self.x
pushi.e 600
cmp.i.v GTE
bf [218]

:[217]
push.v self.x
pushi.e 1300
cmp.i.v LTE
b [219]

:[218]
push.e 0

:[219]
bf [233]

:[220]
pushi.e -5
pushi.e 237
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [232]

:[221]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 237
pop.v.v [array]self.flag
pushi.e 447
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.i 231251
setowner.e
push.s "obj_readable_room1_slash_Other_10_gml_540_0"@39579
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_541_0"@39580
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v 1351.becamebattle
pushi.e 0
cmp.i.v EQ
bf [223]

:[222]
push.s "obj_readable_room1_slash_Other_10_gml_544_0"@39581
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_545_0"@39582
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_547_0"@39583
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_548_0"@39584
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[223]
pushi.e 1545
pushenv [231]

:[224]
push.v self.tree
pushi.e -9
pushenv [226]

:[225]
call.i instance_destroy(argc=0)
popz.v

:[226]
popenv [225]
push.v self.block
pushi.e -9
pushenv [228]

:[227]
call.i instance_destroy(argc=0)
popz.v

:[228]
popenv [227]
push.v self.talkto
pushi.e -9
pushenv [230]

:[229]
call.i instance_destroy(argc=0)
popz.v

:[230]
popenv [229]

:[231]
popenv [224]
b [233]

:[232]
push.s "obj_readable_room1_slash_Other_10_gml_559_0"@39586
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[233]
push.v self.x
pushi.e 1350
cmp.i.v GTE
bf [235]

:[234]
push.s "obj_readable_room1_slash_Other_10_gml_564_0"@39587
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_565_0"@39588
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[235]
pushbltn.v builtin.room
pushi.e 369
cmp.i.v EQ
bf [239]

:[236]
push.s "obj_readable_room1_slash_Other_10_gml_571_0"@18488
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [238]

:[237]
pushi.e 441
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_575_0"@39589
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v global.gold
pushi.e 40
add.i.v
pop.v.v global.gold

:[238]
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read

:[239]
pushbltn.v builtin.room
pushi.e 386
cmp.i.v EQ
bf [260]

:[240]
push.i 231204
setowner.e
pushi.e -5
pushi.e 231
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag
push.v self.x
pushi.e 400
cmp.i.v LT
bf [242]

:[241]
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_readable_room1_slash_Other_10_gml_591_0"@39590
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_593_0"@39591
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[242]
push.v self.x
pushi.e 600
cmp.i.v GTE
bf [244]

:[243]
push.v self.y
pushi.e 200
cmp.i.v LT
b [245]

:[244]
push.e 0

:[245]
bf [248]

:[246]
push.s "obj_readable_room1_slash_Other_10_gml_598_0"@18537
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_599_0"@39592
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [248]

:[247]
push.s "obj_readable_room1_slash_Other_10_gml_602_0"@39593
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[248]
push.v self.x
pushi.e 600
cmp.i.v GTE
bf [250]

:[249]
push.v self.y
pushi.e 200
cmp.i.v GT
b [251]

:[250]
push.e 0

:[251]
bf [256]

:[252]
push.s "obj_readable_room1_slash_Other_10_gml_608_0"@39594
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_609_0"@39595
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [254]

:[253]
push.s "obj_readable_room1_slash_Other_10_gml_610_0"@39596
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[254]
pushglb.v global.plot
pushi.e 155
cmp.i.v GTE
bf [256]

:[255]
push.s "obj_readable_room1_slash_Other_10_gml_613_0"@39597
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[256]
push.v self.x
pushi.e 720
cmp.i.v GTE
bf [260]

:[257]
pushi.e 295
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [260]

:[258]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.s "obj_readable_room1_slash_Other_10_gml_626_0"@18508
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_627_0"@39598
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e -5
pushi.e 106
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [260]

:[259]
push.s "obj_readable_room1_slash_Other_10_gml_628_0"@39599
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[260]
pushbltn.v builtin.room
pushi.e 343
cmp.i.v EQ
bf [262]

:[261]
push.s "obj_readable_room1_slash_Other_10_gml_636_0"@39600
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_637_0"@39601
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[262]
pushbltn.v builtin.room
pushi.e 368
cmp.i.v EQ
bf [265]

:[263]
pushi.e 2
pop.v.i global.fc
pushi.e 5
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_readable_room1_slash_Other_10_gml_647_0"@39602
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_648_0"@39603
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [265]

:[264]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_readable_room1_slash_Other_10_gml_654_0"@39604
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_656_0"@39605
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_658_0"@39606
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[265]
pushbltn.v builtin.room
pushi.e 356
cmp.i.v EQ
bf [267]

:[266]
push.s "obj_readable_room1_slash_Other_10_gml_666_0"@39607
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[267]
pushbltn.v builtin.room
pushi.e 423
cmp.i.v EQ
bf [276]

:[268]
push.v self.y
pushi.e 220
cmp.i.v GTE
bf [273]

:[269]
pushi.e -5
pushi.e 910
push.v [array]self.flag
pushi.e 2
cmp.i.v LT
bf [271]

:[270]
push.s "obj_readable_room1_slash_Other_10_gml_673_0"@39608
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [272]

:[271]
push.s "obj_readable_room1_slash_Other_10_gml_675_0"@39609
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[272]
b [276]

:[273]
pushi.e -5
pushi.e 910
push.v [array]self.flag
pushi.e 2
cmp.i.v GTE
bf [275]

:[274]
push.s "obj_readable_room1_slash_Other_10_gml_682_0"@39610
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [276]

:[275]
pushi.e 600
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[276]
pushbltn.v builtin.room
pushi.e 407
cmp.i.v EQ
bf [279]

:[277]
push.s "obj_readable_room1_slash_Other_10_gml_695_0"@39611
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.y
pushi.e 260
cmp.i.v GTE
bf [279]

:[278]
push.s "obj_readable_room1_slash_Other_10_gml_698_0"@18577
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[279]
pushbltn.v builtin.room
pushi.e 392
cmp.i.v EQ
bf [287]

:[280]
pushi.e 1
pop.v.i global.facing
pushi.e 1493
pushenv [282]

:[281]
push.v self.rsprite
pop.v.v self.sprite_index

:[282]
popenv [281]
pushi.e 35
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 405
pop.v.i global.msc
pushi.e 5
conv.i.v
call.i gml_Script_scr_keyitemcheck_ch1(argc=1)
pushi.e 1
cmp.i.v EQ
bf [284]

:[283]
pushi.e 410
pop.v.i global.msc

:[284]
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 5
cmp.i.v GTE
bf [286]

:[285]
pushi.e 415
pop.v.i global.msc

:[286]
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[287]
pushbltn.v builtin.room
pushi.e 395
cmp.i.v EQ
bf [298]

:[288]
push.v self.x
pushi.e 500
cmp.i.v LT
bf [290]

:[289]
push.s "obj_readable_room1_slash_Other_10_gml_721_0"@39612
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[290]
push.v self.x
pushi.e 1300
cmp.i.v LT
bf [292]

:[291]
push.v self.x
pushi.e 500
cmp.i.v GT
b [293]

:[292]
push.e 0

:[293]
bf [296]

:[294]
push.s "obj_readable_room1_slash_Other_10_gml_726_0"@39613
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_727_0"@18552
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e -5
pushi.e 240
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [296]

:[295]
push.s "obj_readable_room1_slash_Other_10_gml_730_0"@39614
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_731_0"@39615
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[296]
push.v self.x
pushi.e 1300
cmp.i.v GT
bf [298]

:[297]
push.s "obj_readable_room1_slash_Other_10_gml_738_0"@18595
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_739_0"@18597
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[298]
pushbltn.v builtin.room
pushi.e 396
cmp.i.v EQ
bf [301]

:[299]
push.s "obj_readable_room1_slash_Other_10_gml_746_0"@39616
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.y
pushi.e 130
cmp.i.v LT
bf [301]

:[300]
push.s "obj_readable_room1_slash_Other_10_gml_749_0"@39617
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[301]
pushbltn.v builtin.room
pushi.e 397
cmp.i.v EQ
bf [304]

:[302]
push.s "obj_readable_room1_slash_Other_10_gml_755_0"@18611
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.y
pushi.e 250
cmp.i.v LT
bf [304]

:[303]
push.s "obj_readable_room1_slash_Other_10_gml_758_0"@39618
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[304]
pushbltn.v builtin.room
pushi.e 398
cmp.i.v EQ
bf [307]

:[305]
pushi.e 18
pop.v.i global.fc
push.s "obj_readable_room1_slash_Other_10_gml_766_0"@39619
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_767_0"@39620
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_768_0"@39621
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [307]

:[306]
push.s "obj_readable_room1_slash_Other_10_gml_772_0"@39622
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_773_0"@18634
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_774_0"@39623
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_775_0"@39624
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[307]
pushbltn.v builtin.room
pushi.e 402
cmp.i.v EQ
bf [310]

:[308]
pushi.e 18
pop.v.i global.fc
push.s "obj_readable_room1_slash_Other_10_gml_782_0"@39625
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_783_0"@39626
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_784_0"@18640
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [310]

:[309]
push.s "obj_readable_room1_slash_Other_10_gml_788_0"@18646
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_789_0"@18564
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[310]
pushbltn.v builtin.room
pushi.e 406
cmp.i.v EQ
bf [313]

:[311]
push.s "obj_readable_room1_slash_Other_10_gml_796_0"@39627
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [313]

:[312]
push.s "obj_readable_room1_slash_Other_10_gml_799_0"@39628
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[313]
pushbltn.v builtin.room
pushi.e 400
cmp.i.v EQ
bf [326]

:[314]
push.s "obj_readable_room1_slash_Other_10_gml_805_0"@18676
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_806_0"@39629
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [319]

:[315]
pushi.e 1409
pushenv [318]

:[316]
pushi.e -5
pushi.e 252
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [318]

:[317]
push.v self.tempvar
pushi.e 1
add.i.v
pop.v.v self.tempvar

:[318]
popenv [316]

:[319]
push.v self.tempvar
pushi.e 4
cmp.i.v EQ
bf [321]

:[320]
pushi.e -5
pushi.e 252
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [322]

:[321]
push.e 0

:[322]
bf [326]

:[323]
push.s "obj_readable_room1_slash_Other_10_gml_815_0"@39630
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_816_0"@39631
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 252
pop.v.v [array]self.flag
pushi.e 1409
pushenv [325]

:[324]
pushi.e 99
pop.v.i self.tempvar

:[325]
popenv [324]

:[326]
pushbltn.v builtin.room
pushi.e 403
cmp.i.v EQ
bf [333]

:[327]
push.i 231251
setowner.e
push.s "obj_readable_room1_slash_Other_10_gml_824_0"@39632
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [333]

:[328]
push.v self.y
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [332]

:[329]
push.s "obj_readable_room1_slash_Other_10_gml_829_0"@18684
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [331]

:[330]
push.s "obj_readable_room1_slash_Other_10_gml_832_0"@39633
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_833_0"@39634
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[331]
b [333]

:[332]
push.s "obj_readable_room1_slash_Other_10_gml_838_0"@39635
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[333]
pushbltn.v builtin.room
pushi.e 405
cmp.i.v EQ
bf [359]

:[334]
push.v self.y
pushi.e 220
cmp.i.v LTE
bf [350]

:[335]
push.v self.x
pushi.e 200
cmp.i.v LT
bf [337]

:[336]
push.s "obj_readable_room1_slash_Other_10_gml_849_0"@18694
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[337]
push.v self.x
pushi.e 300
cmp.i.v GT
bf [339]

:[338]
push.v self.x
pushi.e 350
cmp.i.v LT
b [340]

:[339]
push.e 0

:[340]
bf [342]

:[341]
push.s "obj_readable_room1_slash_Other_10_gml_853_0"@39636
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[342]
push.v self.x
pushi.e 350
cmp.i.v GT
bf [344]

:[343]
push.v self.x
pushi.e 400
cmp.i.v LT
b [345]

:[344]
push.e 0

:[345]
bf [347]

:[346]
pushi.e 430
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[347]
push.v self.x
pushi.e 400
cmp.i.v GTE
bf [349]

:[348]
push.s "obj_readable_room1_slash_Other_10_gml_862_0"@39637
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[349]
b [359]

:[350]
push.v self.x
pushi.e 200
cmp.i.v LT
bf [352]

:[351]
push.s "obj_readable_room1_slash_Other_10_gml_869_0"@39638
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_870_0"@39639
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[352]
push.v self.x
pushi.e 250
cmp.i.v GT
bf [354]

:[353]
push.v self.x
pushi.e 320
cmp.i.v LT
b [355]

:[354]
push.e 0

:[355]
bf [357]

:[356]
push.s "obj_readable_room1_slash_Other_10_gml_874_0"@39640
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[357]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [359]

:[358]
push.s "obj_readable_room1_slash_Other_10_gml_878_0"@39641
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[359]
pushbltn.v builtin.room
pushi.e 390
cmp.i.v EQ
bf [361]

:[360]
pushi.e 435
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[361]
pushbltn.v builtin.room
pushi.e 391
cmp.i.v EQ
bf [363]

:[362]
pushi.e 440
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[363]
pushbltn.v builtin.room
pushi.e 387
cmp.i.v EQ
bf [371]

:[364]
push.s "obj_readable_room1_slash_Other_10_gml_898_0"@18742
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_899_0"@39642
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.x
pushi.e 560
cmp.i.v GTE
bf [371]

:[365]
push.s "obj_readable_room1_slash_Other_10_gml_902_0"@39643
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [367]

:[366]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
b [368]

:[367]
push.e 0

:[368]
bf [371]

:[369]
pushi.e 0
pop.v.i global.fe
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
push.s "obj_readable_room1_slash_Other_10_gml_908_0"@39644
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_909_0"@18628
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_911_0"@18748
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_912_0"@18750
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_914_0"@18754
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_916_0"@18758
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_917_0"@39645
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [371]

:[370]
push.s "obj_readable_room1_slash_Other_10_gml_920_0"@18760
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_922_0"@18763
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[371]
pushbltn.v builtin.room
pushi.e 301
cmp.i.v EQ
bf [400]

:[372]
push.v self.x
pushi.e 75
cmp.i.v LTE
bf [374]

:[373]
push.v self.y
pushi.e 160
cmp.i.v LT
b [375]

:[374]
push.e 0

:[375]
bf [378]

:[376]
push.s "obj_readable_room1_slash_Other_10_gml_932_0"@18771
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_rudface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_934_0"@39646
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_935_0"@39647
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_936_0"@39648
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_937_0"@39649
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [378]

:[377]
push.s "obj_readable_room1_slash_Other_10_gml_940_0"@39650
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[378]
push.v self.x
pushi.e 75
cmp.i.v LTE
bf [380]

:[379]
push.v self.y
pushi.e 160
cmp.i.v GT
b [381]

:[380]
push.e 0

:[381]
bf [387]

:[382]
pushi.e -5
pushi.e 278
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [384]

:[383]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 278
pop.v.v [array]self.flag

:[384]
pushi.e -5
pushi.e 255
push.v [array]self.flag
pushi.e 2
cmp.i.v LT
bf [386]

:[385]
pushi.e 55
pop.v.i global.typer
pushi.e 15
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_readable_room1_slash_Other_10_gml_952_0"@18654
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_953_0"@39651
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
b [387]

:[386]
push.i 231251
setowner.e
push.s "obj_readable_room1_slash_Other_10_gml_957_0"@39652
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_rudface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_959_0"@39653
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[387]
push.v self.x
pushi.e 95
cmp.i.v GTE
bf [389]

:[388]
push.v self.x
pushi.e 105
cmp.i.v LTE
b [390]

:[389]
push.e 0

:[390]
bf [393]

:[391]
push.s "obj_readable_room1_slash_Other_10_gml_969_0"@39654
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_rudface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_971_0"@39655
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [393]

:[392]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_rudface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_975_0"@39656
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_976_0"@39657
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[393]
push.v self.x
pushi.e 205
cmp.i.v EQ
bf [396]

:[394]
push.s "obj_readable_room1_slash_Other_10_gml_982_0"@39658
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_rudface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_984_0"@39659
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_985_0"@39660
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_986_0"@39661
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [396]

:[395]
push.s "obj_readable_room1_slash_Other_10_gml_989_0"@39662
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_rudface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_991_0"@18801
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_992_0"@39663
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[396]
push.v self.x
pushi.e 215
cmp.i.v GT
bf [398]

:[397]
push.s "obj_readable_room1_slash_Other_10_gml_999_0"@39664
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_rudface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1001_0"@39665
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1002_0"@39666
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1003_0"@18803
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[398]
push.v self.x
pushi.e 230
cmp.i.v GT
bf [400]

:[399]
push.s "obj_readable_room1_slash_Other_10_gml_1011_0"@18807
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[400]
pushbltn.v builtin.room
pushi.e 300
cmp.i.v EQ
bf [402]

:[401]
push.s "obj_readable_room1_slash_Other_10_gml_1017_0"@18811
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[402]
pushbltn.v builtin.room
pushi.e 302
cmp.i.v EQ
bf [416]

:[403]
push.v self.y
pushi.e 160
cmp.i.v GTE
bf [410]

:[404]
push.s "obj_readable_room1_slash_Other_10_gml_1024_0"@39667
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.tempvar
pushi.e 1
cmp.i.v GTE
bf [406]

:[405]
push.s "obj_readable_room1_slash_Other_10_gml_1027_0"@18815
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1028_0"@39668
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[406]
pushi.e 1409
pushenv [409]

:[407]
push.v self.y
pushi.e 160
cmp.i.v GTE
bf [409]

:[408]
push.v self.tempvar
pushi.e 1
add.i.v
pop.v.v self.tempvar

:[409]
popenv [407]
b [416]

:[410]
push.v self.x
pushi.e 140
cmp.i.v LTE
bf [412]

:[411]
push.s "obj_readable_room1_slash_Other_10_gml_1041_0"@39669
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1042_0"@39670
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[412]
push.v self.x
pushi.e 150
cmp.i.v GTE
bf [414]

:[413]
push.s "obj_readable_room1_slash_Other_10_gml_1046_0"@18829
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1047_0"@39671
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[414]
push.v self.x
pushi.e 200
cmp.i.v GTE
bf [416]

:[415]
push.s "obj_readable_room1_slash_Other_10_gml_1051_0"@39672
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1052_0"@18831
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[416]
pushbltn.v builtin.room
pushi.e 307
cmp.i.v EQ
bf [432]

:[417]
push.v self.x
pushi.e 80
cmp.i.v LT
bf [420]

:[418]
push.s "obj_readable_room1_slash_Other_10_gml_1063_0"@39673
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1064_0"@18708
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.y
pushi.e 80
cmp.i.v GT
bf [420]

:[419]
push.s "obj_readable_room1_slash_Other_10_gml_1069_0"@39674
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1070_0"@18714
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1071_0"@39675
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1072_0"@39676
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[420]
push.v self.x
pushi.e 70
cmp.i.v GT
bf [423]

:[421]
push.s "obj_readable_room1_slash_Other_10_gml_1080_0"@39677
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1081_0"@39678
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.y
pushi.e 80
cmp.i.v GT
bf [423]

:[422]
push.s "obj_readable_room1_slash_Other_10_gml_1085_0"@39679
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1086_0"@39680
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[423]
push.v self.x
pushi.e 110
cmp.i.v GT
bf [425]

:[424]
push.s "obj_readable_room1_slash_Other_10_gml_1111_0"@18855
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1112_0"@18857
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[425]
push.v self.x
pushi.e 140
cmp.i.v GT
bf [428]

:[426]
push.s "obj_readable_room1_slash_Other_10_gml_1093_0"@39681
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1094_0"@18849
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1095_0"@39682
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1096_0"@39683
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1097_0"@39684
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1098_0"@39685
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [428]

:[427]
push.s "obj_readable_room1_slash_Other_10_gml_1102_0"@39686
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1103_0"@39687
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1104_0"@39688
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1105_0"@39689
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[428]
push.v self.x
pushi.e 190
cmp.i.v GT
bf [430]

:[429]
push.s "obj_readable_room1_slash_Other_10_gml_1117_0"@39690
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1118_0"@39691
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1119_0"@18867
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[430]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [432]

:[431]
pushi.e 185
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[432]
pushbltn.v builtin.room
pushi.e 297
cmp.i.v EQ
bf [439]

:[433]
push.s "obj_readable_room1_slash_Other_10_gml_1134_0"@39692
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.x
pushi.e 150
cmp.i.v GTE
bf [435]

:[434]
push.s "obj_readable_room1_slash_Other_10_gml_1137_0"@18876
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[435]
push.v self.x
pushi.e 200
cmp.i.v GTE
bf [437]

:[436]
push.s "obj_readable_room1_slash_Other_10_gml_1141_0"@18878
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[437]
push.v self.x
pushi.e 290
cmp.i.v GTE
bf [439]

:[438]
push.s "obj_readable_room1_slash_Other_10_gml_1145_0"@39693
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[439]
pushbltn.v builtin.room
pushi.e 304
cmp.i.v EQ
bf [446]

:[440]
push.v self.x
pushi.e 180
cmp.i.v GTE
bf [442]

:[441]
push.s "obj_readable_room1_slash_Other_10_gml_1158_0"@39694
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[442]
push.v self.x
pushi.e 240
cmp.i.v GTE
bf [444]

:[443]
push.s "obj_readable_room1_slash_Other_10_gml_1163_0"@39695
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[444]
push.v self.y
pushi.e 160
cmp.i.v GTE
bf [446]

:[445]
push.s "obj_readable_room1_slash_Other_10_gml_1166_0"@39696
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[446]
pushbltn.v builtin.room
pushi.e 291
cmp.i.v EQ
bf [448]

:[447]
pushi.e 192
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[448]
pushbltn.v builtin.room
pushi.e 303
cmp.i.v EQ
bf [450]

:[449]
push.s "obj_readable_room1_slash_Other_10_gml_1178_0"@39697
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[450]
pushbltn.v builtin.room
pushi.e 305
cmp.i.v EQ
bf [463]

:[451]
push.v self.y
pushi.e 100
cmp.i.v GT
bf [458]

:[452]
push.v self.x
pushi.e 100
cmp.i.v LT
bf [454]

:[453]
push.s "obj_readable_room1_slash_Other_10_gml_1185_0"@39698
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[454]
push.v self.x
pushi.e 70
cmp.i.v LT
bf [456]

:[455]
push.s "obj_readable_room1_slash_Other_10_gml_1186_0"@39699
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[456]
push.v self.x
pushi.e 50
cmp.i.v LT
bf [458]

:[457]
push.s "obj_readable_room1_slash_Other_10_gml_1187_0"@18905
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[458]
push.v self.y
pushi.e 80
cmp.i.v LT
bf [463]

:[459]
push.v self.x
pushi.e 140
cmp.i.v EQ
bf [461]

:[460]
push.s "obj_readable_room1_slash_Other_10_gml_1192_0"@39700
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[461]
push.v self.x
pushi.e 140
cmp.i.v NEQ
bf [463]

:[462]
push.s "obj_readable_room1_slash_Other_10_gml_1193_0"@18775
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[463]
pushbltn.v builtin.room
pushi.e 306
cmp.i.v EQ
bf [482]

:[464]
push.v self.y
pushi.e 50
cmp.i.v LT
bf [466]

:[465]
push.s "obj_readable_room1_slash_Other_10_gml_1202_0"@39701
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[466]
push.v self.y
pushi.e 60
cmp.i.v GT
bf [473]

:[467]
push.s "obj_readable_room1_slash_Other_10_gml_1206_0"@18917
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.x
pushi.e 60
cmp.i.v GTE
bf [469]

:[468]
push.s "obj_readable_room1_slash_Other_10_gml_1207_0"@39702
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[469]
push.v self.x
pushi.e 180
cmp.i.v GTE
bf [471]

:[470]
push.s "obj_readable_room1_slash_Other_10_gml_1209_0"@39703
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[471]
push.v self.x
pushi.e 260
cmp.i.v GTE
bf [473]

:[472]
push.s "obj_readable_room1_slash_Other_10_gml_1212_0"@39704
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[473]
push.v self.y
pushi.e 120
cmp.i.v GT
bf [480]

:[474]
push.v self.x
pushi.e 160
cmp.i.v LT
bf [476]

:[475]
push.s "obj_readable_room1_slash_Other_10_gml_1219_0"@39705
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1220_0"@39706
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1221_0"@39707
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
b [480]

:[476]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [478]

:[477]
push.s "obj_readable_room1_slash_Other_10_gml_1227_0"@39708
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_asgface_ch1(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1229_0"@39709
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1230_0"@39710
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1231_0"@39711
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[478]
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [480]

:[479]
push.s "obj_readable_room1_slash_Other_10_gml_1235_0"@39712
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[480]
push.v self.x
pushi.e 225
cmp.i.v EQ
bf [482]

:[481]
pushi.e 210
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[482]
pushbltn.v builtin.room
pushi.e 308
cmp.i.v EQ
bf [487]

:[483]
push.v self.x
pushi.e 130
cmp.i.v LTE
bf [485]

:[484]
push.s "obj_readable_room1_slash_Other_10_gml_1250_0"@39713
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [487]

:[485]
push.s "obj_readable_room1_slash_Other_10_gml_1254_0"@39714
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.y
pushi.e 100
cmp.i.v LTE
bf [487]

:[486]
push.s "obj_readable_room1_slash_Other_10_gml_1257_0"@39715
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[487]
pushbltn.v builtin.room
pushi.e 294
cmp.i.v EQ
bf [499]

:[488]
push.v self.x
pushi.e 100
cmp.i.v LTE
bf [490]

:[489]
push.s "obj_readable_room1_slash_Other_10_gml_1266_0"@39716
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1267_0"@39717
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[490]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [492]

:[491]
push.v self.x
pushi.e 300
cmp.i.v LT
b [493]

:[492]
push.e 0

:[493]
bf [499]

:[494]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [498]

:[495]
pushi.e 366
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1274_0"@39718
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1275_0"@39719
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1276_0"@18956
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 1347
pushenv [497]

:[496]
pushi.e 50
pop.v.i self.con

:[497]
popenv [496]
b [499]

:[498]
push.s "obj_readable_room1_slash_Other_10_gml_1281_0"@39720
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[499]
pushbltn.v builtin.room
pushi.e 292
cmp.i.v EQ
bf [513]

:[500]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [502]

:[501]
push.s "obj_readable_room1_slash_Other_10_gml_1291_0"@39721
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1292_0"@39722
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[502]
push.v self.x
pushi.e 300
cmp.i.v GTE
bf [504]

:[503]
push.s "obj_readable_room1_slash_Other_10_gml_1296_0"@39723
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1297_0"@39724
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[504]
push.v self.x
pushi.e 360
cmp.i.v GTE
bf [506]

:[505]
push.s "obj_readable_room1_slash_Other_10_gml_1301_0"@39725
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[506]
push.v self.x
pushi.e 1240
cmp.i.v GTE
bf [513]

:[507]
pushi.e 366
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1307_0"@39726
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1308_0"@39727
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1309_0"@39728
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.x
pushi.e 1500
cmp.i.v GTE
bf [509]

:[508]
push.s "obj_readable_room1_slash_Other_10_gml_1312_0"@39729
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1313_0"@39730
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1314_0"@39731
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[509]
push.v self.x
pushi.e 1640
cmp.i.v GTE
bf [511]

:[510]
push.s "obj_readable_room1_slash_Other_10_gml_1319_0"@39732
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1320_0"@39733
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[511]
push.v self.x
pushi.e 1860
cmp.i.v GTE
bf [513]

:[512]
push.s "obj_readable_room1_slash_Other_10_gml_1324_0"@39734
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1325_0"@39735
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1326_0"@39736
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[513]
pushbltn.v builtin.room
pushi.e 290
cmp.i.v EQ
bf [533]

:[514]
push.v self.x
pushi.e 250
cmp.i.v LTE
bf [516]

:[515]
push.s "obj_readable_room1_slash_Other_10_gml_1338_0"@39737
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[516]
push.v self.x
pushi.e 500
cmp.i.v GTE
bf [518]

:[517]
push.v self.x
pushi.e 570
cmp.i.v LTE
b [519]

:[518]
push.e 0

:[519]
bf [521]

:[520]
pushi.e 16
pop.v.i global.fc
pushi.e 5
pop.v.i global.typer
pushi.e 6
pop.v.i global.fe
push.s "obj_readable_room1_slash_Other_10_gml_1345_0"@39738
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1346_0"@39739
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[521]
push.v self.x
pushi.e 580
cmp.i.v GTE
bf [523]

:[522]
push.s "obj_readable_room1_slash_Other_10_gml_1350_0"@39740
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1351_0"@39741
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[523]
push.v self.x
pushi.e 650
cmp.i.v GTE
bf [525]

:[524]
push.s "obj_readable_room1_slash_Other_10_gml_1355_0"@39742
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1356_0"@39743
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[525]
push.v self.x
pushi.e 800
cmp.i.v GTE
bf [527]

:[526]
push.s "obj_readable_room1_slash_Other_10_gml_1360_0"@39744
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[527]
push.v self.x
pushi.e 1090
cmp.i.v GTE
bf [529]

:[528]
push.v self.x
pushi.e 1130
cmp.i.v LTE
b [530]

:[529]
push.e 0

:[530]
bf [533]

:[531]
pushi.e 366
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1365_0"@39745
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1366_0"@39746
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1367_0"@39747
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [533]

:[532]
push.s "obj_readable_room1_slash_Other_10_gml_1371_0"@18851
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1372_0"@18853
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1373_0"@39748
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1374_0"@39749
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[533]
pushbltn.v builtin.room
pushi.e 298
cmp.i.v EQ
bf [535]

:[534]
push.s "obj_readable_room1_slash_Other_10_gml_1383_0"@39750
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[535]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.mydialoguer
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read

:[end]