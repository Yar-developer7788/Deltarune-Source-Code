.localvar 2 arguments
.localvar 12005 _locale 4582
.localvar 12007 _lang 4583
.localvar 12015 fm 4584
.localvar 12017 sm 4585
.localvar 12034 sndm 4586

:[0]
b [18]

> gml_Script_scr_84_init_localization_ch1 (locals=5, argc=0)
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
pop.v.v global.chemg_sprite_map
call.i ds_map_create(argc=0)
pop.v.v global.chemg_sound_map
call.i gml_Script_scr_84_lang_load_ch1(argc=0)
popz.v
call.i gml_Script_scr_ascii_input_names_ch1(argc=0)
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
pushi.e 4052
conv.i.v
push.s "spr_bnamekris"@6828
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4053
conv.i.v
push.s "spr_bnameralsei"@6830
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4054
conv.i.v
push.s "spr_bnamesusie"@6829
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4055
conv.i.v
push.s "spr_btact"@6816
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4056
conv.i.v
push.s "spr_btdefend"@6820
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4057
conv.i.v
push.s "spr_btfight"@6814
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4058
conv.i.v
push.s "spr_btitem"@6818
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4060
conv.i.v
push.s "spr_btspare"@6819
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4059
conv.i.v
push.s "spr_bttech"@6817
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4194
conv.i.v
push.s "spr_darkmenudesc"@12018
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4172
conv.i.v
push.s "spr_dmenu_captions"@12019
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4387
conv.i.v
push.s "spr_quitmessage"@12020
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4101
conv.i.v
push.s "spr_thrashbody_b"@12021
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4099
conv.i.v
push.s "spr_thrashfoot_b"@12022
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4105
conv.i.v
push.s "spr_thrashlogo"@13967
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4115
conv.i.v
push.s "spr_thrashstats"@13968
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4236
conv.i.v
push.s "spr_fieldmuslogo"@12023
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushglb.v global.chemg_sound_map
pop.v.v local.sndm
pushi.e 474
conv.i.v
push.s "snd_joker_anything"@13969
conv.s.v
pushloc.v local.sndm
call.i ds_map_add(argc=3)
popz.v
pushi.e 475
conv.i.v
push.s "snd_joker_chaos"@13970
conv.s.v
pushloc.v local.sndm
call.i ds_map_add(argc=3)
popz.v
pushi.e 476
conv.i.v
push.s "snd_joker_metamorphosis"@13971
conv.s.v
pushloc.v local.sndm
call.i ds_map_add(argc=3)
popz.v
pushi.e 477
conv.i.v
push.s "snd_joker_neochaos"@13972
conv.s.v
pushloc.v local.sndm
call.i ds_map_add(argc=3)
popz.v
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
pushi.e 4031
conv.i.v
push.s "spr_bnamekris"@6828
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4032
conv.i.v
push.s "spr_bnameralsei"@6830
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4033
conv.i.v
push.s "spr_bnamesusie"@6829
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4034
conv.i.v
push.s "spr_btact"@6816
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4036
conv.i.v
push.s "spr_btdefend"@6820
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4037
conv.i.v
push.s "spr_btfight"@6814
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4041
conv.i.v
push.s "spr_btitem"@6818
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4038
conv.i.v
push.s "spr_btspare"@6819
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4043
conv.i.v
push.s "spr_bttech"@6817
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4183
conv.i.v
push.s "spr_darkmenudesc"@12018
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4169
conv.i.v
push.s "spr_dmenu_captions"@12019
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4289
conv.i.v
push.s "spr_quitmessage"@12020
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4100
conv.i.v
push.s "spr_thrashbody_b"@12021
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4098
conv.i.v
push.s "spr_thrashfoot_b"@12022
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4104
conv.i.v
push.s "spr_thrashlogo"@13967
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4107
conv.i.v
push.s "spr_thrashstats"@13968
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushi.e 4235
conv.i.v
push.s "spr_fieldmuslogo"@12023
conv.s.v
pushloc.v local.sm
call.i ds_map_add(argc=3)
popz.v
pushglb.v global.chemg_sound_map
pop.v.v local.sndm
pushi.e 469
conv.i.v
push.s "snd_joker_anything"@13969
conv.s.v
pushloc.v local.sndm
call.i ds_map_add(argc=3)
popz.v
pushi.e 466
conv.i.v
push.s "snd_joker_chaos"@13970
conv.s.v
pushloc.v local.sndm
call.i ds_map_add(argc=3)
popz.v
pushi.e 471
conv.i.v
push.s "snd_joker_metamorphosis"@13971
conv.s.v
pushloc.v local.sndm
call.i ds_map_add(argc=3)
popz.v
pushi.e 472
conv.i.v
push.s "snd_joker_neochaos"@13972
conv.s.v
pushloc.v local.sndm
call.i ds_map_add(argc=3)
popz.v

:[17]
exit.i

:[18]
push.i [function]gml_Script_scr_84_init_localization_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_init_localization_ch1
popz.v

:[end]