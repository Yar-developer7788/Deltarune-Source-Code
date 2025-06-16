.localvar 2 arguments
.localvar 27220 damage_reduction_in_turn 14286
.localvar 27221 final_damage_amount 14287

:[0]
push.v self.dead
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v self.dead
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
exit.i

:[7]
push.v other.baseball
pushi.e 1
cmp.i.v EQ
bf [11]

:[8]
push.v other.maker_id
pushi.e -9
push.v [stacktop]self.y
push.v self.c
cmp.v.v LT
bf [11]

:[9]
push.v self.punchcon
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
push.v self.punchcon
pushi.e 4
cmp.i.v LTE
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
exit.i

:[14]
push.v other.baseball
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v self.invincible
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
exit.i

:[19]
push.v other.baseball
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.v other.graze_only
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [26]

:[23]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [24]

:[26]
push.v other.graze_only
pushi.e 0
cmp.i.v EQ
bf [end]

:[27]
pushi.e 1
pop.v.i self.hit_me
push.v self.ducking
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.v other.hit_ducking
pushi.e 0
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 0
pop.v.i self.hit_me

:[32]
push.v self.dodging
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
push.v other.hit_dodging
pushi.e 0
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 0
pop.v.i self.hit_me

:[37]
push.v self.jumping
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.v other.hit_jumping
pushi.e 0
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 0
pop.v.i self.hit_me

:[42]
push.v self.invincible
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
pushi.e 0
pop.v.i self.hit_me

:[44]
push.v self.hit_me
pushi.e 1
cmp.i.v EQ
bf [end]

:[45]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.times_hit_by_boss
pushi.e 1
add.i.v
pop.v.v self.times_hit_by_boss
pushi.e 841
pushenv [47]

:[46]
pushi.e 0
pop.v.i self.tpgain

:[47]
popenv [46]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [86]

:[48]
push.v other.final_attack
pushi.e 1
cmp.i.v EQ
bf [55]

:[49]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 10
cmp.i.v LTE
bf [51]

:[50]
push.i 231131
setowner.e
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.hp
pushi.e 10
sub.i.v
pop.i.v [array]self.hp
b [54]

:[51]
push.v self.defend
pushi.e 0
cmp.i.v EQ
bf [53]

:[52]
push.i 231131
setowner.e
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.hp
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
sub.v.v
pop.i.v [array]self.hp
b [54]

:[53]
push.i 231131
setowner.e
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.hp
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 2
conv.i.d
div.d.v
push.d 0.75
mul.d.v
call.i floor(argc=1)
sub.v.v
pop.i.v [array]self.hp

:[54]
b [85]

:[55]
pushi.e 1
pop.v.i local.damage_reduction_in_turn
pushi.e 0
pop.v.i local.final_damage_amount
pushi.e -5
pushi.e 526
push.v [array]self.flag
pushi.e 5
cmp.i.v LT
bf [62]

:[56]
push.v self.damagetakenthisturn
pushi.e 60
cmp.i.v LT
bf [58]

:[57]
pushi.e 1
pop.v.i local.damage_reduction_in_turn
b [62]

:[58]
push.v self.damagetakenthisturn
pushi.e 60
cmp.i.v GTE
bf [60]

:[59]
push.d 0.6
pop.v.d local.damage_reduction_in_turn
b [62]

:[60]
push.v self.damagetakenthisturn
pushi.e 120
cmp.i.v GTE
bf [62]

:[61]
push.d 0.3
pop.v.d local.damage_reduction_in_turn

:[62]
pushi.e -5
pushi.e 526
push.v [array]self.flag
pushi.e 5
cmp.i.v GTE
bf [64]

:[63]
pushi.e -5
pushi.e 526
push.v [array]self.flag
pushi.e 7
cmp.i.v LT
b [65]

:[64]
push.e 0

:[65]
bf [72]

:[66]
push.v self.damagetakenthisturn
pushi.e 40
cmp.i.v LT
bf [68]

:[67]
pushi.e 1
pop.v.i local.damage_reduction_in_turn
b [72]

:[68]
push.v self.damagetakenthisturn
pushi.e 40
cmp.i.v GTE
bf [70]

:[69]
push.d 0.6
pop.v.d local.damage_reduction_in_turn
b [72]

:[70]
push.v self.damagetakenthisturn
pushi.e 80
cmp.i.v GTE
bf [72]

:[71]
push.d 0.3
pop.v.d local.damage_reduction_in_turn

