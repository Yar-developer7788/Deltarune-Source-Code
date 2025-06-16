.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.delayattack
pushi.e 0
pop.v.i self.delayattacktelegraph
pushi.e 0
pop.v.i self.combo
pushi.e 0
pop.v.i self.noattack
pushi.e 0
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer
pushi.e 0
pop.v.i self.blocking
pushi.e 3
pop.v.i self.state
pushi.e 0
pop.v.i self.speed
push.v self.basex
pop.v.v self.x
pushi.e 0
pop.v.i self.times_hit_in_a_row
push.s "in event user 2"@27385
pop.v.s self.debug_text
push.v self.useattacklist
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=5)
pop.v.v self.attacktype
pushi.e 3
pop.v.i self.pirouette_amount
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.splash_amount
push.v self.attacktype
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
pop.v.v self.kick_amount

:[3]
b [end]

:[4]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [20]

:[5]
push.v self.attackcount
push.v self.attackcountmax
cmp.v.v GTE
bt [18]

:[6]
push.v 789.health_count
push.v self.health_count_max
push.d 0.75
mul.d.v
cmp.v.v LTE
bf [8]

:[7]
push.v self.attackpattern
pushi.e 50
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bt [18]

:[10]
push.v 789.health_count
push.v self.health_count_max
push.d 0.5
mul.d.v
cmp.v.v LTE
bf [12]

:[11]
push.v self.attackpattern
pushi.e 51
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bt [18]

:[14]
push.v 789.health_count
push.v self.health_count_max
push.d 0.25
mul.d.v
cmp.v.v LTE
bf [16]

:[15]
push.v self.attackpattern
pushi.e 52
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
b [19]

:[18]
push.e 1

:[19]
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 6
conv.i.v
call.i event_user(argc=1)
popz.v

:[23]
push.v self.attackpattern
pushi.e 53
cmp.i.v NEQ
bf [25]

:[24]
pushi.e 0
pop.v.i self.arcadebaseballused

:[25]
push.v self.attackpattern
pushi.e 53
cmp.i.v EQ
bf [40]

:[26]
pushi.e 8
pop.v.i self.attacktype
pushi.e 0
pop.v.i self.pirouette_amount
pushi.e 0
pop.v.i self.splash_amount
pushi.e 0
pop.v.i self.kick_amount
pushi.e 0
pop.v.i self.punch_amount
pushi.e 0
pop.v.i self.wheel_amount
pushi.e 0
pop.v.i self.wheel_type
pushi.e 0
pop.v.i self.punch_type
pushi.e 0
pop.v.i self.attackthreshold
push.v self.arcadebaseballused
pushi.e 0
cmp.i.v GT
bf [39]

:[27]
push.v self.finalphasearcadecon
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1
pop.v.i self.attacktype
pushi.e 2
pop.v.i self.punch_type

:[29]
push.v self.finalphasearcadecon
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 0
pop.v.i self.attacktype
pushi.e 4
pop.v.i self.punch_type

:[31]
push.v self.finalphasearcadecon
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
pushi.e 8
pop.v.i self.attacktype

:[33]
push.v self.finalphasearcadecon
pushi.e 3
cmp.i.v EQ
bf [35]

:[34]
pushi.e 1
pop.v.i self.attacktype
pushi.e 2
pop.v.i self.punch_type

:[35]
push.v self.finalphasearcadecon
pushi.e 4
cmp.i.v EQ
bf [37]

:[36]
pushi.e 0
pop.v.i self.attacktype
pushi.e 4
pop.v.i self.punch_type

:[37]
push.v self.finalphasearcadecon
push.e 1
add.i.v
pop.v.v self.finalphasearcadecon
push.v self.finalphasearcadecon
pushi.e 4
cmp.i.v GT
bf [39]

:[38]
pushi.e 0
pop.v.i self.finalphasearcadecon

:[39]
b [120]

:[40]
push.v self.attackcount
push.v self.attackcountmax
cmp.v.v GTE
bf [118]

:[41]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.attackthresholddefault
pop.v.v self.attackthreshold
pushi.e 0
pop.v.i self.movetimer
pushi.e 777
pushenv [43]

:[42]
pushi.e 0
pop.v.i self.boxingtimer

:[43]
popenv [42]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [117]

:[44]
push.v self.attackpattern
push.d 1.4
cmp.d.v EQ
bf [46]

:[45]
push.v self.pattern_state
pushi.e 1
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
pushi.e 1
pop.v.i self.attackorderlooping

:[49]
push.v self.attackpattern
pushi.e 4
cmp.i.v EQ
bf [52]

:[50]
push.v self.pattern_state
pushi.e 2
cmp.i.v EQ
bf [52]

:[51]
push.v 842.sub_healthbar_count
pushi.e 1
cmp.i.v EQ
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
pushi.e 1
pop.v.i self.attackorderlooping

:[55]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [59]

:[56]
push.v 777.beat_phase2_no_damage_taken
pushi.e 0
cmp.i.v EQ
bf [59]

:[57]
push.v self.attackpattern
pushi.e 7
cmp.i.v EQ
bf [59]

:[58]
push.v self.pattern_state
pushi.e 1
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bt [67]

:[61]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [65]

:[62]
push.v 777.beat_phase2_no_damage_taken
pushi.e 0
cmp.i.v EQ
bf [65]

