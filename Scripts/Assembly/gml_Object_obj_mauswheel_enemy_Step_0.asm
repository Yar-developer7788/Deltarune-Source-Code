.localvar 2 arguments
.localvar 23076 simultext 13992

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [52]

:[1]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [18]

:[5]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[7]
pushi.e 50
pop.v.i global.typer
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_18_0"@26927
conv.s.v
push.s "(I'm no cheater!&It's just cheese...)"@26928
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[9]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_23_0"@26929
conv.s.v
push.s "(We are grippable.&We are many.)"@26930
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[11]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_27_0"@26931
conv.s.v
push.s "(Rolling around at&the speed of mouse...)"@26932
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[13]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_31_0"@26933
conv.s.v
push.s "(Wired is FASTER!)"@26934
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[15]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [17]

:[16]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_36_0"@26935
conv.s.v
push.s "(Well, everyone's captured.)&(What does that make me?)"@26936
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[17]
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 20
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[18]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [21]

:[20]
push.e 0

:[21]
bf [30]

:[22]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i gml_Script_scr_blconskip(argc=1)
popz.v
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [30]

:[23]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [25]

:[24]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[28]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [30]

:[29]
pushi.e 872
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 170
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[30]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [32]

:[31]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [52]

:[34]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 16
cmp.i.v EQ
bf [51]

:[35]
pushi.e 0
pop.v.i self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v
b [38]

:[37]
push.i 231869
setowner.e
push.s "MausTrail"@23887
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 19
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target

:[38]
pushi.e 140
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
push.i 231921
setowner.e
push.s "obj_mauswheel_enemy_slash_Step_0_gml_112_0"@26937
conv.s.v
push.s "* Mauswheel's DPI is lowering."@26938
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [50]

:[40]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [42]

:[41]
push.i 231921
setowner.e
push.s "obj_mauswheel_enemy_slash_Step_0_gml_115_0"@26939
conv.s.v
push.s "* Mauswheel is just a spareable husk now."@26940
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [50]

:[42]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
push.i 231921
setowner.e
push.s "obj_mauswheel_enemy_slash_Step_0_gml_130_0"@26941
conv.s.v
push.s "* Mauswheel is rolling around with an annoying wheel sound."@26942
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[44]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_131_0"@26943
conv.s.v
push.s "* Mauswheel might make a good wreath, as a prank."@26944
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[46]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_132_0"@26945
conv.s.v
push.s "* It's a cacophony of clicks."@26946
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[48]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_133_0"@26947
conv.s.v
push.s "* Smells like a three-cheese pizza."@26948
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[50]
pushi.e 1
pop.v.i self.attacked
b [52]

:[51]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[52]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[53]
call.i gml_Script_camerax(argc=0)
pop.v.v self.xx
call.i gml_Script_cameray(argc=0)
pop.v.v self.yy
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushi.e 1
pop.v.i self.actcon
push.s "obj_mauswheel_enemy_slash_Step_0_gml_157_0"@26949
conv.s.v
push.s "* MAUSWHEEL - Two mice are better than one! ... Three^1, maybe not./"@26950
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_mauswheel_enemy_slash_Step_0_gml_132_0_b"@26951
conv.s.v
push.s "* The cursor will follow you everywhere^1. Keep moving!/%"@26952
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[58]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [60]

:[59]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_163_0"@26953
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* Press ~1 To Trap!!!"@23908
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actfailure
pushi.e 15
pop.v.i self.actcon
pushi.e 0
pop.v.i self.basket_size
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[63]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [65]

:[64]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [66]

:[65]
push.e 0

:[66]
bf [68]

:[67]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_173_0"@26954
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* Press ~1 To Trap!!!"@23908
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actfailure
pushi.e 15
pop.v.i self.actcon
pushi.e 1
pop.v.i self.basket_size
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[68]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_183_0"@26955
conv.s.v
push.s "* Susie got on all fours and chased the mouse around the room like an animal!!/%"@23944
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 5
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushi.e 0
pop.v.i self.actingsus
pushi.e 0
pop.v.i self.actconsus
pushi.e 1
pop.v.i self.actcon

