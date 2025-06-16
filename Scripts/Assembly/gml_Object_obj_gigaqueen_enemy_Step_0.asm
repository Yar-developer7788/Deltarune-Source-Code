.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 371
pushenv [3]

:[2]
pushi.e 0
pop.v.b self.visible

:[3]
popenv [2]
pushi.e 1
pop.v.i self.init

:[4]
pushi.e 789
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [6]

:[5]
push.v 789.x
pop.v.v self.x
push.v 789.y
pushi.e 80
sub.i.v
pop.v.v self.y

:[6]
pushi.e 842
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[7]
push.i 231862
setowner.e
push.v 789.health_count
push.v 842.sub_healthbar_count
pushi.e 1500
mul.i.v
add.v.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 1
cmp.i.v LT
bf [9]

:[8]
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp

:[9]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [207]

:[10]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [12]

:[11]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.v self.turn
push.e 1
add.i.v
pop.v.v self.turn

:[15]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [19]

:[16]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [19]

:[17]
push.v self.turn
pushi.e 18
cmp.i.v GT
bf [19]

:[18]
push.v 789.phase_transition
pushi.e 1
cmp.i.v LT
b [20]

:[19]
push.e 0

:[20]
bf [23]

:[21]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterdf
pushi.e -25
cmp.i.v GT
bf [23]

:[22]
push.i 231910
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterdf
pushi.e 5
sub.i.v
pop.i.v [array]self.monsterdf
push.v 789.damagetakenincrease
push.d 0.166666
add.d.v
pop.v.v 789.damagetakenincrease

:[23]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [26]

:[24]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
push.v 789.phase_transition
pushi.e 1
cmp.i.v LT
b [27]

:[26]
push.e 0

:[27]
bf [80]

:[28]
pushi.e 70
pop.v.i global.typer
pushi.e 0
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonsubcon
pushi.e 1
pop.v.i self.balloonend
pushi.e 0
pop.v.i self.talkedcon
pushi.e 0
pop.v.i 777.acttoenemytalktransition
push.v self.playerhasntdodged
pushi.e 0
cmp.i.v EQ
bf [31]

:[29]
push.v self.balloonorder
pushi.e 0
cmp.i.v GT
bf [31]

:[30]
push.v self.playerhasntdodgedorder
pushi.e 3
cmp.i.v LT
b [32]

:[31]
push.e 0

:[32]
bf [41]

:[33]
push.v self.playerhasntdodgedorder
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_56_0"@27478
conv.s.v
push.s "Oh No Did You&Forget How To&Control A Giant&Robot/%"@27479
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 11
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[35]
push.v self.playerhasntdodgedorder
pushi.e 1
cmp.i.v EQ
bt [37]

:[36]
push.v self.playerhasntdodgedorder
pushi.e 2
cmp.i.v EQ
b [38]

:[37]
push.e 1

:[38]
bf [40]

:[39]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_57_0_b"@27480
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 3
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "One More Time,&Press ~1 And&~2 To Dodge/%"@27481
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=5)
popz.v
pushi.e 13
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[40]
push.v self.playerhasntdodgedorder
push.e 1
add.i.v
pop.v.v self.playerhasntdodgedorder
pushi.e 2
pop.v.i self.balloonorder
b [64]

:[41]
push.v self.balloonorder
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_63_0"@27482
conv.s.v
push.s "The Time For&Words Is Over/%"@27483
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[43]
push.v self.balloonorder
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_64_0"@27484
conv.s.v
push.s "Ha Ha Just Kidding&I Totally Will&Keep Monologuing&As I Kick At: Your&Face/%"@27485
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i self.balloonend

:[45]
push.v self.balloonorder
pushi.e 2
cmp.i.v EQ
bf [47]

:[46]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_65_0"@27486
conv.s.v
push.s "The Time Has&Come For Noelle&To Realize Her&Own Strength/%"@27487
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[47]
push.v self.balloonorder
pushi.e 3
cmp.i.v EQ
bf [49]

