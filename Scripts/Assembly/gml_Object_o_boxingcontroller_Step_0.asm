.localvar 2 arguments
.localvar 21112 disable 14224
.localvar 27160 punch_buffer_amount 14226
.localvar 27167 arcade_end 14233
.localvar 27172 attackintroblock 14238
.localvar 27173 oldy 14239
.localvar 27174 _l 14240
.localvar 27178 can_block 14244
.localvar 27186 damage_multiplier_extra 14250
.localvar 6706 d 14252
.localvar 27188 whiteflash 14253
.localvar 27204 hitqueensfxcount 14269
.localvar 27212 dodge_speed 14277
.localvar 27214 duck_speed 14279

:[0]
pushi.e 371
pushenv [2]

:[1]
pushi.e -1000
pop.v.i self.x
pushi.e 1
pop.v.b self.visible

:[2]
popenv [1]
pushi.e 788
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[3]
push.v 788.hit
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v 788.hit_timer
pushi.e 20
cmp.i.v LT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 0
pop.v.i self.vspeed
exit.i

:[8]
pushi.e 791
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
push.v 791.hit
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 0
pop.v.i self.vspeed
exit.i

:[13]
pushi.e 789
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[14]
push.v 789.phase_transition
pushi.e 0
cmp.i.v GT
bf [16]

:[15]
push.v 789.phase_transition_timer
pushi.e 110
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 0
pop.v.i self.vspeed
exit.i

:[19]
push.v self.actpunchtimer
pushi.e 0
cmp.i.v GT
bf [21]

:[20]
push.v self.actpunchtimer
push.e 1
sub.i.v
pop.v.v self.actpunchtimer
exit.i

:[21]
push.v self.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushglb.v global.boxingphase
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [27]

:[25]
push.v global.boxingphase
push.e 1
add.i.v
pop.v.v global.boxingphase
pushglb.v global.boxingphase
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.v self.special_punch_turns
pushi.e 1
sub.i.v
pop.v.v self.special_punch_turns

:[27]
pushglb.v global.boxingphase
pushi.e 4
cmp.i.v EQ
bf [29]

:[28]
pushi.e 0
pop.v.i global.boxingphase

:[29]
push.v self.attackintrocon
pushi.e 2
cmp.i.v EQ
bf [32]

:[30]
push.v self.attackintrotimer
push.e 1
add.i.v
pop.v.v self.attackintrotimer
push.v self.attackintrotimer
pushi.e 17
cmp.i.v EQ
bf [32]

:[31]
pushi.e 0
pop.v.i self.attackintrocon
pushi.e 0
pop.v.i self.attackintrotimer

:[32]
push.v 789.health_count
push.v 789.health_count_max
push.d 0.2
mul.d.v
cmp.v.v LTE
bf [35]

:[33]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [39]

:[37]
push.v self.attackintrocon
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
pushi.e 0
pop.v.i self.attackintrocon

:[39]
push.v self.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [64]

:[40]
push.v 789.health_count
push.v 789.health_count_max
push.d 0.75
mul.d.v
cmp.v.v LT
bf [43]

:[41]
push.v 789.pattern_phase
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
push.v self.boxingtimer
pushi.e 9
cmp.i.v GT
b [44]

:[43]
push.e 0

:[44]
bf [48]

:[45]
pushi.e 1
pop.v.i 789.pattern_phase
pushi.e 10
pop.v.i self.boxingtimer
pushi.e 789
pushenv [47]

:[46]
call.i gml_Script_scr_qb_reset(argc=0)
popz.v

:[47]
popenv [46]

:[48]
push.v 789.health_count
push.v 789.health_count_max
push.d 0.5
mul.d.v
cmp.v.v LT
bf [51]

:[49]
push.v 789.pattern_phase
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
push.v self.boxingtimer
pushi.e 9
cmp.i.v GT
b [52]

:[51]
push.e 0

:[52]
bf [56]

:[53]
pushi.e 2
pop.v.i 789.pattern_phase
pushi.e 10
pop.v.i self.boxingtimer
pushi.e 789
pushenv [55]

:[54]
call.i gml_Script_scr_qb_reset(argc=0)
popz.v

:[55]
popenv [54]

:[56]
push.v 789.health_count
push.v 789.health_count_max
push.d 0.25
mul.d.v
cmp.v.v LT
bf [59]

:[57]
push.v 789.pattern_phase
pushi.e 2
cmp.i.v EQ
bf [59]

:[58]
push.v self.boxingtimer
pushi.e 9
cmp.i.v GT
b [60]

:[59]
push.e 0

:[60]
bf [64]

:[61]
pushi.e 3
pop.v.i 789.pattern_phase
pushi.e 10
pop.v.i self.boxingtimer
pushi.e 789
pushenv [63]

:[62]
call.i gml_Script_scr_qb_reset(argc=0)
popz.v

:[63]
popenv [62]

:[64]
push.v self.health_count
pushi.e 1
cmp.i.v LT
bf [66]

:[65]
push.v self.dead
push.d 0.5
cmp.d.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [70]

:[68]
pushi.e 0
pop.v.i self.health_count
pushi.e 1
pop.v.i self.dead
push.v self.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
pushi.e 807
conv.i.v
push.v self.y
pushi.e 45
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[70]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [72]

:[71]
push.v self.dead
pushi.e 1
cmp.i.v EQ
b [73]

:[72]
push.e 0

:[73]
bf [81]

:[74]
push.v self.dead_timer
push.e 1
add.i.v
pop.v.v self.dead_timer
pushi.e 7
pop.v.i self.image_index
push.v self.dead_timer
pushi.e 0
cmp.i.v GT
bf [76]

:[75]
push.v self.dead_timer
pushi.e 20
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [77]

:[76]
push.e 0

:[77]
bf [79]

:[78]
push.v self.basex
pushi.e 20
conv.i.d
push.v self.dead_timer
div.v.d
add.v.v
pushi.e 40
conv.i.d
push.v self.dead_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v self.x
push.v self.basey
pushi.e 20
conv.i.d
push.v self.dead_timer
div.v.d
add.v.v
pushi.e 40
conv.i.d
push.v self.dead_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v self.y

:[79]
push.v self.dead_timer
pushi.e 20
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [81]

:[80]
pushi.e 14
conv.i.d
push.v self.f
div.v.d
pop.v.v self.vspeed

:[81]
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [85]

:[82]
push.v 840.acting
pushi.e 0
cmp.i.v GT
bf [85]

:[83]
push.v self.punchcon
pushi.e 0
cmp.i.v EQ
bf [85]

:[84]
push.v self.dead
pushi.e 0
cmp.i.v EQ
b [86]

:[85]
push.e 0

:[86]
bt [102]

:[87]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [90]

:[88]
push.v self.punchcon
pushi.e 0
cmp.i.v EQ
bf [90]

:[89]
push.v self.dead
pushi.e 0
cmp.i.v EQ
b [91]

:[90]
push.e 0

:[91]
bt [102]

:[92]
push.v self.specialcon
pushi.e 0
cmp.i.v NEQ
bf [95]

:[93]
push.v self.punchcon
pushi.e 0
cmp.i.v EQ
bf [95]

:[94]
push.v self.dead
pushi.e 0
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bt [102]

:[97]
push.v self.acttoenemytalktransition
pushi.e 1
cmp.i.v EQ
bf [100]

:[98]
push.v self.punchcon
pushi.e 0
cmp.i.v EQ
bf [100]

:[99]
push.v self.dead
pushi.e 0
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
b [103]

:[102]
push.e 1

:[103]
bf [117]

:[104]
push.v 840.breathattack
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
push.v 840.missleattack
pushi.e 0
cmp.i.v EQ
b [107]

:[106]
push.e 0

:[107]
bf [116]

:[108]
pushi.e 789
pushenv [110]

:[109]
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r

:[110]
popenv [109]
push.v self.y
push.v self.basey
cmp.v.v NEQ
bf [113]

:[111]
push.d 0.5
conv.d.v
push.v self.basey
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y
push.v self.y
push.v self.basey
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [113]

:[112]
push.v self.basey
pop.v.v self.y

:[113]
push.v self.x
push.v self.basex
cmp.v.v NEQ
bf [116]

:[114]
push.d 0.5
conv.d.v
push.v self.basex
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x
push.v self.x
push.v self.basex
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [116]

:[115]
push.v self.basex
pop.v.v self.x

:[116]
b [137]

:[117]
pushglb.v global.boxingphase
pushi.e 0
cmp.i.v EQ
bf [119]

:[118]
push.v self.punchcon
pushi.e 0
cmp.i.v EQ
b [120]

:[119]
push.e 0

:[120]
bt [125]

:[121]
pushglb.v global.boxingphase
pushi.e 3
cmp.i.v EQ
bf [123]

:[122]
push.v self.punchcon
pushi.e 0
cmp.i.v EQ
b [124]

:[123]
push.e 0

:[124]
b [126]

:[125]
push.e 1

:[126]
bf [137]

:[127]
pushi.e 789
pushenv [129]

:[128]
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r

:[129]
popenv [128]
push.v self.y
push.v self.basey
pushi.e 35
sub.i.v
cmp.v.v GTE
bf [133]

:[130]
push.d 0.5
conv.d.v
push.v self.basey
pushi.e 35
sub.i.v
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y
push.v self.y
push.v self.basey
sub.v.v
pushi.e 35
sub.i.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [132]

:[131]
push.v self.basey
pushi.e 35
sub.i.v
pop.v.v self.y

:[132]
b [134]

:[133]
push.v self.basey
pushi.e 38
sub.i.v
pop.v.v self.y

:[134]
push.v self.x
push.v self.basex
pushi.e 70
sub.i.v
cmp.v.v GTE
bf [137]

:[135]
push.d 0.5
conv.d.v
push.v self.basex
pushi.e 70
sub.i.v
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x
push.v self.x
push.v self.basex
sub.v.v
pushi.e 70
sub.i.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [137]

:[136]
push.v self.basex
pushi.e 70
sub.i.v
pop.v.v self.x

:[137]
pushglb.v global.boxingphase
pushi.e 1
cmp.i.v EQ
bf [156]

:[138]
pushi.e 390
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [142]

:[139]
pushi.e 1
pop.v.i self.cancontrol
pushi.e 2
pop.v.i global.boxingphase
pushi.e 270
pop.v.i self.boxingtimer
pushi.e 789
pushenv [141]

:[140]
pushi.e 6
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.myturn
pushi.e 90
pop.v.i self.movetimer
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r

:[141]
popenv [140]
b [156]

:[142]
push.v self.y
push.v self.basey
cmp.v.v NEQ
bf [145]

:[143]
push.d 0.5
conv.d.v
push.v self.basey
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y
push.v self.y
push.v self.basey
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [145]

:[144]
push.v self.basey
pop.v.v self.y

:[145]
push.v self.x
push.v self.basex
cmp.v.v NEQ
bf [148]

:[146]
push.d 0.5
conv.d.v
push.v self.basex
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x
push.v self.x
push.v self.basex
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [148]

:[147]
push.v self.basex
pop.v.v self.x

:[148]
push.v self.x
push.v self.basex
cmp.v.v EQ
bf [151]

:[149]
push.v self.y
push.v self.basey
cmp.v.v EQ
bf [151]

:[150]
push.v self.dead
pushi.e 0
cmp.i.v EQ
b [152]

:[151]
push.e 0

:[152]
bf [156]

:[153]
pushi.e 1
pop.v.i self.cancontrol
pushi.e 2
pop.v.i global.boxingphase
pushi.e 270
pop.v.i self.boxingtimer
pushi.e 789
pushenv [155]

:[154]
pushi.e 6
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.myturn
pushi.e 90
pop.v.i self.movetimer
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r

:[155]
popenv [154]

:[156]
pushglb.v global.boxingphase
pushi.e 2
cmp.i.v EQ
bf [177]

:[157]
pushi.e 0
pop.v.i self.nextphase
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [159]

:[158]
push.v self.boxingtimer
push.e 1
sub.i.v
pop.v.v self.boxingtimer

:[159]
push.v self.boxingtimer
pushi.e 0
cmp.i.v LTE
bf [177]

:[160]
pushi.e 1
pop.v.i self.nextphase
push.v self.hurttimer
pushi.e 0
cmp.i.v GT
bf [162]

:[161]
pushi.e 0
pop.v.i self.nextphase

:[162]
push.v 789.state
pushi.e 2
cmp.i.v EQ
bf [164]

