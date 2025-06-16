.localvar 2 arguments
.localvar 14573 _tex_array 6346
.localvar 107 i 6348
.localvar 11518 _id 6355
.localvar 12005 _locale 6384
.localvar 12007 _lang 6385
.localvar 14623 is_fullscreen 6386

:[0]
push.s "chapter_select"@14571
conv.s.v
call.i texturegroup_get_textures(argc=1)
pop.v.v local._tex_array
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushloc.v local._tex_array
call.i array_length(argc=1)
cmp.v.v LT
bf [3]

:[2]
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self._tex_array
call.i texture_prefetch(argc=1)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[3]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bt [5]

:[4]
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
pop.v.b global.is_console
pushi.e 0
pop.v.b global.chapter_debug_init
pushi.e -1
pop.v.i global.savedata_async_id
pushi.e 0
pop.v.b global.savedata_async_load
pushi.e 0
pop.v.b global.savedata_error
push.s ""@157
pop.v.s global.savedata_debuginfo
pushi.e 0
pop.v.b global.savedata_pause
push.s "1.10"@14577
pop.v.s global.version
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [8]

:[7]
push.s "1.06"@14578
pop.v.s global.version

:[8]
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
bf [10]

:[9]
push.s "1.06"@14578
pop.v.s global.version

:[10]
pushi.e 0
pop.v.b self.init_loaded
pushi.e 0
pop.v.b self.chapter_is_loading
pushi.e 1
pop.v.b self.reload_textures
push.s "DELTARUNE Chapter 1&2"@14582
conv.s.v
call.i window_set_caption(argc=1)
popz.v
pushi.e 1649
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[11]
pushi.e 1649
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]

:[14]
pushi.e 1134
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [18]

:[15]
pushi.e 1134
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]

:[18]
pushi.e 1669
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [22]