:[48]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_66_0"@27488
conv.s.v
push.s "Focusing Into&Her Blade, She&Will Create A&Neo Dark Fountain/%"@27489
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 3
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[49]
push.v self.balloonorder
pushi.e 4
cmp.i.v EQ
bf [51]

:[50]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_67_0"@27490
conv.s.v
push.s "Then, When The&Whole World Is&Covered In Darkness/%"@27491
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 4
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[51]
push.v self.balloonorder
pushi.e 5
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_68_0"@27492
conv.s.v
push.s "Kris, Susie,&Why Don't You&Help Me Too?/%"@27493
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 5
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[53]
push.v self.balloonorder
pushi.e 6
cmp.i.v EQ
bf [55]

:[54]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_69_0"@27494
conv.s.v
push.s "Susie/%"@27495
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 6
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[55]
push.v self.balloonorder
pushi.e 7
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_70_0"@27496
conv.s.v
push.s "And Kris, My&Dearest Trucie&You Can Have&As Many/%"@27497
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 7
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[57]
push.v self.balloonorder
pushi.e 8
cmp.i.v EQ
bf [59]

:[58]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_71_0"@27498
conv.s.v
push.s "Hey Was There&A Third&Guy?????????/%"@27499
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend

:[59]
push.v self.balloonorder
pushi.e 9
cmp.i.v EQ
bf [61]

:[60]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_72_0"@27500
conv.s.v
push.s "Join Me And&All Of You&Will Become&Super Strong&And Cool/%"@27501
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 9
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend

:[61]
push.v self.balloonorder
pushi.e 10
cmp.i.v EQ
bf [63]

:[62]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_73_0"@27502
conv.s.v
push.s "Okay I Believe&I've Made My Point&I'm Going To&Procedurally&Loop My Dialogue&Now/%"@27503
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
pushi.e -1
pop.v.i self.balloonorder

:[63]
push.v self.balloonorder
push.e 1
add.i.v
pop.v.v self.balloonorder

:[64]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
push.v 789.health_count
push.v 789.health_count_max
push.d 0.27
mul.d.v
cmp.v.v LTE
b [70]

:[69]
push.e 0

:[70]
bf [77]

:[71]
push.v self.finalconvcon
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_73_0_b"@27504
conv.s.v
push.s "Kris&Susie&Other Guy/%"@27505
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 14
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
pushi.e 1
pop.v.i self.finalconvcon
b [77]

:[73]
push.v self.finalconvcon
pushi.e 1
cmp.i.v EQ
bf [75]

:[74]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_74_0"@27506
conv.s.v
push.s "You Think You're&Finished?/%"@27507
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
pushi.e 2
pop.v.i self.finalconvcon
b [77]

:[75]
push.v self.finalconvcon
pushi.e 2
cmp.i.v EQ
bf [77]

:[76]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_75_0"@27508
conv.s.v
push.s "I Have More Extremely&Slow Moving Obviously&Punchable Giant Baseballs&Where That One Came From/%"@27509
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend

:[77]
pushi.e 10
conv.i.v
push.v 789.y
pushi.e 185
sub.i.v
push.v 789.x
pushi.e 40
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
push.v self.ballooncon
pushi.e 0
cmp.i.v EQ
bf [79]

:[78]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer
b [80]

:[79]
push.d 0.6
pop.v.d self.talked
pushi.e 0
pop.v.i self.talktimer

:[80]
push.v self.talked
push.d 0.6
cmp.d.v EQ
bf [129]

:[81]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [83]

:[82]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [84]

:[83]
push.e 0

:[84]
bt [86]

:[85]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [87]

:[86]
push.e 1

:[87]
bf [129]

:[88]
pushi.e 64
pushenv [90]

:[89]
call.i instance_destroy(argc=0)
popz.v

