.localvar 2 arguments
.localvar 12005 _locale 3685
.localvar 12007 _lang 3686
.localvar 12015 fm 3690
.localvar 12017 sm 3691
.localvar 12034 sndm 3692

:[0]
b [18]

> gml_Script_scr_84_init_localization (locals=5, argc=0)
:[1]
call.i os_get_language(argc=0)
pop.v.v local._locale
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [3]

:[2]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i switch_language_get_desired_language(argc=0)
call.i gml_Script_substr(argc=3)
pop.v.v local._lang
b [7]

:[3]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._locale
call.i gml_Script_substr(argc=3)
push.s "ja"@6181
cmp.s.v NEQ
bf [5]

:[4]
push.s "en"@9432
conv.s.v
b [6]

:[5]
push.s "ja"@6181
conv.s.v

:[6]
pop.v.v local._lang

:[7]
pushloc.v local._lang
pop.v.v global.lang
push.s "true_config.ini"@12008
conv.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [9]

:[8]
push.s "true_config.ini"@12008
conv.s.v
call.i gml_Script_ossafe_ini_open(argc=1)
popz.v
pushloc.v local._lang
push.s "LANG"@12009
conv.s.v
push.s "LANG"@12009
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v global.lang
call.i gml_Script_ossafe_ini_close(argc=0)
popz.v

:[9]
push.s "lang_loaded"@12011
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [11]

:[10]
push.s ""@157
pop.v.s global.lang_loaded

:[11]
pushglb.v global.lang_loaded
pushglb.v global.lang
cmp.v.v NEQ
bf [17]

:[12]
pushglb.v global.lang
pop.v.v global.lang_loaded
push.s "lang_map"@11994
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [14]

:[13]
pushglb.v global.lang_map
call.i ds_map_destroy(argc=1)
popz.v
pushglb.v global.font_map
call.i ds_map_destroy(argc=1)
popz.v
pushglb.v global.chemg_sprite_map
call.i ds_map_destroy(argc=1)
popz.v
pushglb.v global.chemg_sound_map
call.i ds_map_destroy(argc=1)
popz.v

:[14]
call.i ds_map_create(argc=0)
pop.v.v global.lang_map
call.i ds_map_create(argc=0)
pop.v.v global.font_map
call.i ds_map_create(argc=0)
pop.v.v global.lang_missing_map
call.i ds_map_create(argc=0)
pop.v.v global.chemg_sprite_map
call.i ds_map_create(argc=0)
pop.v.v global.chemg_sound_map
call.i gml_Script_scr_84_lang_load(argc=0)
popz.v
call.i gml_Script_scr_ascii_input_names(argc=0)
popz.v
push.s ""@157
pop.v.s global.chemg_last_get_font
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [16]

:[15]
pushglb.v global.font_map
pop.v.v local.fm
pushi.e 10
conv.i.v
push.s "main"@6173
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 8
conv.i.v
push.s "mainbig"@6175
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 12
conv.i.v
push.s "tinynoelle"@6177
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 7
conv.i.v
push.s "dotumche"@6178
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 6
conv.i.v
push.s "comicsans"@6176
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 9
conv.i.v
push.s "small"@12016
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushglb.v global.chemg_sprite_map
pop.v.v local.sm
pushi.e 2258
conv.i.v
push.s "spr_bnamekris"@6828
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2259
conv.i.v
push.s "spr_bnameralsei"@6830
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2260
conv.i.v
push.s "spr_bnamesusie"@6829
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2261
conv.i.v
push.s "spr_btact"@6816
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2262
conv.i.v
push.s "spr_btdefend"@6820
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2263
conv.i.v
push.s "spr_btfight"@6814
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2264
conv.i.v
push.s "spr_btitem"@6818
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2266
conv.i.v
push.s "spr_btspare"@6819
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2265
conv.i.v
push.s "spr_bttech"@6817
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2461
conv.i.v
push.s "spr_darkmenudesc"@12018
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2363
conv.i.v
push.s "spr_dmenu_captions"@12019
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 3247
conv.i.v
push.s "spr_quitmessage"@12020
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2331
conv.i.v
push.s "spr_thrashbody_b"@12021
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2329
conv.i.v
push.s "spr_thrashfoot_b"@12022
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2483
conv.i.v
push.s "spr_fieldmuslogo"@12023
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 3272
conv.i.v
push.s "spr_werewire_zzt_text"@12024
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 175
conv.i.v
push.s "spr_face_queen"@6219
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 247
conv.i.v
push.s "spr_city_mice_sign_01"@12025
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2818
conv.i.v
push.s "spr_city_mice_sign_02"@12026
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 3179
conv.i.v
push.s "spr_city_mice_sign_03"@12027
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 866
conv.i.v
push.s "spr_bnamenoelle"@6831
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 3310
conv.i.v
push.s "spr_bnamethrash"@6827
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2998
conv.i.v
push.s "spr_cutscene_27_tender_goodbye"@12028
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 3279
conv.i.v
push.s "spr_ch2_cityscreen"@12029
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 3073
conv.i.v
push.s "spr_battlemsg"@12030
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2116
conv.i.v
push.s "spr_queenscreen"@12031
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 3156
conv.i.v
push.s "spr_acrade_retire"@12032
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 3320
conv.i.v
push.s "spr_sneo_playback"@12033
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushglb.v global.chemg_sound_map
pop.v.v local.sndm
b [17]

