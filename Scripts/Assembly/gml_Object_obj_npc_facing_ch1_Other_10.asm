.localvar 2 arguments

:[0]
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
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
push.d 0.2
pop.v.d self.image_speed
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.d 0.1
pop.v.d self.image_speed

:[4]
push.i 231251
setowner.e
push.s "obj_npc_facing_slash_Other_10_gml_10_0"@39751
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushbltn.v builtin.room
pushi.e 311
cmp.i.v EQ
bf [42]

:[5]
push.v self.utsprite
pushi.e 3496
cmp.i.v EQ
bf [11]

:[6]
pushi.e 100
pop.v.i global.msc
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
pushi.e 102
pop.v.i global.msc

:[8]
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i global.fe
pushi.e 3
pop.v.i global.fc
pushi.e 12
pop.v.i global.typer
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [11]

:[9]
push.s "obj_npc_facing_slash_Other_10_gml_29_0"@39752
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_30_0"@39753
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_31_0"@19476
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [11]

:[10]
pushi.e 23
pop.v.i global.typer
pushi.e 3
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_37_0"@39754
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[11]
push.v self.utsprite
pushi.e 3500
cmp.i.v EQ
bf [17]

:[12]
pushi.e 12
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 13
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_48_0"@39755
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_49_0"@39756
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_50_0"@19484
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_51_0"@19486
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_52_0"@19488
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_53_0"@19490
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [14]

:[13]
push.s "obj_npc_facing_slash_Other_10_gml_57_0"@39757
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_58_0"@39758
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[14]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [17]

:[15]
pushi.e 3
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_65_0"@39759
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_66_0"@39760
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_67_0"@19500
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [17]

:[16]
push.s "obj_npc_facing_slash_Other_10_gml_71_0"@39761
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[17]
push.v self.utsprite
pushi.e 3514
cmp.i.v EQ
bf [23]

:[18]
push.s "obj_npc_facing_slash_Other_10_gml_81_0"@39762
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_82_0"@39763
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_83_0"@19508
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_84_0"@19510
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [20]

:[19]
push.s "obj_npc_facing_slash_Other_10_gml_88_0"@39764
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_89_0"@39765
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_90_0"@19516
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[20]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [23]

:[21]
push.s "obj_npc_facing_slash_Other_10_gml_96_0"@39766
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_97_0"@39767
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_98_0"@19522
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_99_0"@19524
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_100_0"@19526
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
push.s "obj_npc_facing_slash_Other_10_gml_104_0"@39768
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[23]
push.v self.utsprite
pushi.e 3518
cmp.i.v EQ
bf [29]

:[24]
push.s "obj_npc_facing_slash_Other_10_gml_114_0"@39769
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_115_0"@39770
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_116_0"@19534
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [26]

:[25]
push.s "obj_npc_facing_slash_Other_10_gml_120_0"@39771
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[26]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [29]

:[27]
push.s "obj_npc_facing_slash_Other_10_gml_126_0"@39772
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_127_0"@39773
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_128_0"@19542
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [29]

:[28]
push.s "obj_npc_facing_slash_Other_10_gml_132_0"@39774
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[29]
push.v self.utsprite
pushi.e 3505
cmp.i.v EQ
bf [32]

:[30]
pushi.e 13
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_145_0"@39775
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_146_0"@39776
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [32]

:[31]
push.s "obj_npc_facing_slash_Other_10_gml_150_0"@39777
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_151_0"@39778
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[32]
push.v self.utsprite
pushi.e 3506
cmp.i.v EQ
bf [37]

:[33]
pushi.e 14
pop.v.i global.fc
push.s "obj_npc_facing_slash_Other_10_gml_159_0"@39779
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_160_0"@39780
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_161_0"@19557
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_162_0"@19559
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [35]

:[34]
push.s "obj_npc_facing_slash_Other_10_gml_166_0"@39781
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_167_0"@39782
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[35]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [37]

:[36]
push.s "obj_npc_facing_slash_Other_10_gml_174_0"@39783
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_175_0"@39784
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[37]
push.v self.utsprite
pushi.e 3486
cmp.i.v EQ
bf [42]

:[38]
pushi.e 11
pop.v.i global.fc
pushi.e 20
pop.v.i global.typer
pushi.e 3
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_185_0"@39785
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_186_0"@39786
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_187_0"@39787
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_188_0"@39788
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [40]

:[39]
pushi.e 7
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_192_0"@19579
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[40]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [42]

:[41]
pushi.e 5
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_198_0"@39789
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[42]
pushbltn.v builtin.room
pushi.e 333
cmp.i.v EQ
bf [49]

