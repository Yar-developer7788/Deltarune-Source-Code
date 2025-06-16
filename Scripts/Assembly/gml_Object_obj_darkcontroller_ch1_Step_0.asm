.localvar 2 arguments
.localvar 20427 lastfade 20846
.localvar 107 i 20847
.localvar 20448 _border 20848

:[0]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
pushglb.v global.interact
pushi.e 5
cmp.i.v EQ
bf [814]

:[1]
pushi.e 1
pop.v.i self.charcon
pushglb.v global.submenu
pushi.e 5
cmp.i.v EQ
bt [3]

:[2]
pushglb.v global.submenu
pushi.e 22
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [36]

:[5]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
pop.v.v global.charselect
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.faceaction
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.faceaction
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.faceaction
pushi.e 7
conv.i.v
pushi.e -5
pushglb.v global.charselect
conv.v.i
pop.v.v [array]self.faceaction
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bf [9]

:[6]
pushi.e 1
pop.v.i self.movenoise
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
push.i 231827
setowner.e
pushi.e -5
pushglb.v global.submenu
conv.v.i
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord
b [9]

:[8]
push.i 231827
setowner.e
push.v self.chartotal
pushi.e 1
sub.i.v
pushi.e -5
pushglb.v global.submenu
conv.v.i
pop.v.v [array]self.submenucoord

:[9]
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
bf [13]

:[10]
pushi.e 1
pop.v.i self.movenoise
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
push.v self.chartotal
pushi.e 1
sub.i.v
cmp.v.v LT
bf [12]

:[11]
pushi.e -5
pushglb.v global.submenu
conv.v.i
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
b [13]

:[12]
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.submenu
conv.v.i
pop.v.v [array]self.submenucoord

:[13]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [15]

:[14]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [16]

:[15]
push.e 0

:[16]
bf [23]

:[17]
pushi.e 2
pop.v.i self.onebuffer
pushglb.v global.submenu
pushi.e 5
cmp.i.v EQ
bf [21]

:[18]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_itemuse_ch1(argc=1)
popz.v
push.v self.usable
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
call.i gml_Script_scr_itemshift_ch1(argc=2)
popz.v

:[20]
call.i gml_Script_scr_itemdesc_ch1(argc=0)
popz.v
pushi.e 2
pop.v.i global.submenu
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.charselect
conv.v.i
pop.v.v [array]self.faceaction
pushi.e -1
pop.v.i global.charselect

:[21]
pushglb.v global.submenu
pushi.e 22
cmp.i.v EQ
bf [23]

:[22]
pushi.e -5
pushi.e -5
pushi.e -5
pushi.e 20
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.spell
pushi.e -5
pushi.e 21
push.v [array]self.submenucoord
conv.v.i
pushaf.e
call.i gml_Script_scr_spell_overworld_ch1(argc=1)
popz.v
push.v global.tension
pushi.e -5
pushi.e -5
pushi.e -5
pushi.e 20
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.spellcost
pushi.e -5
pushi.e 21
push.v [array]self.submenucoord
conv.v.i
pushaf.e
sub.v.v
pop.v.v global.tension

:[23]
pushi.e 0
pop.v.i self.close
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [25]

:[24]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 1
pop.v.i self.close

:[28]
pushglb.v global.submenu
pushi.e 22
cmp.i.v EQ
bf [31]

:[29]
pushi.e -5
pushi.e -5
pushi.e -5
pushi.e 20
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.spellcost
pushi.e -5
pushi.e 21
push.v [array]self.submenucoord
conv.v.i
pushaf.e
pushglb.v global.tension
cmp.v.v GT
bf [31]

:[30]
pushi.e 1
pop.v.i self.close

:[31]
push.v self.close
pushi.e 1
cmp.i.v EQ
bf [36]

:[32]
pushi.e 1
pop.v.i self.cancelnoise
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.charselect
conv.v.i
pop.v.v [array]self.faceaction
pushi.e -1
pop.v.i global.charselect
pushi.e 2
pop.v.i self.twobuffer
pushglb.v global.submenu
pushi.e 5
cmp.i.v EQ
bf [34]

:[33]
pushi.e 2
pop.v.i global.submenu

:[34]
pushglb.v global.submenu
pushi.e 22
cmp.i.v EQ
bf [36]

:[35]
pushi.e 21
pop.v.i global.submenu

:[36]
pushglb.v global.submenu
pushi.e 6
cmp.i.v EQ
bt [39]

:[37]
pushglb.v global.submenu
pushi.e 7
cmp.i.v EQ
bt [39]

:[38]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
b [40]

:[39]
push.e 1

:[40]
bf [81]

:[41]
pushi.e 3
pop.v.i global.charselect
pushi.e 7
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.faceaction
pushi.e 7
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.faceaction
pushi.e 7
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.faceaction
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [44]

:[42]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [44]

:[43]
pushglb.v global.submenu
pushi.e 6
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [49]

:[46]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.faceaction
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.faceaction
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.faceaction
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_itemuse_ch1(argc=1)
popz.v
push.v self.usable
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
call.i gml_Script_scr_itemshift_ch1(argc=2)
popz.v

:[48]
call.i gml_Script_scr_itemdesc_ch1(argc=0)
popz.v
pushi.e -1
pop.v.i global.charselect
pushi.e 2
pop.v.i global.submenu

:[49]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [52]

:[50]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [52]

:[51]
pushglb.v global.submenu
pushi.e 7
cmp.i.v EQ
b [53]

:[52]
push.e 0

:[53]
bf [64]

:[54]
pushi.e 426
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 2
pop.v.i self.onebuffer
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.faceaction
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.faceaction
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.faceaction
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.item
pop.v.v self.throwitem
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
call.i gml_Script_scr_itemshift_ch1(argc=2)
popz.v
call.i gml_Script_scr_itemdesc_ch1(argc=0)
popz.v
pushi.e -1
pop.v.i global.charselect
pushi.e 3
pop.v.i global.submenu
push.v self.throwitem
pushi.e 4
cmp.i.v EQ
bf [64]

:[55]
pushi.e -5
pushi.e 2
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bt [57]

:[56]
pushi.e -5
pushi.e 1
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
b [58]

:[57]
push.e 1

:[58]
bf [64]

:[59]
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_closemenu_ch1(argc=0)
popz.v
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 9
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_darkcontroller_slash_Step_0_gml_129_0"@40739
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 207
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
pushi.e 0
pop.v.i global.fc
pushi.e 6
pop.v.i global.typer
push.s "obj_darkcontroller_slash_Step_0_gml_135_0"@20394
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
push.s "obj_darkcontroller_slash_Step_0_gml_137_0"@40740
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_darkcontroller_slash_Step_0_gml_138_0"@40741
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_darkcontroller_slash_Step_0_gml_139_0"@40742
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 207
pop.v.v [array]self.flag

:[61]
pushi.e -5
pushi.e 207
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
pushi.e 0
pop.v.i global.fc
pushi.e 6
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_darkcontroller_slash_Step_0_gml_147_0"@40743
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_darkcontroller_slash_Step_0_gml_149_0"@40744
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_darkcontroller_slash_Step_0_gml_150_0"@40745
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_darkcontroller_slash_Step_0_gml_151_0"@40746
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_darkcontroller_slash_Step_0_gml_152_0"@40747
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Step_0_gml_154_0"@40748
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
call.i gml_Script_scr_itemget_ch1(argc=1)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 207
pop.v.v [array]self.flag

:[63]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dl
pushi.e 1
push.v self.dl
pushi.e -9
pop.v.i [stacktop]self.free

:[64]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [67]

:[65]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [67]

:[66]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.faceaction
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.faceaction
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.faceaction
pushi.e -1
pop.v.i global.charselect
pushi.e 6
pop.v.i global.interact
call.i gml_Script_scr_talkroom_ch1(argc=0)
popz.v
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i self.charcon

:[70]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [72]

:[71]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [73]

:[72]
push.e 0

:[73]
bf [81]

:[74]
pushi.e 1
pop.v.i self.cancelnoise
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.faceaction
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.faceaction
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.faceaction
pushglb.v global.submenu
pushi.e 6
cmp.i.v EQ
bf [76]

:[75]
pushi.e 2
pop.v.i global.submenu

:[76]
pushglb.v global.submenu
pushi.e 7
cmp.i.v EQ
bf [78]

:[77]
pushi.e 3
pop.v.i global.submenu

:[78]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [80]

:[79]
pushi.e 0
pop.v.i global.menuno

:[80]
pushi.e -1
pop.v.i global.charselect

:[81]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [364]

:[82]
pushglb.v global.submenu
pushi.e 30
cmp.i.v EQ
bf [134]