:[73]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [76]

:[74]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [77]

:[76]
push.e 0

:[77]
bf [84]

:[78]
push.v self.trappedText
conv.v.b
not.b
bf [80]

:[79]
pushi.e 1
pop.v.b self.trappedText
push.i 231920
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 0
popaf.e
push.s "obj_mauswheel_enemy_slash_Step_0_gml_202_0"@26956
conv.s.v
push.s "* Ralsei started putting peanut butter on a spoon and put it in a trap!!/%"@23948
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 5
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushi.e 2
pop.v.i self.actconral
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
b [84]

:[80]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_212_0"@26957
conv.s.v
push.s "* Ralsei sang a song about mice!!/%"@23950
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [83]

:[82]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_212_1"@26958
conv.s.v
push.s "* Ralsei sang a mouse song!/%"@23952
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[83]
pop.v.v local.simultext
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 5
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 0
pop.v.i self.actingral
pushi.e 0
pop.v.i self.actconral
pushi.e 1
pop.v.i self.actcon

:[84]
push.v self.actconral
pushi.e 2
cmp.i.v EQ
bf [86]

:[85]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [87]

:[86]
push.e 0

:[87]
bf [91]

:[88]
push.d 2.5
pop.v.d self.actconral
pushi.e 468
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 100
sub.i.v
push.v 373.x
pushi.e 5
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.basket
pushi.e 373
pushenv [90]

:[89]
pushi.e 0
pop.v.i self.visible

:[90]
popenv [89]
pushi.e 997
conv.i.v
push.v 373.y
pushi.e 1
sub.i.v
push.v 373.x
pushi.e 16
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.nise_susie
push.v 373.depth
push.v self.nise_susie
pushi.e -9
pop.v.v [stacktop]self.depth
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_mauswheel_enemy_slash_Step_0_gml_209_0"@26959
conv.s.v
push.s "* Susie was captured!!/%"@23954
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[91]
push.v self.actconral
push.d 2.5
cmp.d.v EQ
bf [93]

:[92]
push.v self.basket
pushi.e -9
push.v [stacktop]self.gravity
pushi.e 0
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [100]

:[95]
pushi.e 3
pop.v.i self.actconral
push.v self.nise_susie
pushi.e -9
pushenv [97]

:[96]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[97]
popenv [96]
push.v self.basket
pushi.e -9
pushenv [99]

:[98]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[99]
popenv [98]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[100]
push.v self.actconral
pushi.e 3
cmp.i.v EQ
bf [102]

:[101]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [103]

:[102]
push.e 0

:[103]
bf [105]

:[104]
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconral
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_mauswheel_enemy_slash_Step_0_gml_230_0"@26960
conv.s.v
push.s "\\EN* Susie!!!/"@23956
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "5"@5306
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_mauswheel_enemy_slash_Step_0_gml_243_0"@26961
conv.s.v
push.s "\\E5* The hell you blaming ME for!^1! YOU made the trap!!/%"@23958
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v

:[105]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [107]

:[106]
pushi.e 467
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.basket
push.v self.id
push.v self.basket
pushi.e -9
pop.v.v [stacktop]self.maker
pushi.e 11
pop.v.i self.actcon
pushi.e 1
pop.v.i self.actfailure
push.i 235997
setowner.e
pushi.e 1
conv.i.v
push.v self.basket
pushi.e -9
push.v self.myself
conv.v.i
pop.v.v [array]self.cancatch
push.i 170462
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.caught
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.caught
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.caught

:[107]
push.v self.actcon
pushi.e 12
cmp.i.v EQ
bf [114]

:[108]
pushi.e 0
pop.v.b self.trappingX
pushi.e 64
pushenv [110]