:[163]
pushi.e 0
pop.v.i self.nextphase

:[164]
push.v 789.state
pushi.e 3
cmp.i.v EQ
bf [166]

:[165]
pushi.e 0
pop.v.i self.nextphase

:[166]
push.v self.punchcon
pushi.e 0
cmp.i.v NEQ
bt [169]

:[167]
push.v self.duckcon
pushi.e 0
cmp.i.v NEQ
bt [169]

:[168]
push.v self.dodgecon
pushi.e 0
cmp.i.v NEQ
b [170]

:[169]
push.e 1

:[170]
bf [172]

:[171]
pushi.e 0
pop.v.i self.nextphase

:[172]
push.v self.nextphase
pushi.e 1
cmp.i.v EQ
bf [174]

:[173]
push.v self.dead
pushi.e 0
cmp.i.v EQ
b [175]

:[174]
push.e 0

:[175]
bf [177]

:[176]
pushi.e 3
pop.v.i global.boxingphase
push.v self.special_punch_turns
pushi.e 1
sub.i.v
pop.v.v self.special_punch_turns

:[177]
pushglb.v global.boxingphase
pushi.e 3
cmp.i.v EQ
bf [196]

:[178]
pushi.e 0
pop.v.i self.cancontrol
pushi.e 789
pushenv [180]

:[179]
pushi.e 0
pop.v.i self.myturn
pushi.e 0
pop.v.i self.dizzytimer

:[180]
popenv [179]
pushi.e 0
pop.v.i global.boxingphase
pushi.e 5
pop.v.i global.turntimer
pushi.e 840
pushenv [193]

:[181]
pushi.e 0
pop.v.i self.talked
push.v self.didntcounterthisturn
pushi.e 1
cmp.i.v EQ
bf [183]

:[182]
push.i 231921
setowner.e
push.s "o_boxingcontroller_slash_Step_0_gml_170_0"@27145
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* (Press ~1 or ~2 to hit Queen after she attacks!)"@27146
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[183]
push.v self.didntpunchthisturn
pushi.e 1
cmp.i.v EQ
bf [185]

