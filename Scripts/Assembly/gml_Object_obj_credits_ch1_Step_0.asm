.localvar 2 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.s "dontforget.ogg"@41883
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pop.v.v self.song0
push.v self.song0
call.i gml_Script_mus_play_ch1(argc=1)
pop.v.v self.song1

:[2]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_credits_slash_Step_0_gml_13_0"@41884
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.lyric

:[4]
push.v self.timer
pushi.e 108
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_credits_slash_Step_0_gml_19_0"@41885
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.lyric
push.i 165574
setowner.e
push.s "obj_credits_slash_Step_0_gml_21_0"@29553
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_22_0"@29554
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s " "@353
conv.s.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_24_0"@29555
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line

:[6]
push.v self.timer
pushi.e 180
cmp.i.v EQ
bf [9]

:[7]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [9]

:[8]
push.s "obj_credits_slash_Step_0_gml_33_0"@41886
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.lyric

:[9]
push.v self.timer
pushi.e 201
cmp.i.v EQ
bf [12]

:[10]
push.s "obj_credits_slash_Step_0_gml_38_0"@29557
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_39_0"@29559
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_40_0"@29561
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s " "@353
conv.s.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_42_0"@41887
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.linecolor
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [12]

:[11]
push.s "obj_credits_slash_Step_0_gml_33_0"@41886
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.lyric

:[12]
push.v self.timer
pushi.e 278
cmp.i.v EQ
bf [15]

:[13]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [15]

:[14]
push.s "obj_credits_slash_Step_0_gml_54_0"@41888
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.lyric

:[15]
push.v self.timer
pushi.e 298
cmp.i.v EQ
bf [18]

:[16]
push.i 165574
setowner.e
push.s "obj_credits_slash_Step_0_gml_59_0"@29570
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_60_0"@29572
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_61_0"@29574
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.linecolor
push.i 165574
setowner.e
push.s " "@353
conv.s.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_64_0"@41889
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [18]

:[17]
push.s "obj_credits_slash_Step_0_gml_54_0"@41888
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.lyric

:[18]
push.v self.timer
pushi.e 366
cmp.i.v EQ
bf [21]

:[19]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [21]

:[20]
push.s "obj_credits_slash_Step_0_gml_70_0"@41890
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.lyric

:[21]
push.v self.timer
pushi.e 390
cmp.i.v EQ
bf [24]

:[22]
push.s "obj_credits_slash_Step_0_gml_95_0"@29603
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_96_0"@29605
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s " "@353
conv.s.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_98_0"@29607
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_99_0"@29609
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.linecolor
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [24]

:[23]
push.s "obj_credits_slash_Step_0_gml_70_0"@41890
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.lyric

:[24]
push.v self.timer
pushi.e 480
cmp.i.v GTE
bf [26]

:[25]
push.v self.timer
pushi.e 520
cmp.i.v LTE
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
push.v self.creditalpha
push.d 0.025
sub.d.v
pop.v.v self.creditalpha
push.v self.textalpha
push.d 0.025
sub.d.v
pop.v.v self.textalpha

:[29]
push.v self.timer
pushi.e 526
cmp.i.v EQ
bf [31]

:[30]
pushi.e 1
pop.v.i self.textalpha
push.s "obj_credits_slash_Step_0_gml_89_0"@41891
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.lyric

:[31]
push.v self.timer
pushi.e 573
cmp.i.v EQ
bf [35]

:[32]
pushi.e 1
pop.v.i self.creditalpha
push.i 165574
setowner.e
push.s "Localization Producers"@41892
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "John Ricciardi"@37072
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "Graeme Howard"@37071
conv.s.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.linecolor
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.linecolor
push.i 165574
setowner.e
push.s "Additional Programming"@41893
conv.s.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "Gregg Tavares (PC)"@41894
conv.s.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "Sarah O'Donnell (Console)"@41895
conv.s.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [34]

:[33]
push.s "ローカライズプロデューサー"@41896
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "追加プログラミング"@41897
conv.s.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "Gregg Tavares (PC版)"@41898
conv.s.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "Sarah O'Donnell (コンシューマー版)"@41899
conv.s.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.line

:[34]
push.s "obj_credits_slash_Step_0_gml_108_0"@41900
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.lyric

:[35]
push.v self.timer
pushi.e 645
cmp.i.v EQ
bf [38]

:[36]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [38]

:[37]
push.s "obj_credits_slash_Step_0_gml_113_0"@41901
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.lyric

:[38]
push.v self.timer
pushi.e 668
cmp.i.v EQ
bf [43]