:[16]
pushglb.v global.font_map
pop.v.v local.fm
pushi.e 3
conv.i.v
push.s "main"@6173
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "mainbig"@6175
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "tinynoelle"@6177
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "dotumche"@6178
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4
conv.i.v
push.s "comicsans"@6176
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushi.e 5
conv.i.v
push.s "small"@12016
conv.s.v
pushloc.v local.fm
call.i ds_map_add(argc=3)
popz.v
pushglb.v global.chemg_sprite_map
pop.v.v local.sm
pushi.e 2235
conv.i.v
push.s "spr_bnamekris"@6828
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2236
conv.i.v
push.s "spr_bnameralsei"@6830
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2238
conv.i.v
push.s "spr_bnamesusie"@6829
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2240
conv.i.v
push.s "spr_btact"@6816
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2242
conv.i.v
push.s "spr_btdefend"@6820
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2243
conv.i.v
push.s "spr_btfight"@6814
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2248
conv.i.v
push.s "spr_btitem"@6818
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2244
conv.i.v
push.s "spr_btspare"@6819
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2250
conv.i.v
push.s "spr_bttech"@6817
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2451
conv.i.v
push.s "spr_darkmenudesc"@12018
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2351
conv.i.v
push.s "spr_dmenu_captions"@12019
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2543
conv.i.v
push.s "spr_quitmessage"@12020
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2331
conv.i.v
push.s "spr_thrashbody_b"@12021
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2329
conv.i.v
push.s "spr_thrashfoot_b"@12022
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2483
conv.i.v
push.s "spr_fieldmuslogo"@12023
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 1741
conv.i.v
push.s "spr_werewire_zzt_text"@12024
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 643
conv.i.v
push.s "spr_face_queen"@6219
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 3075
conv.i.v
push.s "spr_city_mice_sign_01"@12025
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 3076
conv.i.v
push.s "spr_city_mice_sign_02"@12026
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 3077
conv.i.v
push.s "spr_city_mice_sign_03"@12027
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2239
conv.i.v
push.s "spr_bnamenoelle"@6831
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2237
conv.i.v
push.s "spr_bnamethrash"@6827
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 373
conv.i.v
push.s "spr_cutscene_27_tender_goodbye"@12028
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 3060
conv.i.v
push.s "spr_ch2_cityscreen"@12029
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2527
conv.i.v
push.s "spr_battlemsg"@12030
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 37
conv.i.v
push.s "spr_queenscreen"@12031
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 2193
conv.i.v
push.s "spr_acrade_retire"@12032
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 3273
conv.i.v
push.s "spr_sneo_playback"@12033
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushglb.v global.chemg_sound_map
pop.v.v local.sndm

:[17]
exit.i

:[18]
push.i [function]gml_Script_scr_84_init_localization
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_init_localization
popz.v

:[end]