:[43]
pushi.e 5
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_210_0"@39790
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_211_0"@39791
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "A"@1192
conv.s.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_213_0"@39792
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_215_0"@39793
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_216_0"@39794
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_218_0"@39795
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_220_0"@39796
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_221_0"@39797
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
pushi.e 9
conv.i.v
pushi.e 12
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_223_0"@39798
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]self.msg
pushi.e -5
pushi.e 210
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
pushi.e 2
pop.v.i global.fc
pushi.e 11
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_230_0"@19587
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_231_0"@39799
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_233_0"@19591
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[45]
pushi.e -5
pushi.e 210
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [47]

:[46]
push.s "obj_npc_facing_slash_Other_10_gml_239_0"@39800
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_241_0"@19601
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_243_0"@19605
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_244_0"@19607
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "A"@1192
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_246_0"@39801
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg

:[47]
pushi.e -5
pushi.e 210
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 210
pop.v.v [array]self.flag

:[49]
pushbltn.v builtin.room
pushi.e 343
cmp.i.v EQ
bf [57]

:[50]
push.i 231251
setowner.e
push.s "obj_npc_facing_slash_Other_10_gml_257_0"@39802
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [55]

:[51]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e -5
pushi.e 212
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [54]

:[52]
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name_ch1(argc=1)
pop.v.v self.input_name
push.s "obj_npc_facing_slash_Other_10_gml_269_0"@19621
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.input_name
push.s "obj_npc_facing_slash_Other_10_gml_270_0"@19623
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 9
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.v self.input_name
push.s "obj_npc_facing_slash_Other_10_gml_272_0"@39803
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [54]

:[53]
push.v self.input_name
push.s "obj_npc_facing_slash_Other_10_gml_276_0"@39804
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_278_0"@39805
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[54]
b [57]

:[55]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e -5
pushi.e 212
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_npc_facing_slash_Other_10_gml_295_0"@39806
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_296_0"@39807
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[57]
pushbltn.v builtin.room
pushi.e 386
cmp.i.v EQ
bf [79]

:[58]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_307_0"@39808
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_308_0"@39809
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [60]

:[59]
push.s "obj_npc_facing_slash_Other_10_gml_312_0"@39810
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[60]
pushi.e -5
pushi.e 231
push.v [array]self.flag
pushi.e 3
cmp.i.v GTE
bf [79]

:[61]
pushi.e 0
pop.v.i self.shack
pushi.e 0
pop.v.i self.moss
pushi.e -5
pushi.e 1
push.v [array]self.chararmor1
pushi.e 5
cmp.i.v EQ
bt [63]

:[62]
pushi.e -5
pushi.e 1
push.v [array]self.chararmor2
conv.v.b
b [64]

:[63]
push.e 1

:[64]
bf [66]

:[65]
pushi.e 1
pop.v.i self.shack

:[66]
pushi.e -5
pushi.e 106
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
pushi.e 1
pop.v.i self.moss

:[68]
pushi.e 1362
pushenv [70]

:[69]
pushi.e 15
pop.v.i self.con

:[70]
popenv [69]
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_323_0"@39812
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_324_0"@39813
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.moss
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
push.s "obj_npc_facing_slash_Other_10_gml_328_0"@39814
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_329_0"@39815
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_330_0"@39816
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_331_0"@39817
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[72]
push.v self.shack
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.s "obj_npc_facing_slash_Other_10_gml_337_0"@39818
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_338_0"@39819
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_339_0"@39820
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_340_0"@39821
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_341_0"@39822
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg

:[74]
push.v self.moss
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
push.v self.shack
pushi.e 1
cmp.i.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [79]

:[78]
push.s "obj_npc_facing_slash_Other_10_gml_348_0"@39823
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_349_0"@39824
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_350_0"@39825
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_351_0"@39826
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_352_0"@39827
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg

:[79]
pushbltn.v builtin.room
pushi.e 356
cmp.i.v EQ
bf [84]

:[80]
pushi.e -5
pushi.e 232
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [82]

:[81]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 255
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v
b [84]

:[82]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_375_0"@39828
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_376_0"@19653
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_377_0"@19655
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_379_0"@39829
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_381_0"@39830
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_382_0"@39831
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_384_0"@19660
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
push.v self.x
pushi.e 1160
cmp.i.v GTE
bf [84]

:[83]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_392_0"@39832
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
push.s "obj_npc_facing_slash_Other_10_gml_394_0"@39833
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[84]
pushbltn.v builtin.room
pushi.e 359
cmp.i.v EQ
bf [91]

:[85]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_406_0"@19674
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_408_0"@19676
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
push.s "obj_npc_facing_slash_Other_10_gml_410_0"@39834
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_412_0"@39835
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_414_0"@39836
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [87]