:[83]
pushi.e 0
pop.v.i self.sndbuffer
pushi.e 0
pop.v.i self.m_quit
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [86]

:[84]
pushi.e 1
pop.v.i self.movenoise
push.i 231827
setowner.e
pushi.e -5
pushi.e 30
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v LT
bf [86]

:[85]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 30
pop.v.v [array]self.submenucoord

:[86]
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [89]

:[87]
pushi.e 1
pop.v.i self.movenoise
pushi.e -5
pushi.e 30
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 6
cmp.i.v GT
bf [89]

:[88]
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 30
pop.v.v [array]self.submenucoord

:[89]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [91]

:[90]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [92]

:[91]
push.e 0

:[92]
bf [127]

:[93]
pushi.e 2
pop.v.i self.upbuffer
pushi.e 2
pop.v.i self.downbuffer
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
pushi.e 1
pop.v.i self.selectnoise
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v EQ
bf [95]

:[94]
pushi.e 33
pop.v.i global.submenu

:[95]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
pushi.e 35
pop.v.i global.submenu
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 35
pop.v.v [array]self.submenucoord
pushi.e 0
pop.v.i self.control_select_con
pushi.e 0
pop.v.i self.control_flash_timer

:[97]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
bf [101]

:[98]
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [100]

:[99]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.flag
b [101]

:[100]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.flag

:[101]
pushglb.v global.is_console
conv.v.b
bf [115]

:[102]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 3
cmp.i.v EQ
bf [106]

:[103]
pushi.e -5
pushi.e 11
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [105]

:[104]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.flag
b [106]

:[105]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.flag

:[106]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 4
cmp.i.v EQ
bf [110]

:[107]
pushglb.v global.disable_border
conv.v.b
bf [109]

:[108]
pushi.e 0
pop.v.i self.selectnoise
b [110]

:[109]
pushi.e 36
pop.v.i global.submenu
pushi.e 1
pop.v.i self.check_border
pushi.e 0
pop.v.i self.border_select

:[110]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 5
cmp.i.v EQ
bf [112]

:[111]
pushi.e 34
pop.v.i global.submenu

:[112]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 6
cmp.i.v EQ
bf [114]

:[113]
pushi.e 1
pop.v.i self.m_quit

:[114]
b [127]

:[115]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 3
cmp.i.v EQ
bf [119]

:[116]
pushi.e 1649
pushenv [118]

:[117]
pushi.e 1
pop.v.i self.fullscreen_toggle

:[118]
popenv [117]

:[119]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 4
cmp.i.v EQ
bf [123]

:[120]
pushi.e -5
pushi.e 11
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [122]

:[121]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.flag
b [123]

:[122]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.flag

:[123]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 5
cmp.i.v EQ
bf [125]

:[124]
pushi.e 34
pop.v.i global.submenu

:[125]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 6
cmp.i.v EQ
bf [127]

:[126]
pushi.e 1
pop.v.i self.m_quit

:[127]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [129]

:[128]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [130]

:[129]
push.e 0

:[130]
bf [132]

:[131]
pushi.e 1
pop.v.i self.m_quit
pushi.e 1
pop.v.i self.cancelnoise

:[132]
push.v self.m_quit
pushi.e 1
cmp.i.v EQ
bf [134]

:[133]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i global.menuno
pushi.e 0
pop.v.i global.submenu

:[134]
pushglb.v global.submenu
pushi.e 31
cmp.i.v EQ
bt [137]

:[135]
pushglb.v global.submenu
pushi.e 32
cmp.i.v EQ
bt [137]

:[136]
pushglb.v global.submenu
pushi.e 33
cmp.i.v EQ
b [138]

:[137]
push.e 1

:[138]
bf [185]

:[139]
pushi.e 0
pop.v.i self.se_select
push.v self.sndbuffer
pushi.e 1
sub.i.v
pop.v.v self.sndbuffer
pushi.e 0
pop.v.i self.muschange
pushi.e 0
pop.v.i self.sndchange
pushi.e 0
pop.v.i self.audchange
call.i gml_Script_right_h_ch1(argc=0)
conv.v.b
bf [150]

:[140]
pushglb.v global.submenu
pushi.e 31
cmp.i.v EQ
bf [143]

:[141]
pushi.e 1
pop.v.i self.sndchange
pushi.e -5
pushi.e 15
push.v [array]self.flag
pushi.e 1
cmp.i.v LT
bf [143]

:[142]
pushi.e -5
pushi.e 15
dup.i 1
push.v [array]self.flag
push.d 0.05
add.d.v
pop.i.v [array]self.flag

:[143]
pushglb.v global.submenu
pushi.e 32
cmp.i.v EQ
bf [146]

:[144]
pushi.e 1
pop.v.i self.muschange
pushi.e -5
pushi.e 16
push.v [array]self.flag
pushi.e 1
cmp.i.v LT
bf [146]

:[145]
pushi.e -5
pushi.e 16
dup.i 1
push.v [array]self.flag
push.d 0.05
add.d.v
pop.i.v [array]self.flag

:[146]
pushglb.v global.submenu
pushi.e 33
cmp.i.v EQ
bf [150]

:[147]
pushi.e -5
pushi.e 17
push.v [array]self.flag
pushi.e 1
cmp.i.v LT
bf [149]

:[148]
pushi.e -5
pushi.e 17
dup.i 1
push.v [array]self.flag
push.d 0.02
add.d.v
pop.i.v [array]self.flag

:[149]
pushi.e 1
pop.v.i self.audchange

:[150]
call.i gml_Script_left_h_ch1(argc=0)
conv.v.b
bf [160]

:[151]
pushglb.v global.submenu
pushi.e 31
cmp.i.v EQ
bf [154]

:[152]
pushi.e 1
pop.v.i self.sndchange
pushi.e -5
pushi.e 15
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [154]

:[153]
pushi.e -5
pushi.e 15
dup.i 1
push.v [array]self.flag
push.d 0.05
sub.d.v
pop.i.v [array]self.flag

:[154]
pushglb.v global.submenu
pushi.e 32
cmp.i.v EQ
bf [157]

:[155]
pushi.e 1
pop.v.i self.muschange
pushi.e -5
pushi.e 16
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [157]

:[156]
pushi.e -5
pushi.e 16
dup.i 1
push.v [array]self.flag
push.d 0.05
sub.d.v
pop.i.v [array]self.flag

:[157]
pushglb.v global.submenu
pushi.e 33
cmp.i.v EQ
bf [160]

:[158]
pushi.e 1
pop.v.i self.audchange
pushi.e -5
pushi.e 17
push.v [array]self.flag
push.d 0.02
cmp.d.v GTE
bf [160]

:[159]
pushi.e -5
pushi.e 17
dup.i 1
push.v [array]self.flag
push.d 0.02
sub.d.v
pop.i.v [array]self.flag

:[160]
push.v self.sndchange
pushi.e 1
cmp.i.v EQ
bf [162]

:[161]
push.v self.sndbuffer
pushi.e 0
cmp.i.v LT
b [163]

:[162]
push.e 0

:[163]
bf [165]

:[164]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 15
push.v [array]self.flag
pushi.e 1
conv.i.v
call.i audio_group_set_gain(argc=3)
popz.v
pushi.e 382
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 2
pop.v.i self.sndbuffer

:[165]
push.v self.muschange
pushi.e 1
cmp.i.v EQ
bf [168]

:[166]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing_ch1(argc=1)
conv.v.b
bf [168]

:[167]
pushi.e 0
conv.i.v
push.v self.getmusvol
pushi.e -5
pushi.e 16
push.v [array]self.flag
mul.v.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume_ch1(argc=3)
popz.v

:[168]
push.v self.audchange
pushi.e 1
cmp.i.v EQ
bf [170]

:[169]
push.v self.sndbuffer
pushi.e 0
cmp.i.v LT
b [171]

:[170]
push.e 0

:[171]
bf [173]

:[172]
pushi.e 382
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 2
pop.v.i self.sndbuffer
pushi.e -5
pushi.e 17
push.v [array]self.flag
pushi.e 0
conv.i.v
call.i audio_set_master_gain(argc=2)
popz.v

:[173]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [175]

:[174]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [176]

:[175]
push.e 0

:[176]
bf [178]

:[177]
pushi.e 1
pop.v.i self.se_select

:[178]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [180]

:[179]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [181]

:[180]
push.e 0

:[181]
bf [183]

:[182]
pushi.e 1
pop.v.i self.se_select

:[183]
push.v self.se_select
pushi.e 1
cmp.i.v EQ
bf [185]