:[72]
pushi.e -5
pushi.e 526
push.v [array]self.flag
pushi.e 7
cmp.i.v GTE
bf [79]

:[73]
push.v self.damagetakenthisturn
pushi.e 30
cmp.i.v LT
bf [75]

:[74]
pushi.e 1
pop.v.i local.damage_reduction_in_turn
b [79]

:[75]
push.v self.damagetakenthisturn
pushi.e 30
cmp.i.v GTE
bf [77]

:[76]
push.d 0.6
pop.v.d local.damage_reduction_in_turn
b [79]

:[77]
push.v self.damagetakenthisturn
pushi.e 50
cmp.i.v GTE
bf [79]

:[78]
push.d 0.3
pop.v.d local.damage_reduction_in_turn

:[79]
push.v self.defend
pushi.e 0
cmp.i.v EQ
bf [81]

:[80]
push.v other.damage
pushloc.v local.damage_reduction_in_turn
mul.v.v
call.i floor(argc=1)
pop.v.v local.final_damage_amount
b [82]

:[81]
push.v other.damage
push.d 0.75
mul.d.v
pushloc.v local.damage_reduction_in_turn
mul.v.v
call.i floor(argc=1)
pop.v.v local.final_damage_amount

:[82]
pushloc.v local.final_damage_amount
pushi.e 10
cmp.i.v LT
bf [84]

:[83]
pushi.e 10
pop.v.i local.final_damage_amount

:[84]
push.v self.damagetakenthisturn
pushloc.v local.final_damage_amount
add.v.v
pop.v.v self.damagetakenthisturn
push.i 231131
setowner.e
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.hp
pushloc.v local.final_damage_amount
sub.v.v
pop.i.v [array]self.hp

:[85]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pop.v.v self.health_count
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pop.v.v self.health_count_max
b [87]

:[86]
push.v self.health_count
push.v other.damage
sub.v.v
pop.v.v self.health_count

:[87]
push.v self.health_count
pushi.e 0
cmp.i.v LTE
bf [89]

:[88]
push.v self.dead
pushi.e 0
cmp.i.v EQ
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
pushi.e 0
pop.v.i self.health_count
push.d 0.5
pop.v.d self.dead

:[92]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [94]

:[93]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[94]
push.v other.kick
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
push.v self.wireframe_boxing
pushi.e 1
cmp.i.v EQ
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
push.v self.failed_kick_tutorial_counter
push.e 1
add.i.v
pop.v.v self.failed_kick_tutorial_counter
pushi.e 1
pop.v.i other.has_tutorial_kick_hit_player

:[99]
push.v other.kick
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [102]

:[101]
push.e 0

:[102]
bf [104]

:[103]
pushi.e 1
pop.v.i 789.playerhitbykick

:[104]
pushi.e 1
pop.v.i self.beat_phase1_no_damage_taken_check
pushi.e 1
pop.v.i self.beat_phase2_no_damage_taken_check
pushi.e 0
pop.v.i self.phase3_hit_check
pushi.e 789
pushenv [106]

:[105]
pushi.e 1
pop.v.i self.attack_succeeded

:[106]
popenv [105]
push.v other.hit_direction
pop.v.v self.drawflip
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [108]

:[107]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakex
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakey

:[108]
pushi.e 833
conv.i.v
push.v self.y
pushi.e 80
sub.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
sub.v.v
push.v self.x
pushi.e 20
sub.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hit_fx
push.v self.hit_fx
pushi.e -9
pushenv [110]

:[109]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[110]
popenv [109]
pushi.e 833
conv.i.v
push.v self.y
pushi.e 80
sub.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
sub.v.v
push.v self.x
pushi.e 20
sub.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hit_fx
push.v self.hit_fx
pushi.e -9
pushenv [112]

:[111]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[112]
popenv [111]
pushi.e 833
conv.i.v
push.v self.y
pushi.e 80
sub.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
sub.v.v
push.v self.x
pushi.e 20
sub.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hit_fx
push.v self.hit_fx
pushi.e -9
pushenv [114]

:[113]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[114]
popenv [113]
push.v other.give_hurt
pushi.e 0
cmp.i.v GT
bf [116]

:[115]
push.v other.give_hurt
pop.v.v self.hurt_length

:[116]
push.v other.give_invincibility
pushi.e 0
cmp.i.v GT
bf [end]

:[117]
pushi.e 1
pop.v.i self.invincible
push.v other.give_invincibility
neg.v
pop.v.v self.invincibility_timer

:[end]