:[184]
push.s "o_boxingcontroller_slash_Step_0_gml_174_0"@27148
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* (Punch during Queen's turn with ~1 or ~2 after she attacks!)"@27149
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[185]
push.v self.didntdodgethisturn
pushi.e 1
cmp.i.v EQ
bf [187]

:[186]
push.s "o_boxingcontroller_slash_Step_0_gml_178_0"@27151
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 1
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 3
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* (Dodge Queen's attacks with ~1, ~2, and ~3!)"@27152
conv.s.v
call.i gml_Script_stringsetsubloc(argc=5)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[187]
push.v self.recentphasetransition
pushi.e 2
cmp.i.v EQ
bf [189]

:[188]
push.s "o_boxingcontroller_slash_Step_0_gml_182_0"@27154
conv.s.v
push.s "* ROUND 2 begins.&* Queen's attacks got tougher!"@27155
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[189]
push.v self.recentphasetransition
pushi.e 3
cmp.i.v EQ
bf [191]

:[190]
push.s "o_boxingcontroller_slash_Step_0_gml_186_0"@27156
conv.s.v
push.s "* ROUND 3 begins.&* Queen's attacks got extreme!"@27157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[191]
pushi.e 0
pop.v.i self.recentphasetransition
pushi.e 1
pop.v.i self.didntdodgethisturn
pushi.e 1
pop.v.i self.didntpunchthisturn
push.v 842.sub_healthbar_count
pushi.e 2
cmp.i.v EQ
bf [193]

:[192]
pushi.e 1
pop.v.i self.didntcounterthisturn

:[193]
popenv [181]
pushi.e 357
pushenv [195]

:[194]
pushi.e 2
pop.v.i self.gigaqueencon
pushi.e 0
pop.v.i self.gigaqueentimer

:[195]
popenv [194]
pushi.e 0
pop.v.i self.defend
pushi.e 0
pop.v.i self.damagereductiononeturn
pushi.e 0
pop.v.i self.damagetakenthisturn

:[196]
pushbltn.v builtin.room
pushi.e 207
cmp.i.v NEQ
bf [199]

:[197]
pushi.e 843
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [199]

:[198]
push.v 843.pacifist_timer
pushi.e 2970
cmp.i.v GTE
b [200]

:[199]
push.e 0

:[200]
bt [205]

:[201]
push.v 777.health_count
pushi.e 1
cmp.i.v LT
bf [203]

:[202]
pushi.e 805
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [204]

:[203]
push.e 0

:[204]
b [206]

:[205]
push.e 1

:[206]
bf [208]

:[207]
pushi.e 0
pop.v.i self.cancontrol

:[208]
push.v self.arcaderesettimer
pushi.e 0
cmp.i.v GT
bf [210]

:[209]
push.v self.arcaderesettimer
push.e 1
sub.i.v
pop.v.v self.arcaderesettimer

:[210]
pushi.e 0
pop.v.i local.disable
push.v 789.attacktype
pushi.e 9
cmp.i.v EQ
bf [212]

:[211]
push.v 789.attackcon
pushi.e 2
cmp.i.v LT
b [213]

:[212]
push.e 0

:[213]
bf [215]

:[214]
pushi.e 1
pop.v.i local.disable

:[215]
pushi.e 807
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [217]

:[216]
pushi.e 808
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [218]

:[217]
push.e 1

:[218]
bf [220]

:[219]
pushi.e 1
pop.v.i local.disable

:[220]
push.v self.cancontrol
pushi.e 1
cmp.i.v EQ
bf [226]

:[221]
push.v 789.phase_transition
pushi.e 0
cmp.i.v EQ
bf [226]

:[222]
push.v self.talking
pushi.e 0
cmp.i.v EQ
bf [226]

:[223]
push.v self.arcaderesettimer
pushi.e 0
cmp.i.v EQ
bf [226]

:[224]
push.v 777.dead
pushi.e 4
cmp.i.v LT
bf [226]

:[225]
pushloc.v local.disable
pushi.e 0
cmp.i.v EQ
b [227]

:[226]
push.e 0

:[227]
bf [314]

:[228]
pushi.e 1
pop.v.i self.canpunch
push.v self.boxingtimer
pushi.e 2
cmp.i.v LT
bf [231]

:[229]
push.v 789.state
pushi.e 3
cmp.i.v NEQ
bf [231]

:[230]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [232]

:[231]
push.e 0

:[232]
bf [234]

:[233]
pushi.e 0
pop.v.i self.canpunch

:[234]
pushi.e 843
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [237]

:[235]
push.v 843.introcon
pushi.e 0
cmp.i.v EQ
bf [237]

:[236]
push.v self.wireframe_boxing
pushi.e 1
cmp.i.v EQ
b [238]

:[237]
push.e 0

:[238]
bf [240]

:[239]
pushi.e 0
pop.v.i self.canpunch

:[240]
push.v 789.phase_transition
pushi.e 0
cmp.i.v GT
bf [242]

:[241]
push.v self.wireframe_boxing
pushi.e 1
cmp.i.v EQ
b [243]

:[242]
push.e 0

:[243]
bf [245]

:[244]
pushi.e 0
pop.v.i self.canpunch

:[245]
push.v 789.state
pushi.e 3
cmp.i.v EQ
bf [248]

:[246]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [248]

:[247]
push.v 789.attacktype
pushi.e 9
cmp.i.v EQ
b [249]

:[248]
push.e 0

:[249]
bf [254]

:[250]
push.v 789.attackcon
pushi.e 3
cmp.i.v LT
bf [252]

:[251]
pushi.e 0
pop.v.i self.canpunch

:[252]
push.v 789.attacktimer
pushi.e 120
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
bf [254]

:[253]
pushi.e 0
pop.v.i self.canpunch

:[254]
pushi.e 2
pop.v.i local.punch_buffer_amount
push.v self.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [256]

:[255]
pushi.e 5
pop.v.i local.punch_buffer_amount

:[256]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [272]

:[257]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [259]

:[258]
push.v self.canpunch
conv.v.b
b [260]

:[259]
push.e 0

:[260]
bf [264]

:[261]
pushloc.v local.punch_buffer_amount
pop.v.v self.buffer_z
pushi.e 938
pushenv [263]

:[262]
pushi.e 5
pop.v.i self.punch_l_timer

:[263]
popenv [262]

:[264]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [266]

:[265]
push.v self.canpunch
conv.v.b
b [267]

:[266]
push.e 0

:[267]
bf [271]

:[268]
pushloc.v local.punch_buffer_amount
pop.v.v self.buffer_x
pushi.e 938
pushenv [270]

:[269]
pushi.e 5
pop.v.i self.punch_r_timer

:[270]
popenv [269]

:[271]
b [286]

:[272]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [274]

:[273]
push.v self.canpunch
conv.v.b
b [275]

:[274]
push.e 0

:[275]
bf [279]

:[276]
pushloc.v local.punch_buffer_amount
pop.v.v self.buffer_z
pushi.e 938
pushenv [278]

:[277]
pushi.e 5
pop.v.i self.punch_l_timer

:[278]
popenv [277]

:[279]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [281]

:[280]
push.v self.canpunch
conv.v.b
b [282]

:[281]
push.e 0

:[282]
bf [286]

:[283]
pushloc.v local.punch_buffer_amount
pop.v.v self.buffer_x
pushi.e 938
pushenv [285]

:[284]
pushi.e 5
pop.v.i self.punch_r_timer

:[285]
popenv [284]

:[286]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [290]

:[287]
pushi.e 3
pop.v.i self.buffer_d
pushi.e 938
pushenv [289]

:[288]
pushi.e 5
pop.v.i self.dodge_d_timer

:[289]
popenv [288]

:[290]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [294]

:[291]
pushi.e 3
pop.v.i self.buffer_r
pushi.e 938
pushenv [293]

:[292]
pushi.e 5
pop.v.i self.dodge_r_timer

:[293]
popenv [292]

:[294]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [298]

:[295]
pushi.e 3
pop.v.i self.buffer_l
pushi.e 938
pushenv [297]

:[296]
pushi.e 5
pop.v.i self.dodge_l_timer

:[297]
popenv [296]

:[298]
push.v self.boxingtimer
pushi.e 2
cmp.i.v LT
bf [301]

:[299]
push.v 789.state
pushi.e 3
cmp.i.v NEQ
bf [301]

:[300]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [302]

:[301]
push.e 0

:[302]
bf [304]

:[303]
pushi.e 0
pop.v.i self.buffer_d
pushi.e 0
pop.v.i self.buffer_r
pushi.e 0
pop.v.i self.buffer_l

:[304]
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [306]

:[305]
push.v 840.playerhasntdodged
pushi.e 0
cmp.i.v EQ
b [307]

:[306]
push.e 0

:[307]
bf [314]

:[308]
call.i gml_Script_down_p(argc=0)
conv.v.b
bt [311]

:[309]
call.i gml_Script_right_p(argc=0)
conv.v.b
bt [311]

:[310]
call.i gml_Script_left_p(argc=0)
conv.v.b
b [312]

:[311]
push.e 1

:[312]
bf [314]

:[313]
pushi.e 1
pop.v.i 840.playerhasntdodged

:[314]
push.v self.dodgecon
pushi.e 0
cmp.i.v EQ
bf [318]

:[315]
push.v self.hurtcon
pushi.e 0
cmp.i.v EQ
bf [318]

:[316]
push.v self.duckcon
pushi.e 0
cmp.i.v EQ
bf [318]

:[317]
push.v self.jumpcon
pushi.e 0
cmp.i.v EQ
b [319]

:[318]
push.e 0

:[319]
bf [334]

:[320]
push.v self.special_punch_count
pushi.e 1
cmp.i.v LT
bt [322]

:[321]
push.v self.special_punch_turns
pushi.e 1
cmp.i.v LT
b [323]

:[322]
push.e 1

:[323]
bf [334]

:[324]
push.v self.flameactive
pushi.e 0
cmp.i.v GT
bt [329]

:[325]
push.v self.swordactive
pushi.e 0
cmp.i.v GT
bt [329]

:[326]
push.v self.laseractive
pushi.e 0
cmp.i.v GT
bt [329]

:[327]
push.v self.duckactive
pushi.e 0
cmp.i.v GT
bt [329]

:[328]
push.v self.turboactive
pushi.e 0
cmp.i.v GT
b [330]

:[329]
push.e 1

:[330]
bf [334]

:[331]
pushi.e 0
pop.v.i self.flameactive
pushi.e 0
pop.v.i self.swordactive
pushi.e 0
pop.v.i self.laseractive
pushi.e 0
pop.v.i self.duckactive
pushi.e 0
pop.v.i self.turboactive
pushi.e 1
pop.v.i self.damage_multiplier
pushi.e 1
pop.v.i self.punch_speed_multiplier
pushi.e 811
pushenv [333]

:[332]
pushi.e 1
pop.v.i self.state

:[333]
popenv [332]

:[334]
push.v self.dodgecon
pushi.e 0
cmp.i.v EQ
bf [338]

:[335]
push.v self.hurtcon
pushi.e 0
cmp.i.v EQ
bf [338]

:[336]
push.v self.duckcon
pushi.e 0
cmp.i.v EQ
bf [338]

:[337]
push.v self.jumpcon
pushi.e 0
cmp.i.v EQ
b [339]

:[338]
push.e 0

:[339]
bf [355]

:[340]
push.v self.buffer_z
pushi.e 0
cmp.i.v GT
bf [355]

:[341]
push.v self.punchcon
pushi.e 0
cmp.i.v EQ
bt [351]

:[342]
push.v self.punchcon
pushi.e 6
cmp.i.v EQ
bf [344]

:[343]
pushi.e 843
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [345]

:[344]
push.e 0

:[345]
bt [351]

:[346]
push.v self.punchcon
pushi.e 6
cmp.i.v EQ
bf [349]

:[347]
pushi.e 843
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [349]

:[348]
push.v self.punchtimer
pushi.e 6
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
b [350]

:[349]
push.e 0

:[350]
b [352]

:[351]
push.e 1

:[352]
bf [355]

:[353]
pushi.e 0
pop.v.i self.drawflip
pushi.e 1
pop.v.i self.punchcon
pushi.e -1
pop.v.i self.lastpunchside
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [355]

:[354]
pushi.e 0
pop.v.i 840.didntpunchthisturn

:[355]
push.v self.dodgecon
pushi.e 0
cmp.i.v EQ
bf [359]

:[356]
push.v self.hurtcon
pushi.e 0
cmp.i.v EQ
bf [359]

:[357]
push.v self.duckcon
pushi.e 0
cmp.i.v EQ
bf [359]

:[358]
push.v self.jumpcon
pushi.e 0
cmp.i.v EQ
b [360]

:[359]
push.e 0

:[360]
bf [376]

:[361]
push.v self.buffer_x
pushi.e 0
cmp.i.v GT
bf [376]

:[362]
push.v self.punchcon
pushi.e 0
cmp.i.v EQ
bt [372]

:[363]
push.v self.punchcon
pushi.e 6
cmp.i.v EQ
bf [365]

:[364]
pushi.e 843
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [366]

:[365]
push.e 0

:[366]
bt [372]

:[367]
push.v self.punchcon
pushi.e 6
cmp.i.v EQ
bf [370]

:[368]
pushi.e 843
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [370]

:[369]
push.v self.punchtimer
pushi.e 6
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
b [371]

:[370]
push.e 0

:[371]
b [373]

:[372]
push.e 1

:[373]
bf [376]

:[374]
pushi.e 1
pop.v.i self.drawflip
pushi.e 1
pop.v.i self.punchcon
pushi.e 1
pop.v.i self.lastpunchside
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [376]

:[375]
pushi.e 0
pop.v.i 840.didntpunchthisturn

:[376]
push.v self.punchcon
pushi.e 0
cmp.i.v EQ
bf [381]

:[377]
push.v self.dodgecon
pushi.e 0
cmp.i.v EQ
bf [381]

:[378]
push.v self.hurtcon
pushi.e 0
cmp.i.v EQ
bf [381]

:[379]
push.v self.duckcon
pushi.e 0
cmp.i.v EQ
bf [381]

:[380]
push.v self.jumpcon
pushi.e 0
cmp.i.v EQ
b [382]

:[381]
push.e 0

:[382]
bt [388]

:[383]
push.v self.punchcon
pushi.e 5
cmp.i.v EQ
bf [385]

:[384]
push.v self.y
pushi.e 370
cmp.i.v GT
b [386]

:[385]
push.e 0

:[386]
bt [388]

:[387]
push.v self.punchcon
pushi.e 6
cmp.i.v EQ
b [389]

:[388]
push.e 1

:[389]
bf [398]

:[390]
push.v self.buffer_l
pushi.e 0
cmp.i.v GT
bf [398]

:[391]
push.v self.punchcon
pushi.e 5
cmp.i.v GTE
bf [393]

:[392]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.friction

:[393]
pushi.e 1
pop.v.i self.drawflip
pushi.e 1
pop.v.i self.dodgecon
push.v self.arcade
conv.v.b
bf [395]

:[394]
pushi.e 312
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [396]

:[395]
pushi.e 120
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[396]
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [398]

:[397]
pushi.e 0
pop.v.i 840.didntdodgethisturn

:[398]
push.v self.punchcon
pushi.e 0
cmp.i.v EQ
bf [403]

:[399]
push.v self.dodgecon
pushi.e 0
cmp.i.v EQ
bf [403]

:[400]
push.v self.hurtcon
pushi.e 0
cmp.i.v EQ
bf [403]

:[401]
push.v self.duckcon
pushi.e 0
cmp.i.v EQ
bf [403]

:[402]
push.v self.jumpcon
pushi.e 0
cmp.i.v EQ
b [404]

:[403]
push.e 0

:[404]
bt [410]

:[405]
push.v self.punchcon
pushi.e 5
cmp.i.v EQ
bf [407]

:[406]
push.v self.y
pushi.e 370
cmp.i.v GT
b [408]

:[407]
push.e 0

:[408]
bt [410]

:[409]
push.v self.punchcon
pushi.e 6
cmp.i.v EQ
b [411]

:[410]
push.e 1

:[411]
bf [420]

:[412]
push.v self.buffer_r
pushi.e 0
cmp.i.v GT
bf [420]

:[413]
push.v self.punchcon
pushi.e 5
cmp.i.v GTE
bf [415]

:[414]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.friction

:[415]
pushi.e 0
pop.v.i self.drawflip
pushi.e 1
pop.v.i self.dodgecon
push.v self.arcade
conv.v.b
bf [417]

:[416]
pushi.e 312
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [418]

:[417]
pushi.e 120
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[418]
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [420]

:[419]
pushi.e 0
pop.v.i 840.didntdodgethisturn

:[420]
push.v self.punchcon
pushi.e 0
cmp.i.v EQ
bf [425]

:[421]
push.v self.dodgecon
pushi.e 0
cmp.i.v EQ
bf [425]

:[422]
push.v self.hurtcon
pushi.e 0
cmp.i.v EQ
bf [425]

:[423]
push.v self.duckcon
pushi.e 0
cmp.i.v EQ
bf [425]

:[424]
push.v self.jumpcon
pushi.e 0
cmp.i.v EQ
b [426]

:[425]
push.e 0

:[426]
bt [432]

:[427]
push.v self.punchcon
pushi.e 5
cmp.i.v EQ
bf [429]

:[428]
push.v self.y
pushi.e 370
cmp.i.v GT
b [430]

:[429]
push.e 0

:[430]
bt [432]

:[431]
push.v self.punchcon
pushi.e 6
cmp.i.v EQ
b [433]

:[432]
push.e 1

:[433]
bf [442]

:[434]
push.v self.buffer_d
pushi.e 0
cmp.i.v GT
bf [442]

:[435]
push.v self.punchcon
pushi.e 5
cmp.i.v GTE
bf [437]

:[436]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.friction

:[437]
pushi.e 1
pop.v.i self.duckcon
push.v self.arcade
conv.v.b
bf [439]

:[438]
pushi.e 312
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [440]

:[439]
pushi.e 120
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[440]
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [442]

:[441]
pushi.e 0
pop.v.i 840.didntdodgethisturn

:[442]
push.v self.punchcon
pushi.e 0
cmp.i.v EQ
bf [447]

:[443]
push.v self.dodgecon
pushi.e 0
cmp.i.v EQ
bf [447]

:[444]
push.v self.hurtcon
pushi.e 0
cmp.i.v EQ
bf [447]

:[445]
push.v self.duckcon
pushi.e 0
cmp.i.v EQ
bf [447]

:[446]
push.v self.jumpcon
pushi.e 0
cmp.i.v EQ
b [448]

:[447]
push.e 0

:[448]
bf [451]

:[449]
push.v self.buffer_u
pushi.e 0
cmp.i.v GT
bf [451]

:[450]
pushi.e 1
pop.v.i self.jumpcon

:[451]
pushi.e 0
pop.v.i local.arcade_end
push.v 789.phase_transition
pushi.e 0
cmp.i.v GT
bf [454]

:[452]
push.v self.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [454]

:[453]
push.v self.punchcon
pushi.e 1
cmp.i.v EQ
b [455]

:[454]
push.e 0

:[455]
bf [457]

:[456]
pushi.e 0
pop.v.i self.buffer_z
pushi.e 0
pop.v.i self.buffer_x
pushi.e 0
pop.v.i self.punch_l_timer
pushi.e 0
pop.v.i self.punch_l_timer
pushi.e 1
pop.v.i local.arcade_end

:[457]
push.v self.punchcon
pushi.e 1
cmp.i.v GTE
bf [459]

:[458]
pushloc.v local.arcade_end
pushi.e 0
cmp.i.v EQ
b [460]

:[459]
push.e 0

:[460]
bf [923]

:[461]
push.v self.punchcon
pushi.e 1
cmp.i.v EQ
bf [479]

:[462]
pushi.e 0
pop.v.i 777.hit_baseball_check
push.v self.special_punch_count
pushi.e 1
sub.i.v
pop.v.v self.special_punch_count
pushi.e 843
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [464]

:[463]
push.v 843.pacifist_state
pushi.e 0
cmp.i.v EQ
b [465]

:[464]
push.e 0

:[465]
bf [467]

:[466]
pushi.e -1
pop.v.i 843.pacifist_state
push.v 777.default_string
pop.v.v 843.text

:[467]
pushi.e 0
pop.v.i self.hitattempt
push.v self.basex
pop.v.v self.x
push.v self.basey
pop.v.v self.y
pushi.e 1
pop.v.i self.image_index
push.v self.swordactive
pushi.e 1
cmp.i.v EQ
bf [469]

:[468]
pushi.e 14
pop.v.i self.image_index

:[469]
pushi.e -12
push.v self.f
mul.v.i
push.v self.punch_speed_multiplier
mul.v.v
pop.v.v self.vspeed
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [471]

:[470]
push.v 840.acting
pushi.e 0
cmp.i.v GT
b [472]

:[471]
push.e 0

:[472]
bf [474]

:[473]
pushi.e -10
push.v self.f
mul.v.i
pop.v.v self.vspeed

:[474]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [476]

:[475]
pushi.e -4
push.v self.f
mul.v.i
pop.v.v self.hspeed

:[476]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [478]

:[477]
pushi.e 4
push.v self.f
mul.v.i
pop.v.v self.hspeed

:[478]
pushi.e 2
push.v self.f
mul.v.i
pop.v.v self.friction
pushi.e 2
pop.v.i self.punchcon
pushi.e 0
pop.v.i self.punchtimer
pushi.e 120
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 1.25
conv.d.v
pushi.e 120
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[479]
push.v self.punchcon
pushi.e 2
cmp.i.v EQ
bf [499]

:[480]
push.v self.punchtimer
pushi.e 1
push.v self.punch_speed_multiplier
mul.v.i
add.v.v
pop.v.v self.punchtimer
push.v self.laseractive
pushi.e 1
cmp.i.v EQ
bf [482]

:[481]
push.v self.punchtimer
pushi.e 1
add.i.v
pop.v.v self.punchtimer

:[482]
push.v self.punchtimer
pushi.e 7
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [485]

:[483]
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [485]

:[484]
push.v 840.acting
pushi.e 0
cmp.i.v EQ
b [486]

:[485]
push.e 0

:[486]
bt [496]

:[487]
push.v self.punchtimer
pushi.e 14
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [490]

:[488]
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [490]

:[489]
push.v 840.acting
pushi.e 0
cmp.i.v GT
b [491]

:[490]
push.e 0

:[491]
bt [496]

:[492]
push.v self.punchtimer
pushi.e 7
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [494]

:[493]
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [495]

:[494]
push.e 0

:[495]
b [497]

:[496]
push.e 1

:[497]
bf [499]

:[498]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.punchtimer
pushi.e 3
pop.v.i self.punchcon

:[499]
push.v self.punchcon
pushi.e 3
cmp.i.v EQ
bf [867]

:[500]
pushi.e 0
pop.v.i self.missnoise
pushi.e 2
pop.v.i self.image_index
push.v self.swordactive
pushi.e 1
cmp.i.v EQ
bf [502]

:[501]
pushi.e 12
pop.v.i self.image_index

:[502]
push.d 0.6
push.v self.f
mul.v.d
pop.v.v self.friction
push.v self.y
pushi.e 40
sub.i.v
pop.v.v self.y
pushi.e -10
push.v self.f
mul.v.i
pop.v.v self.vspeed
pushi.e 4
pop.v.i self.punchcon
pushi.e 788
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [504]

:[503]
pushi.e 791
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [505]

:[504]
push.e 1

:[505]
bf [511]

:[506]
pushi.e 787
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hitbox
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [508]

:[507]
pushi.e 2
push.v self.hitbox
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[508]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [510]

:[509]
pushi.e -2
push.v self.hitbox
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[510]
pushi.e 2
push.v self.hitbox
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[511]
push.v self.hitattempt
pushi.e 0
cmp.i.v EQ
bf [867]

:[512]
pushi.e 1
pop.v.i self.hitattempt
pushi.e 0
pop.v.i self.q_miss
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [514]

:[513]
push.v 789.invincible_l
pushi.e 1
cmp.i.v EQ
b [515]

:[514]
push.e 0

:[515]
bf [517]

:[516]
pushi.e 1
pop.v.i self.q_miss

:[517]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [519]

:[518]
push.v 789.invincible_r
pushi.e 1
cmp.i.v EQ
b [520]

:[519]
push.e 0

:[520]
bf [522]

:[521]
pushi.e 1
pop.v.i self.q_miss

:[522]
pushi.e 0
pop.v.i local.attackintroblock
push.v self.laseractive
pushi.e 1
cmp.i.v EQ
bf [530]

:[523]
push.v self.y
pushi.e 30
sub.i.v
pop.v.v self.y
pushi.e 10
pop.v.i self.laserpunchfadetimer
push.v self.y
pushi.e 70
add.i.v
pop.v.v local.oldy
pushi.e 0
pop.v.i local._l

:[524]
pushloc.v local._l
pushi.e 8
cmp.i.v LT
bf [530]

:[525]
pushi.e 817
conv.i.v
pushloc.v local._l
pushi.e 8
conv.i.d
div.d.v
pushloc.v local.oldy
push.v self.y
call.i lerp(argc=3)
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.afterimage
pushi.e 3312
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.image_index
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.depth
pushi.e 1
sub.i.v
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 10
pushloc.v local._l
sub.v.i
pushi.e 10
conv.i.d
div.d.v
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.id
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.boss
pushi.e 2
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [527]

:[526]
pushi.e -2
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[527]
pushi.e 2
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.q_miss
pushi.e 1
cmp.i.v EQ
bf [529]

:[528]
pushi.e -3
pop.v.i self.vspeed

:[529]
push.v local._l
push.e 1
add.i.v
pop.v.v local._l
b [524]

:[530]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [532]

:[531]
push.v 789.health_count
pushi.e 1
cmp.i.v LT
b [533]

:[532]
push.e 0

:[533]
bf [535]

:[534]
pushi.e 1
pop.v.i self.q_miss

:[535]
pushi.e 807
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [537]

:[536]
pushi.e 808
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [538]

:[537]
push.e 1

:[538]
bf [540]

:[539]
pushi.e 1
pop.v.i self.q_miss

:[540]
push.v 789.state
pushi.e 0
cmp.i.v EQ
bf [543]

:[541]
push.v 789.movetimer
pushi.e 10
add.i.v
push.v 789.attackthreshold
cmp.v.v GTE
bf [543]

:[542]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [544]

:[543]
push.e 0

:[544]
bf [549]

:[545]
pushi.e 789
push.v 789.attackcount
conv.v.i
push.v [array]self.list_attacktype
pushi.e 0
cmp.i.v EQ
bt [547]

:[546]
pushi.e 789
push.v 789.attackcount
conv.v.i
push.v [array]self.list_attacktype
pushi.e 2
cmp.i.v EQ
b [548]

:[547]
push.e 1

:[548]
bf [549]

:[549]
push.v 789.state
pushi.e 3
cmp.i.v EQ
bf [551]

:[550]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [552]

:[551]
push.e 0

:[552]
bf [585]

:[553]
push.v 789.attacktype
pushi.e 0
cmp.i.v EQ
bf [557]

:[554]
push.v 789.attackcon
pushi.e 1
cmp.i.v EQ
bf [557]

:[555]
push.v 789.punch_type
pushi.e 1
cmp.i.v EQ
bf [557]

:[556]
push.v 789.attacktimer
pushi.e 9
cmp.i.v LT
b [558]

:[557]
push.e 0

:[558]
bt [583]

:[559]
push.v 789.attacktype
pushi.e 0
cmp.i.v EQ
bf [563]

:[560]
push.v 789.attackcon
pushi.e 1
cmp.i.v EQ
bf [563]

:[561]
push.v 789.punch_type
pushi.e 2
cmp.i.v EQ
bf [563]

:[562]
push.v 789.attacktimer
pushi.e 9
cmp.i.v LT
b [564]

:[563]
push.e 0

:[564]
bt [583]

:[565]
push.v 789.attacktype
pushi.e 0
cmp.i.v EQ
bf [569]

:[566]
push.v 789.attackcon
pushi.e 1
cmp.i.v EQ
bf [569]

:[567]
push.v 789.punch_type
pushi.e 3
cmp.i.v EQ
bf [569]

:[568]
push.v 789.attacktimer
pushi.e 9
cmp.i.v LT
b [570]

:[569]
push.e 0

:[570]
bt [583]

:[571]
push.v 789.attacktype
pushi.e 2
cmp.i.v EQ
bf [574]

:[572]
push.v 789.attackcon
pushi.e 1
cmp.i.v EQ
bf [574]

:[573]
push.v 789.attacktimer
pushi.e 9
cmp.i.v LT
b [575]

:[574]
push.e 0

:[575]
bt [583]

:[576]
push.v 789.attacktype
pushi.e 1
cmp.i.v EQ
bf [581]

:[577]
push.v 789.punch_type
pushi.e 0
cmp.i.v EQ
bf [581]

:[578]
push.v 789.kick_amount
pushi.e 0
cmp.i.v EQ
bf [581]

:[579]
push.v 789.attacktimer
pushi.e 12
cmp.i.v LT
bf [581]

:[580]
push.v 789.image_index
pushi.e 2
cmp.i.v NEQ
b [582]

:[581]
push.e 0

:[582]
b [584]

:[583]
push.e 1

:[584]
bf [585]

:[585]
push.v 789.health_count
push.v 789.health_count_max
push.d 0.5
mul.d.v
cmp.v.v LT
bf [587]

:[586]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
b [588]

:[587]
push.e 0

:[588]
bf [598]

:[589]
push.v 789.sprite_index
pushi.e 2140
cmp.i.v EQ
bt [591]

:[590]
push.v 789.sprite_index
pushi.e 2140
cmp.i.v EQ
b [592]

:[591]
push.e 1

:[592]
bf [598]

:[593]
push.v 789.invincible_l
pushi.e 1
cmp.i.v EQ
bt [595]

:[594]
push.v 789.invincible_r
pushi.e 1
cmp.i.v EQ
b [596]

:[595]
push.e 1

:[596]
bf [598]

:[597]
pushi.e 1
pop.v.i self.q_miss

:[598]
push.v self.q_miss
pushi.e 0
cmp.i.v EQ
bf [867]

:[599]
pushi.e 1
pop.v.i local.can_block
push.v 789.health_count
push.v 789.health_count_max
push.d 0.5
mul.d.v
cmp.v.v GTE
bf [601]

:[600]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
b [602]

:[601]
push.e 0

:[602]
bf [604]

:[603]
pushi.e 1
pop.v.i local.can_block

:[604]
push.v 789.health_count
push.v 789.health_count_max
push.d 0.5
mul.d.v
cmp.v.v LT
bf [607]

:[605]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [607]

:[606]
push.v self.drawflip
push.v 789.force_drawflip
cmp.v.v EQ
b [608]

:[607]
push.e 0

:[608]
bf [616]

:[609]
push.v 789.sprite_index
pushi.e 2134
cmp.i.v EQ
bf [611]

:[610]
push.v self.o_boxingqueen_janky_image_index
pushi.e 2
cmp.i.v LT
b [612]

:[611]
push.e 0

:[612]
bf [614]

:[613]
pushi.e 0
pop.v.i local.can_block

:[614]
push.v 789.sprite_index
pushi.e 2135
cmp.i.v EQ
bf [616]

:[615]
pushi.e 0
pop.v.i local.can_block

:[616]
push.v 789.blocking
push.v self.drawflip
cmp.v.v EQ
bf [620]

:[617]
push.v self.swordactive
pushi.e 0
cmp.i.v EQ
bf [620]

:[618]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [620]

:[619]
push.v self.disable_queen_blocking
pushi.e 0
cmp.i.v EQ
b [621]

:[620]
push.e 0

:[621]
bt [628]

:[622]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [625]

:[623]
pushloc.v local.can_block
pushi.e 0
cmp.i.v EQ
bf [625]

:[624]
push.v self.disable_queen_blocking
pushi.e 0
cmp.i.v EQ
b [626]

:[625]
push.e 0

:[626]
bt [628]

:[627]
pushloc.v local.attackintroblock
pushi.e 1
cmp.i.v EQ
b [629]

:[628]
push.e 1

:[629]
bf [638]

:[630]
push.v self.y
pushi.e 20
add.i.v
pop.v.v self.y
push.d 4.7
pop.v.d self.punchcon
push.v self.arcade_times_blocked
pushi.e 1
add.i.v
pop.v.v self.arcade_times_blocked
pushi.e 0
pop.v.i self.punchtimer
pushi.e 6
pop.v.i self.hshake
push.v self.x
pushi.e 6
sub.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.shaketimer
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.friction
pushi.e 789
pushenv [637]

:[631]
push.v self.basex
pop.v.v self.x
push.v self.basey
pop.v.v self.y
pushi.e 835
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 834
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.block_star
pushi.e 0
pushi.e 90
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.block_star
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 834
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.block_star
pushi.e 90
pushi.e 90
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.block_star
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 834
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.block_star
pushi.e 180
pushi.e 90
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.block_star
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 834
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.block_star
pushi.e 270
pushi.e 90
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.block_star
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.arcade
conv.v.b
bf [633]

:[632]
pushi.e 314
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [634]

:[633]
pushi.e 40
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[634]
push.v 777.drawflip
pop.v.v self.drawflip
push.v self.x
pop.v.v self.savex
push.v self.y
pop.v.v self.savey
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.friction
pushi.e 0
pop.v.i self.blocktimer
pushi.e 2
pop.v.i self.state
pushi.e 0
pop.v.i self.image_index
pushi.e 2120
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [636]

:[635]
pushi.e 2148
pop.v.i self.sprite_index
push.s "o_boxingcontroller_slash_Step_0_gml_361_0"@27183
conv.s.v
push.s "You can Punch on both sides!"@27184
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v 843.text
pushi.e 1
pop.v.i 843.text_reset_timer

:[636]
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r

:[637]
popenv [631]
b [867]

:[638]
pushi.e 1
pop.v.i local.damage_multiplier_extra
pushglb.v global.beat_phase1_no_damage_taken
pushi.e 0
cmp.i.v EQ
bf [640]

:[639]
push.v 842.sub_healthbar_count
pushi.e 2
cmp.i.v EQ
b [641]

:[640]
push.e 0

:[641]
bf [643]

:[642]
push.d 1.25
pop.v.d local.damage_multiplier_extra

:[643]
pushglb.v global.beat_phase1_no_damage_taken
pushi.e 1
cmp.i.v EQ
bf [645]

:[644]
push.v 842.sub_healthbar_count
pushi.e 2
cmp.i.v EQ
b [646]

:[645]
push.e 0

:[646]
bf [648]

:[647]
push.d 2.5
pop.v.d local.damage_multiplier_extra

:[648]
push.v self.beat_phase2_no_damage_taken
pushi.e 1
cmp.i.v EQ
bf [650]

:[649]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
b [651]

:[650]
push.e 0

:[651]
bf [653]

:[652]
push.d 1.5
pop.v.d local.damage_multiplier_extra

:[653]
push.v 789.attackorderlooping
pushi.e 1
cmp.i.v EQ
bf [655]

:[654]
push.v local.damage_multiplier_extra
push.d 0.5
add.d.v
pop.v.v local.damage_multiplier_extra

:[655]
push.v local.damage_multiplier_extra
push.v self.phase3_damage_multiplier
add.v.v
pop.v.v local.damage_multiplier_extra
pushloc.v local.damage_multiplier_extra
pushi.e 1
sub.i.v
push.v self.damage_multiplier
add.v.v
pop.v.v local.damage_multiplier_extra
pushi.e 1
pop.v.i local.d
push.v self.defend
pushi.e 1
cmp.i.v EQ
bf [657]

:[656]
push.d 0.8
pop.v.d local.d

:[657]
pushi.e 0
pop.v.i local.whiteflash
push.v local.d
push.v 789.damagetakenincrease
add.v.v
pop.v.v local.d
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [677]

:[658]
push.v self.damageoverride
pushi.e 0
cmp.i.v NEQ
bf [674]

:[659]
push.v self.damageoverride
pushi.e 1
cmp.i.v NEQ
bf [661]

:[660]
push.v self.damageoverride
pushloc.v local.damage_multiplier_extra
mul.v.v
call.i ceil(argc=1)
pop.v.v self.damageoverride

:[661]
push.v 789.health_count
push.v self.damageoverride
sub.v.v
pop.v.v 789.health_count
pushi.e 1
pop.v.i 789.actpunchtimer
pushi.e 873
conv.i.v
push.v self.y
pushi.e 150
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dm
pushi.e 2
push.v self.dm
pushi.e -9
pop.v.i [stacktop]self.delay
push.v self.damageoverride
push.v self.dm
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 0
pop.v.i self.damageoverride
pushi.e 15
pop.v.i self.actpunchtimer
pushi.e 1
pop.v.i local.whiteflash
push.v self.healoverride
pushi.e 0
cmp.i.v NEQ
bf [673]

:[662]
push.v self.health_count
push.v self.healoverride
add.v.v
pop.v.v self.health_count
pushi.e 873
conv.i.v
push.v self.y
pushi.e 75
sub.i.v
push.v self.x
pushi.e 30
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dmgwr
push.v self.dmgwr
pushi.e -9
pushenv [664]

:[663]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type

:[664]
popenv [663]
push.v self.healoverride
push.v self.dmgwr
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e -5
pushi.e 1
push.v [array]self.hp
push.v self.healoverride
add.v.v
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
cmp.v.v GT
bf [666]

:[665]
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pushi.e -5
pushi.e 1
push.v [array]self.hp
sub.v.v
pop.v.v self.damage

:[666]
push.v self.health_count
push.v self.health_count_max
cmp.v.v GT
bf [668]

:[667]
push.v self.health_count_max
pop.v.v self.health_count

:[668]
push.i 231131
setowner.e
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.hp
push.v self.healoverride
add.v.v
pop.i.v [array]self.hp
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
cmp.v.v GT
bf [670]

:[669]
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp

:[670]
push.v self.arcade
conv.v.b
bf [672]

:[671]
push.v self.snd_power_bc
call.i gml_Script_snd_play(argc=1)
popz.v
b [673]

:[672]
pushi.e 163
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[673]
b [677]

:[674]
push.v 789.sprite_index
pushi.e 2114
cmp.i.v EQ
bf [676]

:[675]
push.v 789.health_count
pushi.e 14
pushloc.v local.damage_multiplier_extra
mul.v.i
pushloc.v local.d
mul.v.v
call.i ceil(argc=1)
sub.v.v
pop.v.v 789.health_count
b [677]

:[676]
push.v 789.health_count
pushi.e 28
pushloc.v local.damage_multiplier_extra
mul.v.i
pushloc.v local.d
mul.v.v
call.i ceil(argc=1)
sub.v.v
pop.v.v 789.health_count

:[677]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [687]

:[678]
push.v 789.health_count
pushi.e 30
sub.i.v
pop.v.v 789.health_count
push.v 789.state
pushi.e 3
cmp.i.v EQ
bf [686]

:[679]
push.v 789.attacktype
pushi.e 0
cmp.i.v EQ
bf [681]

:[680]
push.v 789.attackcon
pushi.e 3
cmp.i.v EQ
b [682]

:[681]
push.e 0

:[682]
bf [684]

:[683]
push.v 789.health_count
pushi.e 20
sub.i.v
pop.v.v 789.health_count
b [686]

:[684]
push.v 789.attacktype
pushi.e 0
cmp.i.v NEQ
bf [686]

:[685]
push.v 789.health_count
pushi.e 20
sub.i.v
pop.v.v 789.health_count

:[686]
pushi.e 0
pop.v.i 843.zx_timer
pushi.e 0
pop.v.i 843.zx_state
pushi.e 1
pop.v.i 777.arcade_times_blocked

:[687]
pushi.e 100
pop.v.i 842.healthbar_flash
pushi.e 0
pop.v.i 789.pacifist
push.v 789.health_count_prev_timer_set
pop.v.v 789.health_count_prev_timer
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [689]

:[688]
pushi.e 1
pop.v.i 789.drawflip

:[689]
pushi.e 789
pushenv [691]

:[690]
call.i path_end(argc=0)
popz.v

:[691]
popenv [690]
push.v self.tpoverride
pushi.e 0
cmp.i.v NEQ
bf [695]

:[692]
push.v self.tpoverride
call.i gml_Script_scr_tensionheal(argc=1)
popz.v
push.v self.arcade
conv.v.b
bf [694]

:[693]
pushi.e 325
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [695]

:[694]
pushi.e 159
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[695]
push.d 2.5
conv.d.v
call.i gml_Script_scr_tensionheal(argc=1)
popz.v
pushi.e 0
pop.v.i self.tpoverride
push.v 789.state
pushi.e 0
cmp.i.v NEQ
bf [698]

:[696]
push.v 789.state
pushi.e 1
cmp.i.v NEQ
bf [698]

:[697]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [699]

:[698]
push.e 0

:[699]
bf [701]

:[700]
pushi.e 1
pop.v.i 789.combo
pushi.e 0
pop.v.i 840.didntcounterthisturn

:[701]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [703]

:[702]
pushi.e 1
pop.v.i 789.combo

:[703]
push.v 789.state
pushi.e 0
cmp.i.v EQ
bf [707]

:[704]
push.v 789.bouncetimer
pushi.e 1
cmp.i.v GT
bf [707]

:[705]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [707]

:[706]
pushglb.v global.boxingphase
pushi.e 2
cmp.i.v EQ
b [708]

:[707]
push.e 0

:[708]
bf [710]

:[709]
pushi.e 1
pop.v.i 789.shortcomboend
pushi.e 1
pop.v.i 789.combo
pushi.e 0
pop.v.i 840.didntcounterthisturn
pushi.e 2
pop.v.i 789.times_hit_in_a_row

:[710]
push.v 789.combo
pushi.e 1
cmp.i.v EQ
bf [712]

:[711]
push.v 789.times_hit_in_a_row
pushi.e 1
add.i.v
pop.v.v 789.times_hit_in_a_row

:[712]
push.v self.swordactive
pushi.e 1
cmp.i.v EQ
bf [718]

:[713]
push.v self.damage_multiplier
push.d 1.2
cmp.d.v EQ
bf [715]

:[714]
push.d 1.3
pop.v.d self.damage_multiplier
b [718]

:[715]
push.v self.damage_multiplier
push.d 1.6
cmp.d.v LT
bf [717]

:[716]
push.v self.damage_multiplier
push.d 0.05
add.d.v
pop.v.v self.damage_multiplier
b [718]

:[717]
push.v self.damage_multiplier
push.d 0.02
add.d.v
pop.v.v self.damage_multiplier

:[718]
pushi.e 0
pop.v.i 789.hurt_fx1_timer
pushi.e 0
pop.v.i 789.hurt_fx1_timer2
pushi.e 1
pop.v.i 789.hurt_fx1_state
push.v self.drawflip
pop.v.v self.arcade_mode_last_punched_direction
pushi.e 843
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [720]

:[719]
push.v 789.health_count
push.v 789.health_count_max
pushi.e 1
mul.i.v
cmp.v.v LT
b [721]

:[720]
push.e 0

:[721]
bf [726]

:[722]
push.v 789.force_drawflip
pushi.e 0
cmp.i.v LTE
bf [724]

:[723]
pushi.e 1
pop.v.i 789.force_drawflip
b [725]

:[724]
pushi.e 0
pop.v.i 789.force_drawflip

:[725]
b [728]

:[726]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [728]

:[727]
pushi.e 0
pop.v.i 789.drawflip

:[728]
pushi.e 789
pushenv [847]

:[729]
pushi.e 0
pop.v.i self.hitanim
push.v self.times_hit_in_a_row
pushi.e 2
cmp.i.v GT
bf [735]

:[730]
push.v 789.shortcomboend
pushi.e 0
cmp.i.v EQ
bf [735]

:[731]
push.v 777.laseractive
pushi.e 0
cmp.i.v EQ
bf [735]

:[732]
push.v self.times_hit_in_a_row
pushi.e 3
cmp.i.v GT
bf [735]

:[733]
push.v 789.shortcomboend
pushi.e 0
cmp.i.v EQ
bf [735]

:[734]
push.v 777.laseractive
pushi.e 1
cmp.i.v EQ
b [736]

:[735]
push.e 0

:[736]
bf [741]

:[737]
push.v self.arcade
conv.v.b
bf [739]

:[738]
pushi.e 323
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 324
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.punchnoise
b [740]

:[739]
pushi.e 158
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 342
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.punchnoise

:[740]
push.d 1.4
conv.d.v
push.v self.punchnoise
call.i audio_sound_pitch(argc=2)
popz.v
b [749]

:[741]
push.v self.arcade
conv.v.b
bf [743]

:[742]
pushi.e 324
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.punchnoise
b [744]

:[743]
pushi.e 5
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.punchnoise

:[744]
push.v self.times_hit_in_a_row
pop.v.v local.hitqueensfxcount
pushloc.v local.hitqueensfxcount
pushi.e 0
cmp.i.v LT
bf [746]

:[745]
pushi.e 0
pop.v.i local.hitqueensfxcount

:[746]
push.v 789.shortcomboend
pushi.e 1
cmp.i.v EQ
bf [748]

:[747]
pushi.e 1
conv.i.v
push.v self.punchnoise
call.i audio_sound_pitch(argc=2)
popz.v
b [749]

:[748]
pushi.e 1
pushloc.v local.hitqueensfxcount
pushi.e 1
sub.i.v
push.d 0.3
mul.d.v
add.v.i
push.v self.punchnoise
call.i audio_sound_pitch(argc=2)
popz.v

:[749]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [767]

:[750]
push.v self.times_hit_in_a_row
pushi.e 3
cmp.i.v LT
bf [752]

:[751]
push.v 777.laseractive
pushi.e 0
cmp.i.v EQ
b [753]

:[752]
push.e 0

:[753]
bf [755]

:[754]
pushi.e 1
pop.v.i 789.movetimer

:[755]
push.v self.times_hit_in_a_row
pushi.e 4
cmp.i.v LT
bf [757]

:[756]
push.v 777.laseractive
pushi.e 1
cmp.i.v EQ
b [758]

:[757]
push.e 0

:[758]
bf [760]

:[759]
pushi.e 1
pop.v.i 789.movetimer

:[760]
push.v 789.combo
pushi.e 0
cmp.i.v EQ
bf [762]

:[761]
push.v 789.attackthreshold
pop.v.v 789.movetimer

:[762]
push.v 789.combo
pushi.e 1
cmp.i.v EQ
bf [764]

:[763]
push.v 789.attackthreshold
pushi.e 0
cmp.i.v EQ
b [765]

:[764]
push.e 0

:[765]
bf [767]

:[766]
pushi.e 30
pop.v.i 789.attackthreshold

:[767]
push.v self.dizzytimer
pushi.e 0
cmp.i.v LTE
bf [769]

:[768]
push.v self.noattack
pushi.e 1
add.i.v
pop.v.v self.noattack
b [772]

:[769]
push.v self.arcade
conv.v.b
bf [771]

:[770]
pushi.e 303
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [772]

:[771]
pushi.e 115
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[772]
pushi.e -1
pop.v.i self.blocking
pushi.e 0
pop.v.i self.image_index
pushi.e 2115
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [774]

:[773]
pushi.e 2144
pop.v.i self.sprite_index

:[774]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e 0
pop.v.i self.enddizzy
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [792]

:[775]
push.v self.makedizzy
pushi.e 0
cmp.i.v GT
bf [781]

:[776]
push.v self.makedizzy
pop.v.v self.dizzytimer
push.v 777.flameactive
pushi.e 1
cmp.i.v EQ
bf [778]

:[777]
push.v self.makedizzy
push.d 1.5
mul.d.v
pop.v.v self.dizzytimer

:[778]
push.v 777.laseractive
pushi.e 1
cmp.i.v EQ
bf [780]

:[779]
push.v self.makedizzy
push.d 1.5
mul.d.v
pop.v.v self.dizzytimer

:[780]
pushi.e 0
pop.v.i self.makedizzy
b [785]

:[781]
push.v 777.laseractive
pushi.e 0
cmp.i.v EQ
bf [783]

:[782]
push.v self.dizzytimer
pushi.e 20
sub.i.v
pop.v.v self.dizzytimer

:[783]
push.v 777.laseractive
pushi.e 1
cmp.i.v EQ
bf [785]

:[784]
push.v self.dizzytimer
pushi.e 10
sub.i.v
pop.v.v self.dizzytimer

:[785]
push.v self.dizzytimer
pushi.e 0
cmp.i.v GT
bf [787]

:[786]
push.v self.dizzytimer
pushi.e 60
cmp.i.v LTE
b [788]

:[787]
push.e 0

:[788]
bf [790]

:[789]
pushi.e 0
pop.v.i self.dizzytimer
pushi.e 1
pop.v.i self.enddizzy

:[790]
push.v self.dizzytimer
pushi.e 0
cmp.i.v GT
bf [792]

:[791]
pushi.e 2119
pop.v.i self.sprite_index

:[792]
pushloc.v local.whiteflash
pushi.e 1
cmp.i.v EQ
bf [796]

:[793]
pushi.e 789
pushenv [795]

:[794]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i 817.white_silhouette

:[795]
popenv [794]

:[796]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bt [798]

:[797]
push.v self.drawflip
pushi.e -1
cmp.i.v EQ
b [799]

:[798]
push.e 1

:[799]
bf [805]

:[800]
push.v self.dizzytimer
pushi.e 60
cmp.i.v GTE
bf [802]

:[801]
pushi.e 1
pop.v.i self.hitanim
b [803]

:[802]
pushi.e 2
pop.v.i self.hitnaim

:[803]
push.v self.enddizzy
pushi.e 1
cmp.i.v EQ
bf [805]

:[804]
pushi.e 3
pop.v.i self.hitanim

:[805]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [811]

:[806]
push.v self.dizzytimer
pushi.e 60
cmp.i.v GTE
bf [808]

:[807]
pushi.e -1
pop.v.i self.hitanim
b [809]

:[808]
pushi.e -2
pop.v.i self.hitanim

:[809]
push.v self.enddizzy
pushi.e 1
cmp.i.v EQ
bf [811]

:[810]
pushi.e -3
pop.v.i self.hitanim

:[811]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [842]

:[812]
push.v self.times_hit_in_a_row
pushi.e 3
cmp.i.v LT
bf [814]

:[813]
push.v 777.laseractive
pushi.e 0
cmp.i.v EQ
b [815]

:[814]
push.e 0

:[815]
bt [820]

:[816]
push.v self.times_hit_in_a_row
pushi.e 4
cmp.i.v LT
bf [818]

:[817]
push.v 777.laseractive
pushi.e 1
cmp.i.v EQ
b [819]

:[818]
push.e 0

:[819]
b [821]

:[820]
push.e 1

:[821]
bf [841]

:[822]
push.v self.hitanim
pushi.e -2
cmp.i.v EQ
bf [824]

:[823]
pushi.e -3
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
pop.v.v self.hitanim

:[824]
push.v self.hitanim
pushi.e 3
cmp.i.v EQ
bt [826]

:[825]
push.v self.hitanim
pushi.e -3
cmp.i.v EQ
b [827]

:[826]
push.e 1

:[827]
bf [829]

:[828]
pushi.e 2
conv.i.v
pushi.e 2
push.v self.hitanim
mul.v.i
pushi.e 3
conv.i.d
div.d.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_move_precise(argc=3)
popz.v

:[829]
push.v self.hitanim
pushi.e 1
cmp.i.v EQ
bt [831]

:[830]
push.v self.hitanim
pushi.e -1
cmp.i.v EQ
b [832]

:[831]
push.e 1

:[832]
bf [834]

:[833]
pushi.e 2
conv.i.v
pushi.e 2
push.v self.hitanim
mul.v.i
pushi.e 1
conv.i.d
div.d.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_move_precise(argc=3)
popz.v

:[834]
push.v self.hitanim
pushi.e 2
cmp.i.v EQ
bt [836]

:[835]
push.v self.hitanim
pushi.e -2
cmp.i.v EQ
b [837]

:[836]
push.e 1

:[837]
bf [839]

:[838]
pushi.e 2
conv.i.v
pushi.e 2
push.v self.hitanim
mul.v.i
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_move_precise(argc=3)
popz.v

:[839]
push.v self.hitanim
pushi.e 0
cmp.i.v EQ
bf [841]

:[840]
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_move_precise(argc=3)
popz.v

:[841]
b [846]

:[842]
push.v self.times_hit_in_a_row
pushi.e 2
cmp.i.v LT
bf [846]

:[843]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [845]

:[844]
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
call.i gml_Script_scr_move_precise(argc=3)
popz.v
b [846]

:[845]
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
call.i gml_Script_scr_move_precise(argc=3)
popz.v

:[846]
pushi.e 0
pop.v.i self.hurttimer
pushi.e 1
pop.v.i self.state
push.v self.basex
pop.v.v self.x
push.v self.basey
pop.v.v self.y

:[847]
popenv [729]
push.v self.basex
pop.v.v self.x
pushi.e 0
pop.v.i self.vspeed
push.d 4.5
pop.v.d self.punchcon
pushi.e 0
pop.v.i self.punchtimer
pushi.e 833
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hit_fx
push.v self.hit_fx
pushi.e -9
pushenv [849]

:[848]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[849]
popenv [848]
push.v self.flameactive
pushi.e 1
cmp.i.v EQ
bf [854]

:[850]
push.v self.arcade
conv.v.b
bf [852]

:[851]
pushi.e 322
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [853]

:[852]
pushi.e 116
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[853]
pushi.e 1
pop.v.i self.flamepunch
pushi.e 10
pop.v.i self.flametimer

:[854]
push.v self.laseractive
pushi.e 1
cmp.i.v EQ
bf [859]

:[855]
push.v self.arcade
conv.v.b
bf [857]

:[856]
pushi.e 322
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [858]

:[857]
pushi.e 116
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[858]
pushi.e 1
pop.v.i self.laserpunch
pushi.e 10
pop.v.i self.lasertimer

:[859]
push.v self.duckactive
pushi.e 1
cmp.i.v EQ
bf [867]

:[860]
push.v self.arcade
conv.v.b
bf [862]

:[861]
push.d 0.75
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 309
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 309
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [863]

:[862]
push.d 0.75
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 57
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 57
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[863]
pushi.e 1
pop.v.i self.color_fade_alpha
push.v self.healoverride
pushi.e 0
cmp.i.v EQ
bf [866]

:[864]
push.i 231131
setowner.e
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.hp
pushi.e 2
add.i.v
pop.i.v [array]self.hp
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
cmp.v.v GT
bf [866]

:[865]
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp

:[866]
pushi.e 0
pop.v.i self.healoverride

:[867]
push.v self.punchcon
pushi.e 4
cmp.i.v EQ
bf [883]

:[868]
push.v self.missnoise
pushi.e 0
cmp.i.v EQ
bf [873]

:[869]
push.v self.arcade
conv.v.b
bf [871]

:[870]
pushi.e 327
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [872]

:[871]
pushi.e 122
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[872]
pushi.e 1
pop.v.i self.missnoise

:[873]
push.v self.vspeed
push.d 0.81
mul.d.v
pop.v.v self.vspeed
push.v self.miss_timer
push.e 1
add.i.v
pop.v.v self.miss_timer
push.v self.miss_timer
pushi.e 5
cmp.i.v EQ
bf [875]

:[874]
push.v self.swordactive
pushi.e 1
cmp.i.v EQ
b [876]

:[875]
push.e 0

:[876]
bf [878]

:[877]
pushi.e 13
pop.v.i self.image_index

:[878]
push.v self.vspeed
pushi.e -1
push.v self.f
mul.v.i
cmp.v.v GTE
bf [880]

:[879]
push.v self.punchcon
pushi.e 4
cmp.i.v EQ
b [881]

:[880]
push.e 0

:[881]
bf [883]

:[882]
pushi.e 5
pop.v.i self.punchcon
pushi.e 0
pop.v.i self.miss_timer
pushi.e 3
push.v self.f
mul.v.i
pop.v.v self.vspeed

:[883]
push.v self.punchcon
push.d 4.5
cmp.d.v EQ
bf [898]

:[884]
push.v self.punchtimer
pushi.e 1
add.i.v
pop.v.v self.punchtimer
push.v self.punchtimer
pushi.e 5
cmp.i.v EQ
bf [886]

:[885]
push.v self.swordactive
pushi.e 1
cmp.i.v EQ
b [887]

:[886]
push.e 0

:[887]
bf [889]

:[888]
pushi.e 13
pop.v.i self.image_index

:[889]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.friction
push.v self.f
pushi.e 1
cmp.i.v EQ
bf [896]

:[890]
push.v self.punchtimer
pushi.e 1
cmp.i.v EQ
bf [892]

:[891]
push.v self.y
pushi.e 30
sub.i.v
pop.v.v self.y

:[892]
push.v self.punchtimer
pushi.e 2
cmp.i.v EQ
bf [894]

:[893]
push.v self.y
pushi.e 15
sub.i.v
pop.v.v self.y

:[894]
push.v self.punchtimer
pushi.e 3
cmp.i.v EQ
bf [896]

:[895]
push.v self.y
pushi.e 8
sub.i.v
pop.v.v self.y

:[896]
push.v self.punchtimer
pushi.e 10
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [898]

:[897]
pushi.e 5
pop.v.i self.punchcon
pushi.e 0
pop.v.i self.punchtimer

:[898]
push.v self.punchcon
push.d 4.7
cmp.d.v EQ
bf [917]

:[899]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.friction
push.v self.punchtimer
pushi.e 1
add.i.v
pop.v.v self.punchtimer
push.v self.shaketimer
pushi.e 1
add.i.v
pop.v.v self.shaketimer
push.v self.shaketimer
pushi.e 5
cmp.i.v EQ
bf [901]

:[900]
push.v self.swordactive
pushi.e 1
cmp.i.v EQ
b [902]

:[901]
push.e 0

:[902]
bf [904]

:[903]
pushi.e 13
pop.v.i self.image_index

:[904]
push.v self.shaketimer
pushi.e 2
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [915]

:[905]
push.v self.x
push.v self.hshake
add.v.v
pop.v.v self.x
push.v self.hshake
pushi.e 0
cmp.i.v GT
bf [907]

:[906]
push.v self.hshake
pushi.e 1
sub.i.v
pop.v.v self.hshake

:[907]
push.v self.hshake
pushi.e 0
cmp.i.v LT
bf [909]

:[908]
push.v self.hshake
pushi.e 1
add.i.v
pop.v.v self.hshake

:[909]
push.v self.hshake
neg.v
pop.v.v self.hshake
push.v self.hshake
pushi.e 1
cmp.i.v EQ
bt [911]

:[910]
push.v self.hshake
pushi.e -1
cmp.i.v EQ
b [912]

:[911]
push.e 1

:[912]
bf [914]

:[913]
pushi.e 0
pop.v.i self.hshake

:[914]
pushi.e 0
pop.v.i self.shaketimer

:[915]
push.v self.punchtimer
pushi.e 22
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [917]

:[916]
pushi.e 0
pop.v.i self.punchtimer
pushi.e 5
pop.v.i self.punchcon

:[917]
push.v self.punchcon
pushi.e 5
cmp.i.v EQ
bf [920]

:[918]
push.v self.vspeed
pushi.e 3
push.v self.f
mul.v.i
push.v self.punch_speed_multiplier
mul.v.v
add.v.v
pop.v.v self.vspeed
push.v self.y
push.v self.basey
cmp.v.v GTE
bf [920]

:[919]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.friction
push.v self.basey
pop.v.v self.y
pushi.e 6
pop.v.i self.punchcon
pushi.e 0
pop.v.i self.punchtimer

:[920]
push.v self.punchcon
pushi.e 6
cmp.i.v EQ
bf [923]

:[921]
pushi.e 3
pop.v.i self.image_index
push.v self.punchtimer
pushi.e 1
push.v self.punch_speed_multiplier
mul.v.i
add.v.v
pop.v.v self.punchtimer
push.v self.punchtimer
pushi.e 10
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [923]

:[922]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[923]
push.v self.dodgecon
pushi.e 0
cmp.i.v GT
bf [1004]

:[924]
pushi.e 0
pop.v.i self.long_dodge
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [926]

:[925]
call.i gml_Script_right_h(argc=0)
conv.v.b
b [927]

:[926]
push.e 0

:[927]
bf [929]

:[928]
pushi.e 1
pop.v.i self.long_dodge

:[929]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [931]

:[930]
call.i gml_Script_left_h(argc=0)
conv.v.b
b [932]

:[931]
push.e 0

:[932]
bf [934]

:[933]
pushi.e 1
pop.v.i self.long_dodge

:[934]
pushi.e 1
pop.v.i local.dodge_speed
push.v self.turboactive
pushi.e 1
cmp.i.v EQ
bf [936]

:[935]
pushi.e 2
pop.v.i local.dodge_speed

:[936]
push.v self.dodgecon
pushi.e 1
cmp.i.v EQ
bf [946]

:[937]
push.v self.basex
pop.v.v self.x
push.v self.basey
pop.v.v self.y
pushi.e 4
pop.v.i self.image_index
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [939]

:[938]
pushi.e 18
push.v self.f
mul.v.i
pushloc.v local.dodge_speed
mul.v.v
pop.v.v self.hspeed

:[939]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [941]

:[940]
pushi.e -18
push.v self.f
mul.v.i
pushloc.v local.dodge_speed
mul.v.v
pop.v.v self.hspeed

:[941]
pushi.e 0
pop.v.i self.dodgetimer
pushi.e 2
pop.v.i self.dodgecon
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [943]

:[942]
push.v 843.text
push.v 777.dodge_string
cmp.v.v EQ
b [944]

:[943]
push.e 0

:[944]
bf [946]

:[945]
push.v 777.default_string
pop.v.v 843.text

:[946]
push.v self.dodgecon
pushi.e 2
cmp.i.v EQ
bf [972]

:[947]
push.v self.dodgetimer
pushi.e 1
add.i.v
pop.v.v self.dodgetimer
push.v self.dodgetimer
pushi.e 1
cmp.i.v EQ
bf [949]

:[948]
pushi.e 1
pop.v.i self.dodging

:[949]
push.v self.dodgetimer
pushi.e 16
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [951]

:[950]
push.v self.turboactive
pushi.e 0
cmp.i.v EQ
b [952]

:[951]
push.e 0

:[952]
bf [954]

:[953]
pushi.e 0
pop.v.i self.dodging

:[954]
push.v self.dodgetimer
pushi.e 32
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [956]

:[955]
push.v self.turboactive
pushi.e 1
cmp.i.v EQ
b [957]

:[956]
push.e 0

:[957]
bf [959]

:[958]
pushi.e 0
pop.v.i self.dodging

:[959]
pushloc.v local.dodge_speed
pushi.e 1
cmp.i.v EQ
bf [961]

:[960]
push.v self.hspeed
push.d 0.6400000000000001
mul.d.v
pop.v.v self.hspeed

:[961]
pushloc.v local.dodge_speed
pushi.e 2
cmp.i.v EQ
bf [965]

:[962]
pushloc.v local.dodge_speed
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [964]

:[963]
push.v self.hspeed
push.d 0.698896
mul.d.v
pop.v.v self.hspeed
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [963]

:[964]
popz.i

:[965]
push.v self.hspeed
call.i abs(argc=1)
pushi.e 5
push.v self.f
mul.v.i
cmp.v.v LTE
bf [967]

:[966]
push.v self.long_dodge
pushi.e 0
cmp.i.v EQ
b [968]

:[967]
push.e 0

:[968]
bf [970]

:[969]
pushi.e 3
pop.v.i self.dodgecon

:[970]
push.v self.hspeed
call.i abs(argc=1)
push.d 0.2
push.v self.f
mul.v.d
cmp.v.v LTE
bf [972]

:[971]
pushi.e 3
pop.v.i self.dodgecon

:[972]
push.v self.dodgecon
pushi.e 3
cmp.i.v EQ
bf [976]

:[973]
push.v self.turboactive
pushi.e 0
cmp.i.v EQ
bf [975]

:[974]
pushi.e 0
pop.v.i self.dodging

:[975]
push.v self.x
call.i round(argc=1)
pop.v.v self.x
pushi.e 4
pop.v.i self.dodgecon

:[976]
push.v self.dodgecon
pushi.e 4
cmp.i.v EQ
bf [1002]

:[977]
push.v self.dodgetimer
push.e 1
add.i.v
pop.v.v self.dodgetimer
push.v self.dodgetimer
pushi.e 32
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [979]

:[978]
push.v self.turboactive
pushi.e 1
cmp.i.v EQ
b [980]

:[979]
push.e 0

:[980]
bf [982]

:[981]
pushi.e 0
pop.v.i self.dodging

:[982]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [992]

:[983]
push.v self.turboactive
pushi.e 1
cmp.i.v EQ
bf [985]

:[984]
push.v self.long_dodge
pushi.e 1
cmp.i.v EQ
b [986]

:[985]
push.e 0

:[986]
bf [988]

:[987]
push.v self.hspeed
push.d 0.1
push.v self.f
mul.v.d
pushloc.v local.dodge_speed
mul.v.v
sub.v.v
pop.v.v self.hspeed
b [990]

:[988]
push.v self.hspeed
push.d 0.5
push.v self.f
mul.v.d
pushloc.v local.dodge_speed
mul.v.v
sub.v.v
pop.v.v self.hspeed
push.v self.long_dodge
pushi.e 0
cmp.i.v EQ
bf [990]

:[989]
push.v self.hspeed
push.d 0.3
push.v self.f
mul.v.d
sub.v.v
pop.v.v self.hspeed

:[990]
push.v self.x
push.v self.basex
pushi.e 8
push.v self.f
mul.v.i
add.v.v
cmp.v.v LTE
bf [992]

:[991]
pushi.e 0
pop.v.i self.speed
push.v self.basex
pop.v.v self.x
pushi.e 5
pop.v.i self.dodgecon
pushi.e 0
pop.v.i self.dodging
pushi.e 0
pop.v.i self.dodgetimer

:[992]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [1002]

:[993]
push.v self.turboactive
pushi.e 1
cmp.i.v EQ
bf [995]

:[994]
push.v self.long_dodge
pushi.e 1
cmp.i.v EQ
b [996]

:[995]
push.e 0

:[996]
bf [998]

:[997]
push.v self.hspeed
push.d 0.1
push.v self.f
mul.v.d
pushloc.v local.dodge_speed
mul.v.v
add.v.v
pop.v.v self.hspeed
b [1000]

:[998]
push.v self.hspeed
push.d 0.5
push.v self.f
mul.v.d
pushloc.v local.dodge_speed
mul.v.v
add.v.v
pop.v.v self.hspeed
push.v self.long_dodge
pushi.e 0
cmp.i.v EQ
bf [1000]

:[999]
push.v self.hspeed
push.d 0.3
push.v self.f
mul.v.d
pushloc.v local.dodge_speed
mul.v.v
add.v.v
pop.v.v self.hspeed

:[1000]
push.v self.x
push.v self.basex
pushi.e 8
push.v self.f
mul.v.i
sub.v.v
cmp.v.v GTE
bf [1002]

:[1001]
pushi.e 0
pop.v.i self.speed
push.v self.basex
pop.v.v self.x
pushi.e 5
pop.v.i self.dodgecon
pushi.e 0
pop.v.i self.dodging
pushi.e 0
pop.v.i self.dodgetimer

:[1002]
push.v self.dodgecon
pushi.e 5
cmp.i.v EQ
bf [1004]

:[1003]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[1004]
push.v self.duckcon
pushi.e 0
cmp.i.v GT
bf [1054]

:[1005]
pushi.e 0
pop.v.i self.long_duck
call.i gml_Script_down_h(argc=0)
conv.v.b
bf [1007]

:[1006]
pushi.e 1
pop.v.i self.long_duck

:[1007]
pushi.e 1
pop.v.i local.duck_speed
push.v self.turboactive
pushi.e 1
cmp.i.v EQ
bf [1009]

:[1008]
pushi.e 2
pop.v.i local.duck_speed

:[1009]
push.v self.duckcon
pushi.e 1
cmp.i.v EQ
bf [1015]

:[1010]
push.v self.basex
pop.v.v self.x
push.v self.basey
pop.v.v self.y
pushi.e 1
pop.v.i self.ducking
pushi.e 6
pop.v.i self.image_index
pushi.e 5
push.v self.f
mul.v.i
pushloc.v local.duck_speed
mul.v.v
pop.v.v self.vspeed
pushi.e 2
pop.v.i self.duckcon
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1012]

:[1011]
push.v 843.text
push.v 777.duck_string
cmp.v.v EQ
b [1013]

:[1012]
push.e 0

:[1013]
bf [1015]

:[1014]
push.v 777.default_string
pop.v.v 843.text

:[1015]
push.v self.duckcon
pushi.e 2
cmp.i.v EQ
bf [1031]

:[1016]
pushloc.v local.duck_speed
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [1018]

:[1017]
push.v self.vspeed
push.d 0.81
mul.d.v
pop.v.v self.vspeed
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1017]

