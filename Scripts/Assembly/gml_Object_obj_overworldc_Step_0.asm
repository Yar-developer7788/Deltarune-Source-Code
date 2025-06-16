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
bf [109]

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
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [50]

:[4]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [38]

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
push.i [function]gml_Script_scr_litemuseb
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
push.i [function]gml_Script_scr_litemdesc
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
push.i [function]gml_Script_scr_writetext
conv.i.v
call.i script_execute(argc=5)
popz.v

:[9]
pushi.e -5
pushi.e 5
push.v [array]self.menucoord
pushi.e 2
cmp.i.v EQ
bf [38]

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
pushi.e 9
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.dontthrow
pushi.e 1
pop.v.i self.dontthrowtype

:[14]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litem
pushi.e 11
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i self.dontthrow
pushi.e 2
pop.v.i self.dontthrowtype

:[16]
push.v self.dontthrow
pushi.e 0
cmp.i.v EQ
bf [31]

:[17]
pushi.e 30
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.i
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.i 231251
setowner.e
push.s "obj_overworldc_slash_Step_0_gml_34_0_b"@36928
conv.s.v
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litemname
push.s "* You bid a quiet farewell to the ~1."@36929
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[19]
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_overworldc_slash_Step_0_gml_34_0"@36930
conv.s.v
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litemname
push.s "* You put the ~1 on the ground and gave it a little pat."@36931
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[21]
push.v self.i
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_overworldc_slash_Step_0_gml_36_0"@36932
conv.s.v
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litemname
push.s "* You threw the ~1 on the ground like the piece of trash it is."@36933
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[23]
push.v self.i
pushi.e 3
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_overworldc_slash_Step_0_gml_38_0_b"@36934
conv.s.v
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litemname
push.s "* You abandoned the ~1."@36935
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[25]
push.v self.i
pushi.e 3
cmp.i.v GT
bf [27]

:[26]
push.s "obj_overworldc_slash_Step_0_gml_38_0"@36936
conv.s.v
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litemname
push.s "* The ~1 was thrown away."@36937
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[27]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.msg
push.s "/%"@4449
add.s.v
pop.i.v [array]self.msg
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
conv.v.i
push.v [array]self.litem
pushi.e 8
cmp.i.v EQ
bf [30]

:[28]
push.s "obj_overworldc_slash_Step_0_gml_42_0"@36938
conv.s.v
push.s "* What Egg?/%"@36939
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 263
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 263
pop.v.v [array]self.flag

:[30]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
push.i [function]gml_Script_scr_writetext
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
push.i [function]gml_Script_scr_litemshift
conv.i.v
call.i script_execute(argc=3)
popz.v

:[31]
push.v self.dontthrow
pushi.e 1
cmp.i.v EQ
bf [38]

:[32]
push.v self.dontthrowtype
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
pushi.e 10
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 10
conv.i.v
push.i [function]gml_Script_scr_writetext
conv.i.v
call.i script_execute(argc=5)
popz.v
b [38]

:[34]
push.v self.dontthrowtype
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
push.s "obj_overworldc_slash_Step_0_gml_61_0"@36940
conv.s.v
push.s "* (You fumbled and caught them^1. You can't throw these away!)/%"@36941
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
push.i [function]gml_Script_scr_writetext
conv.i.v
call.i script_execute(argc=5)
popz.v
b [38]

:[36]
push.v self.dontthrowtype
pushi.e 2
cmp.i.v EQ
bf [38]

:[37]
push.s "obj_overworldc_slash_Step_0_gml_66_0"@36942
conv.s.v
push.s "* (You didn't quite understand why...)/"@36943
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_overworldc_slash_Step_0_gml_67_0"@36944
conv.s.v
push.s "* (But, the thought of discarding it felt very wrong.)/%"@36945
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
push.i [function]gml_Script_scr_writetext
conv.i.v
call.i script_execute(argc=5)
popz.v

:[38]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [40]

:[39]
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
push.i [function]gml_Script_scr_litemuseb
conv.i.v
call.i script_execute(argc=3)
popz.v

:[40]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 5
pop.v.i global.menuno
push.i 231307
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 5
pop.v.v [array]self.menucoord

:[42]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
push.v global.menuno
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
pushi.e 1
add.i.v
add.v.v
pop.v.v global.menuno

:[44]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [46]

