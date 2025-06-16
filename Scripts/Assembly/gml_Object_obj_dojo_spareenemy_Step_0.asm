.localvar 2 arguments
.localvar 14707 _cut 14881

:[0]
push.v self.ambushed
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_scr_ambush(argc=0)
popz.v
pushi.e 1
pop.v.i self.ambushed

:[2]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [80]

:[3]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [5]

:[4]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [49]

:[7]
pushi.e 50
pop.v.i global.typer
push.v self.checkreact
pushi.e 1
cmp.b.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.b self.checkreact
push.s "obj_dojo_spareenemy_slash_Step_0_gml_19_0"@27649
conv.s.v
push.s "\\M2Boss^1! Don't listen to&that^1! That's the wrong&ACT!^1! The wrong ACT!^1!/%"@27650
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [40]

:[9]
push.v self.sparecon
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_dojo_spareenemy_slash_Step_0_gml_23_0"@27651
conv.s.v
push.s "Ohhhh, boss,&you're sparing&me!?/%"@27652
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [40]

:[11]
push.v self.pacifycon
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_dojo_spareenemy_slash_Step_0_gml_27_0"@27653
conv.s.v
push.s "You did it, Boss!^1&If you can manage to SPARE enemies right away.../"@27654
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_dojo_spareenemy_slash_Step_0_gml_28_0"@27655
conv.s.v
push.s "Battles will go&a lot faster!&That's all!/%"@27656
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [40]

:[13]
push.v self.battlestate
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_dojo_spareenemy_slash_Step_0_gml_32_0"@27657
conv.s.v
push.s "Boss!/"@27658
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_dojo_spareenemy_slash_Step_0_gml_33_0"@27659
conv.s.v
push.s "You can ACT&and SPARE on&the same turn!/"@27660
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_dojo_spareenemy_slash_Step_0_gml_34_0"@27661
conv.s.v
push.s "If you know Kris's&ACT will give an&enemy 100`% mercy.../"@27662
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_dojo_spareenemy_slash_Step_0_gml_35_0"@27663
conv.s.v
push.s "SPARE them on&the same turn&with Susie&or Ralsei!/%"@27664
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
pop.v.i self.battlestate
b [40]

:[15]
push.v self.battlestate
pushi.e 1
cmp.i.v LTE
bf [24]

:[16]
push.i 231921
setowner.e
push.s "obj_dojo_spareenemy_slash_Step_0_gml_40_0"@27665
conv.s.v
push.s "* Jigsaw Joe looks vulnerable to ACTING and SPARING on the same turn."@27666
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
push.v self.sparecon
pushi.e -1
cmp.i.v EQ
bf [20]

:[17]
push.v self.beardcount
pushi.e 99
cmp.i.v LT
bf [19]

:[18]
push.v self.beardcount
push.e 1
add.i.v
pop.v.v self.beardcount

:[19]
push.s "obj_dojo_spareenemy_slash_Step_0_gml_44_0"@27667
conv.s.v
push.v self.beardcount
call.i string(argc=1)
push.s "\\M2Ah!! It's my&~1 o'clock shadow!/%"@27668
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
pushi.e 0
pop.v.i self.sparecon
b [23]

:[20]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 0
cmp.i.v GT
bf [22]

:[21]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
neg.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushi.e 0
pop.v.b self.shaved
push.s "obj_dojo_spareenemy_slash_Step_0_gml_51_0"@27669
conv.s.v
push.s "\\M1* Jigsaw Joe's stubble regrew!/%"@27670
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e -1
pop.v.i self.sparecon
b [23]

:[22]
push.s "obj_dojo_spareenemy_slash_Step_0_gml_56_0"@27671
conv.s.v
push.s "Boss^1!&You gotta ACT&and SPARE on&the same turn!/%"@27672
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[23]
b [40]

:[24]
push.v self.battlestate
pushi.e 2
cmp.i.v EQ
bf [29]

:[25]
push.i 231921
setowner.e
push.s "obj_dojo_spareenemy_slash_Step_0_gml_60_0"@27673
conv.s.v
push.s "* Jigsaw Joe looks like he could use a bedtime story."@27674
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
push.i 231526
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.s "obj_dojo_spareenemy_slash_Step_0_gml_63_0"@27675
conv.s.v
push.s "\\M2WAIT A SECOND!!!^1&I got something else&to remind you of!/"@27676
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_dojo_spareenemy_slash_Step_0_gml_64_0"@27677
conv.s.v
push.s "\\M0Boss!/"@27678
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_dojo_spareenemy_slash_Step_0_gml_65_0"@27679
conv.s.v
push.s "It works the&same with making&an enemy TIRED!/"@27680
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_dojo_spareenemy_slash_Step_0_gml_66_0"@27681
conv.s.v
push.s "If an ACT&will make an&enemy TIRED.../"@27682
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushglb.v global.tension
pushi.e 40
cmp.i.v GTE
bf [27]

