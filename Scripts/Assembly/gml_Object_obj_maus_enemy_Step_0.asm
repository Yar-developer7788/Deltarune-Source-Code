.localvar 2 arguments
.localvar 23876 dialogue_rand 10926
.localvar 23927 currentX 10927
.localvar 23928 currentY 10928
.localvar 23076 simultext 10932
.localvar 23964 acttriggered 10934
.localvar 6565 __i 10935

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [78]

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
bf [26]

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
push.s "obj_maus_enemy_slash_Step_0_gml_18_0"@23868
conv.s.v
push.s "(You think you're&the big cheese?)"@23869
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
push.s "obj_maus_enemy_slash_Step_0_gml_23_0"@23870
conv.s.v
push.s "(Tired of being&pushed around.)"@23871
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
push.s "obj_maus_enemy_slash_Step_0_gml_27_0"@23872
conv.s.v
push.s "(Left, right,&right, left...)"@23873
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
push.s "obj_maus_enemy_slash_Step_0_gml_31_0"@23874
conv.s.v
push.s "(Catch me, catch me!)&(Hee hee hee...)"@23875
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[15]
push.v self.trapped
conv.v.b
bf [19]

:[16]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v local.dialogue_rand
pushloc.v local.dialogue_rand
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_maus_enemy_slash_Step_0_gml_40_0"@23877
conv.s.v
push.s "(Are you going to&take me home?)"@23878
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [19]

:[18]
push.s "obj_maus_enemy_slash_Step_0_gml_43_0"@23879
conv.s.v
push.s "(Just take good&care of me!)"@23880
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[19]
push.v self.fearact
conv.v.b
bf [21]

:[20]
push.s "obj_maus_enemy_slash_Step_0_gml_49_0"@23881
conv.s.v
push.s "(I can't help it^1,&I'm a scary guy.)"@23882
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.fearact

:[21]
push.v self.complimentact
conv.v.b
bf [23]

:[22]
push.s "obj_maus_enemy_slash_Step_0_gml_55_0"@23883
conv.s.v
push.s "(I can't help it^1,&I'm a cutey guy.)"@23884
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.complimentact

:[23]
push.v self.tasque_joined
conv.v.b
bf [25]

:[24]
pushi.e 0
pop.v.b self.tasque_joined
push.s "obj_maus_enemy_slash_Step_0_gml_51_0"@23885
conv.s.v
push.s "(I'll work with&who I have to.)"@23886
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[25]
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 40
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[26]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [29]

:[28]
push.e 0

:[29]
bf [35]

:[30]
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
bf [35]

:[31]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [33]

:[32]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[33]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [35]

:[34]
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

:[35]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [37]

:[36]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [78]

:[39]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 16
cmp.i.v EQ
bf [77]

:[40]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 0
pop.v.i self.rr
b [56]

:[42]
call.i gml_Script_scr_monsterpop(argc=0)
push.v self.object_index
call.i instance_number(argc=1)
cmp.v.v EQ
bf [55]

:[43]
push.v self.myself
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [45]

:[44]
push.s "MausTrail"@23887
conv.s.v
push.v self.myself
call.i gml_Script_scr_attackprepcheck(argc=2)
conv.v.b
not.b
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e 1
pop.v.i self.rr
b [54]

:[48]
push.v self.myself
pushi.e 0
cmp.i.v EQ
bt [50]

:[49]
push.s "MausTrail"@23887
conv.s.v
push.v self.myself
call.i gml_Script_scr_attackprepcheck(argc=2)
conv.v.b
not.b
b [51]

:[50]
push.e 1

:[51]
bf [53]

:[52]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
b [54]

:[53]
pushi.e 0
pop.v.i self.rr

:[54]
b [56]

:[55]
pushi.e 1
pop.v.i self.rr

:[56]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
push.i 231869
setowner.e
push.s "MausHoles"@23888
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
pushi.e 17
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
b [59]

:[58]
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

:[59]
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
bf [61]

:[60]
push.i 231921
setowner.e
push.s "obj_maus_enemy_slash_Step_0_gml_114_0"@23889
conv.s.v
push.s "* Maus's clicking sounds more like splat noises."@23890
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [76]

