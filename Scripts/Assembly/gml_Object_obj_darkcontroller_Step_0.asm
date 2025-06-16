.localvar 2 arguments
.localvar 20427 lastfade 8668
.localvar 107 i 8676
.localvar 20448 _border 8683
.localvar 20452 __equipmenumax 8686

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
bf [842]

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
bf [43]

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
call.i gml_Script_left_p(argc=0)
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
call.i gml_Script_right_p(argc=0)
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
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [16]

:[14]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [16]

:[15]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [17]

:[16]
push.e 0

:[17]
bf [29]

:[18]
pushi.e 2
pop.v.i self.onebuffer
pushglb.v global.submenu
pushi.e 5
cmp.i.v EQ
bf [27]

:[19]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_itemuse(argc=1)
popz.v
push.v self.usable
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.v self.replaceable
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
call.i gml_Script_scr_itemshift(argc=2)
popz.v
b [26]

:[24]
push.v self.replaceable
pushi.e 0
cmp.i.v GT
bf [26]

:[25]
push.i 231171
setowner.e
push.v self.replaceable
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
conv.v.i
pop.v.v [array]self.item

:[26]
call.i gml_Script_scr_itemdesc(argc=0)
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

:[27]
pushglb.v global.submenu
pushi.e 22
cmp.i.v EQ
bf [29]

:[28]
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
call.i gml_Script_scr_spell_overworld(argc=1)
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

:[29]
pushi.e 0
pop.v.i self.close
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [32]

:[30]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [32]

:[31]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 1
pop.v.i self.close

:[35]
pushglb.v global.submenu
pushi.e 22
cmp.i.v EQ
bf [38]

:[36]
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
bf [38]

:[37]
pushi.e 1
pop.v.i self.close

:[38]
push.v self.close
pushi.e 1
cmp.i.v EQ
bf [43]

:[39]
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
bf [41]

:[40]
pushi.e 2
pop.v.i global.submenu

:[41]
pushglb.v global.submenu
pushi.e 22
cmp.i.v EQ
bf [43]

:[42]
pushi.e 21
pop.v.i global.submenu

:[43]
pushglb.v global.submenu
pushi.e 6
cmp.i.v EQ
bt [46]

:[44]
pushglb.v global.submenu
pushi.e 7
cmp.i.v EQ
bt [46]

:[45]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
b [47]

:[46]
push.e 1

:[47]
bf [93]

:[48]
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
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [51]

:[49]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [51]

:[50]
pushglb.v global.submenu
pushi.e 6
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [61]

:[53]
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
call.i gml_Script_scr_itemuse(argc=1)
popz.v
push.v self.usable
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
push.v self.replaceable
pushi.e 0
cmp.i.v EQ
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
call.i gml_Script_scr_itemshift(argc=2)
popz.v
b [60]

:[58]
push.v self.replaceable
pushi.e 0
cmp.i.v GT
bf [60]

:[59]
push.i 231171
setowner.e
push.v self.replaceable
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
conv.v.i
pop.v.v [array]self.item

:[60]
call.i gml_Script_scr_itemdesc(argc=0)
popz.v
pushi.e -1
pop.v.i global.charselect
pushi.e 2
pop.v.i global.submenu

:[61]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [64]

:[62]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [64]

:[63]
pushglb.v global.submenu
pushi.e 7
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [76]

:[66]
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
call.i gml_Script_scr_itemshift(argc=2)
popz.v
call.i gml_Script_scr_itemdesc(argc=0)
popz.v
pushi.e -1
pop.v.i global.charselect
pushi.e 3
pop.v.i global.submenu
pushi.e 157
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.throwitem
pushi.e 4
cmp.i.v EQ
bf [76]

:[67]
pushi.e -5
pushi.e 2
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bt [69]

:[68]
pushi.e -5
pushi.e 1
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
b [70]

:[69]
push.e 1

:[70]
bf [76]

:[71]
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_closemenu(argc=0)
popz.v
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 9
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_darkcontroller_slash_Step_0_gml_135_0"@20394
conv.s.v
push.s "* .../%"@14954
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 207
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
pushi.e 0
pop.v.i global.fc
pushi.e 6
pop.v.i global.typer
push.s "obj_darkcontroller_slash_Step_0_gml_141_0"@20395
conv.s.v
push.s "* (You tossed the Manual hard.^1)&* (Its pages scatter in the wind.)/"@20396
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface(argc=2)
popz.v
push.s "obj_darkcontroller_slash_Step_0_gml_143_0"@20397
conv.s.v
push.s "* ............../"@20398
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_darkcontroller_slash_Step_0_gml_144_0"@20399
conv.s.v
push.s "\\E5* Umm..^1.&* Th-that's OK^1, Kris^1!&* I can always.../"@20400
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_darkcontroller_slash_Step_0_gml_145_0"@20401
conv.s.v
push.s "\\E6* I'll just make a better one next time!/%"@20402
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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

:[73]
pushi.e -5
pushi.e 207
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
pushi.e 0
pop.v.i global.fc
pushi.e 6
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_darkcontroller_slash_Step_0_gml_153_0"@20403
conv.s.v
push.s "* (You drop the manual on the floor with a resounding thud.)/"@20404
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface(argc=2)
popz.v
push.s "obj_darkcontroller_slash_Step_0_gml_155_0"@20405
conv.s.v
push.s "* Hey^1, Kris^1.&* What are you doing...?/"@20406
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_darkcontroller_slash_Step_0_gml_156_0"@20407
conv.s.v
push.s "\\E3* Oh no^1!&* Is that the manual?/"@20408
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_darkcontroller_slash_Step_0_gml_157_0"@20409
conv.s.v
push.s "\\E1* Looks like you accidentallly dropped it.../"@20410
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_darkcontroller_slash_Step_0_gml_158_0"@20411
conv.s.v
push.s "\\E8* Here you go^1, Kris^1!&* You don't wanna lose that!/"@20412
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
call.i gml_Script_scr_noface(argc=1)
popz.v
push.s "obj_darkcontroller_slash_Step_0_gml_160_0"@20413
conv.s.v
push.s "* (You got the Manual.^1)&* (Again.)/%"@20414
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
call.i gml_Script_scr_itemget(argc=1)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 207
pop.v.v [array]self.flag

:[75]
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dl
pushi.e 1
push.v self.dl
pushi.e -9
pop.v.i [stacktop]self.free

:[76]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [79]

:[77]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [79]

:[78]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
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
call.i gml_Script_scr_talkroom(argc=0)
popz.v
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i self.charcon

:[82]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [84]

:[83]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [85]

:[84]
push.e 0

:[85]
bf [93]

:[86]
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
bf [88]

:[87]
pushi.e 2
pop.v.i global.submenu

:[88]
pushglb.v global.submenu
pushi.e 7
cmp.i.v EQ
bf [90]

:[89]
pushi.e 3
pop.v.i global.submenu

:[90]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [92]

:[91]
pushi.e 0
pop.v.i global.menuno

:[92]
pushi.e -1
pop.v.i global.charselect

:[93]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [373]

:[94]
pushglb.v global.submenu
pushi.e 30
cmp.i.v EQ
bf [146]

:[95]
pushi.e 0
pop.v.i self.sndbuffer
pushi.e 0
pop.v.i self.m_quit
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [98]

:[96]
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
bf [98]

:[97]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 30
pop.v.v [array]self.submenucoord