:[1018]
popz.i
push.v self.vspeed
call.i abs(argc=1)
pushi.e 1
push.v self.f
mul.v.i
cmp.v.v LTE
bf [1020]

:[1019]
push.v self.long_duck
pushi.e 0
cmp.i.v EQ
b [1021]

:[1020]
push.e 0

:[1021]
bf [1023]

:[1022]
pushi.e 3
pop.v.i self.duckcon

:[1023]
push.v self.vspeed
call.i abs(argc=1)
pushi.e 6
push.v self.f
mul.v.i
cmp.v.v LTE
bf [1026]

:[1024]
push.v self.long_duck
pushi.e 0
cmp.i.v EQ
bf [1026]

:[1025]
push.v self.turboactive
pushi.e 1
cmp.i.v EQ
b [1027]

:[1026]
push.e 0

:[1027]
bf [1029]

:[1028]
pushi.e 3
pop.v.i self.duckcon

:[1029]
push.v self.vspeed
call.i abs(argc=1)
push.d 0.3
push.v self.f
mul.v.d
cmp.v.v LTE
bf [1031]

:[1030]
pushi.e 3
pop.v.i self.duckcon

:[1031]
push.v self.duckcon
pushi.e 3
cmp.i.v EQ
bf [1033]

:[1032]
push.v self.y
call.i round(argc=1)
pop.v.v self.y
pushi.e 4
pop.v.i self.duckcon
pushi.e 0
pop.v.i self.ducktimer

