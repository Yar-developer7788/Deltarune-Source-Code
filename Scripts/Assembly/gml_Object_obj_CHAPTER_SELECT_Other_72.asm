.localvar 2 arguments
.localvar 11922 json 6397
.localvar 12005 _locale 6398
.localvar 12007 _lang 6399
.localvar 9635 error_message 6400

:[0]
push.s "id"@6351
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pushglb.v global.savedata_async_id
cmp.v.v EQ
bf [end]

:[1]
pushi.e -1
pop.v.i global.savedata_async_id
pushglb.v global.savedata_async_load
conv.v.b
bf [end]

:[2]
pushi.e 0
pop.v.b global.savedata_async_load
push.s "status"@14635
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.b.v EQ
bf [8]

:[3]
push.v self.old_savedata_check
conv.v.b
not.b
bf [6]

:[4]
pushi.e 1
pop.v.b self.old_savedata_check
call.i gml_Script_ossafe_savedata_load_old_check(argc=0)
popz.v
exit.i

:[5]
b [7]

:[6]
pushi.e 1
pop.v.b global.savedata_error
push.s "load failed: "@14636
push.s "status"@14635
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
call.i string(argc=1)
add.v.s
pop.v.v global.savedata_debuginfo
call.i ds_map_create(argc=0)
pop.v.v global.savedata

:[7]
b [9]

:[8]
pushi.e 0
pop.v.b global.savedata_error
push.s "load succeeded"@14637
pop.v.s global.savedata_debuginfo
pushi.e 11
conv.i.v
pushglb.v global.savedata_buffer
call.i buffer_read(argc=2)
pop.v.v local.json
pushloc.v local.json
call.i json_decode(argc=1)
pop.v.v global.savedata

:[9]
pushglb.v global.savedata_buffer
call.i buffer_delete(argc=1)
popz.v
pushbltn.v builtin.undefined
pop.v.v global.savedata_buffer
push.s "en"@9432
pop.v.s global.lang
call.i os_get_language(argc=0)
pop.v.v local._locale
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [11]

:[10]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i switch_language_get_desired_language(argc=0)
call.i gml_Script_substr(argc=3)
pop.v.v local._lang
b [15]

:[11]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._locale
call.i gml_Script_substr(argc=3)
push.s "ja"@6181
cmp.s.v NEQ
bf [13]

:[12]
push.s "en"@9432
conv.s.v
b [14]

:[13]
push.s "ja"@6181
conv.s.v

:[14]
pop.v.v local._lang

:[15]
pushloc.v local._lang
pop.v.v global.lang
call.i gml_Script_scr_controls_default(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i audio_group_load(argc=1)
popz.v
pushglb.v global.savedata
pushi.e -1
cmp.i.v EQ
bt [17]

:[16]
pushglb.v global.savedata
pushbltn.v builtin.undefined
cmp.v.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [20]

:[19]
pushi.e 27
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.error_message
push.s "save_data_corrupt"@14515
pushloc.v local.error_message
pushi.e -9
pop.v.s [stacktop]self.error_type
exit.i

:[20]
push.s "true_config.ini"@12008
conv.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [22]

:[21]
pushi.e 0
pop.v.b self.first_time
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

:[22]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [24]

:[23]
pushi.e 3
conv.i.v
b [25]

:[24]
pushi.e 10
conv.i.v

:[25]
pop.v.v self.text_font
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [27]

:[26]
push.s "Yes"@5613
conv.s.v
b [28]

:[27]
push.s "はい"@14625
conv.s.v

:[28]
pop.v.v self.yes
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [30]

:[29]
push.s "No"@2449
conv.s.v
b [31]

:[30]
push.s "いいえ"@14626
conv.s.v

:[31]
pop.v.v self.no
push.i 167894
setowner.e
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [33]

:[32]
push.s "The Beginning"@14608
conv.s.v
b [34]

:[33]
push.s "はじまり"@14627
conv.s.v

:[34]
pushi.e -1
pushi.e 1
pop.v.v [array]self.chapname
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [36]

:[35]
push.s "A Cyber's World"@14609
conv.s.v
b [37]

:[36]
push.s "サイバーワールド"@14628
conv.s.v

:[37]
pushi.e -1
pushi.e 2
pop.v.v [array]self.chapname
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [39]

:[38]
pushi.e 0
pop.v.b self.first_time

:[39]
push.s "filech1_0"@13995
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [41]

:[40]
pushi.e 0
pop.v.b self.first_time

:[41]
push.s "filech1_1"@13997
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [43]

:[42]
pushi.e 0
pop.v.b self.first_time

:[43]
push.s "filech1_2"@13999
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [45]

:[44]
pushi.e 0
pop.v.b self.first_time

:[45]
push.s "filech1_3"@14051
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [47]

:[46]
pushi.e 0
pop.v.b self.first_time

:[47]
push.s "filech1_4"@14052
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [49]

:[48]
pushi.e 0
pop.v.b self.first_time

:[49]
push.s "filech1_5"@14053
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [51]

:[50]
pushi.e 0
pop.v.b self.first_time

:[51]
push.s "store_prompt"@14638
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [54]

:[52]
pushglb.v global.store_prompt
conv.v.b
bf [54]

:[53]
pushi.e 0
pop.v.b self.first_time

:[54]
pushi.e 1
pop.v.b self.init_loaded

:[end]