:[63]
push.v self.attackpattern
pushi.e 12
cmp.i.v EQ
bf [65]

:[64]
push.v self.pattern_state
pushi.e 1
cmp.i.v EQ
b [66]

:[65]
push.e 0

:[66]
b [68]

:[67]
push.e 1

:[68]
bf [70]

:[69]
pushi.e 1
pop.v.i self.attackorderlooping

:[70]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [74]

:[71]
push.v 777.beat_phase2_no_damage_taken
pushi.e 1
cmp.i.v EQ
bf [74]

:[72]
push.v self.attackpattern
pushi.e 20
cmp.i.v EQ
bf [74]

:[73]
push.v self.pattern_state
pushi.e 4
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e 1
pop.v.i self.attackorderlooping

:[77]
push.v self.attackorderloopingturn
pushi.e 3
cmp.i.v GTE
bf [79]

:[78]
push.v 842.sub_healthbar_count
pushi.e 2
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bt [86]

:[81]
push.v self.attackorderloopingturn
pushi.e 3
cmp.i.v GTE
bf [84]

:[82]
push.v self.attackorderlooping
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
push.v 842.sub_healthbar_count
pushi.e 1
cmp.i.v EQ
b [85]

:[84]
push.e 0

:[85]
b [87]

:[86]
push.e 1

:[87]
bf [111]

:[88]
pushi.e 0
pop.v.i self.attackorderloopingturn
push.v 842.sub_healthbar_count
pushi.e 1
sub.i.v
pop.v.v 842.sub_healthbar_count
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [90]

:[89]
pushi.e 1800
pop.v.i self.health_count_max

:[90]
push.v self.health_count_max
pop.v.v self.health_count
push.v self.health_count_max
pop.v.v self.health_count_prev
pushi.e 0
pop.v.i self.combo
pushi.e 0
pop.v.i self.times_hit_in_a_row
pushi.e 0
pop.v.i self.pattern_state
push.v 777.beat_phase1_no_damage_taken_check
pushi.e 0
cmp.i.v EQ
bf [92]

:[91]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 527
pop.v.v [array]self.flag

:[92]
push.v 842.sub_healthbar_count
pushi.e 1
cmp.i.v EQ
bf [96]

:[93]
pushi.e 789
pushenv [95]

:[94]
call.i gml_Script_scr_qb_reset(argc=0)
popz.v
pushi.e 2
pop.v.i self.attackpattern

:[95]
popenv [94]
pushi.e 2
pop.v.i 840.recentphasetransition

:[96]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [98]

:[97]
push.v 777.beat_phase2_no_damage_taken
pushi.e 0
cmp.i.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [103]

:[100]
pushi.e 789
pushenv [102]

:[101]
call.i gml_Script_scr_qb_reset(argc=0)
popz.v
pushi.e 15
pop.v.i self.attackpattern

:[102]
popenv [101]
pushi.e 3
pop.v.i 840.recentphasetransition

:[103]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [105]

:[104]
push.v 777.beat_phase2_no_damage_taken
pushi.e 1
cmp.i.v EQ
b [106]

:[105]
push.e 0

:[106]
bf [110]

:[107]
pushi.e 789
pushenv [109]

:[108]
call.i gml_Script_scr_qb_reset(argc=0)
popz.v
pushi.e 21
pop.v.i self.attackpattern

:[109]
popenv [108]
pushi.e 1
pop.v.i 777.phase3_hit_check
pushi.e 3
pop.v.i 840.recentphasetransition

:[110]
b [117]

:[111]
push.v self.attackorderloopingturn
pushi.e 3
cmp.i.v GTE
bf [114]

:[112]
push.v self.attackorderlooping
pushi.e 1
cmp.i.v EQ
bf [114]

:[113]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
pushi.e 1
pop.v.i self.health_count
pushi.e 1
pop.v.i self.health_count_prev

:[117]
b [120]

:[118]
pushi.e -1
push.v self.attackcount
conv.v.i
push.v [array]self.list_attacktype
pop.v.v self.attacktype
pushi.e -1
push.v self.attackcount
conv.v.i
push.v [array]self.list_attackamount
pop.v.v self.pirouette_amount
pushi.e -1
push.v self.attackcount
conv.v.i
push.v [array]self.list_attackamount
pop.v.v self.splash_amount
pushi.e -1
push.v self.attackcount
conv.v.i
push.v [array]self.list_attackamount
pop.v.v self.kick_amount
pushi.e -1
push.v self.attackcount
conv.v.i
push.v [array]self.list_attackamount
pop.v.v self.punch_amount
pushi.e -1
push.v self.attackcount
conv.v.i
push.v [array]self.list_attackamount
pop.v.v self.wheel_amount
pushi.e -1
push.v self.attackcount
conv.v.i
push.v [array]self.list_attackvariant
pop.v.v self.wheel_type
pushi.e -1
push.v self.attackcount
conv.v.i
push.v [array]self.list_attackvariant
pop.v.v self.punch_type
pushi.e -1
push.v self.attackcount
conv.v.i
push.v [array]self.list_attackwait
pop.v.v self.attackthreshold
push.v self.attacktype
pushi.e 0
cmp.i.v NEQ
bf [120]

:[119]
pushi.e 1
pop.v.i self.firstquickpunch

:[120]
push.v self.attackcount
push.e 1
add.i.v
pop.v.v self.attackcount

:[end]