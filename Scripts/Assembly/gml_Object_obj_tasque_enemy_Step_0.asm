.localvar 2 arguments
.localvar 23626 maxmin 10660
.localvar 23076 simultext 10661
.localvar 15767 sentenceEnd 10662
.localvar 23669 nact_text 10663

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [58]

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
push.s "obj_tasque_enemy_slash_Step_0_gml_16_0"@23604
conv.s.v
push.s "meowowme&owowmeow"@23605
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
push.s "obj_tasque_enemy_slash_Step_0_gml_17_0"@23606
conv.s.v
push.s "meowowme&meowmeow"@23607
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
push.s "obj_tasque_enemy_slash_Step_0_gml_18_0"@23608
conv.s.v
push.s "meowowme&owowowow"@23609
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
push.s "obj_tasque_enemy_slash_Step_0_gml_19_0"@23610
conv.s.v
push.s "meowowow&meowowow"@23611
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[15]
push.v self.petted
conv.v.b
bf [17]

:[16]
pushi.e 0
pop.v.b self.petted
push.s "obj_tasque_enemy_slash_Step_0_gml_24_0"@23612
conv.s.v
push.s "owowowmememeowme&owmemeowowmemeow&owmeowmemeowmeow"@23613
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
pushi.e 10
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
bf [27]

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
bf [27]

:[23]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [25]

:[24]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[25]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [27]

:[26]
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

:[27]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [29]

:[28]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [58]

:[31]
push.v self.rtimer
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr

:[33]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 15
cmp.i.v EQ
bf [57]

:[34]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.i 231869
setowner.e
push.s "YarnBalls"@23614
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
pushi.e 2
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 6
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.element
b [39]

:[36]
push.v self.rr
pushi.e 0
cmp.i.v GT
bf [39]

:[37]
push.i 231869
setowner.e
push.s "MeowWow"@23615
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
pushi.e 3
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 6
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.element
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [39]

:[38]
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.difficulty

:[39]
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
bf [41]

:[40]
push.i 231921
setowner.e
push.s "obj_tasque_enemy_slash_Step_0_gml_89_0"@23616
conv.s.v
push.s "* Tasque is beeping dangerously."@23617
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [56]

:[41]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [43]

:[42]
push.i 231921
setowner.e
push.s "obj_tasque_enemy_slash_Step_0_gml_92_0"@23618
conv.s.v
push.s "* Tasque is emitting an 8-bit purr."@23619
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [56]

:[43]
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=5)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
push.i 231921
setowner.e
push.s "obj_tasque_enemy_slash_Step_0_gml_96_0"@23620
conv.s.v
push.s "* Tasque is batting a ball of low-poly yarn."@23621
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[45]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [50]

:[46]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_tasque_enemy_slash_Step_0_gml_99_0"@23622
conv.s.v
push.s "minimized"@23623
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [49]

:[48]
push.s "obj_tasque_enemy_slash_Step_0_gml_99_1"@23624
conv.s.v
push.s "maximized"@23625
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[49]
pop.v.v local.maxmin
push.s "obj_tasque_enemy_slash_Step_0_gml_100_0"@23627
conv.s.v
pushloc.v local.maxmin
push.s "* Tasque is meowing to be ~1."@23628
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[50]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_tasque_enemy_slash_Step_0_gml_102_0"@23629
conv.s.v
push.s "* Tasque cleans with a sawtooth tongue."@23630
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[52]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_tasque_enemy_slash_Step_0_gml_103_0"@23631
conv.s.v
push.s "* Tasque wags its tail in a sine wave."@23632
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[54]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_tasque_enemy_slash_Step_0_gml_104_0"@23633
conv.s.v
push.s "* Smells like plastic cartridge."@23634
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[56]
pushi.e 1
pop.v.i self.attacked
b [58]

:[57]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[58]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[59]
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
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [62]

:[61]
push.e 0

:[62]
bf [64]