:[45]
push.i [function]gml_Script_scr_phonename
conv.i.v
call.i script_execute(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.menucoord

:[46]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [50]

:[47]
pushi.e -5
pushi.e 0
push.v [array]self.litem
pushi.e 0
cmp.i.v NEQ
bf [49]

:[48]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.menucoord
push.i [function]gml_Script_scr_litemname
conv.i.v
call.i script_execute(argc=1)
popz.v
b [50]

:[49]
pushi.e 0
pop.v.i global.menuno

:[50]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [60]

:[51]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [54]

:[52]
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
pushi.e 0
cmp.i.v NEQ
bf [54]

:[53]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.menucoord

:[54]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [57]

:[55]
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
pushi.e 0
cmp.i.v NEQ
bf [57]

:[56]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.menucoord

:[57]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [60]

:[58]
pushi.e -5
pushi.e 3
push.v [array]self.menucoord
pushi.e 0
cmp.i.v NEQ
bf [60]

:[59]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.menucoord

:[60]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [72]

:[61]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [64]

:[62]
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
pushi.e 2
cmp.i.v NEQ
bf [64]

:[63]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.menucoord
pushi.e 1
add.i.v
pop.i.v [array]self.menucoord

:[64]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [68]

:[65]
pushi.e -5
pushi.e 1
push.v [array]self.menucoord
pushi.e 7
cmp.i.v NEQ
bf [68]

:[66]
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
bf [68]

:[67]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.menucoord
pushi.e 1
add.i.v
pop.i.v [array]self.menucoord

:[68]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [72]

:[69]
pushi.e -5
pushi.e 3
push.v [array]self.menucoord
pushi.e 7
cmp.i.v NEQ
bf [72]

:[70]
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
bf [72]

:[71]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.menucoord
pushi.e 1
add.i.v
pop.i.v [array]self.menucoord

:[72]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [74]

:[73]
push.v self.buffer
pushi.e 0
cmp.i.v GTE
b [75]

:[74]
push.e 0

:[75]
bf [82]

:[76]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [78]

:[77]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact
b [80]

:[78]
pushglb.v global.menuno
pushi.e 3
cmp.i.v LTE
bf [80]

:[79]
pushi.e 0
pop.v.i global.menuno

:[80]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [82]

:[81]
pushi.e 1
pop.v.i global.menuno

:[82]
call.i gml_Script_right_p(argc=0)
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
pushi.e 2
cmp.i.v NEQ
bf [86]

:[85]
pushi.e -5
pushi.e 5
dup.i 1
push.v [array]self.menucoord
pushi.e 1
add.i.v
pop.i.v [array]self.menucoord

:[86]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [90]

:[87]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [90]

:[88]
pushi.e -5
pushi.e 5
push.v [array]self.menucoord
pushi.e 0
cmp.i.v NEQ
bf [90]

:[89]
pushi.e -5
pushi.e 5
dup.i 1
push.v [array]self.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.menucoord

:[90]
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [92]

:[91]
push.v self.threebuffer
pushi.e 0
cmp.i.v LTE
b [93]

:[92]
push.e 0

:[93]
bf [98]

:[94]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [98]

:[95]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact
pushi.e 82
pushenv [97]

:[96]
pushi.e 2
pop.v.i self.threebuffer

:[97]
popenv [96]

:[98]
push.v self.currentmenu
pushglb.v global.menuno
cmp.v.v LT
bf [100]

:[99]
pushglb.v global.menuno
pushi.e 9
cmp.i.v NEQ
b [101]

:[100]
push.e 0

:[101]
bf [103]

:[102]
pushi.e 1
pop.v.i self.selnoise
b [109]

:[103]
pushglb.v global.menuno
pushi.e 0
cmp.i.v GTE
bf [105]

:[104]
pushglb.v global.menuno
pushi.e 6
cmp.i.v LT
b [106]

:[105]
push.e 0

:[106]
bf [109]

:[107]
push.v self.currentspot
pushi.e -5
pushglb.v global.menuno
conv.v.i
push.v [array]self.menucoord
cmp.v.v NEQ
bf [109]

:[108]
pushi.e 1
pop.v.i self.movenoise

:[109]
pushglb.v global.menuno
pushi.e 9
cmp.i.v EQ
bf [111]

:[110]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [112]

:[111]
push.e 0

:[112]
bf [114]

:[113]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact

:[114]
push.v self.selnoise
pushi.e 1
cmp.i.v EQ
bf [116]

:[115]
pushi.e 261
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.selnoise

:[116]
push.v self.movenoise
pushi.e 1
cmp.i.v EQ
bf [118]

:[117]
pushi.e 260
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.movenoise

:[118]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [132]

:[119]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [121]

:[120]
pushi.e 1137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[121]
pushi.e 70
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [123]

:[122]
pushi.e 58
pop.v.i builtin.room_speed

:[123]
pushi.e 76
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [125]

:[124]
call.i gml_Script_scr_load(argc=0)
popz.v

:[125]
pushi.e 82
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [127]

:[126]
pushi.e 8
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [128]

:[127]
push.e 0

:[128]
bf [130]

:[129]
call.i gml_Script_game_restart_true(argc=0)
popz.v

:[130]
pushi.e 82
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [132]

:[131]
call.i room_restart(argc=0)
popz.v
pushi.e 0
pop.v.i global.interact

:[132]
push.v self.threebuffer
push.e 1
sub.i.v
pop.v.v self.threebuffer

:[end]