.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 0
push.v [array]self.litem
pushi.e 0
cmp.i.v NEQ
pop.v.b self.hasitems
pushglb.v global.interact
pushi.e 5
cmp.i.v EQ
bf [105]

:[1]
pushglb.v global.menuno
pop.v.v self.currentmenu
pushglb.v global.menuno
pushi.e 6
cmp.i.v LT
bf [3]

:[2]
pushi.e -5
pushglb.v global.menuno
conv.v.i
push.v [array]self.menucoord
pop.v.v self.currentspot

:[3]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [46]

:[4]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [34]

:[5]
pushi.e -5
pushi.e 5
push.v [array]self.menucoord
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 9
pop.v.i global.menuno
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litem
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
push.i [function]gml_Script_scr_litemuseb_ch1
conv.i.v
call.i script_execute(argc=3)
popz.v

:[7]
pushi.e -5
pushi.e 5
push.v [array]self.menucoord
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 9
pop.v.i global.menuno
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litem
push.i [function]gml_Script_scr_litemdesc_ch1
conv.i.v
call.i script_execute(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
push.i [function]gml_Script_scr_writetext_ch1
conv.i.v
call.i script_execute(argc=5)
popz.v

:[9]
pushi.e -5
pushi.e 5
push.v [array]self.menucoord
pushi.e 2
cmp.i.v EQ
bf [34]

:[10]
pushi.e 0
pop.v.i self.dontthrow
pushi.e 0
pop.v.i self.dontthrowtype
pushi.e 9
pop.v.i global.menuno
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litem
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.dontthrow

:[12]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litem
pushi.e 11
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.dontthrow
pushi.e 2
pop.v.i self.dontthrowtype

:[14]
push.v self.dontthrow
pushi.e 0
cmp.i.v EQ
bf [29]

:[15]
pushi.e 30
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.i
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
push.i 231251
setowner.e
push.s "obj_overworldc_slash_Step_0_gml_32_0"@41944
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litemname
add.v.v
push.s "."@6156
add.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[17]
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litemname
push.s "obj_overworldc_slash_Step_0_gml_33_0"@41945
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[19]
push.v self.i
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litemname
push.s "obj_overworldc_slash_Step_0_gml_35_0"@41946
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[21]
push.v self.i
pushi.e 3
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_overworldc_slash_Step_0_gml_36_0"@36932
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litemname
add.v.v
push.s "."@6156
add.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[23]
push.v self.i
pushi.e 3
cmp.i.v GT
bf [25]

:[24]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litemname
push.s "obj_overworldc_slash_Step_0_gml_37_0"@41947
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[25]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.msg
push.s "obj_overworldc_slash_Step_0_gml_38_0"@36936
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
add.v.v
pop.i.v [array]self.msg
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litem
pushi.e 8
cmp.i.v EQ
bf [28]

:[26]
push.s "obj_overworldc_slash_Step_0_gml_41_0"@41948
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 263
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 263
pop.v.v [array]self.flag

:[28]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
push.i [function]gml_Script_scr_writetext_ch1
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
push.i [function]gml_Script_scr_litemshift_ch1
conv.i.v
call.i script_execute(argc=3)
popz.v

:[29]
push.v self.dontthrow
pushi.e 1
cmp.i.v EQ
bf [34]

:[30]
push.v self.dontthrowtype
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushi.e 10
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 10
conv.i.v
push.i [function]gml_Script_scr_writetext_ch1
conv.i.v
call.i script_execute(argc=5)
popz.v
b [34]

:[32]
push.v self.dontthrowtype
pushi.e 2
cmp.i.v EQ
bf [34]

:[33]
push.i 231251
setowner.e
push.s "obj_overworldc_slash_Step_0_gml_42_0"@36938
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_overworldc_slash_Step_0_gml_43_0"@41949
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
push.i [function]gml_Script_scr_writetext_ch1
conv.i.v
call.i script_execute(argc=5)
popz.v

:[34]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [36]

:[35]
pushi.e 9
pop.v.i global.menuno
pushi.e -5
pushi.e -5
pushi.e 3
push.v [array]self.menucoord
conv.v.i
push.v [array]self.phone
pushi.e -5
pushi.e 3
push.v [array]self.menucoord
push.i [function]gml_Script_scr_litemuseb_ch1
conv.i.v
call.i script_execute(argc=3)
popz.v

:[36]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
pushi.e 5
pop.v.i global.menuno
push.i 231307
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 5
pop.v.v [array]self.menucoord

:[38]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
push.v global.menuno
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
pushi.e 1
add.i.v
add.v.v
pop.v.v global.menuno

:[40]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [42]

:[41]
push.i [function]gml_Script_scr_phonename_ch1
conv.i.v
call.i script_execute(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.menucoord

:[42]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [46]

:[43]
pushi.e -5
pushi.e 0
push.v [array]self.litem
pushi.e 0
cmp.i.v NEQ
bf [45]

:[44]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.menucoord
push.i [function]gml_Script_scr_litemname_ch1
conv.i.v
call.i script_execute(argc=1)
popz.v
b [46]

:[45]
pushi.e 0
pop.v.i global.menuno

:[46]
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [56]

:[47]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [50]

:[48]
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
pushi.e 0
cmp.i.v NEQ
bf [50]

:[49]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.menucoord

:[50]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [53]

:[51]
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
pushi.e 0
cmp.i.v NEQ
bf [53]

:[52]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.menucoord

:[53]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [56]

:[54]
pushi.e -5
pushi.e 3
push.v [array]self.menucoord
pushi.e 0
cmp.i.v NEQ
bf [56]

:[55]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.menucoord

:[56]
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [68]

:[57]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [60]

:[58]
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
pushi.e 2
cmp.i.v NEQ
bf [60]

:[59]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.menucoord
pushi.e 1
add.i.v
pop.i.v [array]self.menucoord

:[60]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [64]

:[61]
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
pushi.e 7
cmp.i.v NEQ
bf [64]

:[62]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.litem
pushi.e 0
cmp.i.v NEQ
bf [64]

:[63]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.menucoord
pushi.e 1
add.i.v
pop.i.v [array]self.menucoord

:[64]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [68]

:[65]
pushi.e -5
pushi.e 3
push.v [array]self.menucoord
pushi.e 7
cmp.i.v NEQ
bf [68]

:[66]
pushi.e -5
pushi.e -5
pushi.e 3
push.v [array]self.menucoord
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.phone
pushi.e 0
cmp.i.v NEQ
bf [68]

:[67]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.menucoord
pushi.e 1
add.i.v
pop.i.v [array]self.menucoord

:[68]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [70]

:[69]
push.v self.buffer
pushi.e 0
cmp.i.v GTE
b [71]

:[70]
push.e 0

:[71]
bf [78]

:[72]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [74]

:[73]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact
b [76]

:[74]
pushglb.v global.menuno
pushi.e 3
cmp.i.v LTE
bf [76]

:[75]
pushi.e 0
pop.v.i global.menuno

:[76]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [78]

:[77]
pushi.e 1
pop.v.i global.menuno

:[78]
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
bf [82]

:[79]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [82]

:[80]
pushi.e -5
pushi.e 5
push.v [array]self.menucoord
pushi.e 2
cmp.i.v NEQ
bf [82]

:[81]
pushi.e -5
pushi.e 5
dup.i 1
push.v [array]self.menucoord
pushi.e 1
add.i.v
pop.i.v [array]self.menucoord

:[82]
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bf [86]

:[83]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [86]

:[84]
pushi.e -5
pushi.e 5
push.v [array]self.menucoord
pushi.e 0
cmp.i.v NEQ
bf [86]

:[85]
pushi.e -5
pushi.e 5
dup.i 1
push.v [array]self.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.menucoord

:[86]
call.i gml_Script_button3_p_ch1(argc=0)
conv.v.b
bf [88]

:[87]
push.v self.threebuffer
pushi.e 0
cmp.i.v LTE
b [89]

:[88]
push.e 0

:[89]
bf [94]

:[90]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [94]

:[91]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact
pushi.e 1351
pushenv [93]

:[92]
pushi.e 2
pop.v.i self.threebuffer

:[93]
popenv [92]

:[94]
push.v self.currentmenu
pushglb.v global.menuno
cmp.v.v LT
bf [96]

:[95]
pushglb.v global.menuno
pushi.e 9
cmp.i.v NEQ
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
pushi.e 1
pop.v.i self.selnoise
b [105]

:[99]
pushglb.v global.menuno
pushi.e 0
cmp.i.v GTE
bf [101]

:[100]
pushglb.v global.menuno
pushi.e 6
cmp.i.v LT
b [102]

:[101]
push.e 0

:[102]
bf [105]

:[103]
push.v self.currentspot
pushi.e -5
pushglb.v global.menuno
conv.v.i
push.v [array]self.menucoord
cmp.v.v NEQ
bf [105]

:[104]
pushi.e 1
pop.v.i self.movenoise

:[105]
pushglb.v global.menuno
pushi.e 9
cmp.i.v EQ
bf [107]

:[106]
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [108]

:[107]
push.e 0

:[108]
bf [110]

:[109]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact

:[110]
push.v self.selnoise
pushi.e 1
cmp.i.v EQ
bf [112]

:[111]
pushi.e 494
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.selnoise

:[112]
push.v self.movenoise
pushi.e 1
cmp.i.v EQ
bf [114]

:[113]
pushi.e 493
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.movenoise

:[114]
call.i gml_Script_scr_debug_ch1(argc=0)
conv.v.b
bf [123]

:[115]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [117]

:[116]
pushi.e 1652
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[117]
pushi.e 70
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [119]

:[118]
pushi.e 58
pop.v.i builtin.room_speed

:[119]
pushi.e 76
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [121]

:[120]
call.i gml_Script_ossafe_savedata_load_ch1(argc=0)
popz.v

:[121]
pushi.e 82
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [123]

:[122]
call.i gml_Script_game_restart_true_ch1(argc=0)
popz.v

:[123]
push.v self.threebuffer
push.e 1
sub.i.v
pop.v.v self.threebuffer

:[end]