:[61]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [63]

:[62]
push.i 231921
setowner.e
push.s "obj_maus_enemy_slash_Step_0_gml_117_0"@23891
conv.s.v
push.s "* Maus is squeaking cheerfully."@23892
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [76]

:[63]
pushi.e 100
conv.i.v
call.i random(argc=1)
pushi.e 98
cmp.i.v GTE
bf [68]

:[64]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
push.i 231921
setowner.e
push.s "obj_maus_enemy_slash_Step_0_gml_124_0"@23893
conv.s.v
push.s "* Maus would like to go to its favorite bistro in this marvelous city."@23894
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [67]

:[66]
push.i 231921
setowner.e
push.s "obj_maus_enemy_slash_Step_0_gml_127_0"@23895
conv.s.v
push.s "* Smells like wood shavings."@23896
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[67]
b [76]

:[68]
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
bf [70]

:[69]
push.i 231921
setowner.e
push.s "obj_maus_enemy_slash_Step_0_gml_132_0"@23897
conv.s.v
push.s "* Maus is thinking about overly elaborate machines."@23898
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[70]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
push.s "obj_maus_enemy_slash_Step_0_gml_133_0"@23899
conv.s.v
push.s "* Maus is clicking and squeaking."@23900
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[72]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [74]

:[73]
push.s "obj_maus_enemy_slash_Step_0_gml_134_0"@23901
conv.s.v
push.s "* Maus keeps running between your feet."@23902
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[74]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [76]

:[75]
push.s "obj_maus_enemy_slash_Step_0_gml_135_0"@23903
conv.s.v
push.s "* Maus is keenly aware of the fear it invokes."@23904
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[76]
pushi.e 1
pop.v.i self.attacked
b [78]

:[77]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[78]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[79]
call.i gml_Script_camerax(argc=0)
pop.v.v self.xx
call.i gml_Script_cameray(argc=0)
pop.v.v self.yy
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
pushi.e 1
pop.v.i self.actcon
push.s "obj_maus_enemy_slash_Step_0_gml_159_0"@23905
conv.s.v
push.s "* MAUS - It's just a little mouse living in a little house./%"@23906
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[84]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [86]

:[85]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
pushi.e 0
pop.v.i self.trappingX
push.s "obj_maus_enemy_slash_Step_0_gml_166_0"@23907
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
pushi.e 9
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[89]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [91]

:[90]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [92]

:[91]
push.e 0

:[92]
bf [110]

:[93]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [95]

:[94]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_maus_enemy_slash_Step_0_gml_177_0"@23909
conv.s.v
push.s "\\E5* There's only one solution for a mouse!!/"@23910
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_maus_enemy_slash_Step_0_gml_178_0"@23911
conv.s.v
push.s "\\EH* Here^1, kitty kitty!!/%"@23912
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e 30
pop.v.i self.actcon
b [110]

:[95]
push.v self.nact_count
push.e 1
add.i.v
pop.v.v self.nact_count
pushi.e -5
pushi.e 379
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [101]

:[96]
push.v self.object_index
pushi.e -9
pushenv [98]

:[97]
pushi.e 1
pop.v.i self.complimentact

:[98]
popenv [97]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_maus_enemy_slash_Step_0_gml_188_0_b"@23913
conv.s.v
push.s "* Noelle complimented the enemies!/"@23914
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_maus_enemy_slash_Step_0_gml_190_0"@23915
conv.s.v
push.s "\\E3* They're..^1. kind of cute^1, right...?/%"@23916
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e 392
pushenv [100]

:[99]
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[100]
popenv [99]
b [109]

:[101]
push.v self.object_index
pushi.e -9
pushenv [103]

:[102]
pushi.e 1
pop.v.i self.fearact

:[103]
popenv [102]
push.v self.nact_count
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_maus_enemy_slash_Step_0_gml_188_0"@23917
conv.s.v
push.s "\\EE* Th-the way it moves is just so..^1. so scary!/"@23918
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_maus_enemy_slash_Step_0_gml_189_0"@23919
conv.s.v
push.s "\\EE* It's disgusting!/"@23920
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_maus_enemy_slash_Step_0_gml_191_0"@23921
conv.s.v
push.s "* Maus was rejected..^1. everyone felt TIRED./%"@23922
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v
b [106]