:[86]
push.s "obj_npc_facing_slash_Other_10_gml_419_0"@39837
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_420_0"@19678
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_421_0"@39838
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_423_0"@39839
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_425_0"@39840
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_427_0"@19680
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_428_0"@19682
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_430_0"@39841
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
pushi.e 9
conv.i.v
pushi.e 12
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_432_0"@19686
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]self.msg

:[87]
push.v self.talked
pushi.e -50
cmp.i.v LT
bf [89]

:[88]
pushi.e 2
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_438_0"@39842
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_440_0"@19694
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_442_0"@39843
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_444_0"@39844
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg

:[89]
push.v self.dtsprite
pushi.e 3578
cmp.i.v EQ
bf [91]

:[90]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_452_0"@39845
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_453_0"@39846
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_455_0"@39847
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_457_0"@19700
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_458_0"@39848
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg

:[91]
pushbltn.v builtin.room
pushi.e 362
cmp.i.v EQ
bf [96]

:[92]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_470_0"@39849
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_472_0"@39850
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_474_0"@39851
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_476_0"@39852
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_478_0"@39853
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_480_0"@39854
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [94]

:[93]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_489_0"@19712
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_490_0"@19714
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_492_0"@39855
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[94]
push.v self.x
pushi.e 600
cmp.i.v GTE
bf [96]

:[95]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_500_0"@19716
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_501_0"@19717
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_502_0"@19719
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[96]
pushbltn.v builtin.room
pushi.e 363
cmp.i.v EQ
bf [102]

:[97]
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.normalanim
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_512_0"@19726
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_514_0"@39856
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_516_0"@39857
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_518_0"@39858
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
push.s "obj_npc_facing_slash_Other_10_gml_520_0"@39859
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_522_0"@39860
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
pushi.e 9
conv.i.v
pushi.e 11
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_524_0"@39861
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [99]

:[98]
push.s "obj_npc_facing_slash_Other_10_gml_527_0"@39862
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_529_0"@39863
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_530_0"@39864
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[99]
pushi.e 1411
pushenv [101]

:[100]
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[101]
popenv [100]

:[102]
pushbltn.v builtin.room
pushi.e 373
cmp.i.v EQ
bf [107]

:[103]
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_541_0"@39865
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_543_0"@39866
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_545_0"@39867
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 9
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_547_0"@39868
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [105]

:[104]
push.s "obj_npc_facing_slash_Other_10_gml_550_0"@39869
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_552_0"@39870
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[105]
pushi.e -5
pushi.e 293
push.v [array]self.flag
pushi.e 2
cmp.i.v GTE
bf [107]

:[106]
pushi.e 2
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_557_0"@39871
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_559_0"@39872
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[107]
pushbltn.v builtin.room
pushi.e 376
cmp.i.v EQ
bf [112]

:[108]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_568_0"@39873
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_570_0"@39874
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
push.s "obj_npc_facing_slash_Other_10_gml_572_0"@39875
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_573_0"@39876
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_575_0"@39877
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_576_0"@39878
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [110]

:[109]
push.s "obj_npc_facing_slash_Other_10_gml_579_0"@39879
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[110]
pushi.e -5
pushi.e 294
push.v [array]self.flag
pushi.e 2
cmp.i.v GTE
bf [112]

:[111]
pushi.e 9
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_584_0"@39880
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_586_0"@39881
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[112]
pushbltn.v builtin.room
pushi.e 407
cmp.i.v EQ
bf [116]

:[113]
pushglb.v global.plot
pushi.e 243
cmp.i.v LT
bf [115]

:[114]
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_600_0"@39882
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_601_0"@39883
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_603_0"@39884
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_605_0"@39885
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_606_0"@39886
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 9
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_608_0"@39887
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_609_0"@39888
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_611_0"@39889
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_612_0"@39890
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_613_0"@39891
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 14
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_615_0"@39892
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_616_0"@39893
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_617_0"@39894
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 18
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_619_0"@39895
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_620_0"@39896
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_621_0"@39897
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 22
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_623_0"@39898
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_624_0"@39899
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 25
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_626_0"@39900
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_627_0"@39901
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]self.msg
pushi.e 243
pop.v.i global.plot
b [116]

:[115]
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_636_0"@39902
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_638_0"@39903
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_640_0"@39904
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[116]
pushbltn.v builtin.room
pushi.e 409
cmp.i.v EQ
bf [123]

:[117]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 11
pop.v.i global.fe
pushglb.v global.plot
pushi.e 242
cmp.i.v EQ
bf [119]

:[118]
pushi.e 1
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_656_0"@39905
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
push.s "obj_npc_facing_slash_Other_10_gml_658_0"@39906
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[119]
pushglb.v global.plot
pushi.e 243
cmp.i.v GTE
bf [121]

