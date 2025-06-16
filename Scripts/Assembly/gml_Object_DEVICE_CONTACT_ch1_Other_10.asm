.localvar 2 arguments

:[0]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [2]

:[1]
push.v self.FN
call.i gml_Script_string_to_hiragana_ch1(argc=1)
pop.v.v self.FN

:[2]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_1_0"@41834
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i self.FOUND

:[4]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_2_0"@41835
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [6]

:[5]
pushi.e 2
pop.v.i self.FOUND

:[6]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_3_0"@41836
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [8]

:[7]
pushi.e 2
pop.v.i self.FOUND

:[8]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_4_0"@41837
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.FOUND

:[10]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_5_0"@41838
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.FOUND

:[12]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_6_0"@41839
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.FOUND

:[14]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_7_0"@41840
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i self.FOUND

:[16]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_8_0"@41841
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [18]

:[17]
pushi.e 1
pop.v.i self.FOUND

:[18]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_9_0"@41842
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [20]

:[19]
pushi.e 1
pop.v.i self.FOUND

:[20]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_10_0"@41843
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.i self.FOUND

:[22]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_11_0"@41844
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [24]

:[23]
pushi.e 1
pop.v.i self.FOUND

:[24]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_12_0"@41845
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [26]

:[25]
pushi.e 1
pop.v.i self.FOUND

:[26]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_13_0"@41846
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [28]

:[27]
pushi.e 1
pop.v.i self.FOUND

:[28]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_14_0"@41847
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i self.FOUND

:[30]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_15_0"@41848
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i self.FOUND

:[32]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_16_0"@41849
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.i self.FOUND

:[34]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_17_0"@41850
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.i self.FOUND

:[36]
push.v self.FN
push.s "DEVICE_CONTACT_slash_Other_10_gml_18_0"@41851
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
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
call.i gml_Script_string_to_ascii_from_full_width_ch1(argc=1)
pop.v.v self.FN
push.v self.FN
push.s "special_name_check_01"@41852
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [41]

:[40]
pushi.e 2
pop.v.i self.FOUND

:[41]
push.v self.FN
push.s "special_name_check_02"@41853
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [43]

:[42]
pushi.e 2
pop.v.i self.FOUND

:[43]
push.v self.FN
push.s "special_name_check_03"@41854
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [45]

:[44]
pushi.e 2
pop.v.i self.FOUND

:[45]
push.v self.FN
push.s "special_name_check_04"@41855
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [47]

:[46]
pushi.e 1
pop.v.i self.FOUND

:[47]
push.v self.FN
push.s "special_name_check_05"@41856
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [49]

:[48]
pushi.e 1
pop.v.i self.FOUND

:[49]
push.v self.FN
push.s "special_name_check_06"@41857
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [51]

:[50]
pushi.e 1
pop.v.i self.FOUND

:[51]
push.v self.FN
push.s "special_name_check_07"@41858
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [53]

:[52]
pushi.e 1
pop.v.i self.FOUND

:[53]
push.v self.FN
push.s "special_name_check_08"@41859
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [55]

:[54]
pushi.e 1
pop.v.i self.FOUND

:[55]
push.v self.FN
push.s "special_name_check_09"@41860
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [57]

:[56]
pushi.e 1
pop.v.i self.FOUND

:[57]
push.v self.FN
push.s "special_name_check_10"@41861
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [59]

:[58]
pushi.e 1
pop.v.i self.FOUND

:[59]
push.v self.FN
push.s "special_name_check_11"@41862
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [61]

:[60]
pushi.e 1
pop.v.i self.FOUND

:[61]
push.v self.FN
push.s "special_name_check_12"@41863
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [63]

:[62]
pushi.e 1
pop.v.i self.FOUND

:[63]
push.v self.FN
push.s "special_name_check_13"@41864
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [65]

:[64]
pushi.e 1
pop.v.i self.FOUND

:[65]
push.v self.FN
push.s "special_name_check_14"@41865
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [67]

:[66]
pushi.e 1
pop.v.i self.FOUND

:[67]
push.v self.FN
push.s "special_name_check_15"@41866
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [69]

:[68]
pushi.e 1
pop.v.i self.FOUND

:[69]
push.v self.FN
push.s "special_name_check_16"@41867
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [71]

:[70]
pushi.e 1
pop.v.i self.FOUND

:[71]
push.v self.FN
push.s "special_name_check_17"@41868
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [73]

:[72]
pushi.e 1
pop.v.i self.FOUND

:[73]
push.v self.FN
push.s "special_name_check_18"@41869
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v EQ
bf [end]

:[74]
pushi.e 1
pop.v.i self.FOUND

:[end]