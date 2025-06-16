.localvar 2 arguments
.localvar 107 i 8641

:[0]
pushi.e 0
pop.v.i self.cur_jewel
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.charcon
pushi.e 0
pop.v.i self.chartimer
pushi.e 0
pop.v.i self.tp
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
pushi.e 0
pop.v.i global.fighting
pushi.e 0
pop.v.i self.movenoise
pushi.e 0
pop.v.i self.selectnoise
pushi.e 0
pop.v.i self.cancelnoise
pushi.e 0
pop.v.i self.onebuffer
pushi.e 0
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.threebuffer
pushi.e 0
pop.v.i self.upbuffer
pushi.e 0
pop.v.i self.downbuffer
pushi.e 0
pop.v.i self.hold_up
pushi.e 0
pop.v.i self.hold_down
pushi.e 0
pop.v.i self.dograndom
pushi.e 0
pop.v.i self.atalk
pushi.e 0
pop.v.i self.deschaver
push.d 0.7
conv.d.v
pushi.e 0
conv.i.v
push.i 8388736
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.bcolor
push.d 0.5
conv.d.v
push.i 4210752
conv.i.v
push.v self.bcolor
call.i merge_color(argc=3)
pop.v.v self.bcolor
pushi.e 0
pop.v.i self.chartotal
push.i 166122
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.havechar
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.havechar
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.havechar
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.havechar
pushi.e 3
pop.v.i global.charturn
pushi.e 0
pop.v.i self.tp
pushi.e 50
pop.v.i self.tpy
pushi.e 0
pop.v.i self.bp
pushi.e 152
pop.v.i self.bpy
push.i 166204
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.mmy
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.mmy
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.mmy
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.mmy
pushi.e 0
pop.v.i global.submenu
pushi.e -1
pop.v.i global.charselect
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushi.e 36
cmp.i.v LT
bf [3]

:[2]
push.i 231827
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.submenucoord
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [1]

:[3]
push.i 231651
setowner.e
push.l 4343434343
conv.l.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.cinstance
push.l 343434343434
conv.l.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.cinstance
pushi.e 0
pop.v.i local.i

:[4]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [25]

:[5]
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.faceaction
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [7]

:[6]
push.v self.chartotal
pushi.e 1
add.i.v
pop.v.v self.chartotal

:[7]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.i 166122
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.havechar
push.i 166124
setowner.e
pushloc.v local.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.charpos

:[9]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [12]

:[10]
push.i 166122
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.havechar
push.i 166124
setowner.e
pushloc.v local.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.charpos
pushloc.v local.i
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.i 231651
setowner.e
pushi.e 276
conv.i.v
push.v 82.y
pushi.e 16
sub.i.v
push.v 82.x
pushi.e 6
sub.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -5
pushloc.v local.i
pushi.e 1
sub.i.v
conv.v.i
pop.v.v [array]self.cinstance
push.i 231464
setowner.e
pushloc.v local.i
pushi.e 12
mul.i.v
pushi.e -5
pushloc.v local.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.target

:[12]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [19]

:[13]
push.i 166122
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.havechar
push.i 166124
setowner.e
pushloc.v local.i
pushi.e -1
pushi.e 2
pop.v.v [array]self.charpos
pushloc.v local.i
pushi.e 0
cmp.i.v GT
bf [19]

:[14]
push.i 231651
setowner.e
pushi.e 276
conv.i.v
push.v 82.y
pushi.e 12
sub.i.v
push.v 82.x
pushi.e 2
sub.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -5
pushloc.v local.i
pushi.e 1
sub.i.v
conv.v.i
pop.v.v [array]self.cinstance
push.i 231464
setowner.e
pushloc.v local.i
pushi.e 12
mul.i.v
pushi.e -5
pushloc.v local.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
pushloc.v local.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [18]

:[15]
push.s "ralsei"@72
pop.v.s self.name
pushi.e 815
pop.v.i self.slidesprite
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [17]

:[16]
pushi.e 799
pop.v.i self.usprite
pushi.e 785
pop.v.i self.dsprite
pushi.e 795
pop.v.i self.rsprite
pushi.e 791
pop.v.i self.lsprite
b [18]

