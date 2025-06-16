.localvar 2 arguments
.localvar 107 i 20838
.localvar 40737 border_options_en 20840
.localvar 40738 border_options_ja 20842

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
bf [18]

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
pushi.e 1493
conv.i.v
push.v 1351.y
pushi.e 16
sub.i.v
push.v 1351.x
pushi.e 6
sub.i.v
call.i gml_Script_instance_create_ch1(argc=3)
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
bf [17]

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
bf [17]

:[14]
push.i 231651
setowner.e
pushi.e 1493
conv.i.v
push.v 1351.y
pushi.e 12
sub.i.v
push.v 1351.x
pushi.e 4
sub.i.v
call.i gml_Script_instance_create_ch1(argc=3)
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
pushenv [16]

:[15]
pushi.e 3572
pop.v.i self.usprite
pushi.e 3570
pop.v.i self.dsprite
pushi.e 3575
pop.v.i self.rsprite
pushi.e 3573
pop.v.i self.lsprite

:[16]
popenv [15]

:[17]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [4]

:[18]
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
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [20]

:[19]
push.s "Border"@20493
conv.s.v
b [21]

:[20]
push.s "フレーム"@40735
conv.s.v

:[21]
pop.v.v self.border_text
push.i 169107
setowner.e
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [23]

:[22]
push.s "None"@7824
conv.s.v
push.s "Simple"@14055
conv.s.v
push.s "Dynamic"@14040
conv.s.v
call.i @@NewGMLArray@@(argc=3)
b [24]

:[23]
push.s "なし"@29345
conv.s.v
push.s "シンプル"@14056
conv.s.v
push.s "ダイナミック"@14041
conv.s.v
call.i @@NewGMLArray@@(argc=3)

:[24]
pop.v.v self.border_options
push.i 175449
setowner.e
push.s "None"@7824
conv.s.v
push.s "Simple"@14055
conv.s.v
push.s "Dynamic"@14040
conv.s.v
call.i @@NewGMLArray@@(argc=3)
pop.v.v local.border_options_en
push.i 175450
setowner.e
push.s "なし"@29345
conv.s.v
push.s "シンプル"@14056
conv.s.v
push.s "ダイナミック"@14041
conv.s.v
call.i @@NewGMLArray@@(argc=3)
pop.v.v local.border_options_ja
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [31]

:[25]
pushi.e 0
pop.v.i local.i

:[26]
pushloc.v local.i
pushloc.v local.border_options_en
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [30]

:[27]
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.border_options_en
pushglb.v global.screen_border_id
cmp.v.v EQ
bf [29]

:[28]
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.border_options_ja
pop.v.v global.screen_border_id
b [30]

:[29]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [26]

:[30]
b [36]

:[31]
pushi.e 0
pop.v.i local.i

:[32]
pushloc.v local.i
pushloc.v local.border_options_ja
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [36]

:[33]
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.border_options_ja
pushglb.v global.screen_border_id
cmp.v.v EQ
bf [35]

:[34]
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.border_options_en
pop.v.v global.screen_border_id
b [36]

:[35]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [32]

:[36]
pushi.e 0
pop.v.i self.selected_border
pushi.e 0
pop.v.i local.i

:[37]
pushloc.v local.i
push.v self.border_options
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [end]

:[38]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.border_options
pushglb.v global.screen_border_id
cmp.v.v EQ
bf [40]

:[39]
pushloc.v local.i
pop.v.v self.selected_border
b [end]

:[40]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [37]

:[end]