:[90]
popenv [89]
push.v self.ballooncon
pushi.e 1
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_106_0"@27510
conv.s.v
push.s "Now Is The&Time To Fight&(Only)/%"@27511
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [128]

:[92]
push.v self.ballooncon
pushi.e 2
cmp.i.v EQ
bf [94]

:[93]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_107_0"@27512
conv.s.v
push.s "Her Own Will&Her Own&Determination/%"@27513
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [128]

:[94]
push.v self.ballooncon
pushi.e 3
cmp.i.v EQ
bf [96]

:[95]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_108_0"@27514
conv.s.v
push.s "Then Another,&Then Another/%"@27515
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [128]

:[96]
push.v self.ballooncon
pushi.e 4
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_109_0"@27516
conv.s.v
push.s "She - And Everyone -&Can Live In Bliss,&Free Of Fear And&Suffering/%"@27517
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [128]

:[98]
push.v self.ballooncon
pushi.e 5
cmp.i.v EQ
bf [100]

:[99]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_110_0"@27518
conv.s.v
push.s "Create The World&Of Your Dreams&(Also My Dreams)/%"@27519
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [128]

:[100]
push.v self.ballooncon
pushi.e 6
cmp.i.v EQ
bf [102]

:[101]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_111_0"@27520
conv.s.v
push.s "Bro Just Let Me&Karate Chop You&And You Can Have&As Many Skateboards&As You Want/%"@27521
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [128]

:[102]
push.v self.ballooncon
pushi.e 7
cmp.i.v EQ
bf [104]

:[103]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_113_0"@27522
conv.s.v
push.s ".../%"@19972
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 8
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [128]

:[104]
push.v self.ballooncon
pushi.e 8
cmp.i.v EQ
bf [106]

:[105]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_114_0_b"@27523
conv.s.v
push.s "Okay I Don't&Remember What&You Liked/%"@27524
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [128]

:[106]
push.v self.ballooncon
pushi.e 9
cmp.i.v EQ
bf [108]

:[107]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_116_0"@27525
conv.s.v
push.s "Meanwhile I Don't&Need To Improve&Because I'm Already&Perfect And Can&Shoot Lasers From&My Fancy Glass/%"@27526
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [128]

:[108]
push.v self.ballooncon
pushi.e 10
cmp.i.v EQ
bf [110]

:[109]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_118_0"@27527
conv.s.v
push.s "Now Is The&Time To&(LOOPING ERROR)/%"@27528
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [128]

:[110]
push.v self.ballooncon
pushi.e 11
cmp.i.v EQ
bf [112]

:[111]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_120_0"@27529
conv.s.v
push.s "There Are&Keyboard Controls&Inside/%"@27530
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 12
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [128]

:[112]
push.v self.ballooncon
pushi.e 12
cmp.i.v EQ
bf [114]

:[113]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_121_0"@27531
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 1
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 3
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "Press ~1&And ~2 To&Dodge ~3 And ~4&To Punch/%"@27532
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=7)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [128]

:[114]
push.v self.ballooncon
pushi.e 13
cmp.i.v EQ
bf [116]

:[115]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_123_0"@27533
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "~1 And ~2 To&Punch/%"@27534
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=5)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
b [128]

:[116]
push.v self.ballooncon
pushi.e 14
cmp.i.v EQ
bf [118]

:[117]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_121_0_b"@27535
conv.s.v
push.s "You Have Truly&Proven Yourselves&To Be A Worthy&Opponent/%"@27536
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=3)
popz.v
pushi.e 15
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [128]

:[118]
push.v self.ballooncon
pushi.e 15
cmp.i.v EQ
bf [120]

:[119]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_122_0"@27537
conv.s.v
push.s "You Have Earned The&Right To Remember What&Your Fighting Machine's&True Purpose Is/%"@27538
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=3)
popz.v
pushi.e 16
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [128]