:[109]
call.i instance_destroy(argc=0)
popz.v

:[110]
popenv [109]
push.v self.actfailure
pushi.e 1
cmp.i.v EQ
bf [112]

:[111]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_269_0"@26962
conv.s.v
push.s "* You missed!/%"@26963
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [113]

:[112]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_270_0"@26964
conv.s.v
push.s "* You caught them!/%"@26965
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[113]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 13
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[114]
push.v self.actcon
pushi.e 14
cmp.i.v EQ
bf [116]

:[115]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
pushi.e 1
pop.v.i self.actcon

:[119]
push.v self.actcon
pushi.e 16
cmp.i.v EQ
bf [121]

:[120]
pushi.e 768
conv.i.v
push.v self.y
pushi.e 64
add.i.v
push.v self.x
pushi.e 60
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 17
pop.v.i self.actcon

:[121]
push.v self.actcon
pushi.e 18
cmp.i.v EQ
bf [128]

:[122]
pushi.e 64
pushenv [124]

:[123]
call.i instance_destroy(argc=0)
popz.v

:[124]
popenv [123]
push.v self.actfailure
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_296_0"@26966
conv.s.v
push.s "* You missed!/%"@26963
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [127]

:[126]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_297_0"@26967
conv.s.v
push.s "* You caught them!/%"@26965
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[127]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 13
pop.v.i self.actcon
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[128]
push.v self.actcon
pushi.e 19
cmp.i.v EQ
bf [134]

:[129]
pushi.e 64
pushenv [131]

:[130]
call.i instance_destroy(argc=0)
popz.v

:[131]
popenv [130]
pushi.e -5
pushi.e 642
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [133]

:[132]
push.d 22.1
pop.v.d self.actcon
b [134]

:[133]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_312_0"@26968
conv.s.v
push.s "* Mauswheel ran out of maice!/%"@26969
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 21
pop.v.i self.actcon
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[134]
push.v self.actcon
pushi.e 22
cmp.i.v EQ
bf [136]

:[135]
push.v self.myself
call.i gml_Script_scr_spare(argc=1)
popz.v

:[136]
push.v self.actcon
push.d 22.1
cmp.d.v EQ
bf [138]

:[137]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_317_0"@26970
conv.s.v
push.s "* Mauswheel reached 100`% mercy!/%"@26971
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
push.d 22.2
pop.v.d self.actcon

:[138]
push.v self.actcon
push.d 22.2
cmp.d.v EQ
bf [140]

:[139]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [141]

:[140]
push.e 0

:[141]
bf [143]

:[142]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_324_0"@26972
conv.s.v
push.s "* But, it's still rolling out of control.../%"@26973
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
push.d 22.3
pop.v.d self.actcon

:[143]
push.v self.actcon
push.d 22.3
cmp.d.v EQ
bf [145]

:[144]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [146]

:[145]
push.e 0

:[146]
bf [148]

:[147]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_331_0"@26974
conv.s.v
push.s "* Suddenly...!/%"@26975
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 23
pop.v.i self.actcon

:[148]
push.v self.actcon
pushi.e 22
cmp.i.v GT
bf [151]

:[149]
push.v self.actcon
pushi.e 23
cmp.i.v LT
bf [151]

:[150]
push.v self.image_speed
pushi.e 2
cmp.i.v LT
b [152]

:[151]
push.e 0

:[152]
bf [154]

:[153]
push.v self.image_speed
push.d 0.02
add.d.v
pop.v.v self.image_speed

:[154]
push.v self.actcon
pushi.e 23
cmp.i.v EQ
bf [156]

:[155]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [157]

:[156]
push.e 0

:[157]
bf [159]

:[158]
pushi.e 770
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 138
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 315
add.i.v
pushi.e 76
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 769
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 80
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 435
add.i.v
pushi.e 74
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 25
pop.v.i self.actcon
pushi.e 25
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[159]
push.v self.actcon
pushi.e 26
cmp.i.v EQ
bf [161]