:[105]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_maus_enemy_slash_Step_0_gml_196_0"@23923
conv.s.v
push.s "* Noelle reacted in fear!/"@23924
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_maus_enemy_slash_Step_0_gml_197_0"@23925
conv.s.v
push.s "* The enemies felt dejected and TIRED.../%"@23926
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[106]
pushi.e 392
pushenv [108]

:[107]
push.v self.myself
call.i gml_Script_scr_monster_make_tired(argc=1)
popz.v

:[108]
popenv [107]

:[109]
pushi.e 1
pop.v.i self.actcon

:[110]
push.v self.actcon
pushi.e 30
cmp.i.v EQ
bf [115]

:[111]
push.v self.battlewriter
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [115]

:[112]
pushi.e 1669
conv.i.v
push.v self.y
call.i gml_Script_camerax(argc=0)
pushi.e 800
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.tasquemarker
push.d 0.16666666666666666
push.v self.tasquemarker
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.depth
push.v self.tasquemarker
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.x
pushi.e 80
sub.i.v
pop.v.v local.currentX
push.v self.y
pushi.e 15
sub.i.v
pop.v.v local.currentY
pushi.e -2
pop.v.i self.image_xscale
pushi.e 30
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermakey
call.i gml_Script_camerax(argc=0)
pushi.e 800
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
push.v self.tasquemarker
pushi.e -9
pushenv [114]

:[113]
pushi.e 30
conv.i.v
pushloc.v local.currentY
pushloc.v local.currentX
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[114]
popenv [113]
pushi.e 31
pop.v.i self.actcon
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[115]
push.v self.actcon
pushi.e 32
cmp.i.v EQ
bf [117]

:[116]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_maus_enemy_slash_Step_0_gml_251_0"@23929
conv.s.v
push.s "\\EK* ...don't we just have to fight the cat now?/"@23930
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_maus_enemy_slash_Step_0_gml_253_0"@23931
conv.s.v
push.s "\\EK* Huh?/%"@21432
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e 1
pop.v.b self.remove
pushi.e 33
pop.v.i self.actcon
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[117]
push.v self.actcon
pushi.e 34
cmp.i.v EQ
bf [119]

:[118]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [120]

:[119]
push.e 0

:[120]
bf [122]

:[121]
pushi.e 1
pop.v.i self.actcon

:[122]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [124]

:[123]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [125]

:[124]
push.e 0

:[125]
bf [127]

:[126]
pushi.e 1
pop.v.b self.trappingX
push.s "obj_maus_enemy_slash_Step_0_gml_269_0"@23932
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* Press ~1 to trap all the enemies!"@23933
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 9
pop.v.i self.actcon
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[127]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [132]

:[128]
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
push.v self.trappingX
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
push.i 235997
setowner.e
pushi.e 1
conv.i.v
push.v self.basket
pushi.e -9
pushi.e 0
pop.v.v [array]self.cancatch
pushi.e 1
conv.i.v
push.v self.basket
pushi.e -9
pushi.e 1
pop.v.v [array]self.cancatch
pushi.e 1
conv.i.v
push.v self.basket
pushi.e -9
pushi.e 2
pop.v.v [array]self.cancatch
b [131]

:[130]
push.i 235997
setowner.e
pushi.e 1
conv.i.v
push.v self.basket
pushi.e -9
push.v self.myself
conv.v.i
pop.v.v [array]self.cancatch

:[131]
push.v self.trappingX
push.v self.basket
pushi.e -9
pop.v.v [stacktop]self.trappingX
pushi.e 11
pop.v.i self.actcon
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

:[132]
push.v self.actcon
pushi.e 12
cmp.i.v EQ
bf [140]

:[133]
pushi.e 0
pop.v.b self.trappingX
pushi.e 64
pushenv [135]

:[134]
call.i instance_destroy(argc=0)
popz.v