:[120]
push.v self.ballooncon
pushi.e 16
cmp.i.v EQ
bf [122]

:[121]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_123_0_b"@27539
conv.s.v
push.s "To Get Your Own&Ass Thrashed/%"@27540
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=3)
popz.v
pushi.e 17
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [128]

:[122]
push.v self.ballooncon
pushi.e 17
cmp.i.v EQ
bf [124]

:[123]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_124_0_b"@27541
conv.s.v
push.s "By Me/%"@27542
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=3)
popz.v
pushi.e 18
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [128]

:[124]
push.v self.ballooncon
pushi.e 18
cmp.i.v EQ
bf [126]

:[125]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_125_0"@27543
conv.s.v
push.s "With My Final Attack/%"@27544
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=3)
popz.v
pushi.e 19
pop.v.i self.ballooncon
pushi.e 0
pop.v.i self.balloonend
b [128]

:[126]
push.v self.ballooncon
pushi.e 19
cmp.i.v EQ
bf [128]

:[127]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_126_0"@27545
conv.s.v
push.s "Ha Ha Bye/%"@27546
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend

:[128]
push.d 0.7
pop.v.d self.talked
pushi.e 70
pop.v.i global.typer
pushi.e 10
conv.i.v
push.v 789.y
pushi.e 185
sub.i.v
push.v 789.x
pushi.e 40
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm

:[129]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [131]

:[130]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [132]

:[131]
push.e 0

:[132]
bf [166]

:[133]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [135]

:[134]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [136]

:[135]
push.e 0

:[136]
bt [138]

:[137]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [139]

:[138]
push.e 1

:[139]
bf [143]

:[140]
pushi.e 64
pushenv [142]

:[141]
call.i instance_destroy(argc=0)
popz.v

:[142]
popenv [141]
pushi.e 1
pop.v.i self.talkedcon

:[143]
push.v self.talkedcon
pushi.e 1
cmp.i.v EQ
bf [166]

:[144]
pushi.e 0
pop.v.i self.rtimer
pushi.e -1
conv.i.v
call.i gml_Script_scr_blconskip(argc=1)
popz.v
push.v self.missleattack
pushi.e 1
cmp.i.v EQ
bf [146]

:[145]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [147]

:[146]
push.e 0

:[147]
bt [152]

:[148]
push.v self.breathattack
pushi.e 1
cmp.i.v EQ
bf [150]

:[149]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [151]

:[150]
push.e 0

:[151]
b [153]

:[152]
push.e 1

:[153]
bf [166]

:[154]
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [156]

:[155]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[156]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [161]

:[157]
pushi.e 872
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 250
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
push.v self.missleattack
pushi.e 1
cmp.i.v EQ
bf [159]

:[158]
pushi.e 2
pop.v.i 872.maxxscale
pushi.e 2
pop.v.i 872.maxyscale

:[159]
push.v self.breathattack
pushi.e 1
cmp.i.v EQ
bf [161]

:[160]
push.d 1.8
pop.v.d 872.maxxscale
pushi.e 2
pop.v.i 872.maxyscale

:[161]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [163]

:[162]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [164]

:[163]
push.e 0

:[164]
bf [166]

:[165]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[166]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [168]

:[167]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [169]

:[168]
push.e 0

:[169]
bf [207]

:[170]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 1
cmp.i.v EQ
bf [206]

:[171]
push.v self.missleattack
pushi.e 1
cmp.i.v EQ
bf [173]

:[172]
push.i 231869
setowner.e
push.s "gigamissle"@27547
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
pushi.e 46
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 208
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
b [180]

:[173]
push.v self.breathattack
pushi.e 1
cmp.i.v EQ
bf [175]

:[174]
push.i 231869
setowner.e
push.s "gigabreath"@27548
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
pushi.e 47
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 200
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
b [180]

:[175]
pushi.e 777
pushenv [177]

:[176]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 2
pop.v.i self.attackintrocon