:[26]
push.s "obj_dojo_spareenemy_slash_Step_0_gml_67_0"@27683
conv.s.v
push.s "Use Ralsei's PACIFY&right away!/%"@27684
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [28]

:[27]
push.s "obj_dojo_spareenemy_slash_Step_0_gml_74_0"@27685
conv.s.v
push.s "Use Ralsei's PACIFY&right away!/"@27686
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_dojo_spareenemy_slash_Step_0_gml_75_0"@27687
conv.s.v
push.s "Of course, PACIFY is MAGIC,&so you'll need TP./"@27688
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_dojo_spareenemy_slash_Step_0_gml_76_0"@27689
conv.s.v
push.s "Spend a turn&DEFENDING to gain TP&if you have to, boss!/%"@27690
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[28]
pushi.e 3
pop.v.i self.battlestate
push.i 231922
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 231837
setowner.e
push.s "obj_dojo_spareenemy_slash_Step_0_gml_70_0"@27691
conv.s.v
push.s "SleepyStory"@27692
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 231925
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 231914
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimul
pushi.e 1
popaf.e
b [40]

:[29]
push.v self.battlestate
pushi.e 3
cmp.i.v EQ
bf [39]

:[30]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
pushi.e -1
pop.v.i self.pacifycon
push.i 231984
setowner.e
push.s "obj_dojo_spareenemy_slash_Step_0_gml_79_0"@27693
conv.s.v
push.s ""@157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstercomment
push.i 231746
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterstatus
push.v self.image_speed
pushi.e 2
mul.i.v
pop.v.v self.image_speed
push.s "obj_dojo_spareenemy_slash_Step_0_gml_82_0"@27694
conv.s.v
push.s "* Jigsaw Joe drank coffee^1! Jigsaw Joe stopped being TIRED!/%"@27695
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
b [38]

:[32]
pushi.e 0
pop.v.i self.pacifycon
pushglb.v global.tension
pushi.e 40
cmp.i.v LT
bf [34]

:[33]
push.v self.pacifycon
pushi.e -2
cmp.i.v NEQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
push.s "obj_dojo_spareenemy_slash_Step_0_gml_89_0"@27696
conv.s.v
push.s "Boss^1! If you don't&have the TP to use&PACIFY^1, DEFENDing&will give you TP!/%"@27697
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [38]

:[37]
push.s "obj_dojo_spareenemy_slash_Step_0_gml_91_0"@27698
conv.s.v
push.s "Boss^1! You're putting me&to SLEEP^1! I mean, you&AREN'T^1! Make me TIRED&and PACIFY me, boss!/%"@27699
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[38]
b [40]

:[39]
push.s "obj_dojo_spareenemy_slash_Step_0_gml_95_0"@27700
conv.s.v
push.s "Boss!!/%"@27701
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[40]
push.v self.sparecon
pushi.e -1
cmp.i.v NEQ
bf [42]

:[41]
push.v self.pacifycon
pushi.e -1
cmp.i.v NEQ
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 10
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v

:[45]
push.v self.pacifycon
pushi.e -1
cmp.i.v EQ
bf [47]

:[46]
pushi.e -1
pop.v.i self.talked
b [48]

:[47]
pushi.e 1
pop.v.i self.talked

:[48]
pushi.e 0
pop.v.i self.talktimer

:[49]
push.v self.talked
pushi.e -1
cmp.i.v EQ
bf [51]

:[50]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [52]

:[51]
push.e 0

:[52]
bf [57]

:[53]
push.v self.talktimer
pushi.e 15
cmp.i.v LT
bf [55]

:[54]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
b [57]

:[55]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [57]

:[56]
pushi.e 0
pop.v.i self.talked

:[57]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [60]

:[59]
push.e 0

:[60]
bf [78]

:[61]
pushi.e 0
pop.v.i self.rtimer
push.v self.talktimer
pushi.e 15
cmp.i.v LT
bf [63]

:[62]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer

:[63]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [65]

:[64]
push.v self.talktimer
pushi.e 15
cmp.i.v GTE
b [66]