:[135]
popenv [134]
pushi.e 0
pop.v.i self.caughtamount
pushi.e -1
pushi.e 0
push.v [array]self.caught
pushi.e -1
pushi.e 1
push.v [array]self.caught
add.v.v
pushi.e -1
pushi.e 2
push.v [array]self.caught
add.v.v
pop.v.v self.caughtamount
push.s "obj_maus_enemy_slash_Step_0_gml_304_0"@23937
conv.s.v
push.s "* Didn't catch anything.../%"@23938
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.caughtamount
pushi.e 1
cmp.i.v EQ
bf [137]

:[136]
push.s "obj_maus_enemy_slash_Step_0_gml_305_0"@23939
conv.s.v
push.s "* Caught the enemy!/%"@23940
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[137]
push.v self.caughtamount
pushi.e 2
cmp.i.v GTE
bf [139]

:[138]
push.s "obj_maus_enemy_slash_Step_0_gml_306_0"@23941
conv.s.v
push.v self.caughtamount
call.i string(argc=1)
push.s "* Caught ~1 enemies!/%"@23942
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v

:[139]
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

:[140]
push.v self.actcon
pushi.e 14
cmp.i.v EQ
bf [142]

:[141]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [143]

:[142]
push.e 0

:[143]
bf [145]

:[144]
pushi.e 1
pop.v.i self.actcon

:[145]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [147]

:[146]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [148]

:[147]
push.e 0

:[148]
bf [156]

:[149]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [151]

:[150]
push.s "obj_maus_enemy_slash_Step_0_gml_322_0"@23943
conv.s.v
push.s "* Susie got on all fours and chased the mouse around the room like an animal!!/%"@23944
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [152]

:[151]
push.s "obj_maus_enemy_slash_Step_0_gml_322_1"@23945
conv.s.v
push.s "* Susie chased on all fours!!/%"@23946
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[152]
pop.v.v local.simultext
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulordersus
pushi.e 0
cmp.i.v EQ
bf [154]

:[153]
pushi.e 20
conv.i.v
b [155]

:[154]
pushi.e 0
conv.i.v

:[155]
pop.v.v self.actconsus

:[156]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [158]

:[157]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [159]

:[158]
push.e 0

:[159]
bf [171]

:[160]
push.v self.trappedText
conv.v.b
not.b
bf [164]

:[161]
pushi.e 465
pushenv [163]

:[162]
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

:[163]
popenv [162]
push.s "obj_maus_enemy_slash_Step_0_gml_343_0"@23947
conv.s.v
push.s "* Ralsei started putting peanut butter on a spoon and put it in a trap!!/%"@23948
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
pushi.e 2
pop.v.i self.actconral
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
b [171]

:[164]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [166]

:[165]
push.s "obj_maus_enemy_slash_Step_0_gml_352_0"@23949
conv.s.v
push.s "* Ralsei sang a song about mice!!/%"@23950
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [167]

:[166]
push.s "obj_maus_enemy_slash_Step_0_gml_352_1"@23951
conv.s.v
push.s "* Ralsei sang a mouse song!/%"@23952
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[167]
pop.v.v local.simultext
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderral
pushi.e 0
cmp.i.v EQ
bf [169]

:[168]
pushi.e 20
conv.i.v
b [170]

:[169]
pushi.e 0
conv.i.v

:[170]
pop.v.v self.actconral

:[171]
push.v self.actconral
pushi.e 2
cmp.i.v EQ
bf [173]

:[172]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [174]

:[173]
push.e 0

:[174]
bf [178]

:[175]
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
pushenv [177]

:[176]
pushi.e 0
pop.v.i self.visible

:[177]
popenv [176]
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
push.s "obj_maus_enemy_slash_Step_0_gml_422_0"@23953
conv.s.v
push.s "* Susie was captured!!/%"@23954
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[178]
push.v self.actconral
push.d 2.5
cmp.d.v EQ
bf [180]

:[179]
push.v self.basket
pushi.e -9
push.v [stacktop]self.gravity
pushi.e 0
cmp.i.v EQ
b [181]

:[180]
push.e 0

:[181]
bf [187]

:[182]
pushi.e 3
pop.v.i self.actconral
push.v self.nise_susie
pushi.e -9
pushenv [184]