:[98]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [101]

:[99]
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
bf [101]

:[100]
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 30
pop.v.v [array]self.submenucoord

:[101]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [103]

:[102]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [104]

:[103]
push.e 0

:[104]
bf [139]

:[105]
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
bf [107]

:[106]
pushi.e 33
pop.v.i global.submenu

:[107]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
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

:[109]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
bf [113]

:[110]
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [112]

:[111]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.flag
b [113]

:[112]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.flag

:[113]
pushglb.v global.is_console
conv.v.b
bf [127]

:[114]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 3
cmp.i.v EQ
bf [118]

:[115]
pushi.e -5
pushi.e 11
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [117]

:[116]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.flag
b [118]

:[117]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.flag

:[118]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 4
cmp.i.v EQ
bf [122]

:[119]
pushglb.v global.disable_border
conv.v.b
bf [121]

:[120]
pushi.e 0
pop.v.i self.selectnoise
b [122]

:[121]
pushi.e 36
pop.v.i global.submenu
pushi.e 1
pop.v.i self.check_border
pushi.e 0
pop.v.i self.border_select

:[122]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 5
cmp.i.v EQ
bf [124]

:[123]
pushi.e 34
pop.v.i global.submenu

:[124]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 6
cmp.i.v EQ
bf [126]

:[125]
pushi.e 1
pop.v.i self.m_quit

:[126]
b [139]

:[127]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 3
cmp.i.v EQ
bf [131]

:[128]
pushi.e 1134
pushenv [130]

:[129]
pushi.e 1
pop.v.i self.fullscreen_toggle

:[130]
popenv [129]

:[131]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 4
cmp.i.v EQ
bf [135]

:[132]
pushi.e -5
pushi.e 11
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [134]

:[133]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.flag
b [135]

:[134]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.flag

:[135]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 5
cmp.i.v EQ
bf [137]

:[136]
pushi.e 34
pop.v.i global.submenu

:[137]
pushi.e -5
pushi.e 30
push.v [array]self.submenucoord
pushi.e 6
cmp.i.v EQ
bf [139]

:[138]
pushi.e 1
pop.v.i self.m_quit

:[139]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [141]

:[140]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [142]

:[141]
push.e 0

:[142]
bf [144]

:[143]
pushi.e 1
pop.v.i self.m_quit
pushi.e 1
pop.v.i self.cancelnoise

:[144]
push.v self.m_quit
pushi.e 1
cmp.i.v EQ
bf [146]

:[145]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i global.menuno
pushi.e 0
pop.v.i global.submenu

:[146]
pushglb.v global.submenu
pushi.e 31
cmp.i.v EQ
bt [149]

:[147]
pushglb.v global.submenu
pushi.e 32
cmp.i.v EQ
bt [149]

:[148]
pushglb.v global.submenu
pushi.e 33
cmp.i.v EQ
b [150]

:[149]
push.e 1

:[150]
bf [197]

:[151]
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
call.i gml_Script_right_h(argc=0)
conv.v.b
bf [162]

:[152]
pushglb.v global.submenu
pushi.e 31
cmp.i.v EQ
bf [155]

:[153]
pushi.e 1
pop.v.i self.sndchange
pushi.e -5
pushi.e 15
push.v [array]self.flag
pushi.e 1
cmp.i.v LT
bf [155]

:[154]
pushi.e -5
pushi.e 15
dup.i 1
push.v [array]self.flag
push.d 0.05
add.d.v
pop.i.v [array]self.flag

:[155]
pushglb.v global.submenu
pushi.e 32
cmp.i.v EQ
bf [158]

:[156]
pushi.e 1
pop.v.i self.muschange
pushi.e -5
pushi.e 16
push.v [array]self.flag
pushi.e 1
cmp.i.v LT
bf [158]

:[157]
pushi.e -5
pushi.e 16
dup.i 1
push.v [array]self.flag
push.d 0.05
add.d.v
pop.i.v [array]self.flag

:[158]
pushglb.v global.submenu
pushi.e 33
cmp.i.v EQ
bf [162]

:[159]
pushi.e -5
pushi.e 17
push.v [array]self.flag
pushi.e 1
cmp.i.v LT
bf [161]

:[160]
pushi.e -5
pushi.e 17
dup.i 1
push.v [array]self.flag
push.d 0.02
add.d.v
pop.i.v [array]self.flag

:[161]
pushi.e 1
pop.v.i self.audchange

:[162]
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [172]

:[163]
pushglb.v global.submenu
pushi.e 31
cmp.i.v EQ
bf [166]

:[164]
pushi.e 1
pop.v.i self.sndchange
pushi.e -5
pushi.e 15
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [166]

:[165]
pushi.e -5
pushi.e 15
dup.i 1
push.v [array]self.flag
push.d 0.05
sub.d.v
pop.i.v [array]self.flag

:[166]
pushglb.v global.submenu
pushi.e 32
cmp.i.v EQ
bf [169]

:[167]
pushi.e 1
pop.v.i self.muschange
pushi.e -5
pushi.e 16
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [169]

:[168]
pushi.e -5
pushi.e 16
dup.i 1
push.v [array]self.flag
push.d 0.05
sub.d.v
pop.i.v [array]self.flag

:[169]
pushglb.v global.submenu
pushi.e 33
cmp.i.v EQ
bf [172]

:[170]
pushi.e 1
pop.v.i self.audchange
pushi.e -5
pushi.e 17
push.v [array]self.flag
push.d 0.02
cmp.d.v GTE
bf [172]

:[171]
pushi.e -5
pushi.e 17
dup.i 1
push.v [array]self.flag
push.d 0.02
sub.d.v
pop.i.v [array]self.flag

:[172]
push.v self.sndchange
pushi.e 1
cmp.i.v EQ
bf [174]

:[173]
push.v self.sndbuffer
pushi.e 0
cmp.i.v LT
b [175]

:[174]
push.e 0

:[175]
bf [177]

:[176]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 15
push.v [array]self.flag
pushi.e 1
conv.i.v
call.i audio_group_set_gain(argc=3)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.sndbuffer

:[177]
push.v self.muschange
pushi.e 1
cmp.i.v EQ
bf [180]

:[178]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
bf [180]

:[179]
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
call.i gml_Script_mus_volume(argc=3)
popz.v

:[180]
push.v self.audchange
pushi.e 1
cmp.i.v EQ
bf [182]

:[181]
push.v self.sndbuffer
pushi.e 0
cmp.i.v LT
b [183]

:[182]
push.e 0

:[183]
bf [185]

:[184]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
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

:[185]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [187]

:[186]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [188]

:[187]
push.e 0

:[188]
bf [190]

:[189]
pushi.e 1
pop.v.i self.se_select

:[190]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [192]

:[191]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [193]

:[192]
push.e 0

:[193]
bf [195]

:[194]
pushi.e 1
pop.v.i self.se_select

:[195]
push.v self.se_select
pushi.e 1
cmp.i.v EQ
bf [197]

:[196]
pushi.e 1
pop.v.i self.selectnoise
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer
pushi.e 30
pop.v.i global.submenu

:[197]
pushglb.v global.submenu
pushi.e 34
cmp.i.v EQ
bf [202]

:[198]
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
bf [200]