:[63]
pushi.e 1
pop.v.i self.actcon
push.s "obj_tasque_enemy_slash_Step_0_gml_126_0"@23635
conv.s.v
push.s "* TASQUE - This stray cat is in need of some management./%"@23636
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[64]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [66]

:[65]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [77]

:[68]
pushi.e 1
pop.v.b self.petted
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
push.s "obj_tasque_enemy_slash_Step_0_gml_133_0"@23637
conv.s.v
push.s "* You pet Tasque. It liked that./%"@23638
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [71]

:[70]
push.s "obj_tasque_enemy_slash_Step_0_gml_133_1"@23639
conv.s.v
push.s "* You pet Tasque!/%"@23640
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[71]
pop.v.v local.simultext
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [73]

:[72]
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[73]
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderkri
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
pushi.e 20
conv.i.v
b [76]

:[75]
pushi.e -1
conv.i.v

:[76]
pop.v.v self.actcon

:[77]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [79]

:[78]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [102]

:[81]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [93]

:[82]
push.v self.sact_count
push.e 1
add.i.v
pop.v.v self.sact_count
push.v self.sact_count
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_tasque_enemy_slash_Step_0_gml_150_0"@23641
conv.s.v
push.s "It's just a cat..."@23642
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "middle"@5597
conv.s.v
push.s "right"@4637
conv.s.v
pushi.e 20
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v

:[84]
push.v self.sact_count
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
push.s "/"@4448
conv.s.v
b [87]

:[86]
push.s "/%"@4449
conv.s.v

:[87]
pop.v.v local.sentenceEnd
push.s "obj_tasque_enemy_slash_Step_0_gml_155_0"@23643
conv.s.v
pushloc.v local.sentenceEnd
push.s "* Susie roared!! The enemies became TIRED.~1"@23644
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
pushi.e 67
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.sact_count
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
pushi.e 2
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_tasque_enemy_slash_Step_0_gml_160_0"@23645
conv.s.v
push.s "\\E2* Who's king of the jungle now!?\\f0/%"@23646
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[89]
pushi.e 392
pushenv [92]

:[90]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v NEQ
bf [92]

:[91]
push.v self.myself
call.i gml_Script_scr_monster_make_tired(argc=1)
popz.v

:[92]
popenv [90]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon
b [102]

:[93]
push.v self.nact_count
push.e 1
add.i.v
pop.v.v self.nact_count
push.v self.nact_count
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
push.s "/"@4448
conv.s.v
b [96]

:[95]
push.s "/%"@4449
conv.s.v

:[96]
pop.v.v local.sentenceEnd
push.s "obj_tasque_enemy_slash_Step_0_gml_177_0"@23647
conv.s.v
pushloc.v local.sentenceEnd
push.s "* You and Noelle pet the enemies!~1"@23648
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
push.v self.nact_count
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
pushi.e 4
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_tasque_enemy_slash_Step_0_gml_182_0"@23649
conv.s.v
push.s "\\E4* Th-there^1, there..^1. (It's not too different from Catti...)/%"@23650
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[98]
pushi.e 392
pushenv [101]

:[99]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [101]

:[100]
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[101]
popenv [99]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[102]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [104]

:[103]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [105]

:[104]
push.e 0

:[105]
bf [121]

:[106]
push.v self.ract_count
push.e 1
add.i.v
pop.v.v self.ract_count
push.v self.ract_count
pushi.e 1
cmp.i.v EQ
bf [108]

:[107]
push.s "obj_tasque_enemy_slash_Step_0_gml_203_0"@23651
conv.s.v
push.s "Isn't that just how he normally talks?"@23652
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "middle"@5597
conv.s.v
pushi.e 12
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v

:[108]
push.v self.ract_count
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
push.s "/"@4448
conv.s.v
b [111]

:[110]
push.s "/%"@4449
conv.s.v