:[17]
pushi.e 1012
pop.v.i self.usprite
pushi.e 1010
pop.v.i self.dsprite
pushi.e 1015
pop.v.i self.rsprite
pushi.e 1013
pop.v.i self.lsprite

:[18]
popenv [15]

:[19]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [24]

:[20]
push.i 166122
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.havechar
push.i 166124
setowner.e
pushloc.v local.i
pushi.e -1
pushi.e 3
pop.v.v [array]self.charpos
pushloc.v local.i
pushi.e 0
cmp.i.v GT
bf [24]

:[21]
push.i 231651
setowner.e
pushi.e 276
conv.i.v
push.v 82.y
pushi.e 20
sub.i.v
push.v 82.x
pushi.e 4
sub.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -5
pushloc.v local.i
pushi.e 1
sub.i.v
conv.v.i
pop.v.v [array]self.cinstance
push.i 231464
setowner.e
pushloc.v local.i
pushi.e 12
mul.i.v
pushi.e -5
pushloc.v local.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
pushloc.v local.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [23]

:[22]
push.s "noelle"@74
pop.v.s self.name
pushi.e 718
pop.v.i self.slidesprite
pushi.e 728
pop.v.i self.usprite
pushi.e 718
pop.v.i self.dsprite
pushi.e 724
pop.v.i self.rsprite
pushi.e 719
pop.v.i self.lsprite

:[23]
popenv [22]

:[24]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [4]

:[25]
push.i 231462
setowner.e
pushi.e 82
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charinstance
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -5
pushi.e 1
pop.v.v [array]self.charinstance
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -5
pushi.e 2
pop.v.v [array]self.charinstance
pushi.e 0
pop.v.i self.slmxx
pushi.e 0
pop.v.i self.slmyy
pushi.e 0
pop.v.i self.s_siner
pushi.e 0
pop.v.i self.menusiner
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
pushi.e 1
pop.v.i self.getmusvol
pushi.e 1
pop.v.i self.curvol
push.i 166200
setowner.e
push.i 16776960
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.hpcolor
push.i 16711935
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.hpcolor
push.i 65280
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.hpcolor
push.i 65535
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.hpcolor
push.s "spr_darkmenudesc"@12018
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
pop.v.v self.menu_sprite
push.s "obj_darkcontroller_slash_Draw_0_gml_94_0"@20380
conv.s.v
push.s "Auto-Run"@20381
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.autorun_text
push.s "obj_darkcontroller_slash_Draw_0_gml_96_0"@20383
conv.s.v
push.s "Back"@20384
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.back_text
push.i 169106
setowner.e
push.i 32784
conv.i.v
push.i 32783
conv.i.v
push.i 32782
conv.i.v
push.i 32781
conv.i.v
push.i 32780
conv.i.v
push.i 32779
conv.i.v
push.i 32778
conv.i.v
push.i 32777
conv.i.v
push.i 32776
conv.i.v
push.i 32774
conv.i.v
push.i 32775
conv.i.v
push.i 32773
conv.i.v
push.i 32772
conv.i.v
push.i 32771
conv.i.v
push.i 32770
conv.i.v
push.i 32769
conv.i.v
call.i @@NewGMLArray@@(argc=16)
pop.v.v self.gamepad_controls
push.i 169107
setowner.e
push.s "obj_darkcontroller_slash_Create_0_gml_153_2"@20387
conv.s.v
push.s "None"@7824
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "obj_darkcontroller_slash_Create_0_gml_153_1"@20388
conv.s.v
push.s "Simple"@14055
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "obj_darkcontroller_slash_Create_0_gml_153_0"@20389
conv.s.v
push.s "Dynamic"@14040
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i @@NewGMLArray@@(argc=3)
pop.v.v self.border_options
pushi.e 0
pop.v.i self.selected_border
pushi.e 0
pop.v.i local.i

:[26]
pushloc.v local.i
push.v self.border_options
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [end]

:[27]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.border_options
pushglb.v global.screen_border_id
cmp.v.v EQ
bf [29]

:[28]
pushloc.v local.i
pop.v.v self.selected_border
b [end]

:[29]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [26]

:[end]