:[1033]
push.v self.duckcon
pushi.e 4
cmp.i.v EQ
bf [1052]

:[1034]
push.v self.ducktimer
pushi.e 1
add.i.v
pop.v.v self.ducktimer
push.v self.ducktimer
pushi.e 6
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1036]

:[1035]
push.v self.turboactive
pushi.e 0
cmp.i.v EQ
b [1037]

:[1036]
push.e 0

:[1037]
bf [1039]

:[1038]
pushi.e 0
pop.v.i self.ducking

:[1039]
push.v self.ducktimer
pushi.e 12
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1041]

:[1040]
push.v self.turboactive
pushi.e 1
cmp.i.v EQ
b [1042]

:[1041]
push.e 0

:[1042]
bf [1044]

:[1043]
pushi.e 0
pop.v.i self.ducking

:[1044]
push.v self.turboactive
pushi.e 1
cmp.i.v EQ
bf [1046]

:[1045]
push.v self.long_duck
pushi.e 1
cmp.i.v EQ
b [1047]

:[1046]
push.e 0

:[1047]
bf [1049]

:[1048]
push.v self.vspeed
push.d 0.05
push.v self.f
mul.v.d
sub.v.v
pop.v.v self.vspeed
b [1050]

:[1049]
push.v self.vspeed
push.d 0.5
push.v self.f
mul.v.d
pushloc.v local.duck_speed
mul.v.v
sub.v.v
pop.v.v self.vspeed