:[177]
popenv [176]
pushi.e 357
pushenv [179]

:[178]
pushi.e 1
pop.v.i self.gigaqueencon
pushi.e 0
pop.v.i self.gigaqueentimer

:[179]
popenv [178]
push.i 999999
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[180]
pushi.e 0
pop.v.i self.missleattack
pushi.e 0
pop.v.i self.breathattack
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
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
bf [182]

:[181]
push.i 231921
setowner.e
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_213_0"@27549
conv.s.v
push.s "* The cityscape roars past."@27550
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[182]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [184]

:[183]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v NEQ
b [185]

:[184]
push.e 0

:[185]
bf [187]

:[186]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_214_0"@27551
conv.s.v
push.s "* The night is young for fighting."@27552
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[187]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [189]

:[188]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
b [190]

:[189]
push.e 0

:[190]
bf [192]

:[191]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_215_0"@27553
conv.s.v
push.s "* The battle is really heating up."@27554
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[192]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [194]

:[193]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_216_0"@27555
conv.s.v
push.s "* Susie mashes the controls trying to punch more."@27556
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[194]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [196]

:[195]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_217_0"@27557
conv.s.v
push.s "* Ralsei advises you to \"dodge, then counter punch.\""@27558
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[196]
pushi.e 100
conv.i.v
call.i irandom(argc=1)
pushi.e 5
cmp.i.v LT
bf [198]

:[197]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_218_0"@27559
conv.s.v
push.s "* Smells like gigantic batteries."@27560
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[198]
push.v self.haventusedspell
pushi.e 1
cmp.i.v EQ
bf [200]

:[199]
pushglb.v global.tension
pushi.e 150
cmp.i.v GTE
b [201]

:[200]
push.e 0

:[201]
bf [203]

:[202]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_219_0"@27561
conv.s.v
push.s "* Your machine is charged up for special moves!"@27562
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[203]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 50
cmp.i.v LT
bf [205]

:[204]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_220_0"@27563
conv.s.v
push.s "* Your machine's inner lighting turns red."@27564
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[205]
pushi.e 1
pop.v.i self.attacked
b [207]

:[206]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[207]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[208]
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
bf [218]

:[209]
push.v 777.headsprite
pushi.e 2159
cmp.i.v EQ
bf [211]

:[210]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_243_0"@27565
conv.s.v
push.s "* FLAME MODE engaged!&* A power-boosting aura fired up...!/%"@27566
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.actpunchtext

:[211]
push.v 777.headsprite
pushi.e 2160
cmp.i.v EQ
bf [213]

:[212]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_248_0"@27567
conv.s.v
push.s "* SWORD MODE engaged!&* Damage grows until you miss!/%"@27568
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.actpunchtext

:[213]
push.v 777.headsprite
pushi.e 2161
cmp.i.v EQ
bf [215]

:[214]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_253_0"@27569
conv.s.v
push.s "* LASER MODE engaged!&* A light-quick aura fired up...!/%"@27570
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.actpunchtext

:[215]
push.v 777.headsprite
pushi.e 2162
cmp.i.v EQ
bf [217]

:[216]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_258_0"@27571
conv.s.v
push.s "* DUCK MODE engaged!&* A totally-sucking aura fired up...!/%"@27572
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.actpunchtext

:[217]
push.d 1.5
pop.v.d self.acting
pushi.e 0
pop.v.i self.haventusedspell
push.v self.actpunchtext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[218]
push.v self.acting
push.d 1.5
cmp.d.v EQ
bf [220]

:[219]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [221]

:[220]
push.e 0

:[221]
bf [231]

:[222]
pushi.e 0
pop.v.i self.extradamage
push.v 777.headsprite
pushi.e 2159
cmp.i.v EQ
bf [224]

:[223]
pushi.e 1
pop.v.i 777.specialcon
pushi.e 30
pop.v.i self.extradamage