:[184]
pushi.e 1
pop.v.i self.selectnoise
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
pushi.e 30
pop.v.i global.submenu

:[185]
pushglb.v global.submenu
pushi.e 34
cmp.i.v EQ
bf [190]

:[186]
push.i 231827
setowner.e
pushi.e -5
pushi.e 34
dup.i 1
push.v [array]self.submenucoord
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.submenucoord
popz.v
pushi.e -5
pushi.e 34
push.v [array]self.submenucoord
pushi.e 1
cmp.i.v EQ
bf [188]

:[187]
pushi.e 1
pop.v.i global.chapter_return
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 1464
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v local.lastfade
push.d 0.05
pushloc.v local.lastfade
pushi.e -9
pop.v.d [stacktop]self.fadespeed
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 20
sub.i.v
pushloc.v local.lastfade
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 20
sub.i.v
pushloc.v local.lastfade
pushi.e -9
pop.v.v [stacktop]self.y
pushloc.v local.lastfade
pushi.e -9
dup.i 4
push.v [stacktop]self.image_xscale
pushi.e 3
mul.i.v
pop.i.v [stacktop]self.image_xscale
pushloc.v local.lastfade
pushi.e -9
dup.i 4
push.v [stacktop]self.image_yscale
pushi.e 2
mul.i.v
pop.i.v [stacktop]self.image_yscale
push.i -900000
pushloc.v local.lastfade
pushi.e -9
pop.v.i [stacktop]self.depth

:[188]
pushi.e -5
pushi.e 34
push.v [array]self.submenucoord
pushi.e 50
cmp.i.v GTE
bf [190]

:[189]
call.i gml_Script_game_restart_true_ch1(argc=0)
popz.v

:[190]
pushglb.v global.submenu
pushi.e 35
cmp.i.v EQ
bf [334]

:[191]
pushi.e 0
pop.v.i self.control_select_timer
push.v self.control_flash_timer
pushi.e 1
sub.i.v
pop.v.v self.control_flash_timer
pushi.e 0
pop.v.i self.controls_quitmenu
pushglb.v global.is_console
conv.v.b
not.b
bf [193]

:[192]
push.v 1112.gamepad_active
pop.v.v self.gamepad_exists
pushi.e 0
pop.v.i self.gamepad_id

:[193]
push.v self.control_select_con
pushi.e 1
cmp.i.v EQ
bf [256]

:[194]
pushi.e -1
pop.v.i self.gamepad_accept
pushi.e -1
pop.v.i self.new_gamepad_key
pushi.e -1
pop.v.i self.key_accept
pushi.e -1
pop.v.i self.new_key
pushglb.v global.is_console
conv.v.b
not.b
bf [247]

:[195]
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [247]

:[196]
pushi.e 48
pop.v.i local.i

:[197]
pushloc.v local.i
pushi.e 90
cmp.i.v LTE
bf [201]

:[198]
pushloc.v local.i
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [200]

:[199]
pushloc.v local.i
pop.v.v self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[200]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [197]

:[201]
pushi.e 59
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [203]

:[202]
pushi.e 59
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[203]
pushi.e 44
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [205]

:[204]
pushi.e 44
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[205]
pushi.e 46
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [207]

:[206]
pushi.e 46
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[207]
pushi.e 47
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [209]

:[208]
pushi.e 47
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[209]
pushi.e 92
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [211]

:[210]
pushi.e 92
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[211]
pushi.e 93
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [213]

:[212]
pushi.e 93
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[213]
pushi.e 91
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [215]

:[214]
pushi.e 91
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[215]
pushi.e 96
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [217]

:[216]
pushi.e 96
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[217]
pushi.e 45
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [219]

:[218]
pushi.e 45
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[219]
pushi.e 61
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [221]

:[220]
pushi.e 61
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[221]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [223]

:[222]
pushi.e 37
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[223]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [225]

:[224]
pushi.e 39
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[225]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [227]

:[226]
pushi.e 38
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[227]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [229]

:[228]
pushi.e 40
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[229]
pushi.e 8
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [231]

:[230]
pushi.e 8
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[231]
pushi.e 18
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [233]

:[232]
pushi.e 18
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[233]
pushbltn.v builtin.os_type
pushi.e 0
cmp.i.v EQ
bf [239]

:[234]
pushbltn.v builtin.keyboard_key
call.i string(argc=1)
push.s "91"@20436
cmp.s.v EQ
bt [236]

:[235]
pushbltn.v builtin.keyboard_key
call.i string(argc=1)
push.s "92"@20437
cmp.s.v EQ
b [237]

:[236]
push.e 1

:[237]
bf [239]

:[238]
pushi.e -1
pop.v.i self.new_key
pushi.e 0
pop.v.i self.control_select_con

:[239]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [241]

:[240]
pushi.e -1
pop.v.i self.new_key
pushi.e 0
pop.v.i self.control_select_con

:[241]
pushi.e 16
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [243]

:[242]
pushi.e -1
pop.v.i self.new_key
pushi.e 0
pop.v.i self.control_select_con

:[243]
pushi.e 17
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [245]

:[244]
pushi.e -1
pop.v.i self.new_key
pushi.e 0
pop.v.i self.control_select_con

:[245]
pushi.e 27
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [247]

:[246]
pushi.e -1
pop.v.i self.new_key
pushi.e 0
pop.v.i self.control_select_con

:[247]
push.v 1112.gamepad_active
conv.v.b
bf [249]

:[248]
push.v self.control_select_con
pushi.e 1
cmp.i.v EQ
b [250]

:[249]
push.e 0

:[250]
bf [256]

:[251]
pushi.e 0
pop.v.i local.i

:[252]
pushloc.v local.i
push.v self.gamepad_controls
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [256]

:[253]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.gamepad_controls
push.v 1112.gamepad_id
call.i gamepad_button_check_pressed(argc=2)
conv.v.b
bf [255]

:[254]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.gamepad_controls
pop.v.v self.new_gamepad_key
pushi.e 2
pop.v.i self.control_select_con

:[255]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [252]

:[256]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [259]

:[257]
push.v self.control_select_con
pushi.e 0
cmp.i.v EQ
bf [259]

:[258]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [260]

:[259]
push.e 0

:[260]
bf [267]

:[261]
pushi.e 2
pop.v.i self.onebuffer
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
pushi.e 7
cmp.i.v LT
bf [263]

:[262]
pushi.e 1
pop.v.i self.control_select_con
pushi.e -1
pop.v.i builtin.keyboard_lastkey
pushi.e 1
pop.v.i self.selectnoise

:[263]
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
pushi.e 7
cmp.i.v EQ
bf [265]

:[264]
pushi.e 444
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
call.i gml_Script_scr_controls_default_ch1(argc=0)
popz.v
pushi.e 10
pop.v.i self.control_flash_timer

:[265]
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
pushi.e 8
cmp.i.v EQ
bf [267]

:[266]
pushi.e 1
pop.v.i self.controls_quitmenu

:[267]
push.v self.control_select_con
pushi.e 0
cmp.i.v EQ
bf [289]

:[268]
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [271]

:[269]
push.v self.controls_quitmenu
pushi.e 0
cmp.i.v EQ
bf [271]

:[270]
push.v self.downbuffer
pushi.e 0
cmp.i.v LT
b [272]

:[271]
push.e 0

:[272]
bf [275]

:[273]
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
pushi.e 8
cmp.i.v LT
bf [275]

:[274]
pushi.e -5
pushi.e 35
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[275]
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [278]

:[276]
push.v self.controls_quitmenu
pushi.e 0
cmp.i.v EQ
bf [278]

:[277]
push.v self.upbuffer
pushi.e 0
cmp.i.v LT
b [279]

:[278]
push.e 0

:[279]
bf [282]

:[280]
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v GT
bf [282]

:[281]
pushi.e -5
pushi.e 35
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[282]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [285]

:[283]
push.v self.controls_quitmenu
pushi.e 0
cmp.i.v EQ
bf [285]

:[284]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [286]

:[285]
push.e 0

:[286]
bf [289]

:[287]
pushi.e 1
pop.v.i self.cancelnoise
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
pushi.e 8
cmp.i.v EQ
bf [289]

:[288]
pushi.e 1
pop.v.i self.controls_quitmenu

:[289]
push.v self.control_select_con
pushi.e 2
cmp.i.v EQ
bf [326]

:[290]
push.v self.new_key
pushi.e -1
cmp.i.v NEQ
bf [314]

:[291]
pushi.e -1
pop.v.i self.dupe
pushi.e 0
pop.v.i local.i

:[292]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [296]

:[293]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
push.v self.new_key
cmp.v.v EQ
bf [295]

:[294]
pushloc.v local.i
pop.v.v self.dupe