:[1050]
push.v self.y
push.v self.basey
pushi.e 6
push.v self.f
mul.v.i
add.v.v
cmp.v.v LTE
bf [1052]

:[1051]
pushi.e 0
pop.v.i self.speed
push.v self.basey
pop.v.v self.y
pushi.e 5
pop.v.i self.duckcon

:[1052]
push.v self.duckcon
pushi.e 5
cmp.i.v EQ
bf [1054]

:[1053]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[1054]
push.v self.jumpcon
pushi.e 0
cmp.i.v GT
bf [1090]

:[1055]
pushi.e 0
pop.v.i self.long_jump
call.i gml_Script_up_h(argc=0)
conv.v.b
bf [1057]

:[1056]
pushi.e 1
pop.v.i self.long_jump

:[1057]
push.v self.jumpcon
pushi.e 1
cmp.i.v EQ
bf [1059]

:[1058]
push.v self.long_jump
pushi.e 2
cmp.i.v EQ
b [1060]

:[1059]
push.e 0

:[1060]
bf [1062]

:[1061]
push.v self.basex
pop.v.v self.x
push.v self.basey
pop.v.v self.y
pushi.e 1
pop.v.i self.jumping
pushi.e 5
pop.v.i self.image_index
pushi.e -5
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.jumpcon