:[224]
push.v 777.headsprite
pushi.e 2160
cmp.i.v EQ
bf [226]

:[225]
pushi.e 2
pop.v.i 777.specialcon
pushi.e 10
pop.v.i self.extradamage

:[226]
push.v 777.headsprite
pushi.e 2161
cmp.i.v EQ
bf [228]

:[227]
pushi.e 3
pop.v.i 777.specialcon

:[228]
push.v 777.headsprite
pushi.e 2162
cmp.i.v EQ
bf [230]

:[229]
pushi.e 4
pop.v.i 777.specialcon
pushi.e -30
pop.v.i self.extradamage

:[230]
pushi.e 154
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 4
pop.v.i self.acting
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[231]
push.v self.acting
pushi.e 5
cmp.i.v EQ
bf [234]

:[232]
push.v 777.specialcon
pushi.e 0
cmp.i.v EQ
bf [234]

:[233]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [235]

:[234]
push.e 0

:[235]
bf [238]

:[236]
pushi.e 7
pop.v.i self.acting
pushi.e 1
pop.v.i 777.punchcon
pushi.e -5
pushi.e 0
push.v [array]self.battleat
pushi.e 300
mul.i.v
pushi.e 20
conv.i.d
div.d.v
call.i round(argc=1)
push.v self.extradamage
add.v.v
pop.v.v 777.damageoverride
push.v 777.headsprite
pushi.e 2162
cmp.i.v EQ
bf [238]

:[237]
pushi.e 35
pop.v.i 777.healoverride

:[238]
push.v self.acting
pushi.e 7
cmp.i.v EQ
bf [240]

:[239]
push.v 777.punchcon
pushi.e 0
cmp.i.v EQ
b [241]

:[240]
push.e 0

:[241]
bf [243]

:[242]
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.acting

:[243]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [245]

:[244]
pushi.e 5
pop.v.i 777.specialcon
pushi.e 154
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_309_0"@27573
conv.s.v
push.s "* TURBODODGE engaged!&* A dodge-enhancing aura fired up...!/%"@27574
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 0
pop.v.i self.haventusedspell
pushi.e 0
pop.v.i self.acting
pushi.e 1
pop.v.i self.actcon

:[245]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [256]

:[246]
pushi.e 6
pop.v.i 777.specialcon
pushi.e 154
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.healcount
pushi.e 2
cmp.i.v GT
bf [248]

:[247]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_320_0"@27575
conv.s.v
push.s "* SELF-FIX engaged!&* A healing aura fired up...!/%"@27576
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [249]

:[248]
push.s "obj_gigaqueen_enemy_slash_Step_0_gml_321_0"@27577
conv.s.v
push.s "* SELF-FIX engaged!&* A healing aura fired up...!&* (But, the TP cost increased!)/%"@27578
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[249]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 0
pop.v.i self.haventusedspell
push.v self.healcount
push.e 1
add.i.v
pop.v.v self.healcount
push.v self.healcount
pushi.e 1
cmp.i.v EQ
bf [251]

:[250]
push.i 231833
setowner.e
pushi.e 75
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e

:[251]
push.v self.healcount
pushi.e 2
cmp.i.v EQ
bf [253]

:[252]
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e

:[253]
push.v self.healcount
pushi.e 3
cmp.i.v EQ
bf [255]

:[254]
pushi.e 125
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e

:[255]
call.i gml_Script_scr_spellmenu_setup(argc=0)
popz.v
pushi.e 0
pop.v.i self.acting
pushi.e 1
pop.v.i self.actcon

:[256]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [259]

:[257]
push.v self.acting
pushi.e 0
cmp.i.v EQ
bf [259]

:[258]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [260]

:[259]
push.e 0

:[260]
bf [end]

:[261]
pushi.e 0
pop.v.i self.actcon
pushi.e 1
pop.v.i 777.acttoenemytalktransition
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[end]