:[199]
pushi.e 2
pop.v.i global.chapter_return
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 190
conv.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
call.i gml_Script_instance_create(argc=3)
pop.v.v local.lastfade
push.d 0.05
pushloc.v local.lastfade
pushi.e -9
pop.v.d [stacktop]self.fadespeed
call.i gml_Script_camerax(argc=0)
pushi.e 20
sub.i.v
pushloc.v local.lastfade
pushi.e -9
pop.v.v [stacktop]self.x
call.i gml_Script_cameray(argc=0)
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

:[200]
pushi.e -5
pushi.e 34
push.v [array]self.submenucoord
pushi.e 50
cmp.i.v GTE
bf [202]

:[201]
call.i gml_Script_game_restart_true(argc=0)
popz.v

:[202]
pushglb.v global.submenu
pushi.e 35
cmp.i.v EQ
bf [346]

:[203]
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
bf [205]

:[204]
push.v 1112.gamepad_active
pop.v.v self.gamepad_exists
pushi.e 0
pop.v.i self.gamepad_id

:[205]
push.v self.control_select_con
pushi.e 1
cmp.i.v EQ
bf [268]

:[206]
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
bf [259]

:[207]
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [259]

:[208]
pushi.e 48
pop.v.i local.i

:[209]
pushloc.v local.i
pushi.e 90
cmp.i.v LTE
bf [213]

:[210]
pushloc.v local.i
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [212]

:[211]
pushloc.v local.i
pop.v.v self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[212]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [209]

:[213]
pushi.e 59
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [215]

:[214]
pushi.e 59
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[215]
pushi.e 44
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [217]

:[216]
pushi.e 44
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[217]
pushi.e 46
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [219]

:[218]
pushi.e 46
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[219]
pushi.e 47
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [221]

:[220]
pushi.e 47
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[221]
pushi.e 92
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [223]

:[222]
pushi.e 92
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[223]
pushi.e 93
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [225]

:[224]
pushi.e 93
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[225]
pushi.e 91
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [227]

:[226]
pushi.e 91
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[227]
pushi.e 96
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [229]

:[228]
pushi.e 96
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[229]
pushi.e 45
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [231]

:[230]
pushi.e 45
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[231]
pushi.e 61
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [233]

:[232]
pushi.e 61
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[233]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [235]

:[234]
pushi.e 37
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[235]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [237]

:[236]
pushi.e 39
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[237]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [239]

:[238]
pushi.e 38
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[239]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [241]

:[240]
pushi.e 40
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[241]
pushi.e 8
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [243]

:[242]
pushi.e 8
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[243]
pushi.e 18
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [245]

:[244]
pushi.e 18
pop.v.i self.new_key
pushi.e 2
pop.v.i self.control_select_con

:[245]
pushbltn.v builtin.os_type
pushi.e 0
cmp.i.v EQ
bf [251]

:[246]
pushbltn.v builtin.keyboard_key
call.i string(argc=1)
push.s "91"@20436
cmp.s.v EQ
bt [248]

:[247]
pushbltn.v builtin.keyboard_key
call.i string(argc=1)
push.s "92"@20437
cmp.s.v EQ
b [249]

:[248]
push.e 1

:[249]
bf [251]

:[250]
pushi.e -1
pop.v.i self.new_key
pushi.e 0
pop.v.i self.control_select_con

:[251]
pushi.e 13
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [253]

:[252]
pushi.e -1
pop.v.i self.new_key
pushi.e 0
pop.v.i self.control_select_con

:[253]
pushi.e 16
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [255]

:[254]
pushi.e -1
pop.v.i self.new_key
pushi.e 0
pop.v.i self.control_select_con

:[255]
pushi.e 17
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [257]

:[256]
pushi.e -1
pop.v.i self.new_key
pushi.e 0
pop.v.i self.control_select_con

:[257]
pushi.e 27
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [259]

:[258]
pushi.e -1
pop.v.i self.new_key
pushi.e 0
pop.v.i self.control_select_con

:[259]
push.v 1112.gamepad_active
conv.v.b
bf [261]

:[260]
push.v self.control_select_con
pushi.e 1
cmp.i.v EQ
b [262]

:[261]
push.e 0

:[262]
bf [268]

:[263]
pushi.e 0
pop.v.i local.i

:[264]
pushloc.v local.i
push.v self.gamepad_controls
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [268]

:[265]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.gamepad_controls
push.v 1112.gamepad_id
call.i gamepad_button_check_pressed(argc=2)
conv.v.b
bf [267]

:[266]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.gamepad_controls
pop.v.v self.new_gamepad_key
pushi.e 2
pop.v.i self.control_select_con

:[267]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [264]

:[268]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [271]

:[269]
push.v self.control_select_con
pushi.e 0
cmp.i.v EQ
bf [271]

:[270]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [272]

:[271]
push.e 0

:[272]
bf [279]

:[273]
pushi.e 2
pop.v.i self.onebuffer
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
pushi.e 7
cmp.i.v LT
bf [275]

:[274]
pushi.e 1
pop.v.i self.control_select_con
pushi.e -1
pop.v.i builtin.keyboard_lastkey
pushi.e 1
pop.v.i self.selectnoise

:[275]
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
pushi.e 7
cmp.i.v EQ
bf [277]

:[276]
pushi.e 176
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i gml_Script_scr_controls_default(argc=0)
popz.v
pushi.e 10
pop.v.i self.control_flash_timer

:[277]
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
pushi.e 8
cmp.i.v EQ
bf [279]

:[278]
pushi.e 1
pop.v.i self.controls_quitmenu

:[279]
push.v self.control_select_con
pushi.e 0
cmp.i.v EQ
bf [301]

:[280]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [283]

:[281]
push.v self.controls_quitmenu
pushi.e 0
cmp.i.v EQ
bf [283]

:[282]
push.v self.downbuffer
pushi.e 0
cmp.i.v LT
b [284]

:[283]
push.e 0

:[284]
bf [287]

:[285]
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
pushi.e 8
cmp.i.v LT
bf [287]

:[286]
pushi.e -5
pushi.e 35
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[287]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [290]

:[288]
push.v self.controls_quitmenu
pushi.e 0
cmp.i.v EQ
bf [290]

:[289]
push.v self.upbuffer
pushi.e 0
cmp.i.v LT
b [291]

:[290]
push.e 0

:[291]
bf [294]

:[292]
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v GT
bf [294]

:[293]
pushi.e -5
pushi.e 35
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[294]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [297]

:[295]
push.v self.controls_quitmenu
pushi.e 0
cmp.i.v EQ
bf [297]

:[296]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [298]

:[297]
push.e 0

:[298]
bf [301]

:[299]
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
bf [301]

:[300]
pushi.e 1
pop.v.i self.controls_quitmenu

:[301]
push.v self.control_select_con
pushi.e 2
cmp.i.v EQ
bf [338]

:[302]
push.v self.new_key
pushi.e -1
cmp.i.v NEQ
bf [326]

:[303]
pushi.e -1
pop.v.i self.dupe
pushi.e 0
pop.v.i local.i

:[304]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [308]

:[305]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
push.v self.new_key
cmp.v.v EQ
bf [307]

:[306]
pushloc.v local.i
pop.v.v self.dupe

:[307]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [304]

:[308]
push.v self.dupe
pushi.e 0
cmp.i.v GTE
bf [310]

:[309]
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

:[310]
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

:[311]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [319]

:[312]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
pushi.e 13
cmp.i.v EQ
bf [314]

:[313]
pushi.e -1
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.input_k
pushi.e 1
pop.v.i self.entercancel