:[19]
pushi.e 1669
pushenv [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
popenv [20]

:[22]
push.s "chapter_return"@14038
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [27]

:[23]
push.s ""@157
pop.v.s global.lang_loaded
pushglb.v global.chapter
pushglb.v global.chapter_return
cmp.v.v NEQ
pop.v.b self.reload_textures
pushglb.v global.chapter_return
pop.v.v self.chaptertoload_temp
push.v self.chaptertoload_temp
pushi.e 0
cmp.i.v GTE
bf [27]

:[24]
pushi.e -1
pop.v.i global.chapter_return
call.i gml_Script_snd_free_all(argc=0)
popz.v
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
push.v self.reload_textures
conv.v.b
bf [26]

:[25]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm

:[26]
exit.i

:[27]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [29]

:[28]
push.s "switchlogin"@14584
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
b [30]

:[29]
push.e 0

:[30]
bf [35]

:[31]
pushi.e -1
pop.v.i local._id

:[32]
pushloc.v local._id
pushi.e 0
cmp.i.v LT
bf [34]

:[33]
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1
conv.b.v
call.i switch_accounts_select_account(argc=3)
pop.v.v local._id
b [32]

:[34]
pushloc.v local._id
pop.v.v global.switchlogin
pushglb.v global.switchlogin
call.i switch_accounts_open_user(argc=1)
popz.v

:[35]
pushglb.v global.is_console
pop.v.v self.first_time
call.i display_get_height(argc=0)
pop.v.v self.display_height
call.i display_get_width(argc=0)
pop.v.v self.display_width
pushi.e 1
pop.v.i self.window_size_multiplier
pushi.e 2
pop.v.i self._ww

:[36]
push.v self._ww
pushi.e 6
cmp.i.v LT
bf [43]

:[37]
push.v self.display_width
pushi.e 640
push.v self._ww
mul.v.i
cmp.v.v GT
bf [39]

:[38]
push.v self.display_height
pushi.e 480
push.v self._ww
mul.v.i
cmp.v.v GT
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
push.v self._ww
pop.v.v self.window_size_multiplier

:[42]
push.v self._ww
pushi.e 1
add.i.v
pop.v.v self._ww
b [36]

:[43]
push.v self.window_size_multiplier
pushi.e 1
cmp.i.v GT
bf [45]

:[44]
pushi.e 480
push.v self.window_size_multiplier
mul.v.i
pushi.e 640
push.v self.window_size_multiplier
mul.v.i
call.i window_set_size(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[45]
pushglb.v global.is_console
conv.v.b
bf [47]

:[46]
pushi.e 1
conv.b.v
call.i application_surface_enable(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i application_surface_draw_enable(argc=1)
popz.v

:[47]
pushi.e 0
pop.v.i global.debug
push.s "init"@9838
pop.v.s self.con
pushi.e 0
pop.v.b self.file_found
pushi.e 0
pop.v.i self.highestUncompletedChapter
pushi.e 0
pop.v.i self.highestCompletedChapter
push.s "0"@3491
pop.v.s self.stringset
push.s "Yes"@5613
pop.v.s self.yes
push.s "No"@2449
pop.v.s self.no
pushi.e 0
pop.v.i self.mpos
pushi.e 0
pop.v.i self.chapterselectinit
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.drawcolor
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.yy
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.xx
pushi.e 10
pop.v.i self.fademax
push.v self.fademax
pop.v.v self.fade
pushi.e 0
pop.v.i self.chaptertoload
pushi.e 0
pop.v.i self.chaptertoload_temp
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bt [49]

:[48]
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
b [50]

:[49]
push.e 1

:[50]
pop.v.b self.console
pushi.e 2
pop.v.i self.latestAvailableChapter
push.i 167894
setowner.e
push.s " - - "@14606
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.chapname
push.s "The Beginning"@14608
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.chapname
push.s "A Cyber's World"@14609
conv.s.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.chapname
push.s " - - "@14606
conv.s.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.chapname
push.s " - - "@14606
conv.s.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.chapname
push.s " - - "@14606
conv.s.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.chapname
push.s " - - "@14606
conv.s.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.chapname
push.s " - - "@14606
conv.s.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.chapname
pushi.e 3
pop.v.i self.text_font
pushi.e 0
pop.v.i self.roominit
pushi.e 1
pop.v.i self.scale
pushi.e 1
pop.v.i self.fadeout
pushi.e 1
pop.v.i self.xscale
pushi.e 1
pop.v.i self.yscale
pushi.e 0
pop.v.i self.spr_aftereffect
pushi.e 0
pop.v.i self.confirm_choice_index
pushi.e 0
pop.v.b self.move_noise
pushi.e 0
pop.v.b self.select_noise
pushi.e 0
pop.v.b self.old_savedata_check
pushi.e 0
pop.v.i local.i

:[51]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [53]

:[52]
push.i 232061
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_pressed
push.i 232063
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held
push.i 232064
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_released
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [51]

:[53]
pushglb.v global.is_console
conv.v.b
bf [59]

:[54]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [56]

:[55]
call.i switch_controller_support_set_defaults(argc=0)
popz.v
pushi.e 1
conv.b.v
call.i switch_controller_support_set_singleplayer_only(argc=1)
popz.v
pushi.e 7
conv.i.v
call.i switch_controller_set_supported_styles(argc=1)
popz.v

:[56]
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
bf [58]

:[57]
pushi.e 0
conv.b.v
call.i ps4_touchpad_mouse_enable(argc=1)
popz.v

:[58]
call.i gml_Script_ossafe_savedata_load(argc=0)
popz.v
b [end]

:[59]
call.i os_get_language(argc=0)
pop.v.v local._locale
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._locale
call.i gml_Script_substr(argc=3)
push.s "ja"@6181
cmp.s.v NEQ
bf [61]

:[60]
push.s "en"@9432
conv.s.v
b [62]

:[61]
push.s "ja"@6181
conv.s.v

:[62]
pop.v.v local._lang
pushloc.v local._lang
pop.v.v global.lang
push.s "true_config.ini"@12008
conv.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [64]

:[63]
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
pushi.e 0
conv.i.v
push.s "FULLSCREEN"@14621
conv.s.v
push.s "SCREEN"@14622
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.is_fullscreen
pushloc.v local.is_fullscreen
call.i window_set_fullscreen(argc=1)
popz.v
call.i gml_Script_ossafe_ini_close(argc=0)
popz.v

:[64]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [66]

:[65]
pushi.e 3
conv.i.v
b [67]

:[66]
pushi.e 10
conv.i.v

:[67]
pop.v.v self.text_font
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [69]

:[68]
push.s "Yes"@5613
conv.s.v
b [70]

:[69]
push.s "はい"@14625
conv.s.v

:[70]
pop.v.v self.yes
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [72]

:[71]
push.s "No"@2449
conv.s.v
b [73]

:[72]
push.s "いいえ"@14626
conv.s.v

:[73]
pop.v.v self.no
push.i 167894
setowner.e
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [75]

:[74]
push.s "The Beginning"@14608
conv.s.v
b [76]

:[75]
push.s "はじまり"@14627
conv.s.v

:[76]
pushi.e -1
pushi.e 1
pop.v.v [array]self.chapname
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [78]

:[77]
push.s "A Cyber's World"@14609
conv.s.v
b [79]

:[78]
push.s "サイバーワールド"@14628
conv.s.v

:[79]
pushi.e -1
pushi.e 2
pop.v.v [array]self.chapname
call.i gml_Script_scr_controls_default(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i audio_group_load(argc=1)
popz.v
pushi.e 1
pop.v.b self.init_loaded

:[end]