:[65]
push.e 0

:[66]
bf [78]

:[67]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag
push.v self.sparecon
pushi.e -1
cmp.i.v EQ
bf [69]

:[68]
pushi.e 0
pop.v.i self.talked
exit.i

:[69]
push.v self.sparecon
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
pushi.e 0
pop.v.i self.sparecon
call.i gml_Script_scr_fakespare(argc=0)
popz.v
pushi.e 2
pop.v.i self.battlestate
pushi.e 1
pop.v.i self.fakespare
push.i 68097
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.talked
pushi.e 8
pop.v.i global.mnfight
push.i 231526
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
b [78]

:[71]
push.v self.pacifycon
pushi.e 1
cmp.i.v EQ
bf [75]

:[72]
call.i gml_Script_scr_spareanim(argc=0)
popz.v
call.i gml_Script_scr_recruit(argc=0)
popz.v
call.i gml_Script_scr_monsterdefeat(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
call.i gml_Script_scr_mnendturn(argc=0)
popz.v
pushi.e 363
pushenv [74]

:[73]
pushi.e 0
pop.v.i self.darken

:[74]
popenv [73]
b [78]

:[75]
pushi.e 363
pushenv [77]

:[76]
pushi.e 0
pop.v.i self.darken

:[77]
popenv [76]
call.i gml_Script_scr_mnendturn(argc=0)
popz.v

:[78]
pushglb.v global.mnfight
pushi.e 8
cmp.i.v EQ
bf [80]

:[79]
exit.i

:[80]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[81]
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
bf [83]

:[82]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [84]

:[83]
push.e 0

:[84]
bf [86]

:[85]
pushi.e 1
pop.v.i self.actcon
push.s "obj_dojo_spareenemy_slash_Step_0_gml_177_0"@27703
conv.s.v
push.s "* JIGSAW JOE - Beat him up to earn his life savings!/%"@27704
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.b self.checkreact
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[86]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [89]

:[87]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
bf [89]

:[88]
push.v self.battlestate
pushi.e 2
cmp.i.v LT
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1414
conv.i.v
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
pop.v.v self.shavesprite
push.s "obj_dojo_spareenemy_slash_Step_0_gml_187_0"@27705
conv.s.v
push.s "* (You shaved Jigsaw Joe's stubble!)/%"@27706
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 2
pop.v.i self.actcon

:[92]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [95]

:[93]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
bf [95]

:[94]
push.v self.battlestate
pushi.e 2
cmp.i.v GTE
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
push.s "obj_dojo_spareenemy_slash_Step_0_gml_195_0"@27707
conv.s.v
push.s "* Susie told the enemy a bedtime story about beating them up!^1&* The enemy became TIRED!/%"@27708
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.image_speed
pushi.e 2
div.i.v
pop.v.v self.image_speed
pushi.e 105
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon
push.v self.myself
call.i gml_Script_scr_monster_make_tired(argc=1)
popz.v

:[98]
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [103]

:[102]
push.s "obj_dojograzeenemy_slash_Step_0_gml_97_0"@27637
conv.s.v
push.s "* Susie acted!/%"@27638
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconsus

:[103]
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [106]

:[105]
push.e 0

:[106]
bf [108]

:[107]
push.s "obj_dojograzeenemy_slash_Step_0_gml_106_0"@27639
conv.s.v
push.s "* Ralsei acted!/%"@27640
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconral

:[108]
push.v self.actcon
pushi.e 2
cmp.i.v EQ
bf [110]

:[109]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [111]

:[110]
push.e 0

:[111]
bf [115]

:[112]
pushi.e 3
pop.v.i self.actcon
push.v self.shavesprite
pushi.e -9
pushenv [114]

:[113]
pushi.e 1419
pop.v.i self.sprite_index
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_animate(argc=3)
popz.v

:[114]
popenv [113]
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
push.d 1.5
conv.d.v
pushi.e 175
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 128
conv.i.v
push.v self.y
pushi.e 38
add.i.v
push.v self.x
pushi.e 34
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._cut
pushi.e 1369
pushloc.v local._cut
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
pushloc.v local._cut
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 0.25
pushloc.v local._cut
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.v self.depth
pushi.e 1
sub.i.v
pushloc.v local._cut
pushi.e -9
pop.v.v [stacktop]self.depth
push.d 0.3333333333333333
pushloc.v local._cut
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[115]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [117]

:[116]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [118]

:[117]
push.e 0

:[118]
bf [end]

:[119]
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[end]