:[1062]
push.v self.jumpcon
pushi.e 2
cmp.i.v EQ
bf [1064]

:[1063]
push.v self.long_jump
pushi.e 2
cmp.i.v EQ
b [1065]

:[1064]
push.e 0

:[1065]
bf [1073]

:[1066]
push.v self.vspeed
push.d 0.9
mul.d.v
pop.v.v self.vspeed
push.v self.vspeed
pushi.e -1
cmp.i.v GTE
bf [1068]

:[1067]
push.v self.long_jump
pushi.e 0
cmp.i.v EQ
b [1069]

:[1068]
push.e 0

:[1069]
bf [1071]

:[1070]
pushi.e 3
pop.v.i self.jumpcon

:[1071]
push.v self.vspeed
push.d -0.5
cmp.d.v GTE
bf [1073]

:[1072]
pushi.e 3
pop.v.i self.jumpcon

:[1073]
push.v self.jumpcon
pushi.e 1
cmp.i.v EQ
bf [1075]

:[1074]
push.v self.basex
pop.v.v self.x
push.v self.basey
pop.v.v self.y
pushi.e 1
pop.v.i self.jumping
pushi.e 5
pop.v.i self.image_index
pushi.e -7
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.jumpcon

:[1075]
push.v self.jumpcon
pushi.e 2
cmp.i.v EQ
bf [1083]