:[183]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[184]
popenv [183]
push.v self.basket
pushi.e -9
pushenv [186]

:[185]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[186]
popenv [185]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[187]
push.v self.actconral
pushi.e 3
cmp.i.v EQ
bf [189]

:[188]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [190]

:[189]
push.e 0

:[190]
bf [192]

:[191]
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconral
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_maus_enemy_slash_Step_0_gml_444_0"@23955
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
push.s "obj_maus_enemy_slash_Step_0_gml_383_0"@23957
conv.s.v
push.s "\\E5* The hell you blaming ME for!^1! YOU made the trap!!/%"@23958
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v

:[192]
push.v self.actingnoe
pushi.e 1
cmp.i.v EQ
bf [194]

:[193]
push.v self.actconnoe
pushi.e 1
cmp.i.v EQ
b [195]

:[194]
push.e 0

:[195]
bf [203]

:[196]
pushi.e -5
pushi.e 379
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [198]

:[197]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_maus_enemy_slash_Step_0_gml_391_0"@23959
conv.s.v
push.s "* Noelle screamed quietly!/%"@23960
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [199]

:[198]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_maus_enemy_slash_Step_0_gml_408_0"@23961
conv.s.v
push.s "* Noelle cheered brightly!/%"@23962
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[199]
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
bf [201]

:[200]
pushi.e 20
conv.i.v
b [202]

:[201]
pushi.e 0
conv.i.v

:[202]
pop.v.v self.actconnoe

:[203]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [205]

:[204]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [206]

:[205]
push.e 0

:[206]
bf [235]

:[207]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
call.i gml_Script_scr_nextact(argc=0)
popz.v
push.v self.remove
conv.v.b
bf [227]

:[208]
pushi.e 465
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [212]

:[209]
pushi.e 465
pushenv [211]

:[210]
pushi.e 1
pop.v.b self.tasque_joined

:[211]
popenv [210]

:[212]
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
pushenv [214]

:[213]
call.i instance_destroy(argc=0)
popz.v

:[214]
popenv [213]
pushi.e 0
pop.v.i local.acttriggered
pushi.e 1
pop.v.i local.__i

:[215]
pushloc.v local.__i
pushi.e 3
cmp.i.v LT
bf [224]

:[216]
pushi.e -5
pushloc.v local.__i
conv.v.i
push.v [array]self.actingtarget
push.v self.myself
cmp.v.v EQ
bf [218]

:[217]
pushi.e -5
pushloc.v local.__i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v GT
b [219]

:[218]
push.e 0

:[219]
bf [223]

:[220]
pushi.e -5
pushloc.v local.__i
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [222]

:[221]
pushi.e 1
pop.v.i local.acttriggered

:[222]
push.i 231499
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.__i
conv.v.i
pop.v.v [array]self.acting
push.i 231875
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.__i
conv.v.i
pop.v.v [array]self.actingsimul
push.i 231872
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.__i
conv.v.i
pop.v.v [array]self.actingsingle
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.__i
conv.v.i
pop.v.v [array]self.faceaction

:[223]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [215]

:[224]
pushloc.v local.acttriggered
conv.v.b
bf [226]

:[225]
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[226]
call.i instance_destroy(argc=0)
popz.v

:[227]
push.v self.basket
pushi.e -4
cmp.i.v NEQ
bf [235]

:[228]
push.v self.nise_susie
pushi.e -9
pushenv [230]

:[229]
call.i instance_destroy(argc=0)
popz.v

:[230]
popenv [229]
push.v self.basket
pushi.e -9
pushenv [232]

:[231]
call.i instance_destroy(argc=0)
popz.v

:[232]
popenv [231]
pushi.e 373
pushenv [234]

:[233]
pushi.e 1
pop.v.i self.visible

:[234]
popenv [233]

:[235]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [239]

:[236]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [239]

:[237]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
bt [239]

:[238]
push.v self.actconnoe
pushi.e 20
cmp.i.v EQ
b [240]

:[239]
push.e 1

:[240]
bf [end]

:[241]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [end]

:[242]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e -1
pop.v.i self.actconnoe
pushi.e 1
pop.v.i self.actcon

:[end]