:[314]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
pushi.e 16
cmp.i.v EQ
bf [316]

:[315]
pushi.e -1
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.input_k
pushi.e 1
pop.v.i self.shiftcancel

:[316]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
pushi.e 17
cmp.i.v EQ
bf [318]

:[317]
pushi.e -1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.input_k
pushi.e 1
pop.v.i self.ctrlcancel

:[318]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [311]

:[319]
push.v self.entercancel
pushi.e -1
cmp.i.v EQ
bf [321]

:[320]
pushi.e 13
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.input_k

:[321]
push.v self.shiftcancel
pushi.e -1
cmp.i.v EQ
bf [323]

:[322]
pushi.e 16
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.input_k

:[323]
push.v self.ctrlcancel
pushi.e -1
cmp.i.v EQ
bf [325]

:[324]
pushi.e 17
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.input_k

:[325]
b [337]

:[326]
pushi.e -1
pop.v.i self.dupe
push.v self.new_gamepad_key
push.i 32775
cmp.i.v EQ
bf [328]

:[327]
pushi.e 1
pop.v.i 1112.gamepad_shoulderlb_reassign

:[328]
pushi.e 0
pop.v.i local.i

:[329]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [333]

:[330]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_g
push.v self.new_gamepad_key
cmp.v.v EQ
bf [332]

:[331]
pushloc.v local.i
pop.v.v self.dupe

:[332]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [329]

:[333]
push.v self.dupe
pushi.e 0
cmp.i.v GTE
bf [335]

:[334]
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

:[335]
push.v self.new_gamepad_key
pushi.e -5
pushi.e -5
pushi.e 35
push.v [array]self.submenucoord
conv.v.i
pop.v.v [array]self.input_g
pushglb.v global.is_console
conv.v.b
bf [337]

:[336]
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

:[337]
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

:[338]
push.v self.controls_quitmenu
pushi.e 1
cmp.i.v EQ
bf [346]

