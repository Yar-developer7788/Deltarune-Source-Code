.localvar 2 arguments
.localvar 6483 yy 13636

:[0]
push.v self.theystoppeddancing
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.s "none"@562
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 0
pop.v.i self.theystoppeddancing
push.i 68097
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[5]
push.v self.skiptext
pushi.e 1
cmp.i.v EQ
bf [18]

:[6]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [18]

:[7]
pushi.e -1
pushi.e 1
push.v [array]self.alarm
pushi.e 1
cmp.i.v GT
bf [9]

:[8]
pushi.e -1
pushi.e 1
push.v [array]self.alarm
pushi.e 45
cmp.i.v LTE
b [10]

:[9]
push.e 0

:[10]
bf [13]

:[11]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 60
cmp.i.v GT
bf [13]

:[12]
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[13]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 1
cmp.i.v GT
bf [15]

:[14]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 60
cmp.i.v LTE
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[18]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 999
pop.v.i global.turntimer

:[20]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 0
pop.v.i self.d
pushi.e 61
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[25]
push.v self.scon
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.d 1.5
pop.v.d self.scon

:[27]
push.v self.scon
push.d 1.5
cmp.d.v EQ
bf [29]

:[28]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [30]

:[29]
push.e 0

:[30]
bf [121]

:[31]
pushi.e 999
pop.v.i global.turntimer
pushi.e 64
pushenv [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
popenv [32]
pushi.e 50
pop.v.i global.typer
pushi.e 0
pop.v.i self.whohealed
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [39]

:[34]
pushi.e 714
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [39]

:[35]
pushi.e 712
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [39]

:[36]
pushi.e -5
push.v 710.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
bf [39]

:[37]
pushi.e -5
push.v 714.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
bf [39]

:[38]
pushi.e -5
push.v 712.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 7
pop.v.i self.whohealed
b [78]

:[42]
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [46]

:[43]
pushi.e 714
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [46]

:[44]
pushi.e -5
push.v 710.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
bf [46]

:[45]
pushi.e -5
push.v 714.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
pushi.e 4
pop.v.i self.whohealed
b [78]

:[49]
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [53]

:[50]
pushi.e 712
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [53]

:[51]
pushi.e -5
push.v 710.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
bf [53]

:[52]
pushi.e -5
push.v 712.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 5
pop.v.i self.whohealed
b [78]

:[56]
pushi.e 712
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [60]

:[57]
pushi.e 714
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [60]

:[58]
pushi.e -5
push.v 712.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
bf [60]

:[59]
pushi.e -5
push.v 714.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
pushi.e 6
pop.v.i self.whohealed
b [78]

:[63]
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [65]

:[64]
pushi.e -5
push.v 710.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
b [66]

:[65]
push.e 0

:[66]
bf [68]

:[67]
pushi.e 1
pop.v.i self.whohealed
b [78]

:[68]
pushi.e 714
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [70]

:[69]
pushi.e -5
push.v 714.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
pushi.e 2
pop.v.i self.whohealed
b [78]

:[73]
pushi.e 712
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [75]

:[74]
pushi.e -5
push.v 712.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
pushi.e 3
pop.v.i self.whohealed

:[78]
push.v self.whohealed
pushi.e 1
cmp.i.v EQ
bf [84]

:[79]
pushi.e 710
pushenv [81]

:[80]
push.s "obj_musical_controller_slash_Step_0_gml_52_0"@26608
conv.s.v
push.s "I'm at my acoustic limit..."@26609
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
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

:[81]
popenv [80]
pushi.e 714
pushenv [83]

:[82]
push.s "obj_musical_controller_slash_Step_0_gml_57_0"@26610
conv.s.v
push.s "Have a sip."@26611
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
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

:[83]
popenv [82]

:[84]
push.v self.whohealed
pushi.e 2
cmp.i.v EQ
bf [90]

:[85]
pushi.e 714
pushenv [87]

:[86]
push.s "obj_musical_controller_slash_Step_0_gml_66_0"@26612
conv.s.v
push.s "Mmm... I'm thirsty."@26613
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
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

:[87]
popenv [86]
pushi.e 712
pushenv [89]

:[88]
push.s "obj_musical_controller_slash_Step_0_gml_71_0"@26614
conv.s.v
push.s "(Don't ya mean&you're WOUNDED!?)"@26615
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
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

:[89]
popenv [88]

:[90]
push.v self.whohealed
pushi.e 3
cmp.i.v EQ
bf [96]

:[91]
pushi.e 712
pushenv [93]

:[92]
push.s "obj_musical_controller_slash_Step_0_gml_80_0"@26616
conv.s.v
push.s "Owww, my hat!! They&scuffed my hat!!"@26617
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
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

:[93]
popenv [92]
pushi.e 710
pushenv [95]

:[94]
push.s "obj_musical_controller_slash_Step_0_gml_85_0"@26618
conv.s.v
push.s "(Stop being dramatic&and heal!!)"@26619
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
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

:[95]
popenv [94]

:[96]
push.v self.whohealed
pushi.e 4
cmp.i.v EQ
bf [102]

:[97]
pushi.e 710
pushenv [99]

:[98]
push.s "obj_musical_controller_slash_Step_0_gml_94_0"@26620
conv.s.v
push.s "Even if we're all beat, we..."@26621
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
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

:[99]
popenv [98]
pushi.e 714
pushenv [101]

:[100]
push.s "obj_musical_controller_slash_Step_0_gml_99_0"@26622
conv.s.v
push.s "Can all drink from one milk."@26623
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
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

:[101]
popenv [100]

:[102]
push.v self.whohealed
pushi.e 5
cmp.i.v EQ
bf [108]

:[103]
pushi.e 710
pushenv [105]

:[104]
push.s "obj_musical_controller_slash_Step_0_gml_108_0"@26624
conv.s.v
push.s "Even if we're all beat, we..."@26621
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
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

:[105]
popenv [104]
pushi.e 712
pushenv [107]

:[106]
push.s "obj_musical_controller_slash_Step_0_gml_113_0"@26625
conv.s.v
push.s "Can all drink from one milk."@26623
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
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

:[107]
popenv [106]

:[108]
push.v self.whohealed
pushi.e 6
cmp.i.v EQ
bf [114]

:[109]
pushi.e 714
pushenv [111]

:[110]
push.s "obj_musical_controller_slash_Step_0_gml_122_0"@26626
conv.s.v
push.s "Even if we're all beat, we..."@26621
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
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

:[111]
popenv [110]
pushi.e 712
pushenv [113]

:[112]
push.s "obj_musical_controller_slash_Step_0_gml_127_0"@26627
conv.s.v
push.s "Can all drink from one milk."@26623
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
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

:[113]
popenv [112]

:[114]
push.v self.whohealed
pushi.e 7
cmp.i.v EQ
bf [120]

:[115]
pushi.e 710
pushenv [117]

:[116]
push.s "obj_musical_controller_slash_Step_0_gml_108_0"@26624
conv.s.v
push.s "Even if we're all beat, we..."@26621
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
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

:[117]
popenv [116]
pushi.e 714
pushenv [119]

:[118]
push.s "obj_musical_controller_slash_Step_0_gml_127_0"@26627
conv.s.v
push.s "Can all drink from one milk."@26623
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
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

:[119]
popenv [118]

:[120]
push.d 1.6
pop.v.d self.scon
pushi.e 0
pop.v.i self.milktimer

:[121]
push.v self.scon
push.d 1.6
cmp.d.v EQ
bf [124]

:[122]
push.v self.milktimer
push.e 1
add.i.v
pop.v.v self.milktimer
push.v self.milktimer
pushi.e 60
cmp.i.v GTE
bf [124]

:[123]
push.d 1.7
pop.v.d self.scon
pushi.e 0
pop.v.i self.milktimer

:[124]
push.v self.scon
push.d 1.7
cmp.d.v EQ
bf [134]

:[125]
pushi.e 64
pushenv [127]

:[126]
call.i instance_destroy(argc=0)
popz.v

:[127]
popenv [126]
pushi.e 180
pop.v.i local.yy
push.v self.whohealed
pushi.e 1
cmp.i.v EQ
bf [129]

:[128]
pushi.e 90
pop.v.i local.yy

:[129]
push.v self.whohealed
pushi.e 3
cmp.i.v EQ
bf [131]

:[130]
pushi.e 240
pop.v.i local.yy

:[131]
pushi.e 146
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1786
conv.i.v
call.i gml_Script_cameray(argc=0)
pushloc.v local.yy
add.v.v
push.v self.x
pushi.e 100
sub.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.milk
push.v self.milk
pushi.e -9
pushenv [133]

:[132]
pushi.e 0
pop.v.i self.image_speed
pushi.e 4
pop.v.i self.image_xscale
pushi.e 4
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_alpha

:[133]
popenv [132]
push.v self.depth
pushi.e 1
sub.i.v
push.v self.milk
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i self.milktimer
pushi.e 2
pop.v.i self.scon

:[134]
push.v self.scon
pushi.e 2
cmp.i.v EQ
bf [141]

:[135]
push.v self.milk
pushi.e -9
pushenv [137]

:[136]
push.v self.image_xscale
push.d 0.2
sub.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.2
sub.d.v
pop.v.v self.image_yscale
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[137]
popenv [136]
push.v self.milktimer
pushi.e 1
add.i.v
pop.v.v self.milktimer
push.v self.milktimer
pushi.e 10
cmp.i.v GTE
bf [141]

:[138]
pushi.e 3
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer
push.v self.milk
pushi.e -9
pushenv [140]

:[139]
push.d 1.4
pop.v.d self.image_alpha

:[140]
popenv [139]

:[141]
push.v self.scon
pushi.e 3
cmp.i.v EQ
bf [144]

:[142]
push.v self.milktimer
pushi.e 1
add.i.v
pop.v.v self.milktimer
push.v self.milktimer
pushi.e 25
cmp.i.v GTE
bf [144]

:[143]
pushi.e 4
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer

:[144]
push.v self.scon
pushi.e 4
cmp.i.v EQ
bf [185]

:[145]
push.v self.milk
pushi.e -9
pushenv [147]

:[146]
push.v self.hspeed
pushi.e 2
add.i.v
pop.v.v self.hspeed
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[147]
popenv [146]
push.v self.milktimer
pushi.e 1
add.i.v
pop.v.v self.milktimer
push.v self.milktimer
pushi.e 10
cmp.i.v EQ
bf [181]

:[148]
push.v self.whohealed
pushi.e 1
cmp.i.v EQ
bt [152]

:[149]
push.v self.whohealed
pushi.e 4
cmp.i.v EQ
bt [152]

:[150]
push.v self.whohealed
pushi.e 5
cmp.i.v EQ
bt [152]

:[151]
push.v self.whohealed
pushi.e 7
cmp.i.v EQ
b [153]

:[152]
push.e 1

:[153]
bf [159]

:[154]
pushi.e 710
pushenv [158]

:[155]
push.i 231862
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
pushi.e 873
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.healamt
push.v self.healamt
pushi.e -9
pushenv [157]

:[156]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type
pushi.e -5
push.v 710.myself
conv.v.i
push.v [array]self.monstermaxhp
pop.v.v self.damage
pushi.e 3
pop.v.i self.specialmessage

:[157]
popenv [156]
pushi.e 858
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hanim
push.v self.id
push.v self.hanim
pushi.e -9
pop.v.v [stacktop]self.target

:[158]
popenv [155]

:[159]
push.v self.whohealed
pushi.e 2
cmp.i.v EQ
bt [163]

:[160]
push.v self.whohealed
pushi.e 4
cmp.i.v EQ
bt [163]

:[161]
push.v self.whohealed
pushi.e 6
cmp.i.v EQ
bt [163]

:[162]
push.v self.whohealed
pushi.e 7
cmp.i.v EQ
b [164]

:[163]
push.e 1

:[164]
bf [170]

:[165]
pushi.e 714
pushenv [169]

:[166]
push.i 231862
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
pushi.e 873
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.healamt
push.v self.healamt
pushi.e -9
pushenv [168]

:[167]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type
pushi.e -5
push.v 714.myself
conv.v.i
push.v [array]self.monstermaxhp
pop.v.v self.damage
pushi.e 3
pop.v.i self.specialmessage

:[168]
popenv [167]
pushi.e 858
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hanim
push.v self.id
push.v self.hanim
pushi.e -9
pop.v.v [stacktop]self.target

:[169]
popenv [166]

:[170]
push.v self.whohealed
pushi.e 3
cmp.i.v EQ
bt [174]

:[171]
push.v self.whohealed
pushi.e 5
cmp.i.v EQ
bt [174]

:[172]
push.v self.whohealed
pushi.e 6
cmp.i.v EQ
bt [174]

:[173]
push.v self.whohealed
pushi.e 7
cmp.i.v EQ
b [175]

:[174]
push.e 1

:[175]
bf [181]

:[176]
pushi.e 712
pushenv [180]

:[177]
push.i 231862
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
pushi.e 873
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.healamt
push.v self.healamt
pushi.e -9
pushenv [179]

:[178]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type
pushi.e -5
push.v 712.myself
conv.v.i
push.v [array]self.monstermaxhp
pop.v.v self.damage
pushi.e 3
pop.v.i self.specialmessage

:[179]
popenv [178]
pushi.e 858
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hanim
push.v self.id
push.v self.hanim
pushi.e -9
pop.v.v [stacktop]self.target

:[180]
popenv [177]

:[181]
push.v self.milktimer
pushi.e 15
cmp.i.v GTE
bf [185]

:[182]
push.v self.milk
pushi.e -9
pushenv [184]

:[183]
call.i instance_destroy(argc=0)
popz.v

:[184]
popenv [183]
pushi.e 5
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer

:[185]
push.v self.scon
pushi.e 5
cmp.i.v EQ
bf [204]

:[186]
push.v self.milktimer
pushi.e 1
add.i.v
pop.v.v self.milktimer
push.v self.milktimer
pushi.e 30
cmp.i.v GTE
bf [204]

:[187]
pushi.e 64
pushenv [189]

:[188]
call.i instance_destroy(argc=0)
popz.v

:[189]
popenv [188]
pushi.e 6
pop.v.i self.scon
push.v self.whohealed
pushi.e 1
cmp.i.v EQ
bf [191]

:[190]
push.s "obj_musical_controller_slash_Step_0_gml_260_0"@26628
conv.s.v
push.s "* SWEET's HP went up!/%"@26629
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[191]
push.v self.whohealed
pushi.e 2
cmp.i.v EQ
bf [193]

:[192]
push.s "obj_musical_controller_slash_Step_0_gml_261_0"@26630
conv.s.v
push.s "* K_K's HP went up!/%"@26631
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[193]
push.v self.whohealed
pushi.e 3
cmp.i.v EQ
bf [195]

:[194]
push.s "obj_musical_controller_slash_Step_0_gml_262_0"@26632
conv.s.v
push.s "* CAPN's HP went up!/%"@26633
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[195]
push.v self.whohealed
pushi.e 4
cmp.i.v EQ
bf [197]

:[196]
push.s "obj_musical_controller_slash_Step_0_gml_263_0"@26634
conv.s.v
push.s "* SWEET's and K_K's HP went up!/%"@26635
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[197]
push.v self.whohealed
pushi.e 5
cmp.i.v EQ
bf [199]

:[198]
push.s "obj_musical_controller_slash_Step_0_gml_264_0"@26636
conv.s.v
push.s "* SWEET's and CAPN's HP went up!/%"@26637
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[199]
push.v self.whohealed
pushi.e 6
cmp.i.v EQ
bf [201]

:[200]
push.s "obj_musical_controller_slash_Step_0_gml_265_0"@26638
conv.s.v
push.s "* K_K's and CAPN's HP went up!/%"@26639
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[201]
push.v self.whohealed
pushi.e 7
cmp.i.v EQ
bf [203]

:[202]
push.s "obj_musical_controller_slash_Step_0_gml_284_0"@26640
conv.s.v
push.s "* SWEET's and K_K's HP went up!/"@26641
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_musical_controller_slash_Step_0_gml_262_0"@26632
conv.s.v
push.s "* CAPN's HP went up!/%"@26633
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[203]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[204]
push.v self.scon
pushi.e 6
cmp.i.v EQ
bf [207]

:[205]
pushi.e 999
pop.v.i global.turntimer
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [207]

:[206]
pushi.e 0
pop.v.i global.fc
pushi.e 7
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer
pushi.e 5
pop.v.i global.turntimer

:[207]
push.v self.scon
pushi.e 7
cmp.i.v EQ
bf [end]

:[208]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [210]

:[209]
pushi.e 357
pushi.e 2
push.v [array]self.alarm
pushi.e 1
cmp.i.v GT
b [211]

:[210]
push.e 0

:[211]
bf [end]

:[212]
pushi.e 0
pop.v.i self.scon
push.i 133633
setowner.e
pushi.e 1
conv.i.v
pushi.e 357
pushi.e 2
pop.v.v [array]self.alarm

:[end]