:[295]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [292]

:[296]
push.v self.dupe
pushi.e 0
cmp.i.v GTE
bf [298]

:[297]
push.i 232076
setowner.e
pushi.e -5
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.input_k
pushi.e -5
push.v self.dupe
conv.v.i
pop.v.v [array]self.input_k

:[298]
push.v self.new_key
pushi.e -5
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
conv.v.i
pop.v.v [array]self.input_k
pushi.e -1
pop.v.i self.entercancel
pushi.e -1
pop.v.i self.shiftcancel
pushi.e -1
pop.v.i self.ctrlcancel
pushi.e 0
pop.v.i local.i

:[299]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [307]

:[300]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
pushi.e 13
cmp.i.v EQ
bf [302]

:[301]
pushi.e -1
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.input_k
pushi.e 1
pop.v.i self.entercancel

:[302]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
pushi.e 16
cmp.i.v EQ
bf [304]

:[303]
pushi.e -1
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.input_k
pushi.e 1
pop.v.i self.shiftcancel

:[304]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
pushi.e 17
cmp.i.v EQ
bf [306]

:[305]
pushi.e -1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.input_k
pushi.e 1
pop.v.i self.ctrlcancel

:[306]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [299]

:[307]
push.v self.entercancel
pushi.e -1
cmp.i.v EQ
bf [309]

:[308]
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.input_k

:[309]
push.v self.shiftcancel
pushi.e -1
cmp.i.v EQ
bf [311]

:[310]
pushi.e 16
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.input_k

:[311]
push.v self.ctrlcancel
pushi.e -1
cmp.i.v EQ
bf [313]

:[312]
pushi.e 17
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.input_k

:[313]
b [325]

:[314]
pushi.e -1
pop.v.i self.dupe
push.v self.new_gamepad_key
push.i 32775
cmp.i.v EQ
bf [316]

:[315]
pushi.e 1
pop.v.i 1112.gamepad_shoulderlb_reassign

:[316]
pushi.e 0
pop.v.i local.i

:[317]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [321]

:[318]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_g
push.v self.new_gamepad_key
cmp.v.v EQ
bf [320]

:[319]
pushloc.v local.i
pop.v.v self.dupe

:[320]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [317]

:[321]
push.v self.dupe
pushi.e 0
cmp.i.v GTE
bf [323]

:[322]
push.i 231095
setowner.e
pushi.e -5
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.input_g
pushi.e -5
push.v self.dupe
conv.v.i
pop.v.v [array]self.input_g

:[323]
push.v self.new_gamepad_key
pushi.e -5
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
conv.v.i
pop.v.v [array]self.input_g
pushglb.v global.is_console
conv.v.b
bf [325]

:[324]
pushi.e -5
pushi.e 4
push.v [array]self.input_g
pop.v.v global.button0
pushi.e -5
pushi.e 5
push.v [array]self.input_g
pop.v.v global.button1
pushi.e -5
pushi.e 6
push.v [array]self.input_g
pop.v.v global.button2

:[325]
pushi.e 2
pop.v.i self.upbuffer
pushi.e 2
pop.v.i self.downbuffer
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
pushi.e 1
pop.v.i self.selectnoise
pushi.e 0
pop.v.i self.control_select_con

:[326]
push.v self.controls_quitmenu
pushi.e 1
cmp.i.v EQ
bf [334]

:[327]
pushi.e 1
pop.v.i self.selectnoise
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
push.s "keyconfig_"@20443
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i gml_Script_ossafe_ini_open_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[328]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [330]

:[329]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
pushloc.v local.i
call.i string(argc=1)
push.s "KEYBOARD_CONTROLS"@20445
conv.s.v
call.i ini_write_real(argc=3)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [328]

:[330]
pushi.e 0
pop.v.i local.i

:[331]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [333]

:[332]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_g
pushloc.v local.i
call.i string(argc=1)
push.s "GAMEPAD_CONTROLS"@20446
conv.s.v
call.i ini_write_real(argc=3)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [331]