:[120]
pushi.e 1
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_665_0"@39907
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
push.s "obj_npc_facing_slash_Other_10_gml_667_0"@39908
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_668_0"@39909
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[121]
pushglb.v global.plot
pushi.e 242
cmp.i.v LT
bf [123]

:[122]
push.s "obj_npc_facing_slash_Other_10_gml_674_0"@39910
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_676_0"@39911
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_677_0"@39912
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_679_0"@39913
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_680_0"@39914
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_681_0"@39915
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_683_0"@39916
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 242
pop.v.i global.plot

:[123]
pushbltn.v builtin.room
pushi.e 307
cmp.i.v EQ
bf [143]

:[124]
pushbltn.v builtin.room
pushi.e 307
cmp.i.v EQ
bf [143]

:[125]
push.v self.x
pushi.e 140
cmp.i.v LT
bf [135]

:[126]
pushi.e 12
pop.v.i global.fc
pushi.e 13
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_700_0"@39917
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 256
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [128]

:[127]
push.s "obj_npc_facing_slash_Other_10_gml_702_0"@39918
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[128]
push.s "obj_npc_facing_slash_Other_10_gml_703_0"@39919
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_704_0"@39920
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_705_0"@39921
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_706_0"@39922
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_707_0"@39923
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [130]

:[129]
push.s "obj_npc_facing_slash_Other_10_gml_711_0"@39924
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_712_0"@39925
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_713_0"@39926
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_714_0"@39927
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[130]
pushi.e -5
pushi.e 255
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
bf [132]

:[131]
pushi.e -5
pushi.e 256
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [133]

:[132]
push.e 0

:[133]
bf [135]

:[134]
push.s "obj_npc_facing_slash_Other_10_gml_719_0"@39928
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_720_0"@39929
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_721_0"@39930
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_722_0"@39931
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_723_0"@39932
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_724_0"@39933
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 256
pop.v.v [array]self.flag
pushi.e -1
pop.v.i self.talked

:[135]
push.v self.x
pushi.e 150
cmp.i.v GT
bf [137]

:[136]
push.v self.x
pushi.e 220
cmp.i.v LT
b [138]

:[137]
push.e 0

:[138]
bf [141]

:[139]
pushi.e 14
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_npc_facing_slash_Other_10_gml_739_0"@39934
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_740_0"@39935
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_741_0"@39936
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_743_0"@39937
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [141]

:[140]
push.s "obj_npc_facing_slash_Other_10_gml_747_0"@39938
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[141]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [143]

:[142]
push.s "obj_npc_facing_slash_Other_10_gml_753_0"@39939
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_754_0"@39940
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[143]
pushbltn.v builtin.room
pushi.e 305
cmp.i.v EQ
bf [146]

:[144]
pushi.e 10
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 18
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_767_0"@39941
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_768_0"@39942
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_769_0"@39943
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_770_0"@39944
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_771_0"@39945
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [146]

:[145]
push.s "obj_npc_facing_slash_Other_10_gml_775_0"@39946
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_776_0"@39947
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[146]
pushbltn.v builtin.room
pushi.e 306
cmp.i.v EQ
bf [148]

:[147]
pushi.e 10
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 18
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_785_0"@39948
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_786_0"@39949
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[148]
pushbltn.v builtin.room
pushi.e 308
cmp.i.v EQ
bf [150]

:[149]
pushi.e 11
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 20
pop.v.i global.typer
pushi.e 285
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[150]
pushbltn.v builtin.room
pushi.e 294
cmp.i.v EQ
bf [152]

:[151]
pushi.e 17
pop.v.i global.typer
pushi.e 335
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[152]
pushbltn.v builtin.room
pushi.e 292
cmp.i.v EQ
bf [158]

:[153]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 14
pop.v.i global.typer
pushi.e 6
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 370
pop.v.i global.msc
pushi.e -5
pushi.e 273
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
bf [155]

:[154]
pushi.e 371
pop.v.i global.msc

:[155]
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v
pushi.e 1347
pushenv [157]

:[156]
pushi.e 70
pop.v.i self.con

:[157]
popenv [156]

:[158]
pushbltn.v builtin.room
pushi.e 290
cmp.i.v EQ
bf [161]

:[159]
push.v self.dtsprite
pushi.e 3490
cmp.i.v EQ
bf [161]

:[160]
pushi.e 385
pop.v.i global.msc
pushi.e 12
pop.v.i global.typer
pushi.e 3
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[161]
push.v self.image_speed
pop.v.v self.remanimspeed
pushi.e 3
pop.v.i self.myinteract
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.mydialoguer
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]