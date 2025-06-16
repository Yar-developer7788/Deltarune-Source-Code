.localvar 2 arguments

:[0]
b [93]

> gml_Script_scr_anyface (locals=0, argc=3)
:[1]
push.v arg.argument0
pop.v.v self._speakerC
push.v arg.argument1
pop.v.v self._msgno
push.v arg.argument2
pop.v.v self._emotion
push.v arg.argument2
call.i is_real(argc=1)
conv.v.b
bf [6]

:[2]
push.v arg.argument2
pushi.e 10
cmp.i.v GTE
bf [6]

:[3]
push.v arg.argument2
pushi.e 36
cmp.i.v LT
bf [5]

:[4]
pushi.e 55
push.v arg.argument2
add.v.i
call.i chr(argc=1)
pop.v.v self._emotion
b [6]

:[5]
pushi.e 61
push.v arg.argument2
add.v.i
call.i chr(argc=1)
pop.v.v self.emotion

:[6]
push.v self._speakerC
call.i string_lower(argc=1)
pop.v.v self._speaker
push.v self._speaker
push.s "susie"@70
cmp.s.v EQ
bt [8]

:[7]
push.v self._speaker
push.s "sus"@7044
cmp.s.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
push.v self._emotion
push.v self._msgno
call.i gml_Script_scr_susface(argc=2)
popz.v

:[11]
push.v self._speaker
push.s "ralsei"@72
cmp.s.v EQ
bt [13]

:[12]
push.v self._speaker
push.s "ral"@9290
cmp.s.v EQ
b [14]

:[13]
push.e 1

:[14]
bf [16]

:[15]
push.v self._emotion
push.v self._msgno
call.i gml_Script_scr_ralface(argc=2)
popz.v

:[16]
push.v self._speaker
push.s "noelle"@74
cmp.s.v EQ
bt [18]

:[17]
push.v self._speaker
push.s "noe"@9291
cmp.s.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
push.v self._emotion
push.v self._msgno
call.i gml_Script_scr_noeface(argc=2)
popz.v

:[21]
push.v self._speaker
push.s "toriel"@544
cmp.s.v EQ
bt [23]

:[22]
push.v self._speaker
push.s "tor"@9292
cmp.s.v EQ
b [24]

:[23]
push.e 1

:[24]
bf [26]

:[25]
push.v self._emotion
push.v self._msgno
call.i gml_Script_scr_torface(argc=2)
popz.v

:[26]
push.v self._speaker
push.s "asgore"@9293
cmp.s.v EQ
bt [28]

:[27]
push.v self._speaker
push.s "asg"@9294
cmp.s.v EQ
b [29]

:[28]
push.e 1

:[29]
bf [31]

:[30]
push.v self._emotion
push.v self._msgno
call.i gml_Script_scr_asgface(argc=2)
popz.v

:[31]
push.v self._speaker
push.s "king"@3479
cmp.s.v EQ
bt [33]

:[32]
push.v self._speaker
push.s "kin"@9295
cmp.s.v EQ
b [34]

:[33]
push.e 1

:[34]
bf [36]

:[35]
push.v self._emotion
push.v self._msgno
call.i gml_Script_scr_kingface(argc=2)
popz.v

:[36]
push.v self._speaker
push.s "rudy"@4146
cmp.s.v EQ
bt [38]

:[37]
push.v self._speaker
push.s "rud"@9296
cmp.s.v EQ
b [39]

:[38]
push.e 1

:[39]
bf [41]

:[40]
push.v self._emotion
push.v self._msgno
call.i gml_Script_scr_rudface(argc=2)
popz.v

:[41]
push.v self._speaker
push.s "lancer"@4751
cmp.s.v EQ
bt [43]

:[42]
push.v self._speaker
push.s "lan"@9297
cmp.s.v EQ
b [44]

:[43]
push.e 1

:[44]
bf [46]

:[45]
push.v self._emotion
push.v self._msgno
call.i gml_Script_scr_lanface(argc=2)
popz.v

:[46]
push.v self._speaker
push.s "berdly"@4870
cmp.s.v EQ
bt [48]

:[47]
push.v self._speaker
push.s "ber"@9298
cmp.s.v EQ
b [49]

:[48]
push.e 1

:[49]
bf [51]

:[50]
push.s "scr_anyface_slash_scr_anyface_gml_23_0"@9313
conv.s.v
push.v self._emotion
call.i string(argc=1)
push.s "\\TX \\F0 \\E~1 \\FB \\TB %"@9314
conv.s.v
push.v arg.argument1
call.i gml_Script_msgsetsubloc(argc=4)
popz.v

:[51]
push.v self._speaker
push.s "alphys"@555
cmp.s.v EQ
bt [53]

:[52]
push.v self._speaker
push.s "alp"@9299
cmp.s.v EQ
b [54]

:[53]
push.e 1