:[333]
push.v 1112.gamepad_shoulderlb_reassign
push.s "SHOULDERLB_REASSIGN"@20447
conv.s.v
push.s "SHOULDERLB_REASSIGN"@20447
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i gml_Script_ossafe_ini_close_ch1(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save_ch1(argc=0)
popz.v
pushi.e 0
pop.v.i self.controls_quitmenu
pushi.e 0
pop.v.i self.control_select_con
push.i 231827
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 35
pop.v.v [array]self.submenucoord
pushi.e 30
pop.v.i global.submenu

:[334]
pushglb.v global.is_console
conv.v.b
bf [336]

:[335]
pushglb.v global.submenu
pushi.e 36
cmp.i.v EQ
b [337]

:[336]
push.e 0

:[337]
bf [364]

:[338]
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
bf [341]

:[339]
push.v self.selected_border
push.v self.border_options
call.i array_length_1d(argc=1)
pushi.e 1
sub.i.v
cmp.v.v LT
bf [341]

:[340]
push.v self.selected_border
push.e 1
add.i.v
pop.v.v self.selected_border
pushi.e 1
pop.v.i self.check_border

:[341]
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bf [344]

:[342]
push.v self.selected_border
pushi.e 0
cmp.i.v GT
bf [344]

:[343]
push.v self.selected_border
push.e 1
sub.i.v
pop.v.v self.selected_border
pushi.e 1
pop.v.i self.check_border

:[344]
push.v self.check_border
pushi.e 1
cmp.i.v EQ
bf [352]

:[345]
pushi.e -1
push.v self.selected_border
conv.v.i
push.v [array]self.border_options
pop.v.v local._border
pushloc.v local._border
push.s "None"@7824
cmp.s.v EQ
bt [347]

:[346]
pushloc.v local._border
push.s "なし"@29345
cmp.s.v EQ
b [348]

:[347]
push.e 1

:[348]
bf [350]

:[349]
pushi.e 0
conv.b.v
call.i gml_Script_scr_enable_screen_border_ch1(argc=1)
popz.v
b [351]

:[350]
pushi.e 1
conv.b.v
call.i gml_Script_scr_enable_screen_border_ch1(argc=1)
popz.v

:[351]
pushi.e -1
push.v self.selected_border
conv.v.i
push.v [array]self.border_options
pop.v.v global.screen_border_id
pushi.e 0
pop.v.i self.check_border

:[352]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [354]

:[353]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [355]

:[354]
push.e 0

:[355]
bf [357]

:[356]
pushi.e 1
pop.v.i self.border_select

:[357]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [359]

:[358]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [360]

:[359]
push.e 0

:[360]
bf [362]

:[361]
pushi.e 1
pop.v.i self.border_select

:[362]
push.v self.border_select
pushi.e 1
cmp.i.v EQ
bf [364]

:[363]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
push.s "keyconfig_"@20443
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i gml_Script_ossafe_ini_open_ch1(argc=1)
popz.v
pushglb.v global.screen_border_id
push.s "TYPE"@20449
conv.s.v
push.s "BORDER"@20450
conv.s.v
call.i ini_write_string(argc=3)
popz.v
call.i gml_Script_ossafe_ini_close_ch1(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save_ch1(argc=0)
popz.v
pushi.e 0
pop.v.i self.control_select_con
pushi.e 30
pop.v.i global.submenu

:[364]
pushglb.v global.menuno
pushi.e 4
cmp.i.v EQ
bf [410]

:[365]
pushglb.v global.submenu
pushi.e 21
cmp.i.v EQ
bf [389]

:[366]
pushi.e -5
pushi.e -5
pushi.e 20
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.char
pop.v.v self.charcoord
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [369]

:[367]
pushi.e -5
pushi.e 21
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v GT
bf [369]

:[368]
pushi.e -5
pushi.e 21
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[369]
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [373]

:[370]
pushi.e -5
pushi.e 21
push.v [array]self.submenucoord
pushi.e 5
cmp.i.v LT
bf [373]

:[371]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spell
pushi.e -5
pushi.e 21
push.v [array]self.submenucoord
pushi.e 1
add.i.v
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v NEQ
bf [373]

:[372]
pushi.e -5
pushi.e 21
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[373]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [375]

:[374]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [376]

:[375]
push.e 0

:[376]
bf [384]

:[377]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spellusable
pushi.e -5
pushi.e 21
push.v [array]self.submenucoord
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [379]

:[378]
pushglb.v global.tension
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spellcost
pushi.e -5
pushi.e 21
push.v [array]self.submenucoord
conv.v.i
pushaf.e
cmp.v.v GTE
b [380]

:[379]
push.e 0

:[380]
bf [384]

:[381]
pushi.e -5
push.v self.charcoord
conv.v.i
push.v [arraypushaf]self.spelltarget
pushi.e -5
pushi.e 21
push.v [array]self.submenucoord
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [383]

:[382]
pushi.e 22
pop.v.i global.submenu
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer

:[383]
b [384]

:[384]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [386]

:[385]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [387]

:[386]
push.e 0

:[387]
bf [389]

:[388]
pushi.e 1
pop.v.i self.cancelnoise
pushi.e 0
pop.v.i self.deschaver
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 21
pop.v.v [array]self.submenucoord
pushi.e 20
pop.v.i global.submenu

:[389]
pushglb.v global.submenu
pushi.e 20
cmp.i.v EQ
bf [410]

:[390]
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bf [395]

:[391]
pushi.e 1
pop.v.i self.movenoise
pushi.e -5
pushi.e 20
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e -5
pushi.e 20
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v LT
bf [393]

:[392]
push.v self.chartotal
pushi.e 1
sub.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.submenucoord

:[393]
push.v self.chartotal
pushi.e 2
cmp.i.v GTE
bf [395]

:[394]
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i ceil(argc=1)
pop.v.v self.dograndom

:[395]
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
bf [400]

:[396]
pushi.e 1
pop.v.i self.movenoise
pushi.e -5
pushi.e 20
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e -5
pushi.e 20
push.v [array]self.submenucoord
push.v self.chartotal
pushi.e 1
sub.i.v
cmp.v.v GT
bf [398]

:[397]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.submenucoord

:[398]
push.v self.chartotal
pushi.e 2
cmp.i.v GTE
bf [400]

:[399]
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i ceil(argc=1)
pop.v.v self.dograndom

:[400]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [402]

:[401]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [403]

:[402]
push.e 0

:[403]
bf [405]

:[404]
pushi.e 1
pop.v.i self.selectnoise
pushi.e 1
pop.v.i self.deschaver
pushi.e 21
pop.v.i global.submenu
pushi.e 2
pop.v.i self.onebuffer

:[405]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [407]

:[406]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [408]

:[407]
push.e 0

:[408]
bf [410]

:[409]
pushi.e 1
pop.v.i self.cancelnoise
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i global.menuno
pushi.e 0
pop.v.i global.submenu
pushi.e -1
pop.v.i global.charselect

:[410]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [606]

:[411]
pushglb.v global.submenu
pushi.e 2
cmp.i.v EQ
bt [413]

:[412]
pushglb.v global.submenu
pushi.e 3
cmp.i.v EQ
b [414]

:[413]
push.e 1

:[414]
bf [481]

:[415]
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bt [417]

:[416]
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
b [418]

:[417]
push.e 1

:[418]
bf [438]

:[419]
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 0
cmp.i.v EQ
bt [425]

:[420]
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [425]

:[421]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [425]

:[422]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [425]

:[423]
push.v self.sm
pushi.e 8
cmp.i.v EQ
bt [425]

:[424]
push.v self.sm
pushi.e 10
cmp.i.v EQ
b [426]

:[425]
push.e 1

:[426]
bf [429]

:[427]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.item
pushi.e 0
cmp.i.v NEQ
bf [429]

:[428]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[429]
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [435]

:[430]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [435]

:[431]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [435]

:[432]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [435]

:[433]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [435]

:[434]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [436]

:[435]
push.e 1

:[436]
bf [438]

:[437]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[438]
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [459]

:[439]
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 0
cmp.i.v EQ
bt [444]

:[440]
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [444]

:[441]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [444]

:[442]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [444]

:[443]
push.v self.sm
pushi.e 8
cmp.i.v EQ
b [445]

:[444]
push.e 1

:[445]
bf [448]

:[446]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pushi.e 2
add.i.v
conv.v.i
push.v [array]self.item
pushi.e 0
cmp.i.v NEQ
bf [448]

:[447]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 2
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[448]
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [453]

:[449]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [453]

:[450]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [453]

:[451]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [453]

:[452]
push.v self.sm
pushi.e 9
cmp.i.v EQ
b [454]

:[453]
push.e 1

:[454]
bf [459]

:[455]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pushi.e 2
add.i.v
conv.v.i
push.v [array]self.item
pushi.e 0
cmp.i.v NEQ
bf [457]

:[456]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 2
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise
b [459]

:[457]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.item
pushi.e 0
cmp.i.v NEQ
bf [459]

:[458]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[459]
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [476]

:[460]
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [465]

:[461]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [465]

:[462]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [465]

:[463]
push.v self.sm
pushi.e 8
cmp.i.v EQ
bt [465]

:[464]
push.v self.sm
pushi.e 10
cmp.i.v EQ
b [466]

:[465]
push.e 1

:[466]
bf [468]

:[467]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 2
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[468]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [473]

:[469]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [473]

:[470]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [473]

:[471]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [473]

:[472]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [474]

:[473]
push.e 1

:[474]
bf [476]

:[475]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 2
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[476]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [478]

:[477]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [479]

:[478]
push.e 0

:[479]
bf [481]

:[480]
pushi.e 1
pop.v.i self.cancelnoise
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.deschaver
pushi.e 1
pop.v.i global.submenu

:[481]
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [555]

:[482]
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bt [484]

:[483]
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
b [485]

:[484]
push.e 1

:[485]
bf [505]

:[486]
pushi.e -5
pushi.e 4
push.v [array]self.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 0
cmp.i.v EQ
bt [492]

:[487]
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [492]

:[488]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [492]

:[489]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [492]

:[490]
push.v self.sm
pushi.e 8
cmp.i.v EQ
bt [492]

:[491]
push.v self.sm
pushi.e 10
cmp.i.v EQ
b [493]

:[492]
push.e 1

:[493]
bf [496]

:[494]
pushi.e -5
pushi.e -5
pushi.e 4
push.v [array]self.submenucoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.keyitem
pushi.e 0
cmp.i.v NEQ
bf [496]

:[495]
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[496]
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [502]

:[497]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [502]

:[498]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [502]

:[499]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [502]

:[500]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [502]

:[501]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [503]

:[502]
push.e 1

:[503]
bf [505]

:[504]
pushi.e 1
pop.v.i self.movenoise
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord

:[505]
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [526]

:[506]
pushi.e -5
pushi.e 4
push.v [array]self.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 0
cmp.i.v EQ
bt [511]

:[507]
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [511]

:[508]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [511]

:[509]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [511]

:[510]
push.v self.sm
pushi.e 8
cmp.i.v EQ
b [512]

:[511]
push.e 1

:[512]
bf [515]

:[513]
pushi.e -5
pushi.e -5
pushi.e 4
push.v [array]self.submenucoord
pushi.e 2
add.i.v
conv.v.i
push.v [array]self.keyitem
pushi.e 0
cmp.i.v NEQ
bf [515]

:[514]
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.submenucoord
pushi.e 2
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[515]
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [520]

:[516]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [520]

:[517]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [520]

:[518]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [520]

:[519]
push.v self.sm
pushi.e 9
cmp.i.v EQ
b [521]

:[520]
push.e 1

:[521]
bf [526]

:[522]
pushi.e -5
pushi.e -5
pushi.e 4
push.v [array]self.submenucoord
pushi.e 2
add.i.v
conv.v.i
push.v [array]self.keyitem
pushi.e 0
cmp.i.v NEQ
bf [524]

:[523]
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.submenucoord
pushi.e 2
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise
b [526]

:[524]
pushi.e -5
pushi.e -5
pushi.e 4
push.v [array]self.submenucoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.keyitem
pushi.e 0
cmp.i.v NEQ
bf [526]

:[525]
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[526]
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [543]

:[527]
pushi.e -5
pushi.e 4
push.v [array]self.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [532]

:[528]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [532]

:[529]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [532]

:[530]
push.v self.sm
pushi.e 8
cmp.i.v EQ
bt [532]

:[531]
push.v self.sm
pushi.e 10
cmp.i.v EQ
b [533]

:[532]
push.e 1

:[533]
bf [535]

:[534]
pushi.e 1
pop.v.i self.movenoise
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.submenucoord
pushi.e 2
sub.i.v
pop.i.v [array]self.submenucoord

:[535]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [540]

:[536]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [540]

:[537]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [540]

:[538]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [540]

:[539]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [541]

:[540]
push.e 1

:[541]
bf [543]

:[542]
pushi.e 1
pop.v.i self.movenoise
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.submenucoord
pushi.e 2
sub.i.v
pop.i.v [array]self.submenucoord

:[543]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [545]

:[544]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [546]

:[545]
push.e 0

:[546]
bf [550]

:[547]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 1
pop.v.i self.twobuffer
pushi.e -1
push.v self.sm
conv.v.i
push.v [array]self.keyitemusable
pushi.e 1
cmp.i.v EQ
bf [549]

:[548]
pushi.e 3
pop.v.i global.charselect
pushi.e -5
push.v self.sm
conv.v.i
push.v [array]self.keyitem
pushi.e 300
add.i.v
call.i gml_Script_scr_itemuse_ch1(argc=1)
popz.v
b [550]

:[549]
pushi.e 420
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[550]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [552]

:[551]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [553]

:[552]
push.e 0

:[553]
bf [555]

:[554]
pushi.e 1
pop.v.i self.cancelnoise
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.deschaver
pushi.e 1
pop.v.i global.submenu

:[555]
pushglb.v global.submenu
pushi.e 3
cmp.i.v EQ
bf [566]

:[556]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [558]

:[557]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [559]

:[558]
push.e 0

:[559]
bf [561]

:[560]
pushi.e 1
pop.v.i self.selectnoise
pushi.e 3
pop.v.i self.onebuffer
pushi.e 7
pop.v.i global.submenu

:[561]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.item
pushi.e 0
cmp.i.v EQ
bf [566]

:[562]
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v EQ
bf [564]

:[563]
pushi.e 1
pop.v.i global.submenu
pushi.e 0
pop.v.i self.deschaver
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[564]
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v GT
bf [566]

:[565]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord

:[566]
pushglb.v global.submenu
pushi.e 2
cmp.i.v EQ
bf [581]

:[567]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [570]

:[568]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [570]

:[569]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [571]

:[570]
push.e 0

:[571]
bf [576]

:[572]
pushi.e 3
pop.v.i self.onebuffer
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_iteminfo_ch1(argc=1)
popz.v
push.v self.itemtarget
pushi.e 1
cmp.i.v EQ
bf [574]

:[573]
pushi.e 1
pop.v.i self.selectnoise
pushi.e 5
pop.v.i global.submenu

:[574]
push.v self.itemtarget
pushi.e 2
cmp.i.v EQ
bf [576]

:[575]
pushi.e 6
pop.v.i global.submenu

:[576]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.item
pushi.e 0
cmp.i.v EQ
bf [581]

:[577]
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v EQ
bf [579]

:[578]
pushi.e 1
pop.v.i global.submenu
pushi.e 0
pop.v.i self.deschaver
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[579]
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v GT
bf [581]

:[580]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord

:[581]
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [606]

:[582]
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bf [586]

:[583]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v EQ
bf [585]

:[584]
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise
b [586]

:[585]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[586]
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
bf [590]

:[587]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
bf [589]

:[588]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise
b [590]

:[589]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[590]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [600]

:[591]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 2
add.i.v
pop.v.v global.submenu
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [593]

:[592]
pushi.e 1
pop.v.i self.deschaver
pushi.e 1
pop.v.i self.selectnoise

:[593]
pushglb.v global.submenu
pushi.e 2
cmp.i.v EQ
bt [595]

:[594]
pushglb.v global.submenu
pushi.e 3
cmp.i.v EQ
b [596]

:[595]
push.e 1

:[596]
bf [600]

:[597]
pushi.e 1
pop.v.i self.deschaver
call.i gml_Script_scr_itemdesc_ch1(argc=0)
popz.v
pushi.e -5
pushi.e 0
push.v [array]self.item
pushi.e 0
cmp.i.v EQ
bf [599]

:[598]
pushi.e 1
pop.v.i global.submenu
pushi.e 0
pop.v.i self.deschaver
b [600]

:[599]
pushi.e 1
pop.v.i self.selectnoise

:[600]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [603]

:[601]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [603]

:[602]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [604]

:[603]
push.e 0

:[604]
bf [606]

:[605]
pushi.e 1
pop.v.i self.cancelnoise
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i global.menuno
pushi.e 0
pop.v.i global.submenu

:[606]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [771]

:[607]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bt [610]

:[608]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [610]

:[609]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [611]

:[610]
push.e 1

:[611]
bf [735]

:[612]
pushi.e 0
pop.v.i self._up_pressed
call.i gml_Script_up_h_ch1(argc=0)
conv.v.b
bf [630]

:[613]
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [615]

:[614]
pushi.e 1
pop.v.i self._up_pressed

:[615]
push.v self.hold_up
pushi.e 1
add.i.v
pop.v.v self.hold_up
push.v self.hold_up
pushi.e 8
cmp.i.v GTE
bf [617]

:[616]
pushi.e 1
pop.v.i self._up_pressed
pushi.e 6
pop.v.i self.hold_up

:[617]
push.v self._up_pressed
pushi.e 1
cmp.i.v EQ
bf [629]

:[618]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v GT
bf [620]

:[619]
pushi.e -5
pushglb.v global.submenu
conv.v.i
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[620]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [623]

:[621]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
pushi.e -1
pushi.e 0
push.v [array]self.pagemax
cmp.v.v LT
bf [623]

:[622]
push.i 166589
setowner.e
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.pagemax
pushi.e 1
sub.i.v
pop.i.v [array]self.pagemax
pushi.e 1
pop.v.i self.movenoise

:[623]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [625]

:[624]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [626]

:[625]
push.e 1

:[626]
bf [629]

:[627]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
pushi.e -1
pushi.e 1
push.v [array]self.pagemax
cmp.v.v LT
bf [629]

:[628]
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.pagemax
pushi.e 1
sub.i.v
pop.i.v [array]self.pagemax
pushi.e 1
pop.v.i self.movenoise

:[629]
b [631]

:[630]
pushi.e 0
pop.v.i self.hold_up

:[631]
pushi.e 0
pop.v.i self._down_pressed
call.i gml_Script_down_h_ch1(argc=0)
conv.v.b
bf [663]

:[632]
call.i gml_Script_down_p_ch1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [634]

:[633]
pushi.e 1
pop.v.i self._down_pressed

:[634]
push.v self.hold_down
pushi.e 1
add.i.v
pop.v.v self.hold_down
push.v self.hold_down
pushi.e 8
cmp.i.v GTE
bf [636]

:[635]
pushi.e 1
pop.v.i self._down_pressed
pushi.e 6
pop.v.i self.hold_down

:[636]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
pushi.e 11
cmp.i.v LT
bf [638]

:[637]
push.v self._down_pressed
pushi.e 1
cmp.i.v EQ
b [639]

:[638]
push.e 0

:[639]
bf [662]

:[640]
pushi.e 1
pop.v.i self.movenoise
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [642]

:[641]
pushi.e -5
pushi.e -5
pushglb.v global.submenu
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.weapon
pop.v.v self.nextone

:[642]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [644]

:[643]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [645]

:[644]
push.e 1

:[645]
bf [647]

:[646]
pushi.e -5
pushi.e -5
pushglb.v global.submenu
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.armor
pop.v.v self.nextone

:[647]
push.i 231827
setowner.e
pushi.e -5
pushglb.v global.submenu
conv.v.i
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [653]

:[648]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
pushi.e -1
pushi.e 0
push.v [array]self.pagemax
pushi.e 5
add.i.v
cmp.v.v GT
bf [650]

:[649]
pushi.e -1
pushi.e 0
push.v [array]self.pagemax
pushi.e 6
cmp.i.v LT
b [651]

:[650]
push.e 0

:[651]
bf [653]

:[652]
push.i 166589
setowner.e
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.pagemax
pushi.e 1
add.i.v
pop.i.v [array]self.pagemax
pushi.e 1
pop.v.i self.movenoise

:[653]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [655]

:[654]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [656]

:[655]
push.e 1

:[656]
bf [662]

:[657]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
pushi.e -1
pushi.e 1
push.v [array]self.pagemax
pushi.e 5
add.i.v
cmp.v.v GT
bf [659]

:[658]
pushi.e -1
pushi.e 1
push.v [array]self.pagemax
pushi.e 6
cmp.i.v LT
b [660]

:[659]
push.e 0

:[660]
bf [662]

:[661]
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.pagemax
pushi.e 1
add.i.v
pop.i.v [array]self.pagemax
pushi.e 1
pop.v.i self.movenoise

:[662]
b [664]

:[663]
pushi.e 0
pop.v.i self.hold_down

:[664]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [666]

:[665]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [667]

:[666]
push.e 0

:[667]
bf [730]

:[668]
pushi.e 5
pop.v.i self.onebuffer
pushi.e 0
pop.v.i self.canequip
pushi.e -5
pushi.e -5
pushi.e 10
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.char
pop.v.v self.wwho
push.s " "@353
pop.v.s self.wmsg
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [688]

:[669]
pushi.e -5
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.weapon
call.i gml_Script_scr_weaponinfo_ch1(argc=1)
popz.v
push.v self.wwho
pushi.e 2
cmp.i.v EQ
bf [671]

:[670]
push.v self.wmessage2temp
pop.v.v self.wmsg

:[671]
push.v self.wwho
pushi.e 3
cmp.i.v EQ
bf [673]

:[672]
push.v self.wmessage3temp
pop.v.v self.wmsg

:[673]
push.v self.wwho
pushi.e 1
cmp.i.v EQ
bf [675]

:[674]
push.v self.weaponchar1temp
pushi.e 1
cmp.i.v EQ
b [676]

:[675]
push.e 0

:[676]
bf [678]

:[677]
pushi.e 1
pop.v.i self.canequip

:[678]
push.v self.wwho
pushi.e 2
cmp.i.v EQ
bf [680]

:[679]
push.v self.weaponchar2temp
pushi.e 1
cmp.i.v EQ
b [681]

:[680]
push.e 0

:[681]
bf [683]

:[682]
pushi.e 1
pop.v.i self.canequip

:[683]
push.v self.wwho
pushi.e 3
cmp.i.v EQ
bf [685]

:[684]
push.v self.weaponchar3temp
pushi.e 1
cmp.i.v EQ
b [686]

:[685]
push.e 0

:[686]
bf [688]

:[687]
pushi.e 1
pop.v.i self.canequip

:[688]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [690]

:[689]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [691]

:[690]
push.e 1

:[691]
bf [711]

:[692]
pushi.e -5
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.armor
call.i gml_Script_scr_armorinfo_ch1(argc=1)
popz.v
push.v self.wwho
pushi.e 2
cmp.i.v EQ
bf [694]

:[693]
push.v self.amessage2temp
pop.v.v self.wmsg

:[694]
push.v self.wwho
pushi.e 3
cmp.i.v EQ
bf [696]

:[695]
push.v self.amessage3temp
pop.v.v self.wmsg

:[696]
push.v self.wwho
pushi.e 1
cmp.i.v EQ
bf [698]

:[697]
push.v self.armorchar1temp
pushi.e 1
cmp.i.v EQ
b [699]

:[698]
push.e 0

:[699]
bf [701]

:[700]
pushi.e 1
pop.v.i self.canequip

:[701]
push.v self.wwho
pushi.e 2
cmp.i.v EQ
bf [703]

:[702]
push.v self.armorchar2temp
pushi.e 1
cmp.i.v EQ
b [704]

:[703]
push.e 0

:[704]
bf [706]

:[705]
pushi.e 1
pop.v.i self.canequip

:[706]
push.v self.wwho
pushi.e 3
cmp.i.v EQ
bf [708]

:[707]
push.v self.armorchar3temp
pushi.e 1
cmp.i.v EQ
b [709]

:[708]
push.e 0

:[709]
bf [711]

:[710]
pushi.e 1
pop.v.i self.canequip

:[711]
push.v self.canequip
pushi.e 1
cmp.i.v EQ
bf [728]

:[712]
pushi.e 0
pop.v.i self.hold_up
pushi.e 0
pop.v.i self.hold_down
pushi.e 419
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [714]

:[713]
pushi.e -5
push.v self.wwho
conv.v.i
push.v [array]self.charweapon
pop.v.v self.oldequip
pushi.e -5
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.weapon
pop.v.v self.newequip
push.i 231137
setowner.e
push.v self.newequip
pushi.e -5
push.v self.wwho
conv.v.i
pop.v.v [array]self.charweapon
push.i 231173
setowner.e
push.v self.oldequip
pushi.e -5
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
conv.v.i
pop.v.v [array]self.weapon
call.i gml_Script_scr_weaponinfo_mine_ch1(argc=0)
popz.v
call.i gml_Script_scr_weaponinfo_all_ch1(argc=0)
popz.v
pushi.e 2
pop.v.i self.twobuffer
pushi.e 11
pop.v.i global.submenu

:[714]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [716]

:[715]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [717]

:[716]
push.e 1

:[717]
bf [727]

:[718]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bf [720]

:[719]
pushi.e -5
push.v self.wwho
conv.v.i
push.v [array]self.chararmor1
pop.v.v self.oldequip

:[720]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
bf [722]

:[721]
pushi.e -5
push.v self.wwho
conv.v.i
push.v [array]self.chararmor2
pop.v.v self.oldequip

:[722]
pushi.e -5
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.armor
pop.v.v self.newequip
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bf [724]

:[723]
push.i 231138
setowner.e
push.v self.newequip
pushi.e -5
push.v self.wwho
conv.v.i
pop.v.v [array]self.chararmor1

:[724]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
bf [726]

:[725]
push.i 231139
setowner.e
push.v self.newequip
pushi.e -5
push.v self.wwho
conv.v.i
pop.v.v [array]self.chararmor2

:[726]
push.i 231174
setowner.e
push.v self.oldequip
pushi.e -5
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
conv.v.i
pop.v.v [array]self.armor
call.i gml_Script_scr_armorinfo_mine_ch1(argc=0)
popz.v
call.i gml_Script_scr_armorinfo_all_ch1(argc=0)
popz.v
pushi.e 2
pop.v.i self.twobuffer
call.i gml_Script_scr_dmenu_armor_selection_match_ch1(argc=0)
popz.v
pushi.e 11
pop.v.i global.submenu

:[727]
b [729]

:[728]
pushi.e 420
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[729]
push.v self.wmsg
pushi.e -5
pushi.e 10
push.v [array]self.submenucoord
call.i gml_Script_scr_itemcomment_ch1(argc=2)
popz.v

:[730]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [732]

:[731]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [733]

:[732]
push.e 0

:[733]
bf [735]

:[734]
pushi.e 1
pop.v.i self.cancelnoise
pushi.e 0
pop.v.i self.hold_up
pushi.e 0
pop.v.i self.hold_down
pushi.e 2
pop.v.i self.twobuffer
call.i gml_Script_scr_dmenu_armor_selection_match_ch1(argc=0)
popz.v
pushi.e 11
pop.v.i global.submenu

:[735]
pushglb.v global.submenu
pushi.e 11
cmp.i.v EQ
bf [754]

:[736]
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [740]

:[737]
push.i 231827
setowner.e
pushi.e -5
pushi.e 11
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e -1
cmp.i.v EQ
bf [739]

:[738]
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.submenucoord

:[739]
pushi.e 1
pop.v.i self.movenoise

:[740]
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [744]

:[741]
pushi.e -5
pushi.e 11
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
pushi.e 3
cmp.i.v EQ
bf [743]

:[742]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.submenucoord

:[743]
pushi.e 1
pop.v.i self.movenoise

:[744]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [746]

:[745]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [747]

:[746]
push.e 0

:[747]
bf [749]

:[748]
pushi.e 1
pop.v.i self.selectnoise
pushi.e 2
pop.v.i self.onebuffer
pushi.e 12
pushi.e -5
pushi.e 11
push.v [array]self.submenucoord
add.v.i
pop.v.v global.submenu
call.i gml_Script_scr_dmenu_armor_selection_match_ch1(argc=0)
popz.v

:[749]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [751]

:[750]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [752]

:[751]
push.e 0

:[752]
bf [754]

:[753]
pushi.e 1
pop.v.i self.cancelnoise
pushi.e 0
pop.v.i self.deschaver
pushi.e 2
pop.v.i self.twobuffer
pushi.e 10
pop.v.i global.submenu

:[754]
pushglb.v global.submenu
pushi.e 10
cmp.i.v EQ
bf [771]

:[755]
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bf [758]

:[756]
pushi.e 1
pop.v.i self.movenoise
pushi.e -5
pushi.e 10
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e -5
pushi.e 10
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v LT
bf [758]

:[757]
push.v self.chartotal
pushi.e 1
sub.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.submenucoord

:[758]
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
bf [761]

:[759]
pushi.e 1
pop.v.i self.movenoise
pushi.e -5
pushi.e 10
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e -5
pushi.e 10
push.v [array]self.submenucoord
push.v self.chartotal
pushi.e 1
sub.i.v
cmp.v.v GT
bf [761]

:[760]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.submenucoord

:[761]
pushi.e -5
pushi.e 10
push.v [array]self.submenucoord
pop.v.v global.charselect
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [763]

:[762]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [764]

:[763]
push.e 0

:[764]
bf [766]

:[765]
pushi.e 1
pop.v.i self.selectnoise
pushi.e 1
pop.v.i self.deschaver
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.submenucoord
pushi.e 11
pop.v.i global.submenu
pushi.e 2
pop.v.i self.onebuffer

:[766]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [768]

:[767]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [769]

:[768]
push.e 0

:[769]
bf [771]

:[770]
pushi.e 1
pop.v.i self.cancelnoise
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i global.menuno
pushi.e 0
pop.v.i global.submenu
pushi.e -1
pop.v.i global.charselect

:[771]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [814]

:[772]
pushi.e 0
pop.v.i global.submenu
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bf [778]

:[773]
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
pushi.e 0
cmp.i.v EQ
bf [775]

:[774]
push.i 231307
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.menucoord
pushi.e 1
pop.v.i self.movenoise
b [778]

:[775]
push.i 231307
setowner.e
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.menucoord
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
pushi.e 2
cmp.i.v EQ
bf [777]

:[776]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.menucoord

:[777]
pushi.e 1
pop.v.i self.movenoise

:[778]
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
bf [784]

:[779]
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
pushi.e 4
cmp.i.v EQ
bf [781]

:[780]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.menucoord
pushi.e 1
pop.v.i self.movenoise
b [784]

:[781]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.menucoord
pushi.e 1
add.i.v
pop.i.v [array]self.menucoord
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
pushi.e 2
cmp.i.v EQ
bf [783]

:[782]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.menucoord
pushi.e 1
add.i.v
pop.i.v [array]self.menucoord

:[783]
pushi.e 1
pop.v.i self.movenoise

:[784]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [787]

:[785]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [787]

:[786]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [788]

:[787]
push.e 0

:[788]
bf [799]

:[789]
pushi.e 1
pop.v.i self.selectnoise
pushi.e 2
pop.v.i self.onebuffer
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
pushi.e 1
add.i.v
pop.v.v global.menuno
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [791]

:[790]
pushi.e 1
pop.v.i global.submenu
push.i 231827
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.submenucoord
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.submenucoord
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.submenucoord
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.submenucoord

:[791]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [793]

:[792]
call.i gml_Script_scr_weaponinfo_all_ch1(argc=0)
popz.v
call.i gml_Script_scr_armorinfo_all_ch1(argc=0)
popz.v
call.i gml_Script_scr_weaponinfo_mine_ch1(argc=0)
popz.v
call.i gml_Script_scr_armorinfo_mine_ch1(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.submenucoord
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.submenucoord
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 12
pop.v.v [array]self.submenucoord
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 13
pop.v.v [array]self.submenucoord
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 14
pop.v.v [array]self.submenucoord
push.i 166589
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.pagemax
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.pagemax
pushi.e 10
pop.v.i global.submenu
pushi.e -5
pushi.e 10
push.v [array]self.submenucoord
pop.v.v global.charselect

:[793]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [795]

:[794]
pushi.e 0
pop.v.i global.menuno

:[795]
pushglb.v global.menuno
pushi.e 4
cmp.i.v EQ
bf [797]

:[796]
pushi.e 20
pop.v.i global.submenu
call.i gml_Script_scr_spellinfo_all_ch1(argc=0)
popz.v

:[797]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [799]

:[798]
pushi.e 30
pop.v.i global.submenu
push.i 231827
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 30
pop.v.v [array]self.submenucoord

:[799]
pushi.e 0
pop.v.i self.close
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [801]

:[800]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [802]

:[801]
push.e 0

:[802]
bf [804]

:[803]
pushi.e 1
pop.v.i self.close

:[804]
call.i gml_Script_button3_p_ch1(argc=0)
conv.v.b
bf [806]

:[805]
push.v self.threebuffer
pushi.e 0
cmp.i.v LT
b [807]

:[806]
push.e 0

:[807]
bf [809]

:[808]
pushi.e 1
pop.v.i self.close

:[809]
push.v self.close
pushi.e 1
cmp.i.v EQ
bf [814]

:[810]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [814]

:[811]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.charcon
pushi.e 1351
pushenv [813]

:[812]
pushi.e 2
pop.v.i self.threebuffer
pushi.e 2
pop.v.i self.twobuffer

:[813]
popenv [812]

:[814]
pushglb.v global.interact
pushi.e 6
cmp.i.v EQ
bf [817]

:[815]
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [817]

:[816]
pushi.e 0
pop.v.i global.interact

:[817]
push.v self.charcon
pushi.e 1
cmp.i.v EQ
bf [834]

:[818]
pushi.e 1
pop.v.i self.drawchar
pushi.e 60
pop.v.i self.bpy
pushi.e 80
pop.v.i self.tpy
pushglb.v global.interact
pushi.e 5
cmp.i.v EQ
bf [825]

:[819]
push.v self.tp
push.v self.tpy
pushi.e 1
sub.i.v
cmp.v.v LT
bf [824]

:[820]
push.v self.tpy
push.v self.tp
sub.v.v
pushi.e 40
cmp.i.v LTE
bf [822]

:[821]
push.v self.tp
push.v self.tpy
push.v self.tp
sub.v.v
push.d 2.5
div.d.v
call.i round(argc=1)
add.v.v
pop.v.v self.tp
b [823]

:[822]
push.v self.tp
pushi.e 30
add.i.v
pop.v.v self.tp

:[823]
b [825]

:[824]
push.v self.tpy
pop.v.v self.tp

:[825]
push.v self.bp
push.v self.bpy
pushi.e 1
sub.i.v
cmp.v.v LT
bf [827]

:[826]
push.v self.charcon
pushi.e 1
cmp.i.v EQ
b [828]

:[827]
push.e 0

:[828]
bf [833]

:[829]
push.v self.bpy
push.v self.bp
sub.v.v
pushi.e 40
cmp.i.v LTE
bf [831]

:[830]
push.v self.bp
push.v self.bpy
push.v self.bp
sub.v.v
push.d 2.5
div.d.v
call.i round(argc=1)
add.v.v
pop.v.v self.bp
b [832]

:[831]
push.v self.bp
pushi.e 30
add.i.v
pop.v.v self.bp

:[832]
b [834]

:[833]
push.v self.bpy
pop.v.v self.bp

:[834]
push.v self.charcon
pushi.e 0
cmp.i.v EQ
bf [849]

:[835]
push.v self.tp
pushi.e 0
cmp.i.v GT
bf [840]

:[836]
push.v self.tp
pushi.e 80
cmp.i.v GTE
bf [838]

:[837]
push.v self.tp
push.v self.tp
push.d 2.5
div.d.v
call.i round(argc=1)
sub.v.v
pop.v.v self.tp
b [839]

:[838]
push.v self.tp
pushi.e 30
sub.i.v
pop.v.v self.tp

:[839]
b [841]

:[840]
pushi.e 0
pop.v.i self.tp

:[841]
push.v self.bp
pushi.e 0
cmp.i.v GT
bf [846]

:[842]
push.v self.bp
pushi.e 40
cmp.i.v GTE
bf [844]

:[843]
push.v self.bp
push.v self.bp
push.d 2.5
div.d.v
call.i round(argc=1)
sub.v.v
pop.v.v self.bp
b [845]

:[844]
push.v self.bp
pushi.e 30
sub.i.v
pop.v.v self.bp

:[845]
b [847]

:[846]
pushi.e 0
pop.v.i self.bp

:[847]
push.v self.bp
pushi.e 0
cmp.i.v EQ
bf [849]

:[848]
pushi.e 0
pop.v.i self.drawchar

:[849]
push.v self.movenoise
pushi.e 1
cmp.i.v EQ
bf [851]

:[850]
pushi.e 493
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.movenoise

:[851]
push.v self.selectnoise
pushi.e 1
cmp.i.v EQ
bf [853]

:[852]
pushi.e 494
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.selectnoise

:[853]
push.v self.cancelnoise
pushi.e 1
cmp.i.v EQ
bf [855]

:[854]
pushi.e 424
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.cancelnoise

:[855]
push.v self.onebuffer
pushi.e 1
sub.i.v
pop.v.v self.onebuffer
push.v self.twobuffer
pushi.e 1
sub.i.v
pop.v.v self.twobuffer
push.v self.threebuffer
pushi.e 1
sub.i.v
pop.v.v self.threebuffer
push.v self.upbuffer
pushi.e 1
sub.i.v
pop.v.v self.upbuffer
push.v self.downbuffer
pushi.e 1
sub.i.v
pop.v.v self.downbuffer
call.i gml_Script_scr_debug_ch1(argc=0)
conv.v.b
bf [end]

:[856]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [858]

:[857]
pushi.e 1652
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[858]
pushi.e 76
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [860]

:[859]
call.i gml_Script_ossafe_savedata_load_ch1(argc=0)
popz.v

:[860]
pushi.e 82
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[861]
call.i gml_Script_game_restart_true_ch1(argc=0)
popz.v

:[end]