:[160]
push.s "obj_mauswheel_enemy_slash_Step_0_gml_337_0"@26976
conv.s.v
push.s "* We'll take it from here!/%"@26977
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 27
pop.v.i self.actcon
pushi.e 12
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[161]
push.v self.actcon
pushi.e 28
cmp.i.v EQ
bf [163]

:[162]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [164]

:[163]
push.e 0

:[164]
bf [170]

:[165]
pushi.e 770
pushenv [167]

:[166]
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[167]
popenv [166]
pushi.e 769
pushenv [169]

:[168]
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[169]
popenv [168]
call.i gml_Script_scr_spareanim(argc=0)
popz.v
call.i gml_Script_scr_recruit(argc=0)
popz.v
pushi.e 0
pop.v.b self.visible
pushi.e 29
pop.v.i self.actcon
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[170]
push.v self.actcon
pushi.e 30
cmp.i.v EQ
bf [172]

:[171]
pushi.e 770
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [173]

:[172]
push.e 0

:[173]
bf [175]

:[174]
call.i gml_Script_scr_wincombat(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[175]
push.v self.actingnoe
pushi.e 1
cmp.i.v EQ
bf [177]

:[176]
push.v self.actconnoe
pushi.e 1
cmp.i.v EQ
b [178]

:[177]
push.e 0

:[178]
bf [183]

:[179]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_mauswheel_enemy_slash_Step_0_gml_360_0"@26978
conv.s.v
push.s "* Noelle screamed quietly!/%"@23960
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulordernoe
pushi.e 0
cmp.i.v EQ
bf [181]

:[180]
pushi.e 20
conv.i.v
b [182]

:[181]
pushi.e 0
conv.i.v

:[182]
pop.v.v self.actconnoe

:[183]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [185]

:[184]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [186]

:[185]
push.e 0

:[186]
bf [203]

:[187]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
call.i gml_Script_scr_nextact(argc=0)
popz.v
push.v self.remove
conv.v.b
bf [195]

:[188]
pushi.e 465
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [192]

:[189]
pushi.e 465
pushenv [191]

:[190]
pushi.e 1
pop.v.b self.tasque_joined

:[191]
popenv [190]

:[192]
push.i 231481
setowner.e
push.v self.y
pushi.e 15
sub.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermakey
push.i 231482
setowner.e
push.v self.tasquemarker
pushi.e -9
push.v [stacktop]self.x
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermakex
pushi.e 448
conv.i.v
pushi.e 32
conv.i.v
push.v self.myself
call.i gml_Script_scr_monster_change(argc=3)
pop.v.v self.newtasque
push.v self.tasquemarker
pushi.e -9
pushenv [194]

:[193]
call.i instance_destroy(argc=0)
popz.v

:[194]
popenv [193]
call.i instance_destroy(argc=0)
popz.v

:[195]
push.v self.basket
pushi.e -4
cmp.i.v NEQ
bf [203]

:[196]
push.v self.nise_susie
pushi.e -9
pushenv [198]

:[197]
call.i instance_destroy(argc=0)
popz.v

:[198]
popenv [197]
push.v self.basket
pushi.e -9
pushenv [200]

:[199]
call.i instance_destroy(argc=0)
popz.v

:[200]
popenv [199]
pushi.e 373
pushenv [202]

:[201]
pushi.e 1
pop.v.i self.visible

:[202]
popenv [201]

:[203]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [207]

:[204]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [207]

:[205]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
bt [207]

:[206]
push.v self.actconnoe
pushi.e 20
cmp.i.v EQ
b [208]

:[207]
push.e 1

:[208]
bf [end]

:[209]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [end]

:[210]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e -1
pop.v.i self.actconnoe
pushi.e 1
pop.v.i self.actcon

:[end]