:[54]
bf [56]

:[55]
push.s "scr_anyface_slash_scr_anyface_gml_24_0"@9315
conv.s.v
push.v self._emotion
call.i string(argc=1)
push.s "\\TX \\F0 \\E~1 \\Fa \\Ta %"@9316
conv.s.v
push.v arg.argument1
call.i gml_Script_msgsetsubloc(argc=4)
popz.v

:[56]
push.v self._speaker
push.s "none"@562
cmp.s.v EQ
bt [60]

:[57]
push.v self._speaker
push.s "x"@50
cmp.s.v EQ
bt [60]

:[58]
push.v self._speaker
push.s "no name"@542
cmp.s.v EQ
bt [60]

:[59]
push.v self._speaker
push.s "no_name"@454
cmp.s.v EQ
b [61]

:[60]
push.e 1

:[61]
bf [63]

:[62]
push.v self._msgno
call.i gml_Script_scr_noface(argc=1)
popz.v

:[63]
push.v self._speaker
push.s "rouxls"@6221
cmp.s.v EQ
bt [65]

:[64]
push.v self._speaker
push.s "rou"@9287
cmp.s.v EQ
b [66]

:[65]
push.e 1

:[66]
bf [68]

:[67]
push.v self._emotion
push.v self._msgno
call.i gml_Script_scr_rurusface(argc=2)
popz.v

:[68]
push.v self._speaker
push.s "queen"@3525
cmp.s.v EQ
bt [70]

:[69]
push.v self._speaker
push.s "que"@9300
cmp.s.v EQ
b [71]

:[70]
push.e 1

:[71]
bf [73]

:[72]
push.s "scr_anyface_slash_scr_anyface_gml_27_0"@9318
conv.s.v
push.v self._emotion
call.i string(argc=1)
push.s "\\TX \\F0 \\E~1 \\FQ \\TQ %"@9319
conv.s.v
push.v arg.argument1
call.i gml_Script_msgsetsubloc(argc=4)
popz.v

:[73]
push.v self._speaker
push.s "queen2"@9320
cmp.s.v EQ
bt [75]

:[74]
push.v self._speaker
push.s "que2"@9321
cmp.s.v EQ
b [76]

:[75]
push.e 1

:[76]
bf [78]

:[77]
push.s "scr_anyface_slash_scr_anyface_gml_28_0_b"@9322
conv.s.v
push.v self._emotion
call.i string(argc=1)
push.s "\\TX \\F0 \\E~1 \\F0 \\Tq %"@9323
conv.s.v
push.v arg.argument1
call.i gml_Script_msgsetsubloc(argc=4)
popz.v

:[78]
push.v self._speaker
push.s "sans"@429
cmp.s.v EQ
bt [80]

:[79]
push.v self._speaker
push.s "san"@9324
cmp.s.v EQ
b [81]

:[80]
push.e 1

:[81]
bf [83]

:[82]
push.s "scr_anyface_slash_scr_anyface_gml_28_0"@9325
conv.s.v
push.v self._emotion
call.i string(argc=1)
push.s "\\TX \\F0 \\E~1 \\Fs \\Ts %"@9326
conv.s.v
push.v arg.argument1
call.i gml_Script_msgsetsubloc(argc=4)
popz.v

:[83]
push.v self._speaker
push.s "undyne"@3641
cmp.s.v EQ
bt [85]

:[84]
push.v self._speaker
push.s "und"@9280
cmp.s.v EQ
b [86]

:[85]
push.e 1

:[86]
bf [88]

:[87]
push.s "scr_anyface_slash_scr_anyface_gml_29_0"@9327
conv.s.v
push.v self._emotion
call.i string(argc=1)
push.s "\\TX \\F0 \\E~1 \\FU \\TU %"@9328
conv.s.v
push.v arg.argument1
call.i gml_Script_msgsetsubloc(argc=4)
popz.v

:[88]
push.v self._speaker
push.s "burgerpants"@3556
cmp.s.v EQ
bf [90]

:[89]
push.s "scr_anyface_slash_scr_anyface_gml_30_0"@9329
conv.s.v
push.v self._emotion
call.i string(argc=1)
push.s "\\TX \\F0 \\E~1 \\Fb \\T0 %"@9330
conv.s.v
push.v arg.argument1
call.i gml_Script_msgsetsubloc(argc=4)
popz.v

:[90]
push.v self._speaker
push.s "sneo"@9289
cmp.s.v EQ
bf [92]

:[91]
push.v self._emotion
call.i string(argc=1)
push.s "\\TX \\F0 \\E~1 \\Tp %"@9331
conv.s.v
push.v arg.argument1
call.i gml_Script_msgsetsub(argc=3)
popz.v

:[92]
exit.i

:[93]
push.i [function]gml_Script_scr_anyface
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_anyface
popz.v

:[end]