:[339]
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
call.i gml_Script_ossafe_ini_open(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[340]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [342]

:[341]
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
b [340]

:[342]
pushi.e 0
pop.v.i local.i

:[343]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [345]

:[344]
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
b [343]

:[345]
push.v 1112.gamepad_shoulderlb_reassign
push.s "SHOULDERLB_REASSIGN"@20447
conv.s.v
push.s "SHOULDERLB_REASSIGN"@20447
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i gml_Script_ossafe_ini_close(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save(argc=0)
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

:[346]
pushglb.v global.is_console
conv.v.b
bf [348]

:[347]
pushglb.v global.submenu
pushi.e 36
cmp.i.v EQ
b [349]

:[348]
push.e 0

:[349]
bf [373]

:[350]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [353]

:[351]
push.v self.selected_border
push.v self.border_options
call.i array_length_1d(argc=1)
pushi.e 1
sub.i.v
cmp.v.v LT
bf [353]

:[352]
push.v self.selected_border
push.e 1
add.i.v
pop.v.v self.selected_border
pushi.e 1
pop.v.i self.check_border

:[353]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [356]

:[354]
push.v self.selected_border
pushi.e 0
cmp.i.v GT
bf [356]

:[355]
push.v self.selected_border
push.e 1
sub.i.v
pop.v.v self.selected_border
pushi.e 1
pop.v.i self.check_border

:[356]
push.v self.check_border
pushi.e 1
cmp.i.v EQ
bf [361]

:[357]
pushi.e -1
push.v self.selected_border
conv.v.i
push.v [array]self.border_options
pop.v.v local._border
pushloc.v local._border
pushi.e -1
pushi.e 2
push.v [array]self.border_options
cmp.v.v EQ
bf [359]

:[358]
pushi.e 0
conv.b.v
call.i gml_Script_scr_enable_screen_border(argc=1)
popz.v
b [360]

:[359]
pushi.e 1
conv.b.v
call.i gml_Script_scr_enable_screen_border(argc=1)
popz.v

:[360]
pushi.e -1
push.v self.selected_border
conv.v.i
push.v [array]self.border_options
pop.v.v global.screen_border_id
pushi.e 0
pop.v.i self.check_border

:[361]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [363]

:[362]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [364]

:[363]
push.e 0

:[364]
bf [366]

:[365]
pushi.e 1
pop.v.i self.border_select

:[366]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [368]

:[367]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [369]

:[368]
push.e 0

:[369]
bf [371]

:[370]
pushi.e 1
pop.v.i self.border_select

:[371]
push.v self.border_select
pushi.e 1
cmp.i.v EQ
bf [373]

:[372]
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
call.i gml_Script_ossafe_ini_open(argc=1)
popz.v
pushglb.v global.screen_border_id
push.s "TYPE"@20449
conv.s.v
push.s "BORDER"@20450
conv.s.v
call.i ini_write_string(argc=3)
popz.v
call.i gml_Script_ossafe_ini_close(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i self.control_select_con
pushi.e 30
pop.v.i global.submenu

:[373]
pushglb.v global.menuno
pushi.e 4
cmp.i.v EQ
bf [419]

:[374]
pushglb.v global.submenu
pushi.e 21
cmp.i.v EQ
bf [398]

:[375]
pushi.e -5
pushi.e -5
pushi.e 20
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.char
pop.v.v self.charcoord
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [378]

:[376]
pushi.e -5
pushi.e 21
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v GT
bf [378]

:[377]
pushi.e -5
pushi.e 21
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[378]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [382]

:[379]
pushi.e -5
pushi.e 21
push.v [array]self.submenucoord
pushi.e 5
cmp.i.v LT
bf [382]

:[380]
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
bf [382]

:[381]
pushi.e -5
pushi.e 21
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[382]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [384]

:[383]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [385]

:[384]
push.e 0

:[385]
bf [393]

:[386]
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
bf [388]

:[387]
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
b [389]

:[388]
push.e 0

:[389]
bf [393]

:[390]
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
bf [392]

:[391]
pushi.e 22
pop.v.i global.submenu
pushi.e 2
pop.v.i self.onebuffer
pushi.e 2
pop.v.i self.twobuffer

:[392]
b [393]

:[393]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [395]

:[394]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [396]

:[395]
push.e 0

:[396]
bf [398]

:[397]
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

:[398]
pushglb.v global.submenu
pushi.e 20
cmp.i.v EQ
bf [419]

:[399]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [404]

:[400]
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
bf [402]

:[401]
push.v self.chartotal
pushi.e 1
sub.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.submenucoord

:[402]
push.v self.chartotal
pushi.e 2
cmp.i.v GTE
bf [404]

:[403]
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i ceil(argc=1)
pop.v.v self.dograndom

:[404]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [409]

:[405]
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
bf [407]

:[406]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.submenucoord

:[407]
push.v self.chartotal
pushi.e 2
cmp.i.v GTE
bf [409]

:[408]
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i ceil(argc=1)
pop.v.v self.dograndom

:[409]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [411]

:[410]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [412]

:[411]
push.e 0

:[412]
bf [414]

:[413]
pushi.e 1
pop.v.i self.selectnoise
pushi.e 1
pop.v.i self.deschaver
pushi.e 21
pop.v.i global.submenu
pushi.e 2
pop.v.i self.onebuffer

:[414]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [416]

:[415]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [417]

:[416]
push.e 0

:[417]
bf [419]

:[418]
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

:[419]
pushglb.v global.menuno
pushi.e 1
cmp.i.v EQ
bf [622]

:[420]
pushglb.v global.submenu
pushi.e 2
cmp.i.v EQ
bt [422]

:[421]
pushglb.v global.submenu
pushi.e 3
cmp.i.v EQ
b [423]

:[422]
push.e 1

:[423]
bf [490]

:[424]
call.i gml_Script_left_p(argc=0)
conv.v.b
bt [426]

:[425]
call.i gml_Script_right_p(argc=0)
conv.v.b
b [427]

:[426]
push.e 1

:[427]
bf [447]

:[428]
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 0
cmp.i.v EQ
bt [434]

:[429]
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [434]

:[430]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [434]

:[431]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [434]

:[432]
push.v self.sm
pushi.e 8
cmp.i.v EQ
bt [434]

:[433]
push.v self.sm
pushi.e 10
cmp.i.v EQ
b [435]

:[434]
push.e 1

:[435]
bf [438]

:[436]
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
bf [438]

:[437]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[438]
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [444]

:[439]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [444]

:[440]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [444]

:[441]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [444]

:[442]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [444]

:[443]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [445]

:[444]
push.e 1

:[445]
bf [447]

:[446]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[447]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [468]

:[448]
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 0
cmp.i.v EQ
bt [453]

:[449]
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [453]

:[450]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [453]

:[451]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [453]

:[452]
push.v self.sm
pushi.e 8
cmp.i.v EQ
b [454]

:[453]
push.e 1

:[454]
bf [457]

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

:[457]
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [462]

:[458]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [462]

:[459]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [462]

:[460]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [462]

:[461]
push.v self.sm
pushi.e 9
cmp.i.v EQ
b [463]

:[462]
push.e 1

:[463]
bf [468]

:[464]
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
bf [466]

:[465]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 2
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise
b [468]

:[466]
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
bf [468]

:[467]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[468]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [485]

:[469]
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [474]

:[470]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [474]

:[471]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [474]

:[472]
push.v self.sm
pushi.e 8
cmp.i.v EQ
bt [474]

:[473]
push.v self.sm
pushi.e 10
cmp.i.v EQ
b [475]

:[474]
push.e 1

:[475]
bf [477]

:[476]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 2
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[477]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [482]

:[478]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [482]

:[479]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [482]

:[480]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [482]

:[481]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [483]

:[482]
push.e 1

:[483]
bf [485]

:[484]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 2
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[485]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [487]

:[486]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [488]

:[487]
push.e 0

:[488]
bf [490]

:[489]
pushi.e 1
pop.v.i self.cancelnoise
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.deschaver
pushi.e 1
pop.v.i global.submenu

:[490]
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [568]

:[491]
call.i gml_Script_left_p(argc=0)
conv.v.b
bt [493]

:[492]
call.i gml_Script_right_p(argc=0)
conv.v.b
b [494]

:[493]
push.e 1

:[494]
bf [514]

:[495]
pushi.e -5
pushi.e 4
push.v [array]self.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 0
cmp.i.v EQ
bt [501]

:[496]
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [501]

:[497]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [501]

:[498]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [501]

:[499]
push.v self.sm
pushi.e 8
cmp.i.v EQ
bt [501]

:[500]
push.v self.sm
pushi.e 10
cmp.i.v EQ
b [502]

:[501]
push.e 1

:[502]
bf [505]

:[503]
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
bf [505]

:[504]
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[505]
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [511]

:[506]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [511]

:[507]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [511]

:[508]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [511]

:[509]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [511]

:[510]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [512]

:[511]
push.e 1

:[512]
bf [514]

:[513]
pushi.e 1
pop.v.i self.movenoise
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord

:[514]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [535]

:[515]
pushi.e -5
pushi.e 4
push.v [array]self.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 0
cmp.i.v EQ
bt [520]

:[516]
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [520]

:[517]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [520]

:[518]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [520]

:[519]
push.v self.sm
pushi.e 8
cmp.i.v EQ
b [521]

:[520]
push.e 1

:[521]
bf [524]

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
pushi.e 1
pop.v.i self.movenoise
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.submenucoord
pushi.e 2
add.i.v
pop.i.v [array]self.submenucoord

:[524]
push.v self.sm
pushi.e 1
cmp.i.v EQ
bt [529]

:[525]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [529]

:[526]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [529]

:[527]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [529]

:[528]
push.v self.sm
pushi.e 9
cmp.i.v EQ
b [530]

:[529]
push.e 1

:[530]
bf [535]

:[531]
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
bf [533]

:[532]
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.submenucoord
pushi.e 2
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise
b [535]

:[533]
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
bf [535]

:[534]
pushi.e 1
pop.v.i self.movenoise
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord

:[535]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [552]

:[536]
pushi.e -5
pushi.e 4
push.v [array]self.submenucoord
pop.v.v self.sm
push.v self.sm
pushi.e 2
cmp.i.v EQ
bt [541]

:[537]
push.v self.sm
pushi.e 4
cmp.i.v EQ
bt [541]

:[538]
push.v self.sm
pushi.e 6
cmp.i.v EQ
bt [541]

:[539]
push.v self.sm
pushi.e 8
cmp.i.v EQ
bt [541]

:[540]
push.v self.sm
pushi.e 10
cmp.i.v EQ
b [542]

:[541]
push.e 1

:[542]
bf [544]

:[543]
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.submenucoord
pushi.e 2
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[544]
push.v self.sm
pushi.e 3
cmp.i.v EQ
bt [549]

:[545]
push.v self.sm
pushi.e 5
cmp.i.v EQ
bt [549]

:[546]
push.v self.sm
pushi.e 7
cmp.i.v EQ
bt [549]

:[547]
push.v self.sm
pushi.e 9
cmp.i.v EQ
bt [549]

:[548]
push.v self.sm
pushi.e 11
cmp.i.v EQ
b [550]

:[549]
push.e 1

:[550]
bf [552]

:[551]
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.submenucoord
pushi.e 2
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[552]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [554]

:[553]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [555]

:[554]
push.e 0

:[555]
bf [559]

:[556]
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
bf [558]

:[557]
pushi.e 3
pop.v.i global.charselect
pushi.e -5
push.v self.sm
conv.v.i
push.v [array]self.keyitem
pushi.e 300
add.i.v
call.i gml_Script_scr_itemuse(argc=1)
popz.v
b [559]

:[558]
pushi.e 152
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[559]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [561]

:[560]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [562]

:[561]
push.e 0

:[562]
bf [568]

:[563]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [567]

:[564]
pushi.e 892
pushenv [566]

:[565]
call.i instance_destroy(argc=0)
popz.v

:[566]
popenv [565]

:[567]
pushi.e 1
pop.v.i self.cancelnoise
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.deschaver
pushi.e 1
pop.v.i global.submenu

:[568]
pushglb.v global.submenu
pushi.e 3
cmp.i.v EQ
bf [579]

:[569]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [571]

:[570]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [572]

:[571]
push.e 0

:[572]
bf [574]

:[573]
pushi.e 1
pop.v.i self.selectnoise
pushi.e 3
pop.v.i self.onebuffer
pushi.e 7
pop.v.i global.submenu

:[574]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.item
pushi.e 0
cmp.i.v EQ
bf [579]

:[575]
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v EQ
bf [577]

:[576]
pushi.e 1
pop.v.i global.submenu
pushi.e 0
pop.v.i self.deschaver
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[577]
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v GT
bf [579]

:[578]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord

:[579]
pushglb.v global.submenu
pushi.e 2
cmp.i.v EQ
bf [594]

:[580]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [583]

:[581]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [583]

:[582]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [584]

:[583]
push.e 0

:[584]
bf [589]

:[585]
pushi.e 3
pop.v.i self.onebuffer
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_iteminfo(argc=1)
popz.v
push.v self.itemtarget
pushi.e 1
cmp.i.v EQ
bf [587]

:[586]
pushi.e 1
pop.v.i self.selectnoise
pushi.e 5
pop.v.i global.submenu

:[587]
push.v self.itemtarget
pushi.e 2
cmp.i.v EQ
bf [589]

:[588]
pushi.e 6
pop.v.i global.submenu

:[589]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.item
pushi.e 0
cmp.i.v EQ
bf [594]

:[590]
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v EQ
bf [592]

:[591]
pushi.e 1
pop.v.i global.submenu
pushi.e 0
pop.v.i self.deschaver
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[592]
pushi.e -5
pushi.e 2
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v GT
bf [594]

:[593]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord

:[594]
pushglb.v global.submenu
pushi.e 1
cmp.i.v EQ
bf [622]

:[595]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [599]

:[596]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v EQ
bf [598]

:[597]
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise
b [599]

:[598]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[599]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [603]

:[600]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 2
cmp.i.v EQ
bf [602]

:[601]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise
b [603]

:[602]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.submenucoord
pushi.e 1
add.i.v
pop.i.v [array]self.submenucoord
pushi.e 1
pop.v.i self.movenoise

:[603]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [616]

:[604]
pushi.e -5
pushi.e 1
push.v [array]self.submenucoord
pushi.e 2
add.i.v
pop.v.v global.submenu
pushglb.v global.submenu
pushi.e 4
cmp.i.v EQ
bf [609]

:[605]
pushi.e 1
pop.v.i self.selectnoise
pushi.e 1
pop.v.i self.deschaver
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [609]

:[606]
pushi.e 8
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
conv.v.b
bf [609]

:[607]
pushi.e 892
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [609]

:[608]
pushi.e 892
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[609]
pushglb.v global.submenu
pushi.e 2
cmp.i.v EQ
bt [611]

:[610]
pushglb.v global.submenu
pushi.e 3
cmp.i.v EQ
b [612]

:[611]
push.e 1

:[612]
bf [616]

:[613]
pushi.e 1
pop.v.i self.deschaver
call.i gml_Script_scr_itemdesc(argc=0)
popz.v
pushi.e -5
pushi.e 0
push.v [array]self.item
pushi.e 0
cmp.i.v EQ
bf [615]

:[614]
pushi.e 1
pop.v.i global.submenu
pushi.e 0
pop.v.i self.deschaver
b [616]

:[615]
pushi.e 1
pop.v.i self.selectnoise

:[616]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [619]

:[617]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [619]

:[618]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [620]

:[619]
push.e 0

:[620]
bf [622]

:[621]
pushi.e 1
pop.v.i self.cancelnoise
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i global.menuno
pushi.e 0
pop.v.i global.submenu

:[622]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [799]

:[623]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bt [626]

:[624]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [626]

:[625]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [627]

:[626]
push.e 1

:[627]
bf [765]

:[628]
pushi.e 0
pop.v.i self._up_pressed
call.i gml_Script_up_h(argc=0)
conv.v.b
bf [646]

:[629]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [631]

:[630]
pushi.e 1
pop.v.i self._up_pressed

:[631]
push.v self.hold_up
pushi.e 1
add.i.v
pop.v.v self.hold_up
push.v self.hold_up
pushi.e 8
cmp.i.v GTE
bf [633]

:[632]
pushi.e 1
pop.v.i self._up_pressed
pushi.e 6
pop.v.i self.hold_up

:[633]
push.v self._up_pressed
pushi.e 1
cmp.i.v EQ
bf [645]

:[634]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
pushi.e 0
cmp.i.v GT
bf [636]

:[635]
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

:[636]
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [639]

:[637]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
pushi.e -1
pushi.e 0
push.v [array]self.pagemax
cmp.v.v LT
bf [639]

:[638]
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

:[639]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [641]

:[640]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [642]

:[641]
push.e 1

:[642]
bf [645]

:[643]
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
pushi.e -1
pushi.e 1
push.v [array]self.pagemax
cmp.v.v LT
bf [645]

:[644]
pushi.e 1
pop.v.i self.movenoise
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.pagemax
pushi.e 1
sub.i.v
pop.i.v [array]self.pagemax

:[645]
b [647]

:[646]
pushi.e 0
pop.v.i self.hold_up

:[647]
pushi.e 0
pop.v.i self._down_pressed
call.i gml_Script_down_h(argc=0)
conv.v.b
bf [679]

:[648]
call.i gml_Script_down_p(argc=0)
pushi.e 1
cmp.i.v EQ
bf [650]

:[649]
pushi.e 1
pop.v.i self._down_pressed

:[650]
push.v self.hold_down
pushi.e 1
add.i.v
pop.v.v self.hold_down
push.v self.hold_down
pushi.e 8
cmp.i.v GTE
bf [652]

:[651]
pushi.e 1
pop.v.i self._down_pressed
pushi.e 6
pop.v.i self.hold_down

:[652]
pushi.e 47
pop.v.i local.__equipmenumax
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
pushloc.v local.__equipmenumax
cmp.v.v LT
bf [654]

:[653]
push.v self._down_pressed
pushi.e 1
cmp.i.v EQ
b [655]

:[654]
push.e 0

:[655]
bf [678]

:[656]
pushi.e 1
pop.v.i self.movenoise
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [658]

:[657]
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

:[658]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [660]

:[659]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [661]

:[660]
push.e 1

:[661]
bf [663]

:[662]
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

:[663]
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
bf [669]

:[664]
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
bf [666]

:[665]
pushi.e -1
pushi.e 0
push.v [array]self.pagemax
pushloc.v local.__equipmenumax
cmp.v.v LT
b [667]

:[666]
push.e 0

:[667]
bf [669]

:[668]
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

:[669]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [671]

:[670]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [672]

:[671]
push.e 1

:[672]
bf [678]

:[673]
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
bf [675]

:[674]
pushi.e -1
pushi.e 1
push.v [array]self.pagemax
pushloc.v local.__equipmenumax
cmp.v.v LT
b [676]

:[675]
push.e 0

:[676]
bf [678]

:[677]
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.pagemax
pushi.e 1
add.i.v
pop.i.v [array]self.pagemax
pushi.e 1
pop.v.i self.movenoise

:[678]
b [680]

:[679]
pushi.e 0
pop.v.i self.hold_down

:[680]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [682]

:[681]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [683]

:[682]
push.e 0

:[683]
bf [760]

:[684]
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
bf [711]

:[685]
pushi.e -5
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.weapon
call.i gml_Script_scr_weaponinfo(argc=1)
popz.v
push.v self.wwho
pushi.e 2
cmp.i.v EQ
bf [687]

:[686]
push.v self.wmessage2temp
pop.v.v self.wmsg

:[687]
push.v self.wwho
pushi.e 3
cmp.i.v EQ
bf [689]

:[688]
push.v self.wmessage3temp
pop.v.v self.wmsg

:[689]
push.v self.wwho
pushi.e 4
cmp.i.v EQ
bf [691]

:[690]
push.v self.wmessage4temp
pop.v.v self.wmsg

:[691]
push.v self.wwho
pushi.e 1
cmp.i.v EQ
bf [693]

:[692]
push.v self.weaponchar1temp
pushi.e 1
cmp.i.v EQ
b [694]

:[693]
push.e 0

:[694]
bf [696]

:[695]
pushi.e 1
pop.v.i self.canequip

:[696]
push.v self.wwho
pushi.e 2
cmp.i.v EQ
bf [698]

:[697]
push.v self.weaponchar2temp
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
pushi.e 3
cmp.i.v EQ
bf [703]

:[702]
push.v self.weaponchar3temp
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
pushi.e 4
cmp.i.v EQ
bf [708]

:[707]
push.v self.weaponchar4temp
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
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [713]

:[712]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [714]

:[713]
push.e 1

:[714]
bf [741]

:[715]
pushi.e -5
pushi.e -5
pushglb.v global.submenu
conv.v.i
push.v [array]self.submenucoord
conv.v.i
push.v [array]self.armor
call.i gml_Script_scr_armorinfo(argc=1)
popz.v
push.v self.wwho
pushi.e 2
cmp.i.v EQ
bf [717]

:[716]
push.v self.amessage2temp
pop.v.v self.wmsg

:[717]
push.v self.wwho
pushi.e 3
cmp.i.v EQ
bf [719]

:[718]
push.v self.amessage3temp
pop.v.v self.wmsg

:[719]
push.v self.wwho
pushi.e 4
cmp.i.v EQ
bf [721]

:[720]
push.v self.amessage4temp
pop.v.v self.wmsg

:[721]
push.v self.wwho
pushi.e 1
cmp.i.v EQ
bf [723]

:[722]
push.v self.armorchar1temp
pushi.e 1
cmp.i.v EQ
b [724]

:[723]
push.e 0

:[724]
bf [726]

:[725]
pushi.e 1
pop.v.i self.canequip

:[726]
push.v self.wwho
pushi.e 2
cmp.i.v EQ
bf [728]

:[727]
push.v self.armorchar2temp
pushi.e 1
cmp.i.v EQ
b [729]

:[728]
push.e 0

:[729]
bf [731]

:[730]
pushi.e 1
pop.v.i self.canequip

:[731]
push.v self.wwho
pushi.e 3
cmp.i.v EQ
bf [733]

:[732]
push.v self.armorchar3temp
pushi.e 1
cmp.i.v EQ
b [734]

:[733]
push.e 0

:[734]
bf [736]

:[735]
pushi.e 1
pop.v.i self.canequip

:[736]
push.v self.wwho
pushi.e 4
cmp.i.v EQ
bf [738]

:[737]
push.v self.armorchar4temp
pushi.e 1
cmp.i.v EQ
b [739]

:[738]
push.e 0

:[739]
bf [741]

:[740]
pushi.e 1
pop.v.i self.canequip

:[741]
push.v self.canequip
pushi.e 1
cmp.i.v EQ
bf [758]

:[742]
pushi.e 0
pop.v.i self.hold_up
pushi.e 0
pop.v.i self.hold_down
pushi.e 150
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushglb.v global.submenu
pushi.e 12
cmp.i.v EQ
bf [744]

:[743]
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
call.i gml_Script_scr_weaponinfo_mine(argc=0)
popz.v
call.i gml_Script_scr_weaponinfo_all(argc=0)
popz.v
pushi.e 2
pop.v.i self.twobuffer
pushi.e 11
pop.v.i global.submenu

:[744]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bt [746]

:[745]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
b [747]

:[746]
push.e 1

:[747]
bf [757]

:[748]
pushglb.v global.submenu
pushi.e 13
cmp.i.v EQ
bf [750]

:[749]
pushi.e -5
push.v self.wwho
conv.v.i
push.v [array]self.chararmor1
pop.v.v self.oldequip

:[750]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
bf [752]

:[751]
pushi.e -5
push.v self.wwho
conv.v.i
push.v [array]self.chararmor2
pop.v.v self.oldequip

:[752]
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
bf [754]

:[753]
push.i 231138
setowner.e
push.v self.newequip
pushi.e -5
push.v self.wwho
conv.v.i
pop.v.v [array]self.chararmor1

:[754]
pushglb.v global.submenu
pushi.e 14
cmp.i.v EQ
bf [756]

:[755]
push.i 231139
setowner.e
push.v self.newequip
pushi.e -5
push.v self.wwho
conv.v.i
pop.v.v [array]self.chararmor2

:[756]
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
call.i gml_Script_scr_armorinfo_mine(argc=0)
popz.v
call.i gml_Script_scr_armorinfo_all(argc=0)
popz.v
pushi.e 2
pop.v.i self.twobuffer
call.i gml_Script_scr_dmenu_armor_selection_match(argc=0)
popz.v
pushi.e 11
pop.v.i global.submenu

:[757]
b [759]

:[758]
pushi.e 152
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[759]
push.v self.wmsg
pushi.e -5
pushi.e 10
push.v [array]self.submenucoord
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[760]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [762]

:[761]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [763]

:[762]
push.e 0

:[763]
bf [765]

:[764]
pushi.e 1
pop.v.i self.cancelnoise
pushi.e 0
pop.v.i self.hold_up
pushi.e 0
pop.v.i self.hold_down
pushi.e 2
pop.v.i self.twobuffer
call.i gml_Script_scr_dmenu_armor_selection_match(argc=0)
popz.v
pushi.e 11
pop.v.i global.submenu

:[765]
pushglb.v global.submenu
pushi.e 11
cmp.i.v EQ
bf [782]

:[766]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [769]

:[767]
pushi.e 1
pop.v.i self.movenoise
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
bf [769]

:[768]
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.submenucoord

:[769]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [772]

:[770]
pushi.e 1
pop.v.i self.movenoise
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
bf [772]

:[771]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 11
pop.v.v [array]self.submenucoord

:[772]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [774]

:[773]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [775]

:[774]
push.e 0

:[775]
bf [777]

:[776]
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
call.i gml_Script_scr_dmenu_armor_selection_match(argc=0)
popz.v

:[777]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [779]

:[778]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [780]

:[779]
push.e 0

:[780]
bf [782]

:[781]
pushi.e 1
pop.v.i self.cancelnoise
pushi.e 0
pop.v.i self.deschaver
pushi.e 2
pop.v.i self.twobuffer
pushi.e 10
pop.v.i global.submenu

:[782]
pushglb.v global.submenu
pushi.e 10
cmp.i.v EQ
bf [799]

:[783]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [786]

:[784]
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
bf [786]

:[785]
push.v self.chartotal
pushi.e 1
sub.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.submenucoord

:[786]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [789]

:[787]
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
bf [789]

:[788]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.submenucoord

:[789]
pushi.e -5
pushi.e 10
push.v [array]self.submenucoord
pop.v.v global.charselect
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [791]

:[790]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [792]

:[791]
push.e 0

:[792]
bf [794]

:[793]
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

:[794]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [796]

:[795]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [797]

:[796]
push.e 0

:[797]
bf [799]

:[798]
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

:[799]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [842]

:[800]
pushi.e 0
pop.v.i global.submenu
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [806]

:[801]
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
pushi.e 0
cmp.i.v EQ
bf [803]

:[802]
push.i 231307
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.menucoord
pushi.e 1
pop.v.i self.movenoise
b [806]

:[803]
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
bf [805]

:[804]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.menucoord
pushi.e 1
sub.i.v
pop.i.v [array]self.menucoord

:[805]
pushi.e 1
pop.v.i self.movenoise

:[806]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [812]

:[807]
pushi.e -5
pushi.e 0
push.v [array]self.menucoord
pushi.e 4
cmp.i.v EQ
bf [809]

:[808]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.menucoord
pushi.e 1
pop.v.i self.movenoise
b [812]

:[809]
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
bf [811]

:[810]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]self.menucoord
pushi.e 1
add.i.v
pop.i.v [array]self.menucoord

:[811]
pushi.e 1
pop.v.i self.movenoise

:[812]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [815]

:[813]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [815]

:[814]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [816]

:[815]
push.e 0

:[816]
bf [827]

:[817]
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
bf [819]

:[818]
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

:[819]
pushglb.v global.menuno
pushi.e 2
cmp.i.v EQ
bf [821]

:[820]
call.i gml_Script_scr_weaponinfo_all(argc=0)
popz.v
call.i gml_Script_scr_armorinfo_all(argc=0)
popz.v
call.i gml_Script_scr_weaponinfo_mine(argc=0)
popz.v
call.i gml_Script_scr_armorinfo_mine(argc=0)
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

:[821]
pushglb.v global.menuno
pushi.e 3
cmp.i.v EQ
bf [823]

:[822]
pushi.e 0
pop.v.i global.menuno

:[823]
pushglb.v global.menuno
pushi.e 4
cmp.i.v EQ
bf [825]

:[824]
pushi.e 20
pop.v.i global.submenu
call.i gml_Script_scr_spellinfo_all(argc=0)
popz.v

:[825]
pushglb.v global.menuno
pushi.e 5
cmp.i.v EQ
bf [827]

:[826]
pushi.e 30
pop.v.i global.submenu
push.i 231827
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 30
pop.v.v [array]self.submenucoord

:[827]
pushi.e 0
pop.v.i self.close
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [829]

:[828]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [830]

:[829]
push.e 0

:[830]
bf [832]

:[831]
pushi.e 1
pop.v.i self.close

:[832]
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [834]

:[833]
push.v self.threebuffer
pushi.e 0
cmp.i.v LT
b [835]

:[834]
push.e 0

:[835]
bf [837]

:[836]
pushi.e 1
pop.v.i self.close

:[837]
push.v self.close
pushi.e 1
cmp.i.v EQ
bf [842]

:[838]
pushglb.v global.menuno
pushi.e 0
cmp.i.v EQ
bf [842]

:[839]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.charcon
pushi.e 82
pushenv [841]

:[840]
pushi.e 2
pop.v.i self.threebuffer
pushi.e 2
pop.v.i self.twobuffer

:[841]
popenv [840]

:[842]
pushglb.v global.interact
pushi.e 6
cmp.i.v EQ
bf [845]

:[843]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [845]

:[844]
pushi.e 0
pop.v.i global.interact

:[845]
push.v self.charcon
pushi.e 1
cmp.i.v EQ
bf [862]

:[846]
pushi.e 1
pop.v.i self.drawchar
pushi.e 60
pop.v.i self.bpy
pushi.e 80
pop.v.i self.tpy
pushglb.v global.interact
pushi.e 5
cmp.i.v EQ
bf [853]

:[847]
push.v self.tp
push.v self.tpy
pushi.e 1
sub.i.v
cmp.v.v LT
bf [852]

:[848]
push.v self.tpy
push.v self.tp
sub.v.v
pushi.e 40
cmp.i.v LTE
bf [850]

:[849]
push.v self.tp
push.v self.tpy
push.v self.tp
sub.v.v
push.d 2.5
div.d.v
call.i round(argc=1)
add.v.v
pop.v.v self.tp
b [851]

:[850]
push.v self.tp
pushi.e 30
add.i.v
pop.v.v self.tp

:[851]
b [853]

:[852]
push.v self.tpy
pop.v.v self.tp

:[853]
push.v self.bp
push.v self.bpy
pushi.e 1
sub.i.v
cmp.v.v LT
bf [855]

:[854]
push.v self.charcon
pushi.e 1
cmp.i.v EQ
b [856]

:[855]
push.e 0

:[856]
bf [861]

:[857]
push.v self.bpy
push.v self.bp
sub.v.v
pushi.e 40
cmp.i.v LTE
bf [859]

:[858]
push.v self.bp
push.v self.bpy
push.v self.bp
sub.v.v
push.d 2.5
div.d.v
call.i round(argc=1)
add.v.v
pop.v.v self.bp
b [860]

:[859]
push.v self.bp
pushi.e 30
add.i.v
pop.v.v self.bp

:[860]
b [862]

:[861]
push.v self.bpy
pop.v.v self.bp

:[862]
push.v self.charcon
pushi.e 0
cmp.i.v EQ
bf [877]

:[863]
push.v self.tp
pushi.e 0
cmp.i.v GT
bf [868]

:[864]
push.v self.tp
pushi.e 80
cmp.i.v GTE
bf [866]

:[865]
push.v self.tp
push.v self.tp
push.d 2.5
div.d.v
call.i round(argc=1)
sub.v.v
pop.v.v self.tp
b [867]

:[866]
push.v self.tp
pushi.e 30
sub.i.v
pop.v.v self.tp

:[867]
b [869]

:[868]
pushi.e 0
pop.v.i self.tp

:[869]
push.v self.bp
pushi.e 0
cmp.i.v GT
bf [874]

:[870]
push.v self.bp
pushi.e 40
cmp.i.v GTE
bf [872]

:[871]
push.v self.bp
push.v self.bp
push.d 2.5
div.d.v
call.i round(argc=1)
sub.v.v
pop.v.v self.bp
b [873]

:[872]
push.v self.bp
pushi.e 30
sub.i.v
pop.v.v self.bp

:[873]
b [875]

:[874]
pushi.e 0
pop.v.i self.bp

:[875]
push.v self.bp
pushi.e 0
cmp.i.v EQ
bf [877]

:[876]
pushi.e 0
pop.v.i self.drawchar

:[877]
push.v self.movenoise
pushi.e 1
cmp.i.v EQ
bf [879]

:[878]
pushi.e 260
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.movenoise

:[879]
push.v self.selectnoise
pushi.e 1
cmp.i.v EQ
bf [881]

:[880]
pushi.e 261
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.selectnoise

:[881]
push.v self.cancelnoise
pushi.e 1
cmp.i.v EQ
bf [883]

:[882]
pushi.e 156
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.cancelnoise

:[883]
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
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[884]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [886]

:[885]
pushi.e 1137
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[886]
pushi.e 76
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [888]

:[887]
call.i gml_Script_scr_load(argc=0)
popz.v

:[888]
pushi.e 82
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [890]

:[889]
pushi.e 8
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [891]

:[890]
push.e 0

:[891]
bf [893]

:[892]
call.i gml_Script_game_restart_true(argc=0)
popz.v

:[893]
pushi.e 82
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [895]

:[894]
pushi.e 8
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
not.b
b [896]

:[895]
push.e 0

:[896]
bf [end]

:[897]
call.i gml_Script_snd_free_all(argc=0)
popz.v
call.i room_restart(argc=0)
popz.v
pushi.e 0
pop.v.i global.interact

:[end]