:[111]
pop.v.v local.sentenceEnd
push.s "obj_tasque_enemy_slash_Step_0_gml_207_0"@23653
conv.s.v
pushloc.v local.sentenceEnd
push.s "* Ralsei talked in a soft voice to the enemies!~1"@23654
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
push.v self.ract_count
pushi.e 1
cmp.i.v EQ
bf [113]

:[112]
pushi.e 2
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_tasque_enemy_slash_Step_0_gml_212_0"@23655
conv.s.v
push.s "\\E2* There^1, there^1, it's okay^1, little kitty...\\f0/%"@23656
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[113]
pushi.e 392
pushenv [120]

:[114]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [120]

:[115]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 32
cmp.i.v EQ
bf [117]

:[116]
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
b [120]

:[117]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 42
cmp.i.v EQ
bf [119]

:[118]
pushi.e 5
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
b [120]

:[119]
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[120]
popenv [114]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[121]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [123]

:[122]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [124]

:[123]
push.e 0

:[124]
bf [134]

:[125]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [127]

:[126]
push.s "obj_tasque_enemy_slash_Step_0_gml_228_0"@23657
conv.s.v
push.s "* Susie yelled at Tasque to get off her lawn./%"@23658
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [128]

:[127]
push.s "obj_tasque_enemy_slash_Step_0_gml_228_1"@23659
conv.s.v
push.s "* Susie roared like a lion!/%"@23660
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[128]
pop.v.v local.simultext
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [130]

:[129]
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[130]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulordersus
pushi.e 0
cmp.i.v EQ
bf [132]

:[131]
pushi.e 20
conv.i.v
b [133]

:[132]
pushi.e 0
conv.i.v

:[133]
pop.v.v self.actconsus

:[134]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [136]

:[135]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [137]

:[136]
push.e 0

:[137]
bf [147]

:[138]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [140]

:[139]
push.s "obj_tasque_enemy_slash_Step_0_gml_240_0"@23661
conv.s.v
push.s "* Ralsei cooed gently at Tasque!/%"@23662
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [141]

:[140]
push.s "obj_tasque_enemy_slash_Step_0_gml_240_1"@23663
conv.s.v
push.s "* Ralsei blinks at Tasque!/%"@23664
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[141]
pop.v.v local.simultext
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [143]

:[142]
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[143]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderral
pushi.e 0
cmp.i.v EQ
bf [145]

:[144]
pushi.e 20
conv.i.v
b [146]

:[145]
pushi.e 0
conv.i.v

:[146]
pop.v.v self.actconral

:[147]
push.v self.actingnoe
pushi.e 1
cmp.i.v EQ
bf [149]

:[148]
push.v self.actconnoe
pushi.e 1
cmp.i.v EQ
b [150]

:[149]
push.e 0

:[150]
bf [160]

:[151]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pushi.e 0
cmp.i.v EQ
bf [153]

:[152]
push.s "obj_tasque_enemy_slash_Step_0_gml_252_0"@23665
conv.s.v
push.s "* Noelle got rubbed on by Tasque!/%"@23666
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [154]

:[153]
push.s "obj_tasque_enemy_slash_Step_0_gml_252_1"@23667
conv.s.v
push.s "* Tasque showed its belly to Noelle!/%"@23668
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[154]
pop.v.v local.nact_text
pushloc.v local.nact_text
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [156]

:[155]
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[156]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulordernoe
pushi.e 0
cmp.i.v EQ
bf [158]

:[157]
pushi.e 20
conv.i.v
b [159]

:[158]
pushi.e 0
conv.i.v

:[159]
pop.v.v self.actconnoe

:[160]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [162]

:[161]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [163]

:[162]
push.e 0

:[163]
bf [165]

:[164]
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[165]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [169]

:[166]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [169]

:[167]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
bt [169]

:[168]
push.v self.actconnoe
pushi.e 20
cmp.i.v EQ
b [170]

:[169]
push.e 1

:[170]
bf [end]

:[171]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [end]

:[172]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e -1
pop.v.i self.actconnoe
pushi.e 1
pop.v.i self.actcon

:[end]