:[39]
push.s "obj_credits_slash_Step_0_gml_119_0"@41902
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_120_0"@41903
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_121_0"@41904
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "Snowdrake & Monster Kid Design"@41905
conv.s.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "Magnolia Porter"@37061
conv.s.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s ""@157
conv.s.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.linecolor
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.linecolor
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [41]

:[40]
push.i 165574
setowner.e
push.s "ライちゃん／モンスターの子　デザイン"@41906
conv.s.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.line

:[41]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [43]

:[42]
push.s "obj_credits_slash_Step_0_gml_113_0"@41901
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.lyric

:[43]
push.v self.timer
pushi.e 735
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_credits_slash_Step_0_gml_131_0"@41907
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.lyric

:[45]
push.v self.timer
pushi.e 765
cmp.i.v EQ
bf [48]

:[46]
push.s "obj_credits_slash_Step_0_gml_152_0"@29619
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "Gigi DG (Outfit & Color Assist)"@41908
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "Betty Kwong (Temmie Design)"@41909
conv.s.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "256graph (JP Graphics)"@41910
conv.s.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "Ryan Alyea (Website)"@41911
conv.s.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "Brian Coia (Website)"@41912
conv.s.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 12632256
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.linecolor
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [48]

:[47]
push.i 165574
setowner.e
push.s "Gigi DG (カラーアシタンス)"@41913
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "Betty Kwong (テミー・デザイン)"@41914
conv.s.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "256graph (日本語グラフィック)"@41915
conv.s.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "Ryan Alyea (ウェブサイト)"@41916
conv.s.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "Brian Coia (ウェブサイト)"@41917
conv.s.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.line

:[48]
push.v self.timer
pushi.e 798
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_credits_slash_Step_0_gml_147_0"@41918
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.lyric

:[50]
push.v self.timer
pushi.e 870
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_credits_slash_Step_0_gml_152_0"@29619
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s "obj_credits_slash_Step_0_gml_153_0"@29621
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.s "Fontworks Inc."@37108
conv.s.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s "Yutaka Sato (Happy Ruika)"@37109
conv.s.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s "Hiroko Minamoto"@37107
conv.s.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s "All 8-4 & Fangamer Staff"@37111
conv.s.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor

:[52]
push.v self.timer
pushi.e 960
cmp.i.v GTE
bf [54]

:[53]
push.v self.timer
pushi.e 1030
cmp.i.v LTE
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
push.v self.creditalpha
push.d 0.02
sub.d.v
pop.v.v self.creditalpha
push.v self.textalpha
push.d 0.02
sub.d.v
pop.v.v self.textalpha

:[57]
push.v self.timer
pushi.e 1033
cmp.i.v EQ
bf [59]

:[58]
pushi.e 1
pop.v.i self.textalpha
push.s "obj_credits_slash_Step_0_gml_174_0"@41919
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.lyric

:[59]
push.v self.timer
pushi.e 1086
cmp.i.v EQ
bf [61]

:[60]
push.s "obj_credits_slash_Step_0_gml_180_0"@41920
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.lyric

:[61]
push.v self.timer
pushi.e 1300
cmp.i.v GTE
bf [73]

:[62]
push.v self.timer
pushi.e 1560
cmp.i.v LTE
bf [64]

:[63]
push.v self.creditalpha
pushi.e 1
cmp.i.v LT
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
push.v self.creditalpha
push.d 0.01
add.d.v
pop.v.v self.creditalpha

:[67]
push.v self.timer
pushi.e 1560
cmp.i.v GTE
bf [69]

:[68]
push.v self.creditalpha
pushi.e 0
cmp.i.v GT
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
push.v self.creditalpha
push.d 0.01
sub.d.v
pop.v.v self.creditalpha

:[72]
push.i 165574
setowner.e
push.s "obj_credits_slash_Step_0_gml_187_0"@41921
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.line
push.s " "@353
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.linecolor
push.i 16777215
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.linecolor
push.i 165574
setowner.e
push.s " "@353
conv.s.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.line
push.s " "@353
conv.s.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.line
push.s " "@353
conv.s.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.line
push.s " "@353
conv.s.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.line
push.v self.textalpha
push.d 0.01
sub.d.v
pop.v.v self.textalpha

:[73]
push.v self.timer
pushi.e 1660
cmp.i.v EQ
bf [75]

:[74]
push.v self.song0
call.i gml_Script_snd_free_ch1(argc=1)
popz.v

:[75]
push.v self.timer
pushi.e 1680
cmp.i.v EQ
bf [end]

:[76]
pushi.e 278
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]