:[1076]
push.v self.vspeed
push.d 0.3
add.d.v
pop.v.v self.vspeed
push.v self.long_jump
pushi.e 0
cmp.i.v EQ
bf [1078]

:[1077]
push.v self.vspeed
push.d 0.2
add.d.v
pop.v.v self.vspeed

:[1078]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [1080]

:[1079]
push.v self.y
push.v self.basey
pushi.e 6
sub.i.v
cmp.v.v GTE
b [1081]

:[1080]
push.e 0

:[1081]
bf [1083]

:[1082]
pushi.e 0
pop.v.i self.speed
push.v self.basey
pop.v.v self.y
pushi.e 3
pop.v.i self.jumpcon

:[1083]
push.v self.jumpcon
pushi.e 3
cmp.i.v EQ
bf [1085]

:[1084]
push.v self.y
call.i round(argc=1)
pop.v.v self.y
pushi.e 4
pop.v.i self.jumpcon
pushi.e 0
pop.v.i self.jumptimer

:[1085]
push.v self.jumpcon
pushi.e 4
cmp.i.v EQ
bf [1088]

:[1086]
push.v self.vspeed
push.d 0.5
add.d.v
pop.v.v self.vspeed
push.v self.y
push.v self.basey
pushi.e 6
sub.i.v
cmp.v.v GTE
bf [1088]

:[1087]
pushi.e 0
pop.v.i self.speed
push.v self.basey
pop.v.v self.y
pushi.e 5
pop.v.i self.jumpcon

:[1088]
push.v self.jumpcon
pushi.e 5
cmp.i.v EQ
bf [1090]

:[1089]
pushi.e 0
pop.v.i self.jumping
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[1090]
push.v self.hurtcon
pushi.e 0
cmp.i.v GT
bf [1102]

:[1091]
push.v self.hurtcon
pushi.e 1
cmp.i.v EQ
bf [1099]

:[1092]
push.v self.arcade
conv.v.b
bf [1094]

:[1093]
pushi.e 328
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 304
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 303
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [1095]

:[1094]
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 117
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 115
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[1095]
pushi.e 7
pop.v.i self.image_index
pushi.e 5
push.v self.f
mul.v.i
pop.v.v self.vspeed
pushi.e 1
push.v self.f
mul.v.i
pop.v.v self.friction
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [1097]

:[1096]
pushi.e 3
push.v self.f
mul.v.i
pop.v.v self.hspeed
b [1098]

:[1097]
pushi.e -3
push.v self.f
mul.v.i
pop.v.v self.hspeed

:[1098]
pushi.e 2
pop.v.i self.hurtcon

:[1099]
push.v self.hurtcon
pushi.e 2
cmp.i.v EQ
bf [1102]

:[1100]
push.v self.hurttimer
pushi.e 1
add.i.v
pop.v.v self.hurttimer
push.v self.hurttimer
push.v self.hurt_length
cmp.v.v GTE
bf [1102]

:[1101]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.friction
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[1102]
push.v self.specialcon
pushi.e 1
cmp.i.v GTE
bf [1104]

:[1103]
pushi.e 1
pop.v.i self.image_index

:[1104]
push.v self.swordactive
pushi.e 0
cmp.i.v EQ
bf [1135]

:[1105]
pushi.e -1
push.v self.image_index
conv.v.i
push.v [array]self.imagefisty
pushi.e 0
cmp.i.v LT
bf [1120]

:[1106]
push.v self.flametimer
push.e 1
add.i.v
pop.v.v self.flametimer
push.v self.flameactive
pushi.e 1
cmp.i.v EQ
bf [1108]

:[1107]
push.v self.flametimer
pushi.e 3
cmp.i.v GTE
b [1109]

:[1108]
push.e 0

:[1109]
bf [1113]

:[1110]
pushi.e 0
pop.v.i self.flametimer
pushi.e 1
pop.v.i self.flippo
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [1112]

:[1111]
pushi.e -1
pop.v.i self.flippo

:[1112]
pushi.e 816
conv.i.v
push.v self.y
pushi.e -1
push.v self.image_index
conv.v.i
push.v [array]self.imagefisty
add.v.v
push.v self.x
pushi.e -1
push.v self.image_index
conv.v.i
push.v [array]self.imagefistx
push.v self.flippo
mul.v.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flame
pushi.e 360
conv.i.v
call.i random(argc=1)
push.v self.flame
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 2
push.v self.flame
pushi.e -9
pop.v.i [stacktop]self.speed
push.d 0.1
push.v self.flame
pushi.e -9
pop.v.d [stacktop]self.friction

:[1113]
push.v self.flamepunch
pushi.e 1
cmp.i.v EQ
bf [1120]

:[1114]
pushi.e 1
pop.v.i self.flippo
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [1116]

:[1115]
pushi.e -1
pop.v.i self.flippo

:[1116]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.randdir
pushi.e 0
pop.v.i self.i

:[1117]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [1119]

:[1118]
pushi.e 816
conv.i.v
push.v self.y
pushi.e -1
push.v self.image_index
conv.v.i
push.v [array]self.imagefisty
add.v.v
push.v self.x
pushi.e -1
push.v self.image_index
conv.v.i
push.v [array]self.imagefistx
push.v self.flippo
mul.v.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flame
push.v self.randdir
push.v self.i
pushi.e 45
mul.i.v
add.v.v
push.v self.flame
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 6
push.v self.flame
pushi.e -9
pop.v.i [stacktop]self.speed
push.d 0.2
push.v self.flame
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1117]

:[1119]
pushi.e 0
pop.v.i self.flamepunch
pushi.e -10
pop.v.i self.flametimer

:[1120]
pushi.e -1
push.v self.image_index
conv.v.i
push.v [array]self.imagefisty
pushi.e 0
cmp.i.v LT
bf [1135]

:[1121]
push.v self.lasertimer
push.e 1
add.i.v
pop.v.v self.lasertimer
push.v self.laseractive
pushi.e 1
cmp.i.v EQ
bf [1123]

:[1122]
push.v self.lasertimer
pushi.e 3
cmp.i.v GTE
b [1124]

:[1123]
push.e 0

:[1124]
bf [1128]

:[1125]
pushi.e 0
pop.v.i self.lasertimer
pushi.e 1
pop.v.i self.flippo
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [1127]

:[1126]
pushi.e -1
pop.v.i self.flippo

:[1127]
pushi.e 816
conv.i.v
push.v self.y
pushi.e -1
push.v self.image_index
conv.v.i
push.v [array]self.imagefisty
add.v.v
push.v self.x
pushi.e -1
push.v self.image_index
conv.v.i
push.v [array]self.imagefistx
push.v self.flippo
mul.v.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flame
pushi.e 360
conv.i.v
call.i random(argc=1)
push.v self.flame
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 2
push.v self.flame
pushi.e -9
pop.v.i [stacktop]self.speed
push.d 0.1
push.v self.flame
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e 2167
push.v self.flame
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.flame
pushi.e -9
pop.v.i [stacktop]self.dustmode

:[1128]
push.v self.laserpunch
pushi.e 1
cmp.i.v EQ
bf [1135]

:[1129]
pushi.e 1
pop.v.i self.flippo
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [1131]

:[1130]
pushi.e -1
pop.v.i self.flippo

:[1131]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.randdir
pushi.e 0
pop.v.i self.i

:[1132]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [1134]

:[1133]
pushi.e 816
conv.i.v
push.v self.y
pushi.e -1
push.v self.image_index
conv.v.i
push.v [array]self.imagefisty
add.v.v
push.v self.x
pushi.e -1
push.v self.image_index
conv.v.i
push.v [array]self.imagefistx
push.v self.flippo
mul.v.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flame
push.v self.randdir
push.v self.i
pushi.e 45
mul.i.v
add.v.v
push.v self.flame
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 6
push.v self.flame
pushi.e -9
pop.v.i [stacktop]self.speed
push.d 0.2
push.v self.flame
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e 2167
push.v self.flame
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.flame
pushi.e -9
pop.v.i [stacktop]self.dustmode
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1132]

:[1134]
pushi.e 0
pop.v.i self.laserpunch
pushi.e -10
pop.v.i self.lasertimer

:[1135]
push.v self.invincibility_timer
pushi.e 1
add.i.v
pop.v.v self.invincibility_timer
push.v self.invincibility_timer
pushi.e 0
cmp.i.v EQ
bf [1137]

:[1136]
push.v self.invincible
pushi.e 1
cmp.i.v EQ
b [1138]

:[1137]
push.e 0

:[1138]
bf [1140]

:[1139]
pushi.e 0
pop.v.i self.invincible

:[1140]
push.v self.buffer_z
pushi.e 1
sub.i.v
pop.v.v self.buffer_z
push.v self.buffer_x
pushi.e 1
sub.i.v
pop.v.v self.buffer_x
push.v self.buffer_u
pushi.e 1
sub.i.v
pop.v.v self.buffer_u
push.v self.buffer_d
pushi.e 1
sub.i.v
pop.v.v self.buffer_d
push.v self.buffer_r
pushi.e 1
sub.i.v
pop.v.v self.buffer_r
push.v self.buffer_l
pushi.e 1
sub.i.v
pop.v.v self.buffer_l

:[end]