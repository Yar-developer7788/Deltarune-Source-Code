.localvar 2 arguments
.localvar 27315 bounce_speed_down 14437
.localvar 27316 bounce_speed_up 14438
.localvar 27317 can_attack 14439
.localvar 27324 hurttime_ext 14446
.localvar 7017 a 14453
.localvar 14829 rand 14480
.localvar 27366 end_attack_con_timer 14483
.localvar 27367 cam_speed 14484
.localvar 27368 cam_vspeed 14485
.localvar 11610 aa 14488

:[0]
pushi.e 1081
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [2]

:[1]
pushi.e 1080
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
exit.i

:[5]
push.v self.phase_transition
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.state
pushi.e 1
cmp.i.v NEQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.state
pushi.e 2114
pop.v.i self.sprite_index

:[10]
push.v self.wheelsoundtimer
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.v self.wheelsoundtimer
push.e 1
sub.i.v
pop.v.v self.wheelsoundtimer

:[12]
push.v self.phaseprevious
push.v 842.sub_healthbar_count
cmp.v.v NEQ
bf [14]

:[13]
pushi.e 0
pop.v.i self.attackorderlooping

:[14]
push.v 842.sub_healthbar_count
pop.v.v self.phaseprevious
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [119]

:[15]
push.v self.basex
pop.v.v self.x
push.v self.bouncetimer
pushi.e 1
add.i.v
pop.v.v self.bouncetimer
pushi.e 0
pop.v.i self.hurt_fx1_timer
push.d 0.7
pop.v.d local.bounce_speed_down
push.d 0.7
pop.v.d local.bounce_speed_up
push.v 842.sub_healthbar_count
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
pop.v.i local.bounce_speed_down

:[20]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 2
pop.v.i local.bounce_speed_down

:[25]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
push.v 777.dead
pushi.e 1
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
b [38]

:[30]
push.v self.bouncetimer
pushi.e 5
cmp.i.v EQ
bf [32]

:[31]
push.v self.basey
pop.v.v self.y
pushi.e -3
push.v self.f
mul.v.i
pushloc.v local.bounce_speed_up
mul.v.v
pop.v.v self.vspeed

:[32]
push.v self.bouncetimer
pushi.e 6
cmp.i.v GTE
bf [38]

:[33]
push.v self.vspeed
push.d 0.35
push.v self.f
push.d 1.6
mul.d.v
mul.v.d
pushloc.v local.bounce_speed_down
mul.v.v
add.v.v
pop.v.v self.vspeed
push.v self.y
push.v self.basey
cmp.v.v GTE
bf [38]

:[34]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.i self.image_index
b [37]

:[36]
pushi.e 0
pop.v.i self.image_index

:[37]
pushi.e 0
pop.v.i self.vspeed
push.v self.basey
pop.v.v self.y
pushi.e 3
pop.v.i self.bouncetimer

:[38]
push.v self.fliptimer
pushi.e 1
add.i.v
pop.v.v self.fliptimer
push.v self.fliptimer
push.v self.flipthreshold
cmp.v.v GTE
bf [43]

:[39]
pushi.e 843
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [41]

:[40]
b [42]

:[41]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.drawflip

:[42]
push.v self.drawflip
pop.v.v self.blocking
pushi.e 0
pop.v.i self.fliptimer

:[43]
push.v self.myturn
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
pushi.e 0
pop.v.i self.movetimer

:[45]
push.v self.movetimer
push.e 1
add.i.v
pop.v.v self.movetimer
pushi.e 1
pop.v.i local.can_attack
pushi.e 843
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [48]

:[46]
push.v 843.pacifist_state
pushi.e 0
cmp.i.v GTE
bf [48]

:[47]
push.v 843.pacifist_timer
pushi.e 301
cmp.i.v LT
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
pushi.e 0
pop.v.i local.can_attack

:[51]
pushi.e 843
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [53]

:[52]
push.v 777.dead
pushi.e 4
cmp.i.v GTE
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 0
pop.v.i local.can_attack

:[56]
pushi.e 843
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [58]

:[57]
push.v 843.pacifist_state
pushi.e 1
cmp.i.v GTE
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 0
pop.v.i local.can_attack

:[61]
push.v 777.health_count
pushi.e 1
cmp.i.v LT
bf [63]

:[62]
pushi.e 0
pop.v.i local.can_attack

:[63]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
push.v 777.dead
pushi.e 1
cmp.i.v EQ
b [66]

:[65]
push.e 0

:[66]
bf [101]

:[67]
pushi.e 0
pop.v.i local.can_attack
push.v self.player_dead_timer
push.e 1
add.i.v
pop.v.v self.player_dead_timer
push.v self.movetimer
push.e 1
sub.i.v
pop.v.v self.movetimer
pushi.e 777
pushenv [69]

:[68]
push.v self.boxingtimer
push.e 1
add.i.v
pop.v.v self.boxingtimer

:[69]
popenv [68]
pushi.e 0
pop.v.i self.drawflip
push.v self.player_dead_timer
pushi.e 2
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [71]

:[70]
pushi.e 2104
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e -48
conv.i.d
push.v self.f
div.v.d
pop.v.v self.vspeed

:[71]
push.v self.player_dead_timer
pushi.e 4
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [73]

:[72]
push.v self.sprite_index
pushi.e 2104
cmp.i.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
push.v self.image_index
push.d 0.4
add.d.v
pop.v.v self.image_index
push.d 2.8
pop.v.d self.gravity

:[76]
push.v self.player_dead_timer
pushi.e 6
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [79]

:[77]
push.v self.sprite_index
pushi.e 2104
cmp.i.v EQ
bf [79]

:[78]
push.v self.y
push.v self.basey
pushi.e 70
add.i.v
cmp.v.v GT
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
pushi.e 2121
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.hspeed
push.v self.basey
pushi.e 100
add.i.v
pop.v.v self.y
pushi.e 210
conv.i.d
push.v self.f
div.v.d
pop.v.v self.player_dead_timer

:[82]
push.v self.player_dead_timer
pushi.e 212
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [84]

:[83]
push.v self.player_dead_timer
pushi.e 270
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [85]

:[84]
push.e 0

:[85]
bf [95]

:[86]
push.v self.arcade
conv.v.b
bf [91]

:[87]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [90]

:[88]
push.v self.arcade
conv.v.b
bf [90]

:[89]
pushi.e 309
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[90]
b [93]

:[91]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [93]

:[92]
pushi.e 57
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[93]
pushi.e 2110
pop.v.i self.sprite_index
push.v self.image_index
push.d 0.25
add.d.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 2
cmp.i.v GTE
bf [95]

:[94]
pushi.e 0
pop.v.i self.image_index

:[95]
push.v self.player_dead_timer
pushi.e 158
cmp.i.v EQ
bf [97]

:[96]
pushi.e 293
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[97]
push.v self.player_dead_timer
pushi.e 310
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [99]

:[98]
pushi.e 2101
pop.v.i self.sprite_index
push.v self.image_index
push.d 0.25
add.d.v
pop.v.v self.image_index

:[99]
push.v self.player_dead_timer
pushi.e 340
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [101]

:[100]
pushi.e 803
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 804
conv.i.v
pushi.e 0
conv.i.v
pushi.e 640
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 805
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[101]
push.v self.movetimer
push.v self.attackthreshold
cmp.v.v GTE
bf [106]

:[102]
pushloc.v local.can_attack
pushi.e 1
cmp.i.v EQ
bf [106]

:[103]
pushi.e 824
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [106]

:[104]
push.v 777.attackintrocon
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
push.v 777.dead
pushi.e 0
cmp.i.v EQ
b [107]

:[106]
push.e 0

:[107]
bt [115]

:[108]
push.v self.movetimer
push.v self.attackthreshold
cmp.v.v GTE
bf [113]

:[109]
pushloc.v local.can_attack
pushi.e 1
cmp.i.v EQ
bf [113]

:[110]
pushi.e 824
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [113]

:[111]
push.v 777.dead
pushi.e 0
cmp.i.v EQ
bf [113]

:[112]
push.v self.attackpattern
pushi.e 99
cmp.i.v EQ
b [114]

:[113]
push.e 0

:[114]
b [116]

:[115]
push.e 1

:[116]
bf [118]

:[117]
pushi.e 0
pop.v.i self.movetimer
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[118]
b [120]

:[119]
pushi.e 0
pop.v.i self.bouncetimer

:[120]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [488]

:[121]
push.v self.movetimer
push.e 1
add.i.v
pop.v.v self.movetimer
push.v self.hurttimer
pushi.e 1
add.i.v
pop.v.v self.hurttimer
pushi.e 1
conv.i.v
pushi.e 44
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
push.v self.hurttimer
pushi.e 1
cmp.i.v EQ
bf [123]

:[122]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [124]

:[123]
push.e 0

:[124]
bf [137]

:[125]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [127]

:[126]
push.v self.dizzytimer
pushi.e 30
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
b [128]

:[127]
push.e 0

:[128]
bf [130]

:[129]
pushi.e 2117
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.hurt_fx1_timer
pushi.e 1
pop.v.i self.hurt_fx1_state

:[130]
pushi.e 0
pop.v.i self.fff
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [132]

:[131]
pushi.e -1
pop.v.i self.fff

:[132]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [134]

:[133]
pushi.e 1
pop.v.i self.fff

:[134]
pushi.e 0
pop.v.i self.i

:[135]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [137]

:[136]
pushi.e 816
conv.i.v
push.v self.y
pushi.e 194
sub.i.v
push.v self.x
pushi.e 40
push.v self.fff
mul.v.i
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flameparticle
pushi.e 60
pushi.e 50
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.fff
pushi.e 30
mul.i.v
sub.v.v
push.v self.flameparticle
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 1
push.v self.flameparticle
pushi.e -9
pop.v.i [stacktop]self.dustmode
pushi.e 8
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.flameparticle
pushi.e -9
pop.v.v [stacktop]self.speed
pushi.e 2
push.v self.flameparticle
pushi.e -9
pop.v.i [stacktop]self.friction
pushi.e 2157
push.v self.flameparticle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [135]

:[137]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [139]

:[138]
push.v self.phase_transition
pushi.e 0
cmp.i.v EQ
b [140]

:[139]
push.e 0

:[140]
bf [142]

:[141]
pushi.e 2144
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index

:[142]
push.v self.arcade
conv.v.b
bf [147]

:[143]
pushi.e 305
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [145]

:[144]
pushi.e 305
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v
b [147]

:[145]
pushi.e 293
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [147]

:[146]
pushi.e 293
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[147]
push.v self.times_hit_in_a_row
pushi.e 1
cmp.i.v GT
bf [151]

:[148]
push.v self.health_count
pushi.e 0
cmp.i.v GT
bf [151]

:[149]
push.v self.phase_transition
pushi.e 1
cmp.i.v LT
bf [151]

:[150]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
b [152]

:[151]
push.e 0

:[152]
bf [182]

:[153]
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
push.v self.attackthreshold
pop.v.v self.movetimer
pushi.e 0
pop.v.i self.friction
pushi.e 0
pop.v.i self.gravity
push.v self.hurt_fx1_timer
pushi.e 1
add.i.v
pop.v.v self.hurt_fx1_timer
push.v self.hurt_fx1_timer
pushi.e 1
cmp.i.v EQ
bf [157]

:[154]
push.v 777.lastpunchside
pushi.e -1
cmp.i.v EQ
bf [156]

:[155]
pushi.e 1
pop.v.i self.drawflip
b [157]

:[156]
pushi.e 0
pop.v.i self.drawflip

:[157]
push.v self.hurt_fx1_timer
pushi.e 7
cmp.i.v GT
bf [159]

:[158]
pushi.e 1
pop.v.i self.hurt_fx1_timer

:[159]
push.v self.hurt_fx1_timer
pushi.e 0
cmp.i.v GT
bf [161]

:[160]
push.v self.hurt_fx1_timer
pushi.e 38
cmp.i.v LT
b [162]

:[161]
push.e 0

:[162]
bf [182]

:[163]
pushi.e 2144
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index
push.v self.movetimer
pushi.e 1
sub.i.v
pop.v.v self.movetimer
push.v self.hurt_fx1_state
pushi.e 1
cmp.i.v EQ
bf [171]

:[164]
push.v self.hurt_fx1_timer
pushi.e 3
cmp.i.v EQ
bf [166]

:[165]
pushi.e 2
pop.v.i self.hurt_fx1_state

:[166]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [168]

:[167]
push.v self.x
pushi.e 5
push.v self.hurt_fx1_timer
sub.v.i
pushi.e 5
mul.i.v
add.v.v
pop.v.v self.x

:[168]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [170]

:[169]
push.v self.x
pushi.e 5
push.v self.hurt_fx1_timer
sub.v.i
pushi.e 5
mul.i.v
sub.v.v
pop.v.v self.x

:[170]
push.v self.y
pushi.e 5
push.v self.hurt_fx1_timer
sub.v.i
pushi.e 2
mul.i.v
sub.v.v
pop.v.v self.y

:[171]
push.v self.hurt_fx1_state
pushi.e 2
cmp.i.v EQ
bf [181]

:[172]
push.v self.hurt_fx1_timer2
push.e 1
add.i.v
pop.v.v self.hurt_fx1_timer2
push.v self.hurt_fx1_timer2
pushi.e 5
cmp.i.v GT
bf [178]

:[173]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [175]

:[174]
push.v self.x
push.d 12.5
sub.d.v
pop.v.v self.x

:[175]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [177]

:[176]
push.v self.x
push.d 12.5
add.d.v
pop.v.v self.x

:[177]
push.v self.y
push.d 12.5
add.d.v
pop.v.v self.y

:[178]
push.v self.hurt_fx1_timer2
pushi.e 7
cmp.i.v GT
bf [181]

:[179]
push.v self.basex
pop.v.v self.x
push.v self.basey
pop.v.v self.y
pushi.e 0
pop.v.i self.hurt_fx1_timer
pushi.e 0
pop.v.i self.hurt_fx1_timer2
pushi.e 1
pop.v.i self.hurt_fx1_state
pushi.e 0
pop.v.i self.times_hit_in_a_row
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e 70
pop.v.i self.movetimer
pushi.e 0
pop.v.i self.dizzytimer
pushi.e 0
pop.v.i self.shortcomboend
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.attacktype
pushi.e 8
cmp.i.v EQ
bf [181]

:[180]
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r

:[181]
exit.i

:[182]
push.v self.times_hit_in_a_row
pushi.e 2
cmp.i.v GT
bf [188]

:[183]
push.v self.health_count
pushi.e 0
cmp.i.v GT
bf [188]

:[184]
push.v self.phase_transition
pushi.e 1
cmp.i.v LT
bf [188]

:[185]
push.v 777.laseractive
pushi.e 0
cmp.i.v EQ
bf [188]

:[186]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [188]

:[187]
push.v self.shortcomboend
pushi.e 0
cmp.i.v EQ
b [189]

:[188]
push.e 0

:[189]
bt [198]

:[190]
push.v self.times_hit_in_a_row
pushi.e 3
cmp.i.v GT
bf [196]

:[191]
push.v self.health_count
pushi.e 0
cmp.i.v GT
bf [196]

:[192]
push.v self.phase_transition
pushi.e 1
cmp.i.v LT
bf [196]

:[193]
push.v 777.laseractive
pushi.e 1
cmp.i.v EQ
bf [196]

:[194]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [196]

:[195]
push.v self.shortcomboend
pushi.e 0
cmp.i.v EQ
b [197]

:[196]
push.e 0

:[197]
b [199]

:[198]
push.e 1

:[199]
bf [234]

:[200]
push.v self.attackthreshold
pop.v.v self.movetimer
push.v self.hurt_fx1_timer
pushi.e 1
add.i.v
pop.v.v self.hurt_fx1_timer
push.v self.hurt_fx1_timer
pushi.e 1
cmp.i.v EQ
bf [204]

:[201]
push.v 777.lastpunchside
pushi.e -1
cmp.i.v EQ
bf [203]

:[202]
pushi.e 1
pop.v.i self.drawflip
b [204]

:[203]
pushi.e 0
pop.v.i self.drawflip

:[204]
push.v self.hurt_fx1_timer
pushi.e 7
cmp.i.v GT
bf [206]

:[205]
pushi.e 1
pop.v.i self.hurt_fx1_timer

:[206]
push.v self.hurt_fx1_timer
pushi.e 0
cmp.i.v GT
bf [208]

:[207]
push.v self.hurt_fx1_timer
pushi.e 38
cmp.i.v LT
b [209]

:[208]
push.e 0

:[209]
bf [233]

:[210]
pushi.e 2114
pop.v.i self.sprite_index
push.v self.movetimer
pushi.e 1
sub.i.v
pop.v.v self.movetimer
push.v self.hurt_fx1_state
pushi.e 1
cmp.i.v EQ
bf [218]

:[211]
push.v self.hurt_fx1_timer
pushi.e 6
cmp.i.v EQ
bf [213]

:[212]
pushi.e 2
pop.v.i self.hurt_fx1_state

:[213]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [215]

:[214]
push.v self.x
pushi.e 6
push.v self.hurt_fx1_timer
sub.v.i
pushi.e 5
mul.i.v
add.v.v
pop.v.v self.x

:[215]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [217]

:[216]
push.v self.x
pushi.e 6
push.v self.hurt_fx1_timer
sub.v.i
pushi.e 5
mul.i.v
sub.v.v
pop.v.v self.x

:[217]
push.v self.y
pushi.e 6
push.v self.hurt_fx1_timer
sub.v.i
pushi.e 2
mul.i.v
sub.v.v
pop.v.v self.y

:[218]
push.v self.hurt_fx1_state
pushi.e 2
cmp.i.v EQ
bf [232]

:[219]
push.v self.hurt_fx1_timer2
push.e 1
add.i.v
pop.v.v self.hurt_fx1_timer2
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
push.v self.hurt_fx1_timer2
pushi.e 14
cmp.i.v GT
bf [225]

:[220]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [222]

:[221]
push.v self.x
pushi.e 30
sub.i.v
pop.v.v self.x

:[222]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [224]

:[223]
push.v self.x
pushi.e 30
add.i.v
pop.v.v self.x

:[224]
push.v self.y
pushi.e 15
add.i.v
pop.v.v self.y

:[225]
push.v self.hurt_fx1_timer2
pushi.e 16
cmp.i.v GT
bf [232]

:[226]
push.v self.basex
pop.v.v self.x
push.v self.basey
pop.v.v self.y
pushi.e 0
pop.v.i self.hurt_fx1_timer
pushi.e 0
pop.v.i self.hurt_fx1_timer2
pushi.e 1
pop.v.i self.hurt_fx1_state
pushi.e 0
pop.v.i self.times_hit_in_a_row
push.v self.attackthreshold
pop.v.v self.movetimer
pushi.e 0
pop.v.i self.dizzytimer
pushglb.v global.boxingphase
pushi.e 2
cmp.i.v EQ
bf [228]

:[227]
push.v 777.dead
pushi.e 0
cmp.i.v EQ
b [229]

:[228]
push.e 0

:[229]
bf [231]

:[230]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
b [232]

:[231]
push.v self.movetimer
pop.v.v self.remmovetimer
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.remmovetimer
pop.v.v self.movetimer

:[232]
exit.i

:[233]
b [249]

:[234]
push.v self.sprite_index
pushi.e 2117
cmp.i.v EQ
bf [237]

:[235]
push.v self.hurt_fx1_timer
pushi.e 0
cmp.i.v GT
bf [237]

:[236]
push.v self.hurt_fx1_timer
pushi.e 7
cmp.i.v LT
b [238]

:[237]
push.e 0

:[238]
bf [249]

:[239]
push.v self.movetimer
pushi.e 1
sub.i.v
pop.v.v self.movetimer
push.v self.hurt_fx1_state
pushi.e 1
cmp.i.v EQ
bf [247]

:[240]
push.v self.hurt_fx1_timer
pushi.e 1
add.i.v
pop.v.v self.hurt_fx1_timer
push.v self.hurt_fx1_timer
pushi.e 5
cmp.i.v EQ
bf [242]

:[241]
pushi.e 2
pop.v.i self.hurt_fx1_state

:[242]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [244]

:[243]
push.v self.x
pushi.e 5
push.v self.hurt_fx1_timer
sub.v.i
pushi.e 5
mul.i.v
add.v.v
pop.v.v self.x

:[244]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [246]

:[245]
push.v self.x
pushi.e 5
push.v self.hurt_fx1_timer
sub.v.i
pushi.e 5
mul.i.v
sub.v.v
pop.v.v self.x

:[246]
push.v self.y
pushi.e 5
push.v self.hurt_fx1_timer
sub.v.i
pushi.e 3
mul.i.v
sub.v.v
pop.v.v self.y
b [249]

:[247]
push.v self.hurt_fx1_timer2
push.e 1
add.i.v
pop.v.v self.hurt_fx1_timer2
push.v self.hurt_fx1_timer2
pushi.e 16
cmp.i.v GT
bf [249]

:[248]
push.v self.basex
pop.v.v self.x
push.v self.basey
pop.v.v self.y
pushi.e 0
pop.v.i self.hurt_fx1_timer
pushi.e 0
pop.v.i self.hurt_fx1_timer2
pushi.e 1
pop.v.i self.hurt_fx1_state

:[249]
push.v self.times_hit_in_a_row
pushi.e 2
cmp.i.v GT
bf [254]

:[250]
push.v self.health_count
pushi.e 0
cmp.i.v GT
bf [254]

:[251]
push.v self.phase_transition
pushi.e 1
cmp.i.v LT
bf [254]

:[252]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [254]

:[253]
push.v self.shortcomboend
pushi.e 1
cmp.i.v EQ
b [255]

:[254]
push.e 0

:[255]
bf [290]

:[256]
push.v self.attackthreshold
pop.v.v self.movetimer
push.v self.hurt_fx1_timer
pushi.e 1
add.i.v
pop.v.v self.hurt_fx1_timer
push.v self.hurt_fx1_timer
pushi.e 1
cmp.i.v EQ
bf [260]

:[257]
push.v 777.lastpunchside
pushi.e -1
cmp.i.v EQ
bf [259]

:[258]
pushi.e 1
pop.v.i self.drawflip
b [260]

:[259]
pushi.e 0
pop.v.i self.drawflip

:[260]
push.v self.hurt_fx1_timer
pushi.e 7
cmp.i.v GT
bf [262]

:[261]
pushi.e 1
pop.v.i self.hurt_fx1_timer

:[262]
push.v self.hurt_fx1_timer
pushi.e 0
cmp.i.v GT
bf [264]

:[263]
push.v self.hurt_fx1_timer
pushi.e 38
cmp.i.v LT
b [265]

:[264]
push.e 0

:[265]
bf [289]

:[266]
pushi.e 2114
pop.v.i self.sprite_index
push.v self.movetimer
pushi.e 1
sub.i.v
pop.v.v self.movetimer
push.v self.hurt_fx1_state
pushi.e 1
cmp.i.v EQ
bf [274]

:[267]
push.v self.hurt_fx1_timer
pushi.e 3
cmp.i.v EQ
bf [269]

:[268]
pushi.e 2
pop.v.i self.hurt_fx1_state

:[269]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [271]

:[270]
push.v self.x
pushi.e 5
push.v self.hurt_fx1_timer
sub.v.i
pushi.e 5
mul.i.v
add.v.v
pop.v.v self.x

:[271]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [273]

:[272]
push.v self.x
pushi.e 5
push.v self.hurt_fx1_timer
sub.v.i
pushi.e 5
mul.i.v
sub.v.v
pop.v.v self.x

:[273]
push.v self.y
pushi.e 5
push.v self.hurt_fx1_timer
sub.v.i
pushi.e 2
mul.i.v
sub.v.v
pop.v.v self.y

:[274]
push.v self.hurt_fx1_state
pushi.e 2
cmp.i.v EQ
bf [288]

:[275]
push.v self.hurt_fx1_timer2
push.e 1
add.i.v
pop.v.v self.hurt_fx1_timer2
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
push.v self.hurt_fx1_timer2
pushi.e 5
cmp.i.v GT
bf [281]

:[276]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [278]

:[277]
push.v self.x
push.d 12.5
sub.d.v
pop.v.v self.x

:[278]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [280]

:[279]
push.v self.x
push.d 12.5
add.d.v
pop.v.v self.x

:[280]
push.v self.y
push.d 12.5
add.d.v
pop.v.v self.y

:[281]
push.v self.hurt_fx1_timer2
pushi.e 7
cmp.i.v GT
bf [288]

:[282]
push.v self.basex
pop.v.v self.x
push.v self.basey
pop.v.v self.y
pushi.e 0
pop.v.i self.hurt_fx1_timer
pushi.e 0
pop.v.i self.hurt_fx1_timer2
pushi.e 1
pop.v.i self.hurt_fx1_state
pushi.e 0
pop.v.i self.times_hit_in_a_row
push.v self.attackthreshold
pop.v.v self.movetimer
pushi.e 0
pop.v.i self.dizzytimer
pushi.e 0
pop.v.i self.shortcomboend
pushglb.v global.boxingphase
pushi.e 2
cmp.i.v EQ
bf [284]

:[283]
push.v 777.dead
pushi.e 0
cmp.i.v EQ
b [285]

:[284]
push.e 0

:[285]
bf [287]

:[286]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
b [288]

:[287]
push.v self.movetimer
pop.v.v self.remmovetimer
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.remmovetimer
pop.v.v self.movetimer

:[288]
exit.i

:[289]
b [305]

:[290]
push.v self.sprite_index
pushi.e 2117
cmp.i.v EQ
bf [293]

:[291]
push.v self.hurt_fx1_timer
pushi.e 0
cmp.i.v GT
bf [293]

:[292]
push.v self.hurt_fx1_timer
pushi.e 7
cmp.i.v LT
b [294]

:[293]
push.e 0

:[294]
bf [305]

:[295]
push.v self.movetimer
pushi.e 1
sub.i.v
pop.v.v self.movetimer
push.v self.hurt_fx1_state
pushi.e 1
cmp.i.v EQ
bf [303]

:[296]
push.v self.hurt_fx1_timer
pushi.e 1
add.i.v
pop.v.v self.hurt_fx1_timer
push.v self.hurt_fx1_timer
pushi.e 5
cmp.i.v EQ
bf [298]

:[297]
pushi.e 2
pop.v.i self.hurt_fx1_state

:[298]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [300]

:[299]
push.v self.x
pushi.e 5
push.v self.hurt_fx1_timer
sub.v.i
pushi.e 5
mul.i.v
add.v.v
pop.v.v self.x

:[300]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [302]

:[301]
push.v self.x
pushi.e 5
push.v self.hurt_fx1_timer
sub.v.i
pushi.e 5
mul.i.v
sub.v.v
pop.v.v self.x

:[302]
push.v self.y
pushi.e 5
push.v self.hurt_fx1_timer
sub.v.i
pushi.e 3
mul.i.v
sub.v.v
pop.v.v self.y
b [305]

:[303]
push.v self.hurt_fx1_timer2
push.e 1
add.i.v
pop.v.v self.hurt_fx1_timer2
push.v self.hurt_fx1_timer2
pushi.e 16
cmp.i.v GT
bf [305]

:[304]
push.v self.basex
pop.v.v self.x
push.v self.basey
pop.v.v self.y
pushi.e 0
pop.v.i self.hurt_fx1_timer
pushi.e 0
pop.v.i self.hurt_fx1_timer2
pushi.e 1
pop.v.i self.hurt_fx1_state

:[305]
push.v self.phase_transition
pushi.e 0
cmp.i.v GT
bf [307]

:[306]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
b [308]

:[307]
push.e 0

:[308]
bf [357]

:[309]
push.v self.phase_transition_timer
push.e 1
add.i.v
pop.v.v self.phase_transition_timer
push.v self.phase_transition_timer
pushi.e 0
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [311]

:[310]
push.v self.phase_transition_timer
pushi.e 40
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [312]

:[311]
push.e 0

:[312]
bf [318]

:[313]
pushi.e 870
pushenv [315]

:[314]
call.i instance_destroy(argc=0)
popz.v

:[315]
popenv [314]
pushi.e 64
pushenv [317]

:[316]
call.i instance_destroy(argc=0)
popz.v

:[317]
popenv [316]
push.v self.basex
pushi.e 40
conv.i.d
push.v self.phase_transition_timer
div.v.d
add.v.v
pushi.e 80
conv.i.d
push.v self.phase_transition_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v self.x
push.v self.basey
pushi.e 40
conv.i.d
push.v self.phase_transition_timer
div.v.d
add.v.v
pushi.e 80
conv.i.d
push.v self.phase_transition_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v self.y

:[318]
push.v self.phase_transition_timer
pushi.e 110
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [324]

:[319]
pushi.e 2150
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.drawflip
pushi.e 0
pop.v.i self.force_drawflip
pushi.e 807
conv.i.v
push.v self.y
pushi.e 230
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.explosion
pushi.e 1
push.v self.explosion
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.explosion
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 133633
setowner.e
pushi.e 70
conv.i.v
push.v self.explosion
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [321]

:[320]
push.v self.boxing_game_music
call.i gml_Script_snd_free(argc=1)
popz.v

:[321]
push.v 777.basey
pop.v.v 777.y
pushi.e 777
pushenv [323]

:[322]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[323]
popenv [322]

:[324]
push.v self.phase_transition_timer
pushi.e 250
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [328]

:[325]
pushi.e 1
pop.v.i 843.hidebg
pushi.e 2150
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.drawflip
pushi.e 0
pop.v.i self.drawflip
pushi.e 807
pushenv [327]

:[326]
call.i instance_destroy(argc=0)
popz.v

:[327]
popenv [326]
pushi.e 808
conv.i.v
push.v self.y
pushi.e 50
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.explosion
pushi.e 7
push.v self.explosion
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 7
push.v self.explosion
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 60
conv.i.v
push.v self.explosion
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
push.v 936.qu_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.explosion
pushi.e -9
pop.v.v [stacktop]self.depth

:[328]
push.v self.phase_transition_timer
pushi.e 276
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [330]

:[329]
pushi.e 940
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[330]
push.v self.phase_transition_timer
pushi.e 284
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [356]

:[331]
pushi.e 938
pushenv [333]

:[332]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
push.d 1.5
pop.v.d self.image_alpha

:[333]
popenv [332]
call.i instance_destroy(argc=0)
popz.v
pushi.e 808
pushenv [335]

:[334]
call.i instance_destroy(argc=0)
popz.v

:[335]
popenv [334]
pushi.e 777
pushenv [337]

:[336]
call.i instance_destroy(argc=0)
popz.v

:[337]
popenv [336]
pushi.e 842
pushenv [339]

:[338]
call.i instance_destroy(argc=0)
popz.v

:[339]
popenv [338]
pushi.e 841
pushenv [341]

:[340]
call.i instance_destroy(argc=0)
popz.v

:[341]
popenv [340]
pushi.e 843
pushenv [343]

:[342]
call.i instance_destroy(argc=0)
popz.v

:[343]
popenv [342]
pushi.e 787
pushenv [345]

:[344]
call.i instance_destroy(argc=0)
popz.v

:[345]
popenv [344]
pushi.e 776
pushenv [347]

:[346]
call.i instance_destroy(argc=0)
popz.v

:[347]
popenv [346]
pushi.e 807
pushenv [349]

:[348]
call.i instance_destroy(argc=0)
popz.v

:[349]
popenv [348]
pushi.e 812
pushenv [351]

:[350]
call.i instance_destroy(argc=0)
popz.v

:[351]
popenv [350]
pushi.e 813
pushenv [353]

:[352]
call.i instance_destroy(argc=0)
popz.v

:[353]
popenv [352]
pushi.e 940
pushenv [355]

:[354]
call.i instance_destroy(argc=0)
popz.v

:[355]
popenv [354]

:[356]
exit.i

:[357]
push.v self.phase_transition
pushi.e 0
cmp.i.v GT
bf [359]

:[358]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [360]

:[359]
push.e 0

:[360]
bf [448]

:[361]
push.v self.phase_transition_timer
push.e 1
add.i.v
pop.v.v self.phase_transition_timer
pushi.e 10
pop.v.i 777.boxingtimer
pushi.e 0
pop.v.i 840.missleattack
pushi.e 0
pop.v.i 840.breathattack
pushi.e 0
pop.v.i self.actpunchtimer
push.v self.phase_transition_timer
pushi.e 0
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [363]

:[362]
push.v self.phase_transition_timer
pushi.e 40
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [364]

:[363]
push.e 0

:[364]
bf [366]

:[365]
push.v self.basex
pushi.e 40
conv.i.d
push.v self.phase_transition_timer
div.v.d
add.v.v
pushi.e 80
conv.i.d
push.v self.phase_transition_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v self.x
push.v self.basey
pushi.e 40
conv.i.d
push.v self.phase_transition_timer
div.v.d
add.v.v
pushi.e 80
conv.i.d
push.v self.phase_transition_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.white_flash

:[366]
push.v self.phase_transition_timer
pushi.e 40
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [368]

:[367]
pushi.e 70
conv.i.d
push.v self.f
div.v.d
pop.v.v self.phase_transition_timer

:[368]
push.v self.phase_transition_timer
pushi.e 80
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [374]

:[369]
pushi.e 2104
pop.v.i self.sprite_index
pushi.e -48
conv.i.d
push.v self.f
div.v.d
pop.v.v self.vspeed
pushi.e -12
conv.i.d
push.v self.f
div.v.d
pop.v.v self.hspeed
pushi.e 0
pop.v.i self.drawflip
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [371]

:[370]
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

:[371]
push.v self.arcade
conv.v.b
bf [373]

:[372]
pushi.e 308
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [374]

:[373]
pushi.e 179
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[374]
push.v self.phase_transition_timer
pushi.e 82
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [376]

:[375]
push.v self.y
push.v self.basey
cmp.v.v LT
b [377]

:[376]
push.e 0

:[377]
bf [379]

:[378]
pushi.e -12
conv.i.d
push.v self.f
div.v.d
pop.v.v self.hspeed
push.v self.image_index
push.d 0.4
add.d.v
pop.v.v self.image_index
push.d 2.8
pop.v.d self.gravity

:[379]
push.v self.phase_transition_timer
pushi.e 82
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [382]

:[380]
push.v self.phase_transition_timer
pushi.e 210
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
bf [382]

:[381]
push.v self.y
push.v self.basey
cmp.v.v GT
b [383]

:[382]
push.e 0

:[383]
bf [388]

:[384]
pushi.e 2129
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.hspeed
push.v self.arcade
conv.v.b
bf [386]

:[385]
pushi.e 319
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [387]

:[386]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[387]
push.v self.basey
pop.v.v self.y
pushi.e 196
conv.i.d
push.v self.f
div.v.d
pop.v.v self.phase_transition_timer
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

:[388]
push.v self.phase_transition_timer
pushi.e 210
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [419]

:[389]
push.v self.index_previous
pushi.e 1
cmp.i.v LT
bf [392]

:[390]
push.v self.image_index
pushi.e 1
cmp.i.v GTE
bf [392]

:[391]
push.v self.phase_transition_timer
pushi.e 220
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
b [393]

:[392]
push.e 0

:[393]
bf [403]

:[394]
push.v self.arcade
conv.v.b
bf [398]

:[395]
pushi.e 319
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [397]

:[396]
pushi.e 319
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[397]
pushi.e 319
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [401]

:[398]
pushi.e 62
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [400]

:[399]
pushi.e 62
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[400]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[401]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.d
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [403]

:[402]
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

:[403]
push.v self.image_index
pop.v.v self.index_previous
pushi.e 2129
pop.v.i self.sprite_index
push.v self.image_index
push.v self.stomp_speed
add.v.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 2
cmp.i.v GTE
bf [405]

:[404]
push.v self.image_index
pushi.e 2
sub.i.v
pop.v.v self.image_index

:[405]
push.v self.phase_transition
pushi.e 1
cmp.i.v EQ
bf [407]

:[406]
push.v self.stomp_speed
push.d 0.037
add.d.v
pop.v.v self.stomp_speed

:[407]
push.v self.phase_transition
pushi.e 2
cmp.i.v EQ
bf [409]

:[408]
push.v self.stomp_speed
push.d 0.037
sub.d.v
pop.v.v self.stomp_speed

:[409]
push.v self.phase_transition
pushi.e 1
cmp.i.v EQ
bf [411]

:[410]
push.v self.stomp_speed
pushi.e 1
cmp.i.v GT
b [412]

:[411]
push.e 0

:[412]
bf [414]

:[413]
pushi.e 2
pop.v.i self.phase_transition

:[414]
push.v self.phase_transition
pushi.e 2
cmp.i.v EQ
bf [416]

:[415]
push.v self.stomp_speed
pushi.e 0
cmp.i.v LT
b [417]

:[416]
push.e 0

:[417]
bf [419]

:[418]
pushi.e 0
pop.v.i self.stomp_speed

:[419]
push.v self.phase_transition_timer
pushi.e 350
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [421]

:[420]
pushi.e 64
conv.i.d
push.v self.f
div.v.d
pop.v.v self.hspeed
pushi.e 2121
pop.v.i self.sprite_index

:[421]
push.v self.phase_transition_timer
pushi.e 350
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [424]

:[422]
push.v self.x
push.v self.basex
pushi.e 33
sub.i.v
cmp.v.v GT
bf [424]

:[423]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [425]

:[424]
push.e 0

:[425]
bt [431]

:[426]
push.v self.phase_transition_timer
pushi.e 350
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [429]

:[427]
push.v self.x
push.v self.basex
pushi.e 33
add.i.v
cmp.v.v LT
bf [429]

:[428]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [430]

:[429]
push.e 0

:[430]
b [432]

:[431]
push.e 1

:[432]
bf [434]

:[433]
pushi.e 2121
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.hspeed
push.v self.basex
pop.v.v self.x

:[434]
push.v self.phase_transition_timer
pushi.e 360
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [439]

:[435]
push.v 842.sub_healthbar_count
pushi.e 1
cmp.i.v EQ
bf [437]

:[436]
pushi.e 1084
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 220
sub.i.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 2455
pop.v.i 1084.sprite_index

:[437]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [439]

:[438]
pushi.e 1084
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 220
sub.i.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 3364
pop.v.i 1084.sprite_index

:[439]
push.v self.phase_transition_timer
pushi.e 460
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [441]

:[440]
pushi.e 11
conv.i.v
push.v 1084.y
push.v 1084.x
pushi.e 5
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[441]
push.v self.phase_transition_timer
pushi.e 540
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [443]

:[442]
pushi.e 40
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.readycon

:[443]
push.v self.phase_transition_timer
pushi.e 560
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [445]

:[444]
pushi.e 40
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.readycon

:[445]
push.v self.phase_transition_timer
pushi.e 562
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [447]

:[446]
pushi.e 0
pop.v.i self.phase_transition
pushi.e 0
pop.v.i self.phase_transition_timer
pushi.e 0
pop.v.i self.dizzytimer
pushi.e 0
pop.v.i self.stomp_speed
pushi.e 0
pop.v.i self.movetimer
pushi.e 9999
pop.v.i self.hurttimer
b [448]

:[447]
exit.i

:[448]
push.v self.actpunchtimer
pushi.e 0
cmp.i.v GT
bf [452]

:[449]
push.v self.actpunchtimer
push.e 1
add.i.v
pop.v.v self.actpunchtimer
push.v self.basex
pushi.e 40
conv.i.d
push.v self.actpunchtimer
div.v.d
add.v.v
pushi.e 80
conv.i.d
push.v self.actpunchtimer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v self.x
push.v self.basey
pushi.e 40
conv.i.d
push.v self.actpunchtimer
div.v.d
add.v.v
pushi.e 80
conv.i.d
push.v self.actpunchtimer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v self.y
push.v self.actpunchtimer
pushi.e 40
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [451]

:[450]
pushi.e 0
pop.v.i self.actpunchtimer

:[451]
exit.i

:[452]
push.v self.hurttimer
pushi.e 2
cmp.i.v GTE
bf [455]

:[453]
push.v self.y
push.v self.basey
cmp.v.v GTE
bf [455]

:[454]
push.v self.basey
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed

:[455]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [457]

:[456]
push.v self.x
push.v self.basex
cmp.v.v GT
b [458]

:[457]
push.e 0

:[458]
bf [460]

:[459]
pushi.e 0
pop.v.i self.hspeed
push.v self.basex
pop.v.v self.x

:[460]
pushi.e 32
pop.v.i local.hurttime_ext
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [462]

:[461]
pushi.e 40
pop.v.i local.hurttime_ext

:[462]
push.v self.combo
pushi.e 0
cmp.i.v EQ
bf [464]

:[463]
pushi.e 18
pop.v.i local.hurttime_ext

:[464]
push.v self.hurttimer
pushloc.v local.hurttime_ext
push.v self.f
div.v.v
cmp.v.v GTE
bf [488]

:[465]
push.v self.dizzytimer
pushi.e 30
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
bf [476]

:[466]
pushi.e 0
pop.v.i self.dizzytimer
push.v self.noattack
pushi.e 3
cmp.i.v GTE
bf [468]

:[467]
push.v self.myturn
pushi.e 1
cmp.i.v EQ
b [469]

:[468]
push.e 0

:[469]
bt [471]

:[470]
push.v self.combo
pushi.e 0
cmp.i.v EQ
b [472]

:[471]
push.e 1

:[472]
bf [474]

:[473]
push.s "from hurt to attack"@27325
pop.v.s self.debug_text
push.v self.attackthreshold
pop.v.v self.movetimer
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
b [475]

:[474]
push.s "from hurt to idle"@27326
pop.v.s self.debug_text
push.v self.movetimer
pop.v.v self.remmovetimer
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.remmovetimer
pop.v.v self.movetimer

:[475]
b [488]

:[476]
pushi.e 790
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [478]

:[477]
pushi.e 843
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [479]

:[478]
push.e 0

:[479]
bt [484]

:[480]
push.v self.baseball_hit_boss_number
push.v 777.hit_baseball
cmp.v.v EQ
bf [482]

:[481]
pushi.e 843
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [483]

:[482]
push.e 0

:[483]
b [485]

:[484]
push.e 1

:[485]
bf [488]

:[486]
pushi.e 4
pop.v.i self.state
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.image_index
push.v self.basex
pop.v.v self.x
push.v self.basey
pop.v.v self.y
pushi.e 2118
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [488]

:[487]
pushi.e 2146
pop.v.i self.sprite_index

:[488]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [494]

:[489]
push.v self.blocktimer
pushi.e 1
add.i.v
pop.v.v self.blocktimer
push.v self.blocktimer
pushi.e 32
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [491]

:[490]
push.v self.myturn
pushi.e 1
cmp.i.v EQ
b [492]

:[491]
push.e 0

:[492]
bf [494]

:[493]
push.v self.attackthreshold
pop.v.v self.movetimer
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[494]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [1887]

:[495]
push.v self.attacktype
pushi.e 0
cmp.i.v EQ
bf [628]

:[496]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [522]

:[497]
push.s "start punch"@27327
pop.v.s self.debug_text
pushi.e 150
conv.i.d
push.v self.f
div.v.d
pop.v.v self.makedizzy
pushi.e -1
pop.v.i self.blocking
pushi.e 2112
pop.v.i self.sprite_index
push.v self.punch_type
pushi.e 2
cmp.i.v EQ
bt [499]

:[498]
push.v self.punch_type
pushi.e 3
cmp.i.v EQ
b [500]

:[499]
push.e 1

:[500]
bf [502]

:[501]
pushi.e 2113
pop.v.i self.sprite_index

:[502]
push.v self.punch_type
pushi.e 5
cmp.i.v EQ
bf [504]

:[503]
pushi.e 2113
pop.v.i self.sprite_index

:[504]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [506]

:[505]
pushi.e 2137
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed

:[506]
pushi.e 0
pop.v.i self.friction
pushi.e 0
pop.v.i self.gravity
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [511]

:[507]
push.v 777.arcade_mode_last_punched_direction
pushi.e 0
cmp.i.v EQ
bf [509]

:[508]
pushi.e 1
pop.v.i self.drawflip
pushi.e 1
pop.v.i self.force_drawflip

:[509]
push.v 777.arcade_mode_last_punched_direction
pushi.e 1
cmp.i.v EQ
bf [511]

:[510]
pushi.e 0
pop.v.i self.drawflip
pushi.e 0
pop.v.i self.force_drawflip

:[511]
pushi.e 0
pop.v.i self.image_index
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [516]

:[512]
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
pushi.e -1
pop.v.i self.ff
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [514]

:[513]
pushi.e -3
push.v self.f
mul.v.i
pop.v.v self.hspeed
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
b [515]

:[514]
pushi.e -7
push.v self.f
mul.v.i
pop.v.v self.hspeed
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r

:[515]
pushi.e -2
push.v self.f
mul.v.i
pop.v.v self.vspeed

:[516]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [521]

:[517]
pushi.e 1
pop.v.i self.ff
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [519]

:[518]
pushi.e 3
push.v self.f
mul.v.i
pop.v.v self.hspeed
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
b [520]

:[519]
pushi.e 7
push.v self.f
mul.v.i
pop.v.v self.hspeed
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r

:[520]
pushi.e -2
push.v self.f
mul.v.i
pop.v.v self.vspeed

:[521]
pushi.e 1
pop.v.i self.attackcon

:[522]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
bf [565]

:[523]
pushi.e 10
pop.v.i self.punchthresholda
pushi.e 15
pop.v.i self.punchthresholdb
pushi.e 35
pop.v.i self.punchthresholdc
pushi.e 40
pop.v.i self.punchthresholdd
pushi.e 40
pop.v.i self.punchthresholde
pushi.e 0
pop.v.i local.a
push.v self.delayattack
pushi.e 1
cmp.i.v EQ
bf [525]

:[524]
pushi.e 11
pop.v.i local.a

:[525]
push.v self.punch_type
pushi.e 1
cmp.i.v EQ
bf [527]

:[526]
pushi.e 15
pop.v.i self.punchthresholdb
pushi.e 18
pop.v.i self.punchthresholdc
pushi.e 30
pop.v.i self.punchthresholdd
pushi.e 35
pop.v.i self.punchthresholde

:[527]
push.v self.punch_type
pushi.e 2
cmp.i.v EQ
bt [529]

:[528]
push.v self.punch_type
pushi.e 3
cmp.i.v EQ
b [530]

:[529]
push.e 1

:[530]
bf [532]

:[531]
pushi.e 15
pop.v.i self.punchthresholdb
pushi.e 17
pop.v.i self.punchthresholdc
pushi.e 23
pop.v.i self.punchthresholdd
pushi.e 25
pop.v.i self.punchthresholde

:[532]
push.v self.punch_type
pushi.e 4
cmp.i.v EQ
bt [534]

:[533]
push.v self.punch_type
pushi.e 5
cmp.i.v EQ
b [535]

:[534]
push.e 1

:[535]
bf [537]

:[536]
pushi.e 15
pop.v.i self.punchthresholdb
pushi.e 18
pop.v.i self.punchthresholdc
pushi.e 40
pop.v.i self.punchthresholdd
pushi.e 23
pop.v.i self.punchthresholde

:[537]
push.v self.punch_type
pushi.e 2
cmp.i.v EQ
bf [539]

:[538]
push.v self.firstquickpunch
pushi.e 1
cmp.i.v EQ
b [540]

:[539]
push.e 0

:[540]
bt [545]

:[541]
push.v self.punch_type
pushi.e 3
cmp.i.v EQ
bf [543]

:[542]
push.v self.firstquickpunch
pushi.e 1
cmp.i.v EQ
b [544]

:[543]
push.e 0

:[544]
b [546]

:[545]
push.e 1

:[546]
bf [548]

:[547]
pushi.e 15
pop.v.i self.punchthresholdb
pushi.e 18
pop.v.i self.punchthresholdc
pushi.e 30
pop.v.i self.punchthresholdd
pushi.e 35
pop.v.i self.punchthresholde

:[548]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [550]

:[549]
pushi.e 15
pop.v.i self.punchthresholdb
pushi.e 18
pop.v.i self.punchthresholdc
pushi.e 50
pop.v.i self.punchthresholdd
pushi.e 50
pop.v.i self.punchthresholde

:[550]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
push.v self.punchthresholda
push.v self.f
div.v.v
cmp.v.v GTE
bf [552]

:[551]
pushi.e 0
pop.v.i self.speed

:[552]
push.v self.attacktimer
push.v self.punchthresholdb
push.v self.f
div.v.v
cmp.v.v EQ
bf [554]

:[553]
pushi.e 3
pop.v.i self.image_index

:[554]
push.v self.attacktimer
push.v self.punchthresholdc
push.v self.f
div.v.v
call.i ceil(argc=1)
cmp.v.v EQ
bf [559]

:[555]
push.v self.arcade
conv.v.b
bf [557]

:[556]
pushi.e 314
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [558]

:[557]
pushi.e 44
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[558]
pushi.e 5
pop.v.i self.image_index
pushi.e 120
pop.v.i self.white_flash

:[559]
push.v self.attacktimer
push.v self.punchthresholdc
push.v self.f
div.v.v
call.i ceil(argc=1)
pushi.e 4
add.i.v
cmp.v.v EQ
bf [561]

:[560]
pushi.e 3
pop.v.i self.image_index
pushi.e 0
pop.v.i self.white_flash

:[561]
push.v self.attacktimer
push.v self.punchthresholdd
push.v self.f
div.v.v
pushloc.v local.a
add.v.v
cmp.v.v GTE
bf [565]

:[562]
pushi.e 2
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer
push.v self.arcade
conv.v.b
bf [564]

:[563]
pushi.e 310
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [565]

:[564]
pushi.e 121
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[565]
push.v self.attackcon
pushi.e 2
cmp.i.v EQ
bf [602]

:[566]
pushi.e 0
pop.v.i self.attack_succeeded
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
pushi.e 2112
pop.v.i self.sprite_index
push.v self.punch_type
pushi.e 2
cmp.i.v EQ
bt [568]

:[567]
push.v self.punch_type
pushi.e 3
cmp.i.v EQ
b [569]

:[568]
push.e 1

:[569]
bf [571]

:[570]
pushi.e 2113
pop.v.i self.sprite_index

:[571]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [573]

:[572]
pushi.e 2138
pop.v.i self.sprite_index

:[573]
pushi.e 1
pop.v.i self.image_index
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [583]

:[574]
push.v self.attacktimer
pushi.e 1
cmp.i.v EQ
bf [576]

:[575]
push.v self.y
pushi.e 25
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 6
push.v self.ff
mul.v.i
sub.v.v
pop.v.v self.x

:[576]
push.v self.attacktimer
pushi.e 2
cmp.i.v EQ
bf [578]

:[577]
push.v self.y
pushi.e 15
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 4
push.v self.ff
mul.v.i
sub.v.v
pop.v.v self.x

:[578]
push.v self.attacktimer
pushi.e 3
cmp.i.v EQ
bf [580]

:[579]
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 2
push.v self.ff
mul.v.i
sub.v.v
pop.v.v self.x

:[580]
push.v self.attacktimer
pushi.e 4
cmp.i.v EQ
bf [582]

:[581]
push.v self.y
pushi.e 5
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 2
push.v self.ff
mul.v.i
sub.v.v
pop.v.v self.x
pushi.e 3
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer

:[582]
b [591]

:[583]
push.v self.attacktimer
pushi.e 1
cmp.i.v EQ
bf [585]

:[584]
push.v self.y
pushi.e 25
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 16
push.v self.ff
mul.v.i
sub.v.v
pop.v.v self.x

:[585]
push.v self.attacktimer
pushi.e 2
cmp.i.v EQ
bf [587]

:[586]
push.v self.y
pushi.e 15
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 12
push.v self.ff
mul.v.i
sub.v.v
pop.v.v self.x

:[587]
push.v self.attacktimer
pushi.e 3
cmp.i.v EQ
bf [589]

:[588]
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 8
push.v self.ff
mul.v.i
sub.v.v
pop.v.v self.x

:[589]
push.v self.attacktimer
pushi.e 4
cmp.i.v EQ
bf [591]

:[590]
push.v self.y
pushi.e 5
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 4
push.v self.ff
mul.v.i
sub.v.v
pop.v.v self.x
pushi.e 3
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer

:[591]
push.v self.punch_type
pushi.e 2
cmp.i.v EQ
bf [593]

:[592]
push.v self.firstquickpunch
pushi.e 1
cmp.i.v EQ
b [594]

:[593]
push.e 0

:[594]
bt [599]

:[595]
push.v self.punch_type
pushi.e 3
cmp.i.v EQ
bf [597]

:[596]
push.v self.firstquickpunch
pushi.e 1
cmp.i.v EQ
b [598]

:[597]
push.e 0

:[598]
b [600]

:[599]
push.e 1

:[600]
bf [602]

:[601]
pushi.e 0
pop.v.i self.firstquickpunch

:[602]
push.v self.attackcon
pushi.e 3
cmp.i.v EQ
bf [628]

:[603]
pushi.e 2
pop.v.i self.image_index
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 1
cmp.i.v EQ
bf [616]

:[604]
pushi.e 776
conv.i.v
push.v self.y
pushi.e 60
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.punch_hitbox
push.v self.punch_hitbox
pushi.e -9
pushenv [613]

:[605]
pushi.e 22
conv.i.d
push.v self.f
div.v.d
pop.v.v self.give_hurt
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [607]

:[606]
pushi.e 32
conv.i.d
push.v self.f
div.v.d
pop.v.v self.give_hurt

:[607]
pushi.e 5
conv.i.d
push.v self.f
div.v.d
pop.v.v self.timer
pushi.e 25
pop.v.i self.damage
push.v 789.punch_type
pushi.e 2
cmp.i.v EQ
bt [609]

:[608]
push.v 789.punch_type
pushi.e 3
cmp.i.v EQ
b [610]

:[609]
push.e 1

:[610]
bf [612]

:[611]
pushi.e 15
pop.v.i self.damage

:[612]
pushi.e 5
pop.v.i self.image_yscale
push.d 2.8
pop.v.d self.image_xscale

:[613]
popenv [605]
pushi.e 776
conv.i.v
push.v self.y
pushi.e 60
sub.i.v
push.v self.x
pushi.e 5
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.punch_hitbox_graze
push.v self.punch_hitbox_graze
pushi.e -9
pushenv [615]

:[614]
pushi.e 1
pop.v.i self.graze_only
pushi.e 6
pop.v.i self.image_xscale
push.d 2.8
pop.v.d self.image_yscale

:[615]
popenv [614]
push.v self.drawflip
push.v self.punch_hitbox
pushi.e -9
pop.v.v [stacktop]self.hit_direction

:[616]
push.v self.attacktimer
pushi.e 2
cmp.i.v GTE
bf [618]

:[617]
pushi.e 90
conv.i.d
push.v self.f
div.v.d
pop.v.v self.makedizzy
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e -1
pop.v.i self.blocking

:[618]
push.v self.punch_type
pushi.e 1
cmp.i.v EQ
bt [620]

:[619]
push.v self.punch_type
pushi.e 2
cmp.i.v EQ
b [621]

:[620]
push.e 1

:[621]
bf [623]

:[622]
pushi.e 0
pop.v.i self.attack_succeeded

:[623]
push.v self.punch_type
pushi.e 3
cmp.i.v EQ
bf [625]

:[624]
pushi.e 45
pop.v.i self.punchthresholdc
pushi.e 180
conv.i.d
push.v self.f
div.v.d
pop.v.v self.makedizzy

:[625]
push.v self.attacktimer
push.v self.punchthresholdd
push.v self.f
div.v.v
push.v self.attack_succeeded
pushi.e 20
mul.i.v
push.v self.f
div.v.v
sub.v.v
cmp.v.v GTE
bf [628]

:[626]
push.v self.vspeed
pushi.e 6
push.v self.f
mul.v.i
sub.v.v
pop.v.v self.vspeed
push.v self.y
push.v self.basey
pushi.e 20
add.i.v
cmp.v.v LTE
bf [628]

:[627]
pushi.e 0
pop.v.i self.attackcon
push.v self.basey
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.attack_succeeded
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[628]
push.v self.attacktype
pushi.e 1
cmp.i.v EQ
bf [809]

:[629]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [667]

:[630]
pushi.e -1
pop.v.i self.blocking
push.v self.basex
pop.v.v self.x
push.v self.basex
pop.v.v self.y
pushi.e 2106
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.friction
pushi.e 0
pop.v.i self.gravity
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [632]

:[631]
pushi.e 2139
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed

:[632]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [639]

:[633]
push.v 777.dodge_string
pop.v.v 843.text
pushi.e 50
pop.v.i 843.text_reset_timer
push.v self.dodgehintcount
push.e 1
add.i.v
pop.v.v self.dodgehintcount
push.v self.dodgehintcount
pushi.e 4
cmp.i.v EQ
bf [639]

:[634]
pushi.e 843
pushenv [638]

:[635]
push.s "o_boxingqueen_slash_Step_0_gml_599_0"@27336
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 3
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "DODGE with ~1 &or ~2!"@27337
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=5)
popz.v
pushi.e 50
pop.v.i global.typer
pushi.e 7
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 388
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 428
add.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
pop.v.v self.queenbubble
pushi.e 0
pop.v.i self.talktimer
pushi.e 1
pop.v.b self.talking
push.v self.queenbubble
pushi.e -9
pushenv [637]

:[636]
push.v 936.qu_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
pushi.e 1
pop.v.i self.auto_length
pushi.e -1
pop.v.i self.side
pushi.e 194
pop.v.i self.xoffset

:[637]
popenv [636]
pushi.e 1
pop.v.i self.talktype

:[638]
popenv [635]

:[639]
push.v self.arcade
conv.v.b
bf [641]

:[640]
pushi.e 311
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 0.9
conv.d.v
pushi.e 311
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
b [642]

:[641]
pushi.e 44
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 44
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[642]
pushi.e 3
pop.v.i self.image_index
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [644]

:[643]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[644]
pushi.e 0
pop.v.i self.image_index
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
pushi.e 0
pop.v.i self.playerhitbykick
pushi.e 0
pop.v.i self.ohpitch
pushi.e 0
pop.v.i self.attacktimer
pushi.e 0
pop.v.i self.kicks_done
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [658]

:[645]
push.v 777.arcade_mode_last_punched_direction
pushi.e 0
cmp.i.v EQ
bf [647]

:[646]
pushi.e 1
pop.v.i self.drawflip
pushi.e 1
pop.v.i self.force_drawflip

:[647]
push.v 777.arcade_mode_last_punched_direction
pushi.e 1
cmp.i.v EQ
bf [649]

:[648]
pushi.e 0
pop.v.i self.drawflip
pushi.e 0
pop.v.i self.force_drawflip

:[649]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [653]

:[650]
pushi.e -1
pop.v.i self.ff
push.v self.kick_amount
pushi.e 1
cmp.i.v LTE
bf [652]

:[651]
pushi.e -2
push.v self.f
mul.v.i
pop.v.v self.hspeed

:[652]
pushi.e 1
push.v self.f
mul.v.i
pop.v.v self.vspeed

:[653]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [657]

:[654]
pushi.e 1
pop.v.i self.ff
push.v self.kick_amount
pushi.e 1
cmp.i.v LTE
bf [656]

:[655]
pushi.e 2
push.v self.f
mul.v.i
pop.v.v self.hspeed

:[656]
pushi.e 1
push.v self.f
mul.v.i
pop.v.v self.vspeed

:[657]
b [666]

:[658]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [662]

:[659]
pushi.e -1
pop.v.i self.ff
push.v self.kick_amount
pushi.e 1
cmp.i.v LTE
bf [661]

:[660]
pushi.e -1
push.v self.f
mul.v.i
pop.v.v self.hspeed

:[661]
pushi.e 3
push.v self.f
mul.v.i
pop.v.v self.vspeed

:[662]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [666]

:[663]
pushi.e 1
pop.v.i self.ff
push.v self.kick_amount
pushi.e 1
cmp.i.v LTE
bf [665]

:[664]
pushi.e 1
push.v self.f
mul.v.i
pop.v.v self.hspeed

:[665]
pushi.e 3
push.v self.f
mul.v.i
pop.v.v self.vspeed

:[666]
pushi.e 1
pop.v.i self.attackcon

:[667]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
bf [733]

:[668]
pushi.e 0
pop.v.i local.a
push.v self.delayattack
pushi.e 1
cmp.i.v EQ
bf [670]

:[669]
pushi.e 11
pop.v.i local.a

:[670]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
pushi.e 5
pop.v.i self.kickthresholda
push.d 12.5
pop.v.d self.kickthresholdb
push.v self.punch_type
pushi.e 2
cmp.i.v EQ
bf [672]

:[671]
pushi.e 15
pop.v.i self.kickthresholda
pushi.e 21
pop.v.i self.kickthresholdb

:[672]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [675]

:[673]
pushi.e 18
pop.v.i self.kickthresholda
pushi.e 29
pop.v.i self.kickthresholdb
push.v self.attacktimer
pushi.e 10
cmp.i.v EQ
bf [675]

:[674]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[675]
push.v self.attacktimer
pushi.e 10
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [677]

:[676]
pushi.e 0
pop.v.i self.prekick_timer
pushi.e 0
pop.v.i self.speed
push.v self.y
pop.v.v self.remy
push.v self.x
pop.v.v self.remx

:[677]
pushi.e 0
pop.v.i self.kick_turnaround_again
push.v self.kick_amount
pushi.e 1
cmp.i.v GT
bf [679]

:[678]
push.v self.attacktimer
pushi.e 14
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
b [680]

:[679]
push.e 0

:[680]
bf [682]

:[681]
pushi.e 1
pop.v.i self.kick_turnaround_again

:[682]
push.v self.kick_amount
pushi.e 2
cmp.i.v GT
bf [684]

:[683]
push.v self.attacktimer
pushi.e 28
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
b [685]

:[684]
push.e 0

:[685]
bf [687]

:[686]
pushi.e 1
pop.v.i self.kick_turnaround_again

:[687]
push.v self.kick_amount
pushi.e 3
cmp.i.v GT
bf [689]

:[688]
push.v self.attacktimer
pushi.e 42
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
b [690]

:[689]
push.e 0

:[690]
bf [692]

:[691]
pushi.e 1
pop.v.i self.kick_turnaround_again

:[692]
push.v self.kick_turnaround_again
pushi.e 1
cmp.i.v EQ
bf [694]

:[693]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [695]

:[694]
push.e 0

:[695]
bf [703]

:[696]
push.v self.ohpitch
push.e 1
add.i.v
pop.v.v self.ohpitch
push.v self.arcade
conv.v.b
bf [698]

:[697]
pushi.e 1
push.v self.ohpitch
pushi.e 10
conv.i.d
div.d.v
add.v.i
pushi.e 311
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 311
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [699]

:[698]
pushi.e 1
push.v self.ohpitch
pushi.e 10
conv.i.d
div.d.v
add.v.i
pushi.e 44
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 44
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[699]
push.v self.ff
neg.v
pop.v.v self.ff
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [701]

:[700]
pushi.e 1
pop.v.i self.drawflip
b [702]

:[701]
pushi.e 0
pop.v.i self.drawflip

:[702]
pushi.e 3
pop.v.i self.image_index
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_index

:[703]
push.v self.attacktimer
pushi.e 25
conv.i.d
push.v self.f
div.v.d
push.v self.kick_amount
pushi.e 14
mul.i.v
push.v self.f
div.v.v
add.v.v
pushi.e 20
conv.i.d
push.v self.f
div.v.d
sub.v.v
cmp.v.v GTE
bf [706]

:[704]
push.v self.attacktimer
push.v self.kickthresholda
cmp.v.v GT
bf [706]

:[705]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [707]

:[706]
push.e 0

:[707]
bf [713]

:[708]
push.v self.prekick_timer
pushi.e 1
add.i.v
pop.v.v self.prekick_timer
push.v self.prekick_timer
pushi.e 6
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
bf [710]

:[709]
push.v self.vspeed
pushi.e 1
push.v self.f
mul.v.i
sub.v.v
pop.v.v self.vspeed

:[710]
push.v self.prekick_timer
pushi.e 6
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [713]

:[711]
push.v self.vspeed
pushi.e 1
push.v self.f
mul.v.i
add.v.v
pop.v.v self.vspeed
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [713]

:[712]
pushi.e 0
pop.v.i self.vspeed

:[713]
push.v self.attacktimer
pushi.e 25
conv.i.d
push.v self.f
div.v.d
pushi.e 14
conv.i.d
push.v self.f
div.v.d
add.v.v
pushi.e 20
conv.i.d
push.v self.f
div.v.d
sub.v.v
cmp.v.v GTE
bf [716]

:[714]
push.v self.attacktimer
push.v self.kickthresholda
cmp.v.v GT
bf [716]

:[715]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
b [717]

:[716]
push.e 0

:[717]
bf [723]

:[718]
push.v self.prekick_timer
pushi.e 1
add.i.v
pop.v.v self.prekick_timer
push.v self.prekick_timer
pushi.e 8
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
bf [720]

:[719]
push.v self.vspeed
push.d 0.75
push.v self.f
mul.v.d
sub.v.v
pop.v.v self.vspeed

:[720]
push.v self.prekick_timer
pushi.e 8
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [723]

:[721]
push.v self.vspeed
push.d 0.75
push.v self.f
mul.v.d
add.v.v
pop.v.v self.vspeed
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [723]

:[722]
pushi.e 0
pop.v.i self.vspeed

:[723]
push.v self.attacktimer
pushi.e 25
conv.i.d
push.v self.f
div.v.d
push.v self.kick_amount
pushi.e 14
mul.i.v
push.v self.f
div.v.v
add.v.v
cmp.v.v GTE
bf [725]

:[724]
push.v self.attacktimer
push.v self.kickthresholdb
cmp.v.v GT
b [726]

:[725]
push.e 0

:[726]
bf [728]

:[727]
pushi.e 0
pop.v.i self.speed

:[728]
push.v self.attacktimer
pushi.e 25
conv.i.d
push.v self.f
div.v.d
push.v self.kick_amount
pushi.e 14
mul.i.v
push.v self.f
div.v.v
add.v.v
cmp.v.v GTE
bf [730]

:[729]
push.v self.attacktimer
push.v self.kickthresholdb
pushloc.v local.a
add.v.v
cmp.v.v GT
b [731]

:[730]
push.e 0

:[731]
bf [733]

:[732]
pushi.e 0
pop.v.i self.kicks_done
pushi.e 0
pop.v.i self.speed
pushi.e 2
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer
pushi.e 1
pop.v.i self.image_index

:[733]
push.v self.attackcon
pushi.e 2
cmp.i.v EQ
bf [764]

:[734]
pushi.e 100
conv.i.d
push.v self.f
div.v.d
push.v self.kick_amount
pushi.e 20
mul.i.v
push.v self.f
div.v.v
add.v.v
pop.v.v self.makedizzy
pushi.e 2106
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [736]

:[735]
pushi.e 2139
pop.v.i self.sprite_index

:[736]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 1
cmp.i.v EQ
bf [749]

:[737]
push.v self.arcade
conv.v.b
bf [739]

:[738]
pushi.e 318
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 306
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.kickyell
b [740]

:[739]
pushi.e 157
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 118
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.kickyell

:[740]
pushi.e 1
push.v self.kick_amount
push.d 0.08
mul.d.v
add.v.i
push.v self.kicks_done
push.d 0.08
mul.d.v
sub.v.v
push.v self.kickyell
call.i audio_sound_pitch(argc=2)
popz.v
pushi.e 0
pop.v.i self.attack_succeeded
pushi.e 776
conv.i.v
push.v self.basey
pushi.e 50
sub.i.v
push.v self.basex
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kick_hitbox
push.v self.kick_hitbox
pushi.e -9
pushenv [748]

:[741]
pushi.e 34
conv.i.d
push.v self.f
div.v.d
pop.v.v self.give_hurt
pushi.e 4
conv.i.d
push.v self.f
div.v.d
pop.v.v self.timer
pushi.e 40
push.v 777.failed_kick_tutorial_counter
mul.v.i
pop.v.v self.damage
push.v 777.succeeded_kick_tutorial
pushi.e 1
cmp.i.v EQ
bf [743]

:[742]
pushi.e 40
pop.v.i self.damage

:[743]
push.v 789.kick_amount
pushi.e 2
cmp.i.v EQ
bf [745]

:[744]
push.v self.damage
push.d 0.6
mul.d.v
call.i floor(argc=1)
pop.v.v self.damage

:[745]
push.v 789.kick_amount
pushi.e 3
cmp.i.v GTE
bf [747]

:[746]
push.v self.damage
push.d 0.5
mul.d.v
call.i floor(argc=1)
pop.v.v self.damage

:[747]
pushi.e 1
pop.v.i self.kick
pushi.e 10
pop.v.i self.image_yscale
pushi.e 3
pop.v.i self.image_xscale

:[748]
popenv [741]
push.v self.drawflip
push.v self.kick_hitbox
pushi.e -9
pop.v.v [stacktop]self.hit_direction
pushi.e -3
push.v self.ff
mul.v.i
pop.v.v self.hspeed
pushi.e -4
push.v self.f
mul.v.i
pop.v.v self.vspeed

:[749]
push.v self.attacktimer
pushi.e 1
cmp.i.v GTE
bf [751]

:[750]
push.v self.vspeed
pushi.e 1
add.i.v
pop.v.v self.vspeed

:[751]
push.v self.attacktimer
pushi.e 4
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [753]

:[752]
pushi.e 2
pop.v.i self.image_index
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e -1
pop.v.i self.blocking

:[753]
push.v self.attacktimer
pushi.e 7
cmp.i.v EQ
bf [764]

:[754]
pushi.e 4
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer
push.v self.kicks_done
pushi.e 1
add.i.v
pop.v.v self.kicks_done
push.v self.kicks_done
push.v self.kick_amount
cmp.v.v EQ
bf [757]

:[755]
push.v self.playerhitbykick
pushi.e 0
cmp.i.v EQ
bf [757]

:[756]
push.v self.kick_amount
pushi.e 2
cmp.i.v GT
b [758]

:[757]
push.e 0

:[758]
bf [763]

:[759]
pushi.e 6
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer
push.v self.ff
pushi.e 1
cmp.i.v EQ
bf [761]

:[760]
pushi.e -2
pop.v.i self.hspeed
b [762]

:[761]
pushi.e 2
pop.v.i self.hspeed

:[762]
pushi.e -3
pop.v.i self.vspeed
push.d 1.5
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction
pushi.e 2107
pop.v.i self.sprite_index
b [764]

:[763]
pushi.e 0
pop.v.i self.speed

:[764]
push.v self.attackcon
pushi.e 4
cmp.i.v EQ
bf [780]

:[765]
pushi.e 2
pop.v.i self.image_index
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.kicks_done
push.v self.kick_amount
cmp.v.v LT
bf [767]

:[766]
push.v self.attacktimer
pushi.e 12
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
b [768]

:[767]
push.e 0

:[768]
bf [773]

:[769]
push.v self.remy
pop.v.v self.y
push.v self.remx
pop.v.v self.x
push.v self.ff
neg.v
pop.v.v self.ff
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [771]

:[770]
pushi.e 1
pop.v.i self.drawflip
b [772]

:[771]
pushi.e 0
pop.v.i self.drawflip

:[772]
pushi.e 5
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
pushi.e 0
pop.v.i self.image_index

:[773]
push.v self.attacktimer
pushi.e 55
conv.i.d
push.v self.f
div.v.d
push.v self.kick_amount
pushi.e 5
mul.i.v
push.v self.f
div.v.v
add.v.v
push.v self.attack_succeeded
pushi.e 26
conv.i.d
push.v self.f
div.v.d
push.v self.kick_amount
pushi.e 5
mul.i.v
push.v self.f
div.v.v
add.v.v
mul.v.v
sub.v.v
cmp.v.v GTE
bf [780]

:[774]
pushi.e 843
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [776]

:[775]
push.v 843.text
push.v 777.dodge_string
cmp.v.v EQ
b [777]

:[776]
push.e 0

:[777]
bf [779]

:[778]
push.v 777.default_string
pop.v.v 843.text

:[779]
pushi.e 0
pop.v.i self.attackcon
push.v self.basey
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.attack_succeeded
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[780]
push.v self.attackcon
pushi.e 5
cmp.i.v EQ
bf [783]

:[781]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 15
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [783]

:[782]
pushi.e 2
pop.v.i self.attackcon
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.attacktimer

:[783]
push.v self.attackcon
pushi.e 6
cmp.i.v EQ
bf [809]

:[784]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 2
cmp.i.v LT
bf [785]

:[785]
push.v self.attacktimer
pushi.e 7
cmp.i.v EQ
bf [790]

:[786]
push.v self.ff
pushi.e 1
cmp.i.v EQ
bf [788]

:[787]
pushi.e -1
pop.v.i self.hspeed
b [789]

:[788]
pushi.e 1
pop.v.i self.hspeed

:[789]
pushi.e -4
push.v self.f
mul.v.i
pop.v.v self.vspeed
pushi.e 270
pop.v.i self.gravity_direction
push.d 1.5
pop.v.d self.gravity

:[790]
push.v self.attacktimer
pushi.e 16
cmp.i.v EQ
bf [792]

:[791]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity

:[792]
push.v self.attacktimer
pushi.e 29
cmp.i.v EQ
bf [794]

:[793]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity

:[794]
push.v self.attacktimer
pushi.e 40
cmp.i.v GTE
bf [802]

:[795]
pushi.e 2121
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.gravity
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [801]

:[796]
push.v self.x
push.v self.basex
cmp.v.v LT
bf [798]

:[797]
push.v self.x
pushi.e 1
add.i.v
pop.v.v self.x

:[798]
push.v self.x
push.v self.basex
cmp.v.v GT
bf [800]

:[799]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x

:[800]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [796]

:[801]
popz.i

:[802]
push.v self.attacktimer
pushi.e 45
cmp.i.v GTE
bf [809]

:[803]
pushi.e 843
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [805]

:[804]
push.v 843.text
push.v 777.dodge_string
cmp.v.v EQ
b [806]

:[805]
push.e 0

:[806]
bf [808]

:[807]
push.v 777.default_string
pop.v.v 843.text

:[808]
pushi.e 0
pop.v.i self.attackcon
push.v self.basey
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.attack_succeeded
pushi.e 1
conv.i.v
pushi.e 44
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[809]
push.v self.attacktype
pushi.e 2
cmp.i.v EQ
bf [899]

:[810]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [819]

:[811]
pushi.e -1
pop.v.i self.blocking
pushi.e 2105
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.v self.arcade
conv.v.b
bf [813]

:[812]
pushi.e 311
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [814]

:[813]
pushi.e 124
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[814]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [816]

:[815]
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
pushi.e -1
pop.v.i self.ff
pushi.e -4
push.v self.f
mul.v.i
pop.v.v self.hspeed
pushi.e -2
push.v self.f
mul.v.i
pop.v.v self.vspeed

:[816]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [818]

:[817]
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
pushi.e 1
pop.v.i self.ff
pushi.e 4
push.v self.f
mul.v.i
pop.v.v self.hspeed
pushi.e -2
push.v self.f
mul.v.i
pop.v.v self.vspeed

:[818]
pushi.e 1
pop.v.i self.attackcon

:[819]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
bf [854]

:[820]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 10
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [822]

:[821]
pushi.e 0
pop.v.i self.speed

:[822]
pushi.e 0
pop.v.i local.a
push.v self.delayattack
pushi.e 1
cmp.i.v EQ
bf [824]

:[823]
pushi.e 12
pop.v.i local.a

:[824]
pushi.e 1
pop.v.i self.punch_type
push.v self.attacktimer
pushi.e 20
conv.i.d
push.v self.f
div.v.d
pushloc.v local.a
add.v.v
cmp.v.v EQ
bf [826]

:[825]
push.v self.punch_type
pushi.e 0
cmp.i.v EQ
b [827]

:[826]
push.e 0

:[827]
bt [836]

:[828]
push.v self.attacktimer
pushi.e 30
conv.i.d
push.v self.f
div.v.d
pushloc.v local.a
add.v.v
cmp.v.v EQ
bf [830]

:[829]
push.v self.punch_type
pushi.e 1
cmp.i.v EQ
b [831]

:[830]
push.e 0

:[831]
bt [836]

:[832]
push.v self.attacktimer
pushi.e 12
conv.i.d
push.v self.f
div.v.d
pushloc.v local.a
add.v.v
cmp.v.v EQ
bf [834]

:[833]
push.v self.punch_type
pushi.e 2
cmp.i.v EQ
b [835]

:[834]
push.e 0

:[835]
b [837]

:[836]
push.e 1

:[837]
bf [845]

:[838]
push.v self.delayattacktelegraph
pushi.e 0
cmp.i.v EQ
bf [845]

:[839]
pushi.e 47
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [841]

:[840]
pushi.e 825
conv.i.v
push.v self.y
pushi.e 180
sub.i.v
push.v self.x
pushi.e 6
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
b [844]

:[841]
pushi.e 825
conv.i.v
push.v self.y
pushi.e 180
sub.i.v
push.v self.x
pushi.e 6
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 825
pushenv [843]

:[842]
pushi.e -1
pop.v.i self.image_xscale

:[843]
popenv [842]

:[844]
pushi.e 1
pop.v.i self.delayattacktelegraph

:[845]
push.v self.punch_type
pushi.e 0
cmp.i.v EQ
bf [848]

:[846]
push.v self.attacktimer
pushi.e 36
conv.i.d
push.v self.f
div.v.d
pushloc.v local.a
add.v.v
cmp.v.v GTE
bf [848]

:[847]
pushi.e 2
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer

:[848]
push.v self.punch_type
pushi.e 1
cmp.i.v EQ
bf [851]

:[849]
push.v self.attacktimer
pushi.e 46
conv.i.d
push.v self.f
div.v.d
pushloc.v local.a
add.v.v
cmp.v.v GTE
bf [851]

:[850]
pushi.e 2
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer

:[851]
push.v self.punch_type
pushi.e 2
cmp.i.v EQ
bf [854]

:[852]
push.v self.attacktimer
pushi.e 28
conv.i.d
push.v self.f
div.v.d
pushloc.v local.a
add.v.v
cmp.v.v GTE
bf [854]

:[853]
pushi.e 2
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer

:[854]
push.v self.attackcon
pushi.e 2
cmp.i.v EQ
bf [867]

:[855]
pushi.e 0
pop.v.i self.delayattacktelegraph
pushi.e 0
pop.v.i self.attack_succeeded
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
pushi.e 1
pop.v.i self.image_index
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.arcade
conv.v.b
bf [859]

:[856]
push.v self.attacktimer
pushi.e 1
cmp.i.v EQ
bf [858]

:[857]
push.v self.y
pushi.e 15
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 20
push.v self.ff
mul.v.i
sub.v.v
pop.v.v self.x
pushi.e 313
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[858]
b [861]

:[859]
push.v self.attacktimer
pushi.e 1
cmp.i.v EQ
bf [861]

:[860]
push.v self.y
pushi.e 15
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 20
push.v self.ff
mul.v.i
sub.v.v
pop.v.v self.x
pushi.e 125
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[861]
push.v self.attacktimer
pushi.e 2
cmp.i.v EQ
bf [863]

:[862]
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 12
push.v self.ff
mul.v.i
sub.v.v
pop.v.v self.x

:[863]
push.v self.attacktimer
pushi.e 3
cmp.i.v EQ
bf [865]

:[864]
push.v self.y
pushi.e 5
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 8
push.v self.ff
mul.v.i
sub.v.v
pop.v.v self.x

:[865]
push.v self.attacktimer
pushi.e 4
cmp.i.v EQ
bf [867]

:[866]
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 4
push.v self.ff
mul.v.i
sub.v.v
pop.v.v self.x
pushi.e 3
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer

:[867]
push.v self.attackcon
pushi.e 3
cmp.i.v EQ
bf [899]

:[868]
pushi.e 2
pop.v.i self.image_index
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 1
cmp.i.v EQ
bf [870]

:[869]
pushi.e 175
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[870]
push.v self.attacktimer
pushi.e 5
cmp.i.v LTE
bf [872]

:[871]
pushi.e 818
conv.i.v
push.v self.y
pushi.e 60
sub.i.v
push.v self.x
push.v self.ff
pushi.e 20
mul.i.v
sub.v.v
pushi.e 60
push.v self.ff
mul.v.i
add.v.v
push.v self.attacktimer
push.v self.ff
mul.v.v
pushi.e 20
mul.i.v
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fakesplash
push.d -0.5
push.v self.fakesplash
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e -2
push.v self.attacktimer
sub.v.i
push.v self.ff
mul.v.v
push.v self.fakesplash
pushi.e -9
pop.v.v [stacktop]self.hspeed
pushi.e 2
push.v self.fakesplash
pushi.e -9
pop.v.i [stacktop]self.vspeed

:[872]
push.v self.attacktimer
pushi.e 1
cmp.i.v EQ
bf [878]

:[873]
pushi.e 776
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
push.v self.ff
pushi.e 40
mul.i.v
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.splash_hitbox
push.v self.splash_hitbox
pushi.e -9
pushenv [875]

:[874]
pushi.e 1
pop.v.i self.hit_dodging
pushi.e 22
conv.i.d
push.v self.f
div.v.d
pop.v.v self.give_hurt
pushi.e 2
pop.v.i self.timer
pushi.e 30
pop.v.i self.damage
pushi.e 5
pop.v.i self.image_yscale
pushi.e 12
pop.v.i self.image_xscale

:[875]
popenv [874]
push.v self.drawflip
push.v self.splash_hitbox
pushi.e -9
pop.v.v [stacktop]self.hit_direction
pushi.e 776
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
push.v self.ff
pushi.e 30
mul.i.v
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.splash_hitbox_graze
push.v self.splash_hitbox_graze
pushi.e -9
pushenv [877]

:[876]
pushi.e 1
pop.v.i self.graze_only
pushi.e 14
pop.v.i self.image_xscale
pushi.e 5
pop.v.i self.image_yscale

:[877]
popenv [876]

:[878]
push.v self.attacktimer
pushi.e 2
cmp.i.v GTE
bf [880]

:[879]
pushi.e 140
conv.i.d
push.v self.f
div.v.d
pop.v.v self.makedizzy
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e -1
pop.v.i self.blocking

:[880]
push.v self.splash_amount
pushi.e 2
cmp.i.v EQ
bf [883]

:[881]
push.v self.attacktimer
pushi.e 15
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [883]

:[882]
push.v self.punch_type
pushi.e 2
cmp.i.v NEQ
b [884]

:[883]
push.e 0

:[884]
bt [890]

:[885]
push.v self.splash_amount
pushi.e 2
cmp.i.v EQ
bf [888]

:[886]
push.v self.attacktimer
pushi.e 7
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [888]

:[887]
push.v self.punch_type
pushi.e 2
cmp.i.v EQ
b [889]

:[888]
push.e 0

:[889]
b [891]

:[890]
push.e 1

:[891]
bf [896]

:[892]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [894]

:[893]
pushi.e 1
pop.v.i self.drawflip
b [895]

:[894]
pushi.e 0
pop.v.i self.drawflip

:[895]
pushi.e 0
pop.v.i self.attacktimer
pushi.e 0
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.splash_amount
pushi.e 0
pop.v.i self.image_index

:[896]
push.v self.attacktimer
pushi.e 45
conv.i.d
push.v self.f
div.v.d
push.v self.attack_succeeded
pushi.e 20
mul.i.v
push.v self.f
div.v.v
sub.v.v
cmp.v.v GTE
bf [899]

:[897]
push.v self.vspeed
pushi.e 6
push.v self.f
mul.v.i
sub.v.v
pop.v.v self.vspeed
push.v self.y
push.v self.basey
pushi.e 20
add.i.v
cmp.v.v LTE
bf [899]

:[898]
pushi.e 0
pop.v.i self.attackcon
push.v self.basey
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.attack_succeeded
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[899]
push.v self.attacktype
pushi.e 3
cmp.i.v EQ
bf [930]

:[900]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [907]

:[901]
pushi.e 180
conv.i.d
push.v self.f
div.v.d
pop.v.v self.makedizzy
pushi.e -1
pop.v.i self.blocking
push.v self.arcade
conv.v.b
bf [903]

:[902]
pushi.e 305
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [904]

:[903]
pushi.e 293
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[904]
pushi.e 2101
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [906]

:[905]
pushi.e 2140
pop.v.i self.sprite_index

:[906]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e 1
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer
pushi.e 0
pop.v.i self.laughtimer

:[907]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
bf [920]

:[908]
push.v self.laughtimer
pushi.e 1
add.i.v
pop.v.v self.laughtimer
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [910]

:[909]
push.v 777.beat_phase2_no_damage_taken
pushi.e 1
cmp.i.v EQ
b [911]

:[910]
push.e 0

:[911]
bf [913]

:[912]
push.v self.attacktimer
pushi.e 3
add.i.v
pop.v.v self.attacktimer

:[913]
push.v self.laughtimer
pushi.e 10
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [918]

:[914]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [916]

:[915]
pushi.e 1
pop.v.i self.image_index
b [917]

:[916]
pushi.e 0
pop.v.i self.image_index

:[917]
pushi.e 0
pop.v.i self.laughtimer

:[918]
push.v self.attacktimer
pushi.e 100
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [920]

:[919]
pushi.e 2
pop.v.i self.attackcon

:[920]
push.v self.attackcon
pushi.e 2
cmp.i.v EQ
bf [930]

:[921]
pushi.e 0
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktype
pushi.e 0
pop.v.i self.state
pushi.e 2121
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [923]

:[922]
pushi.e 2135
pop.v.i self.sprite_index

:[923]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.attacktype
pushi.e 3
cmp.i.v EQ
bf [925]

:[924]
pushi.e 2101
pop.v.i self.sprite_index

:[925]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [927]

:[926]
push.v self.attacktype
pushi.e 3
cmp.i.v EQ
b [928]

:[927]
push.e 0

:[928]
bf [930]

:[929]
pushi.e 2140
pop.v.i self.sprite_index

:[930]
push.v self.attacktype
pushi.e 4
cmp.i.v EQ
bf [1028]

:[931]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [933]

:[932]
push.v self.pirouette_amount
pushi.e 7
cmp.i.v NEQ
b [934]

:[933]
push.e 0

:[934]
bf [936]

:[935]
pushi.e -1
pop.v.i self.blocking
pushi.e 2104
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.friction
pushi.e 0
pop.v.i self.gravity
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
pushi.e -8
push.v self.f
mul.v.i
pop.v.v self.vspeed
pushi.e 0
pop.v.i self.attacktimer
pushi.e 1
pop.v.i self.attackcon

:[936]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [938]

:[937]
push.v self.pirouette_amount
pushi.e 7
cmp.i.v EQ
b [939]

:[938]
push.e 0

:[939]
bf [941]

:[940]
pushi.e -1
pop.v.i self.blocking
pushi.e 154
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 1.2
conv.d.v
pushi.e 154
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 1
pop.v.i self.specialcon
pushi.e 1
pop.v.i self.drawflip
pushi.e 2110
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.friction
pushi.e 0
pop.v.i self.gravity
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
pushi.e 0
pop.v.i self.attacktimer
push.d 0.5
pop.v.d self.attackcon

:[941]
push.v self.attackcon
push.d 0.5
cmp.d.v EQ
bf [943]

:[942]
push.v self.pirouette_amount
pushi.e 7
cmp.i.v EQ
b [944]

:[943]
push.e 0

:[944]
bf [951]

:[945]
push.v self.attacktimer
push.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 15
cmp.i.v LTE
bf [947]

:[946]
push.v self.basex
pushi.e 10
push.v self.attacktimer
push.d 1.5
div.d.v
sub.v.i
call.i random(argc=1)
sub.v.v
pushi.e 10
push.v self.attacktimer
push.d 1.5
div.d.v
sub.v.i
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.x

:[947]
push.v self.attacktimer
pushi.e 15
cmp.i.v LTE
bf [949]

:[948]
push.v self.basey
pushi.e 10
push.v self.attacktimer
push.d 1.5
div.d.v
sub.v.i
call.i random(argc=1)
sub.v.v
pushi.e 10
push.v self.attacktimer
push.d 1.5
div.d.v
sub.v.i
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.y

:[949]
push.v self.attacktimer
pushi.e 30
cmp.i.v EQ
bf [951]

:[950]
push.v self.basex
pop.v.v self.x
push.v self.basey
pop.v.v self.y
pushi.e -1
pop.v.i self.blocking
pushi.e 2104
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.friction
pushi.e 0
pop.v.i self.gravity
pushi.e -8
push.v self.f
mul.v.i
pop.v.v self.vspeed
pushi.e 0
pop.v.i self.attacktimer
pushi.e 1
pop.v.i self.attackcon

:[951]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
bf [969]

:[952]
pushi.e 18
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer_threshold
push.v self.pirouette_type
pushi.e 1
cmp.i.v EQ
bf [954]

:[953]
pushi.e 20
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer_threshold

:[954]
pushi.e 0
pop.v.i self.pirouette_count
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [956]

:[955]
push.v self.vspeed
push.d 0.5
push.v self.f
mul.v.d
add.v.v
pop.v.v self.vspeed

:[956]
push.v self.vspeed
pushi.e 0
cmp.i.v GTE
bf [969]

:[957]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 1
cmp.i.v EQ
bf [961]

:[958]
pushi.e 2103
pop.v.i self.sprite_index
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 2104
pop.v.i self.sprite_index
push.v self.arcade
conv.v.b
bf [960]

:[959]
pushi.e 314
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [961]

:[960]
pushi.e 44
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[961]
push.v self.attacktimer
pushi.e 1
cmp.i.v GTE
bf [964]

:[962]
push.v self.attacktimer
pushi.e 15
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
bf [964]

:[963]
push.v self.pirouette_type
pushi.e 1
cmp.i.v EQ
b [965]

:[964]
push.e 0

:[965]
bf [967]

:[966]
pushi.e 817
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.afterimage
push.v self.sprite_index
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.hasboss
push.d 0.1
push.v self.afterimage
pushi.e -9
pop.v.d [stacktop]self.rate
pushi.e 2
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e -1
push.v self.f
mul.v.i
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.gravity
pushi.e 4
conv.i.v
call.i random(argc=1)
pushi.e 2
sub.i.v
push.v self.f
mul.v.v
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.hspeed

:[967]
push.v self.attacktimer
push.v self.attacktimer_threshold
cmp.v.v GTE
bf [969]

:[968]
pushi.e 2
pop.v.i self.attackcon

:[969]
push.v self.attackcon
pushi.e 2
cmp.i.v EQ
bf [975]

:[970]
pushi.e 0
pop.v.i self.attack_succeeded
pushi.e 16
push.v self.f
mul.v.i
pop.v.v self.vspeed
push.v self.pirouette_amount
pushi.e 7
cmp.i.v EQ
bf [972]

:[971]
pushi.e 12
push.v self.f
mul.v.i
pop.v.v self.vspeed

:[972]
push.v 777.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
push.d 0.25
push.v self.f
mul.v.d
pop.v.v self.image_speed
pushi.e 0
pop.v.i self.attacktimer
pushi.e 3
pop.v.i self.attackcon
pushi.e 9
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 1.7
conv.d.v
pushi.e 9
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 9
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 776
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dive_hitbox
push.v self.dive_hitbox
pushi.e -9
pushenv [974]

:[973]
pushi.e 1
pop.v.i self.hit_ducking
pushi.e 30
conv.i.d
push.v self.f
div.v.d
pop.v.v self.give_hurt
pushi.e 40
conv.i.d
push.v self.f
div.v.d
pop.v.v self.give_invincibility
pushi.e 400
pop.v.i self.timer
pushi.e 25
pop.v.i self.damage
pushi.e 4
pop.v.i self.image_yscale
push.d 2.8
pop.v.d self.image_xscale

:[974]
popenv [973]
push.v self.drawflip
push.v self.dive_hitbox
pushi.e -9
pop.v.v [stacktop]self.hit_direction

:[975]
push.v self.attackcon
pushi.e 3
cmp.i.v EQ
bf [1016]

:[976]
pushi.e 0
pop.v.i self.pirouette_done
push.v self.dive_hitbox
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [978]

:[977]
push.v self.y
pushi.e 20
sub.i.v
push.v self.dive_hitbox
pushi.e -9
pop.v.v [stacktop]self.y

:[978]
push.v self.pirouette_type
pushi.e 1
cmp.i.v EQ
bf [996]

:[979]
push.v self.y
pushi.e 780
cmp.i.v GTE
bf [981]

:[980]
push.v self.attacktimer
pushi.e 1
sub.i.v
pop.v.v self.attacktimer

:[981]
push.v self.attacktimer
pushi.e 0
cmp.i.v LT
bf [983]

:[982]
push.v self.pirouette_count
push.v self.pirouette_amount
cmp.v.v LT
b [984]

:[983]
push.e 0

:[984]
bf [991]

:[985]
pushi.e 9
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 1.7
conv.d.v
pushi.e 9
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
push.v self.pirouette_count
pushi.e 1
add.i.v
pop.v.v self.pirouette_count
pushi.e 36
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer
push.v self.pirouette_amount
pushi.e 7
cmp.i.v EQ
bf [987]

:[986]
pushi.e 46
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer

:[987]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=3)
pop.v.v self.p_side
pushi.e 779
conv.i.v
pushi.e -20
conv.i.v
push.v self.basex
pushi.e 90
push.v self.p_side
mul.v.i
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pqueen1
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=3)
pop.v.v self.p_side_2

:[988]
push.v self.p_side_2
push.v self.p_side
cmp.v.v EQ
bf [990]

:[989]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=3)
pop.v.v self.p_side_2
b [988]

:[990]
pushi.e 779
conv.i.v
pushi.e -20
conv.i.v
push.v self.basex
pushi.e 90
push.v self.p_side_2
mul.v.i
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pqueen2

:[991]
push.v self.attacktimer
pushi.e -20
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
bf [993]

:[992]
push.v self.pirouette_count
push.v self.pirouette_amount
cmp.v.v GTE
b [994]

:[993]
push.e 0

:[994]
bf [996]

:[995]
pushi.e 1
pop.v.i self.pirouette_done

:[996]
push.v self.pirouette_type
pushi.e 0
cmp.i.v EQ
bf [998]

:[997]
push.v self.y
pushi.e 780
cmp.i.v GTE
b [999]

:[998]
push.e 0

:[999]
bf [1001]

:[1000]
pushi.e 1
pop.v.i self.pirouette_done

:[1001]
push.v self.pirouette_done
pushi.e 1
cmp.i.v EQ
bf [1016]

:[1002]
push.v self.pirouette_count
pushi.e 1
add.i.v
pop.v.v self.pirouette_count
push.v self.pirouette_count
push.v self.pirouette_amount
cmp.v.v GTE
bf [1006]

:[1003]
push.v self.dive_hitbox
pushi.e -9
pushenv [1005]

:[1004]
call.i instance_destroy(argc=0)
popz.v

:[1005]
popenv [1004]
pushi.e 4
pop.v.i self.attackcon
push.v self.basey
pop.v.v self.y
pushi.e -20
pop.v.i self.x
pushi.e 0
pop.v.i self.vspeed
pushi.e 24
push.v self.f
mul.v.i
pop.v.v self.hspeed
push.v self.original_depth
pop.v.v self.depth
b [1016]

:[1006]
push.v self.pirouette_type
pushi.e 0
cmp.i.v EQ
bf [1016]

:[1007]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=3)
pop.v.v self.p_side
pushi.e -20
pop.v.i self.y
pushi.e 14
push.v self.f
mul.v.i
pop.v.v self.vspeed
push.v self.dive_hitbox
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1015]

:[1008]
push.v self.basex
pushi.e 90
push.v self.p_side
mul.v.i
add.v.v
push.v self.dive_hitbox
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.dive_hitbox
pushi.e -9
push.v [stacktop]self.x
push.v self.basex
cmp.v.v NEQ
bf [1010]

:[1009]
pushi.e 1
push.v self.dive_hitbox
pushi.e -9
pop.v.i [stacktop]self.hit_dodging
b [1011]

:[1010]
pushi.e 0
push.v self.dive_hitbox
pushi.e -9
pop.v.i [stacktop]self.hit_dodging

:[1011]
push.v self.dive_hitbox
pushi.e -9
push.v [stacktop]self.x
push.v self.basex
pushi.e 90
sub.i.v
cmp.v.v EQ
bf [1013]

:[1012]
pushi.e 0
push.v self.dive_hitbox
pushi.e -9
pop.v.i [stacktop]self.hit_direction

:[1013]
push.v self.dive_hitbox
pushi.e -9
push.v [stacktop]self.x
push.v self.basex
pushi.e 90
add.i.v
cmp.v.v EQ
bf [1015]

:[1014]
pushi.e 1
push.v self.dive_hitbox
pushi.e -9
pop.v.i [stacktop]self.hit_direction

:[1015]
push.v self.basex
push.v self.p_side
pushi.e 90
mul.i.v
add.v.v
pop.v.v self.x

:[1016]
push.v self.attackcon
pushi.e 4
cmp.i.v EQ
bf [1025]

:[1017]
pushi.e 0
pop.v.i self.pirouette_count
pushi.e 0
pop.v.i self.pirouette_done
push.v self.x
push.v self.basex
pushi.e 60
sub.i.v
cmp.v.v GTE
bf [1020]

:[1018]
pushi.e 200
conv.i.d
push.v self.f
div.v.d
pop.v.v self.makedizzy
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e -1
pop.v.i self.blocking
push.v 777.phase3_hit_check
pushi.e 1
cmp.i.v EQ
bf [1020]

:[1019]
push.v 777.phase3_damage_multiplier
push.d 0.2
add.d.v
pop.v.v 777.phase3_damage_multiplier
pushi.e 0
pop.v.i 777.phase3_hit_check

:[1020]
push.v self.x
push.v self.basex
pushi.e 10
sub.i.v
cmp.v.v GTE
bf [1025]

:[1021]
pushi.e 200
conv.i.d
push.v self.f
div.v.d
pop.v.v self.makedizzy
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 2099
pop.v.i self.sprite_index
push.v self.basex
pop.v.v self.x
push.v self.arcade
conv.v.b
bf [1023]

:[1022]
pushi.e 312
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [1024]

:[1023]
pushi.e 120
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[1024]
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e -1
pop.v.i self.blocking
pushi.e 0
pop.v.i self.attacktimer
pushi.e 5
pop.v.i self.attackcon

:[1025]
push.v self.attackcon
pushi.e 5
cmp.i.v EQ
bf [1028]

:[1026]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 45
conv.i.d
push.v self.f
div.v.d
push.v self.attack_succeeded
pushi.e 45
mul.i.v
push.v self.f
div.v.v
sub.v.v
cmp.v.v GTE
bf [1028]

:[1027]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 9
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer
pushi.e 0
pop.v.i self.attack_succeeded
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[1028]
push.v self.attacktype
pushi.e 5
cmp.i.v EQ
bf [1116]

:[1029]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [1043]

:[1030]
pushi.e 0
pop.v.i self.attack_succeeded
pushi.e -1
pop.v.i self.blocking
pushi.e 1
pop.v.i self.invincible_r
pushi.e 1
pop.v.i self.invincible_l
pushi.e 2099
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1032]

:[1031]
pushi.e 2140
pop.v.i self.sprite_index

:[1032]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1039]

:[1033]
push.v 777.duck_string
pop.v.v 843.text
pushi.e 1
pop.v.i 843.text_reset_timer
pushi.e 0
pop.v.i 843.text_timer
push.v self.duckhintcount
push.e 1
add.i.v
pop.v.v self.duckhintcount
push.v self.duckhintcount
pushi.e 4
cmp.i.v GTE
bf [1039]

:[1034]
pushi.e 0
pop.v.i self.duckhintcount
pushi.e 843
pushenv [1038]

:[1035]
push.s "o_boxingqueen_slash_Step_0_gml_1200_0"@27356
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "Press ~1&to Duck!"@27357
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
pushi.e 50
pop.v.i global.typer
pushi.e 7
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 388
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 428
add.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
pop.v.v self.queenbubble
pushi.e 0
pop.v.i self.talktimer
pushi.e 1
pop.v.b self.talking
push.v self.queenbubble
pushi.e -9
pushenv [1037]

:[1036]
push.v 936.qu_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
pushi.e 1
pop.v.i self.auto_length
pushi.e -1
pop.v.i self.side
pushi.e 222
pop.v.i self.xoffset

:[1037]
popenv [1036]
pushi.e 1
pop.v.i self.talktype

:[1038]
popenv [1035]

:[1039]
push.d -0.5
push.v self.f
mul.v.d
pop.v.v self.vspeed
push.d -0.4
push.v self.f
mul.v.d
pop.v.v self.friction
pushi.e 1
pop.v.i self.attackcon
pushi.e 20
conv.i.d
push.v self.f
div.v.d
pop.v.v self.wheeltimer
pushi.e 0
pop.v.i self.wheel_count
pushi.e 0
pop.v.i self.minitimer
pushi.e 0
pop.v.i self.attacktimer
pushi.e 0
pop.v.i self.firstwheelattackdelay
push.v self.firstwheelattack
pushi.e 0
cmp.i.v EQ
bf [1041]

:[1040]
pushi.e 10
pop.v.i self.firstwheelattackdelay

:[1041]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [1043]

:[1042]
pushi.e 837
conv.i.v
push.v self.y
push.v self.x
pushi.e 132
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 837
conv.i.v
push.v self.y
push.v self.x
pushi.e 84
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[1043]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
bf [1098]

:[1044]
pushi.e 0
pop.v.i self.wheel_done
push.v self.wheeltimer
pushi.e 1
add.i.v
pop.v.v self.wheeltimer
pushi.e 0
pop.v.i local.a
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1046]

:[1045]
pushi.e 10
pop.v.i local.a

:[1046]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1048]

:[1047]
push.v self.wheel_count
pushi.e 0
cmp.i.v GT
b [1049]

:[1048]
push.e 0

:[1049]
bf [1051]

:[1050]
pushi.e 20
pop.v.i local.a

:[1051]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [1054]

:[1052]
push.v self.firstwheelattack
pushi.e 0
cmp.i.v EQ
bf [1054]

:[1053]
push.v self.wheel_count
pushi.e 0
cmp.i.v NEQ
b [1055]

:[1054]
push.e 0

:[1055]
bf [1057]

:[1056]
pushi.e 30
pop.v.i local.a

:[1057]
push.v self.wheeltimer
pushi.e 50
pushloc.v local.a
add.v.i
push.v self.f
div.v.v
push.v self.wheel_type
pushi.e 9
mul.i.v
push.v self.f
div.v.v
sub.v.v
cmp.v.v GTE
bf [1084]

:[1058]
pushi.e 0
pop.v.i self.wheeltimer
pushi.e 778
conv.i.v
pushi.e 255
conv.i.v
pushi.e -215
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wheel1
pushi.e 778
conv.i.v
pushi.e 255
conv.i.v
pushi.e 825
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wheel2
push.v self.wheel2
pushi.e -9
pushenv [1060]

:[1059]
push.v self.hspeed
neg.v
pop.v.v self.hspeed
push.v self.rotspeed
neg.v
pop.v.v self.rotspeed

:[1060]
popenv [1059]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [1062]

:[1061]
push.v self.firstwheelattack
pushi.e 0
cmp.i.v EQ
b [1063]

:[1062]
push.e 0

:[1063]
bf [1069]

:[1064]
push.v self.wheel1
pushi.e -9
pushenv [1066]

:[1065]
push.v self.hspeed
push.d 1.4
div.d.v
pop.v.v self.hspeed

:[1066]
popenv [1065]
push.v self.wheel2
pushi.e -9
pushenv [1068]

:[1067]
push.v self.hspeed
push.d 1.4
div.d.v
pop.v.v self.hspeed

:[1068]
popenv [1067]

:[1069]
push.v self.wheel_count
pushi.e 1
add.i.v
pop.v.v self.wheel_count
push.v self.punch_type
pushi.e 2
cmp.i.v EQ
bf [1071]

:[1070]
push.v self.wheel_count
push.v self.wheel_amount
pushi.e 2
add.i.v
cmp.v.v GTE
b [1072]

:[1071]
push.e 0

:[1072]
bf [1074]

:[1073]
pushi.e 1
pop.v.i self.wheel_done

:[1074]
push.v self.punch_type
pushi.e 2
cmp.i.v NEQ
bf [1076]

:[1075]
push.v self.wheel_count
push.v self.wheel_amount
cmp.v.v GTE
b [1077]

:[1076]
push.e 0

:[1077]
bf [1079]

:[1078]
pushi.e 1
pop.v.i self.wheel_done

:[1079]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1081]

:[1080]
push.v self.first_octagon_attack
pushi.e 0
cmp.i.v EQ
b [1082]

:[1081]
push.e 0

:[1082]
bf [1084]

:[1083]
pushi.e 1
pop.v.i self.wheel_done

:[1084]
push.v self.minitimer
pushi.e 1
add.i.v
pop.v.v self.minitimer
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 1
cmp.i.v EQ
bf [1086]

:[1085]
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 0.75
pushi.e 1
conv.i.v
call.i random(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.d
pushi.e 52
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[1086]
push.v self.attacktimer
pushi.e 20
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
bf [1088]

:[1087]
push.v self.minitimer
pushi.e 4
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
b [1089]

:[1088]
push.e 0

:[1089]
bf [1091]

:[1090]
pushi.e 0
pop.v.i self.minitimer
pushi.e 815
conv.i.v
push.v self.y
pushi.e 122
sub.i.v
push.v self.x
pushi.e 74
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.miniwheel
pushi.e -5
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.f
mul.v.v
push.v self.miniwheel
pushi.e -9
pop.v.v [stacktop]self.hspeed
pushi.e 815
conv.i.v
push.v self.y
pushi.e 122
sub.i.v
push.v self.x
pushi.e 66
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.miniwheel
pushi.e 5
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.f
mul.v.v
push.v self.miniwheel
pushi.e -9
pop.v.v [stacktop]self.hspeed

:[1091]
push.v self.attacktimer
pushi.e 20
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1096]

:[1092]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.friction
pushi.e 2101
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1094]

:[1093]
pushi.e 2140
pop.v.i self.sprite_index

:[1094]
pushi.e 293
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 293
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [1096]

:[1095]
push.d 0.1
pop.v.d self.image_speed

:[1096]
push.v self.wheel_done
pushi.e 1
cmp.i.v EQ
bf [1098]

:[1097]
pushi.e 2
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer

:[1098]
push.v self.attackcon
pushi.e 2
cmp.i.v EQ
bf [1116]

:[1099]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 38
conv.i.d
push.v self.f
div.v.d
push.v self.firstwheelattackdelay
add.v.v
cmp.v.v EQ
bf [1101]

:[1100]
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e 180
conv.i.d
push.v self.f
div.v.d
pop.v.v self.makedizzy

:[1101]
push.v self.attacktimer
pushi.e 34
conv.i.d
push.v self.f
div.v.d
push.v self.firstwheelattackdelay
add.v.v
cmp.v.v GTE
bf [1107]

:[1102]
push.v self.y
push.v self.basey
cmp.v.v LT
bf [1104]

:[1103]
push.v self.vspeed
pushi.e 1
push.v self.f
mul.v.i
add.v.v
pop.v.v self.vspeed
pushi.e 0
pop.v.i self.firstwheelattack
b [1107]

:[1104]
push.v 777.phase3_hit_check
pushi.e 1
cmp.i.v EQ
bf [1106]

:[1105]
push.v 777.phase3_damage_multiplier
push.d 0.2
add.d.v
pop.v.v 777.phase3_damage_multiplier
pushi.e 0
pop.v.i 777.phase3_hit_check

:[1106]
pushi.e 0
pop.v.i self.speed
push.v self.basey
pop.v.v self.y
push.v self.basex
pop.v.v self.x

:[1107]
push.v self.attacktimer
pushi.e 100
conv.i.d
push.v self.f
div.v.d
push.v self.attack_succeeded
pushi.e 25
mul.i.v
push.v self.f
div.v.v
sub.v.v
push.v self.firstwheelattackdelay
add.v.v
cmp.v.v GTE
bf [1116]

:[1108]
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushi.e 293
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1110]

:[1109]
pushi.e 1
pop.v.i self.first_octagon_attack

:[1110]
pushi.e 843
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [1112]

:[1111]
push.v 843.text
push.v 777.duck_string
cmp.v.v EQ
b [1113]

:[1112]
push.e 0

:[1113]
bf [1115]

:[1114]
push.v 777.default_string
pop.v.v 843.text

:[1115]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[1116]
push.v self.attacktype
pushi.e 6
cmp.i.v EQ
bf [1150]

:[1117]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [1122]

:[1118]
pushi.e -1
pop.v.i self.blocking
pushi.e 2106
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e -24
push.v self.f
mul.v.i
pop.v.v self.vspeed
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
pushi.e 0
pop.v.i self.attacktimer
pushi.e 1
pop.v.i self.attackcon
push.v self.arcade
conv.v.b
bf [1120]

:[1119]
pushi.e 302
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 307
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 308
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [1121]

:[1120]
pushi.e 160
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 221
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 179
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[1121]
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

:[1122]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
bf [1129]

:[1123]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
pushi.e 817
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flash
push.v self.sprite_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [1125]

:[1124]
push.v self.flash
pushi.e -9
dup.i 4
push.v [stacktop]self.image_xscale
pushi.e -1
mul.i.v
pop.i.v [stacktop]self.image_xscale

:[1125]
push.v self.image_blend
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_blend
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.id
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.boss
push.d 1.5
push.v self.flash
pushi.e -9
pop.v.d [stacktop]self.image_alpha
push.d 0.2
push.v self.flash
pushi.e -9
pop.v.d [stacktop]self.rate
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.hasboss
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [1127]

:[1126]
push.v self.vspeed
push.d 0.4
push.v self.f
mul.v.d
add.v.v
pop.v.v self.vspeed

:[1127]
push.v self.attacktimer
pushi.e 10
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1129]

:[1128]
pushi.e 2
pop.v.i self.attackcon

:[1129]
push.v self.attackcon
pushi.e 2
cmp.i.v EQ
bf [1138]

:[1130]
pushi.e 0
pop.v.i self.attack_succeeded
pushi.e 0
pop.v.i self.attacktimer
pushi.e 3
pop.v.i self.attackcon
pushi.e 780
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.punch_type
pushi.e 1
cmp.i.v EQ
bf [1134]

:[1131]
pushi.e 780
pushenv [1133]

:[1132]
pushi.e 1
pop.v.i self.variant

:[1133]
popenv [1132]

:[1134]
push.v self.punch_type
pushi.e 2
cmp.i.v EQ
bf [1138]

:[1135]
pushi.e 780
pushenv [1137]

:[1136]
pushi.e 2
pop.v.i self.variant

:[1137]
popenv [1136]

:[1138]
push.v self.attackcon
pushi.e 3
cmp.i.v EQ
bf [1142]

:[1139]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [1142]

:[1140]
push.v self.basey
pop.v.v self.y
pushi.e -20
pop.v.i self.x
pushi.e 0
pop.v.i self.vspeed
pushi.e 24
push.v self.f
mul.v.i
pop.v.v self.hspeed
push.v self.original_depth
pop.v.v self.depth
pushi.e 1
pop.v.i self.attack_succeeded
pushi.e 4
pop.v.i self.attackcon
push.v 777.phase3_hit_check
pushi.e 1
cmp.i.v EQ
bf [1142]

:[1141]
push.v 777.phase3_damage_multiplier
push.d 0.2
add.d.v
pop.v.v 777.phase3_damage_multiplier
pushi.e 0
pop.v.i 777.phase3_hit_check

:[1142]
push.v self.attackcon
pushi.e 4
cmp.i.v EQ
bf [1147]

:[1143]
push.v self.x
push.v self.basex
pushi.e 60
sub.i.v
cmp.v.v GTE
bf [1145]

:[1144]
pushi.e 200
conv.i.d
push.v self.f
div.v.d
pop.v.v self.makedizzy
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e -1
pop.v.i self.blocking

:[1145]
push.v self.x
push.v self.basex
pushi.e 10
sub.i.v
cmp.v.v GTE
bf [1147]

:[1146]
pushi.e 200
conv.i.d
push.v self.f
div.v.d
pop.v.v self.makedizzy
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 2099
pop.v.i self.sprite_index
push.v self.basex
pop.v.v self.x
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e -1
pop.v.i self.blocking
pushi.e 0
pop.v.i self.attacktimer
pushi.e 5
pop.v.i self.attackcon

:[1147]
push.v self.attackcon
pushi.e 5
cmp.i.v EQ
bf [1150]

:[1148]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 45
conv.i.d
push.v self.f
div.v.d
push.v self.attack_succeeded
pushi.e 45
mul.i.v
push.v self.f
div.v.v
sub.v.v
cmp.v.v GTE
bf [1150]

:[1149]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attack_succeeded
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[1150]
push.v self.attacktype
pushi.e 7
cmp.i.v EQ
bf [1369]

:[1151]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [1159]

:[1152]
pushi.e 3
pop.v.i self.vertical_laser_amount
pushi.e 2
pop.v.i self.horizontal_laser_amount
push.v self.punch_type
pushi.e 1
cmp.i.v EQ
bf [1154]

:[1153]
pushi.e 4
pop.v.i self.horizontal_laser_amount

:[1154]
pushi.e -1
pop.v.i self.blocking
pushi.e 2105
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
pushi.e 0
pop.v.i self.rand_fix
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [1156]

:[1155]
pushi.e -1
pop.v.i self.ff
pushi.e -4
pop.v.i self.hspeed
pushi.e -5
pop.v.i self.vspeed

:[1156]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [1158]

:[1157]
pushi.e 1
pop.v.i self.ff
pushi.e 4
pop.v.i self.hspeed
pushi.e -5
pop.v.i self.vspeed

:[1158]
pushi.e 0
pop.v.i self.attacktimer
pushi.e 1
pop.v.i self.attackcon

:[1159]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
bf [1352]

:[1160]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 10
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1162]

:[1161]
pushi.e 0
pop.v.i self.speed

:[1162]
push.v self.attacktimer
pushi.e 30
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1166]

:[1163]
push.v self.ff
pushi.e -1
cmp.i.v EQ
bf [1165]

:[1164]
pushi.e 2
pop.v.i self.hspeed
pushi.e -6
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.drawflip
b [1166]

:[1165]
pushi.e -2
pop.v.i self.hspeed
pushi.e -6
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.drawflip

:[1166]
push.v self.attacktimer
pushi.e 40
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1168]

:[1167]
push.v self.attacktimer
pushi.e 50
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
b [1169]

:[1168]
push.e 0

:[1169]
bf [1171]

:[1170]
pushi.e 0
pop.v.i self.speed

:[1171]
push.v self.attacktimer
pushi.e 50
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1173]

:[1172]
pushi.e 2123
pop.v.i self.sprite_index

:[1173]
push.v self.attacktimer
pushi.e 70
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1175]

:[1174]
pushi.e 2124
pop.v.i self.sprite_index
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 2123
pop.v.i self.sprite_index

:[1175]
push.v self.attacktimer
pushi.e 80
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1177]

:[1176]
push.v self.vertical_laser_amount
pushi.e 1
sub.i.v
pop.v.v self.vertical_laser_amount
pushi.e 2123
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d -0.5
pop.v.d self.vspeed
pushi.e 782
conv.i.v
push.v self.y
pushi.e 37
sub.i.v
push.v self.x
pushi.e 7
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[1177]
push.v self.attacktimer
pushi.e 80
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1179]

:[1178]
push.v self.attacktimer
pushi.e 110
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [1180]

:[1179]
push.e 0

:[1180]
bf [1182]

:[1181]
push.d -0.2
pop.v.d self.vspeed

:[1182]
push.v self.attacktimer
pushi.e 110
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1184]

:[1183]
push.v self.attacktimer
pushi.e 130
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
b [1185]

:[1184]
push.e 0

:[1185]
bf [1187]

:[1186]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.image_index
pushi.e 80
pop.v.i self.attacktimer

:[1187]
push.v self.attacktimer
pushi.e 160
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1221]

:[1188]
pushi.e 30
conv.i.v
call.i irandom(argc=1)
pop.v.v local.rand
push.v self.rand_fix
pushi.e 1
cmp.i.v EQ
bf [1190]

:[1189]
pushi.e 10
pushi.e 20
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v local.rand
b [1196]

:[1190]
push.v self.rand_fix
pushi.e 2
cmp.i.v EQ
bf [1194]

:[1191]
pushi.e 20
pushi.e 20
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v local.rand
pushloc.v local.rand
pushi.e 30
cmp.i.v GT
bf [1193]

:[1192]
pushi.e 5
pop.v.i local.rand

:[1193]
b [1196]

:[1194]
push.v self.rand_fix
pushi.e 3
cmp.i.v EQ
bf [1196]

:[1195]
pushi.e 20
conv.i.v
call.i irandom(argc=1)
pop.v.v local.rand

:[1196]
push.v self.rand_fix
pushi.e 0
cmp.i.v NEQ
bf [1212]

:[1197]
pushloc.v local.rand
pushi.e 10
cmp.i.v LT
bf [1201]

:[1198]
pushi.e -20
push.v self.f
mul.v.i
pop.v.v self.hspeed
push.v self.x
pushi.e 360
cmp.i.v GT
bf [1200]

:[1199]
pushi.e -40
push.v self.f
mul.v.i
pop.v.v self.hspeed

:[1200]
b [1211]

:[1201]
pushloc.v local.rand
pushi.e 10
cmp.i.v GTE
bf [1203]

:[1202]
pushloc.v local.rand
pushi.e 20
cmp.i.v LT
b [1204]

:[1203]
push.e 0

:[1204]
bf [1208]

:[1205]
pushi.e 20
push.v self.f
mul.v.i
pop.v.v self.hspeed
push.v self.x
pushi.e 280
cmp.i.v LT
bf [1207]

:[1206]
pushi.e 40
push.v self.f
mul.v.i
pop.v.v self.hspeed

:[1207]
b [1211]

:[1208]
pushloc.v local.rand
pushi.e 20
cmp.i.v GTE
bf [1211]

:[1209]
pushi.e -20
push.v self.f
mul.v.i
pop.v.v self.hspeed
push.v self.x
pushi.e 320
cmp.i.v LT
bf [1211]

:[1210]
pushi.e 20
push.v self.f
mul.v.i
pop.v.v self.hspeed

:[1211]
b [1221]

:[1212]
pushloc.v local.rand
pushi.e 10
cmp.i.v LT
bf [1214]

:[1213]
pushi.e 1
pop.v.i self.rand_fix
pushi.e -20
push.v self.f
mul.v.i
pop.v.v self.hspeed
pushi.e 2
push.v self.f
mul.v.i
pop.v.v self.vspeed
b [1221]

:[1214]
pushloc.v local.rand
pushi.e 10
cmp.i.v GTE
bf [1216]

:[1215]
pushloc.v local.rand
pushi.e 20
cmp.i.v LT
b [1217]

:[1216]
push.e 0

:[1217]
bf [1219]

:[1218]
pushi.e 2
pop.v.i self.rand_fix
pushi.e 20
push.v self.f
mul.v.i
pop.v.v self.hspeed
pushi.e 2
push.v self.f
mul.v.i
pop.v.v self.vspeed
b [1221]

:[1219]
pushloc.v local.rand
pushi.e 20
cmp.i.v GT
bf [1221]

:[1220]
pushi.e 3
pop.v.i self.rand_fix
pushi.e 3
push.v self.f
mul.v.i
pop.v.v self.vspeed

:[1221]
push.v self.attacktimer
pushi.e 160
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1224]

:[1222]
push.v self.attacktimer
pushi.e 166
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
bf [1224]

:[1223]
push.v self.hspeed
pushi.e 0
cmp.i.v NEQ
b [1225]

:[1224]
push.e 0

:[1225]
bf [1229]

:[1226]
pushi.e 817
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.afterimage
push.v self.sprite_index
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.hasboss
push.d 0.1
push.v self.afterimage
pushi.e -9
pop.v.d [stacktop]self.rate
pushi.e -2
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [1228]

:[1227]
pushi.e 2
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[1228]
pushi.e 2
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[1229]
push.v self.attacktimer
pushi.e 166
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1233]

:[1230]
pushi.e 0
pop.v.i self.speed
push.v self.vertical_laser_amount
pushi.e 1
cmp.i.v GT
bf [1232]

:[1231]
pushi.e 24
pop.v.i self.attacktimer
b [1233]

:[1232]
pushi.e 83
pop.v.i self.attacktimer

:[1233]
push.v self.attacktimer
pushi.e 170
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1235]

:[1234]
pushi.e 2123
pop.v.i self.sprite_index

:[1235]
push.v self.attacktimer
pushi.e 190
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1237]

:[1236]
pushi.e 2124
pop.v.i self.sprite_index
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 2123
pop.v.i self.sprite_index

:[1237]
push.v self.attacktimer
pushi.e 200
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1239]

:[1238]
pushi.e 2123
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d -0.5
pop.v.d self.vspeed
pushi.e 782
conv.i.v
push.v self.y
pushi.e 37
sub.i.v
push.v self.x
pushi.e 7
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[1239]
push.v self.attacktimer
pushi.e 200
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1241]

:[1240]
push.v self.attacktimer
pushi.e 260
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [1242]

:[1241]
push.e 0

:[1242]
bf [1244]

:[1243]
push.d -0.2
pop.v.d self.vspeed

:[1244]
push.v self.attacktimer
pushi.e 260
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1246]

:[1245]
pushi.e 0
pop.v.i self.speed
pushi.e 2105
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 140
pop.v.i self.attacktimer

:[1246]
push.v self.attacktimer
pushi.e 280
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1250]

:[1247]
pushi.e 20
conv.i.v
call.i irandom(argc=1)
pop.v.v local.rand
pushloc.v local.rand
pushi.e 10
cmp.i.v LT
bf [1249]

:[1248]
pushi.e -1
pop.v.i self.ff
pushi.e 70
conv.i.v
pushi.e 415
conv.i.v
pushi.e 60
conv.i.v
call.i move_towards_point(argc=3)
popz.v
pushi.e 0
pop.v.i self.drawflip
b [1250]

:[1249]
pushi.e 1
pop.v.i self.ff
pushi.e 70
conv.i.v
pushi.e 415
conv.i.v
pushi.e 580
conv.i.v
call.i move_towards_point(argc=3)
popz.v
pushi.e 1
pop.v.i self.drawflip

:[1250]
push.v self.attacktimer
pushi.e 280
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1253]

:[1251]
push.v self.attacktimer
pushi.e 400
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
bf [1253]

:[1252]
push.v self.hspeed
pushi.e 0
cmp.i.v NEQ
b [1254]

:[1253]
push.e 0

:[1254]
bt [1259]

:[1255]
push.v self.attacktimer
pushi.e 280
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1257]

:[1256]
push.v self.vspeed
pushi.e 0
cmp.i.v NEQ
b [1258]

:[1257]
push.e 0

:[1258]
b [1260]

:[1259]
push.e 1

:[1260]
bf [1276]

:[1261]
pushi.e 20
conv.i.v
call.i irandom(argc=1)
pop.v.v local.rand
push.v self.ff
pushi.e -1
cmp.i.v EQ
bf [1263]

:[1262]
push.v self.x
pushi.e 60
cmp.i.v LT
b [1264]

:[1263]
push.e 0

:[1264]
bf [1266]

:[1265]
pushi.e 0
pop.v.i self.hspeed
pushi.e 60
pop.v.i self.x

:[1266]
push.v self.ff
pushi.e 1
cmp.i.v EQ
bf [1268]

:[1267]
push.v self.x
pushi.e 580
cmp.i.v GT
b [1269]

:[1268]
push.e 0

:[1269]
bf [1271]

:[1270]
pushi.e 0
pop.v.i self.hspeed
pushi.e 580
pop.v.i self.x

:[1271]
push.v self.y
pushi.e 415
cmp.i.v GT
bf [1273]

:[1272]
pushi.e 0
pop.v.i self.vspeed
pushi.e 415
pop.v.i self.y

:[1273]
pushi.e 817
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.afterimage
push.v self.sprite_index
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.hasboss
push.d 0.4
push.v self.afterimage
pushi.e -9
pop.v.d [stacktop]self.rate
pushi.e -2
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [1275]

:[1274]
pushi.e 2
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[1275]
pushi.e 2
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 320
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer

:[1276]
push.v self.attacktimer
pushi.e 320
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1279]

:[1277]
push.v self.vspeed
pushi.e 0
cmp.i.v EQ
bf [1279]

:[1278]
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
b [1280]

:[1279]
push.e 0

:[1280]
bf [1282]

:[1281]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 328
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer

:[1282]
push.v self.attacktimer
pushi.e 330
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1285]

:[1283]
push.v self.vspeed
pushi.e 0
cmp.i.v EQ
bf [1285]

:[1284]
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
b [1286]

:[1285]
push.e 0

:[1286]
bf [1291]

:[1287]
pushi.e 2125
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.v self.ff
pushi.e 1
cmp.i.v EQ
bf [1289]

:[1288]
pushi.e 0
pop.v.i self.drawflip
b [1290]

:[1289]
pushi.e 1
pop.v.i self.drawflip

:[1290]
pushi.e 784
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[1291]
push.v self.attacktimer
pushi.e 330
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1295]

:[1292]
push.v self.attacktimer
pushi.e 374
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
bf [1295]

:[1293]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [1295]

:[1294]
pushi.e 782
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [1296]

:[1295]
push.e 0

:[1296]
bf [1298]

:[1297]
pushi.e 782
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.circle
pushi.e 1
push.v self.circle
pushi.e -9
pop.v.i [stacktop]self.horizontal
push.v self.horizontal_laser_amount
pushi.e 1
sub.i.v
pop.v.v self.horizontal_laser_amount
pushi.e 430
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer

:[1298]
push.v self.attacktimer
pushi.e 450
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1305]

:[1299]
pushi.e 2101
pop.v.i self.sprite_index
push.v self.image_index
push.d 0.2
add.d.v
pop.v.v self.image_index
push.v self.path
call.i path_exists(argc=1)
conv.v.b
bf [1301]

:[1300]
push.v self.path
call.i path_delete(argc=1)
popz.v

:[1301]
push.v self.x
pushi.e 320
cmp.i.v LT
bf [1303]

:[1302]
call.i path_add(argc=0)
pop.v.v self.path
pushi.e 1
conv.i.v
push.v self.path
call.i path_set_kind(argc=2)
popz.v
pushi.e 0
conv.b.v
push.v self.path
call.i path_set_closed(argc=2)
popz.v
pushi.e 100
conv.i.v
push.v self.y
push.v self.x
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 300
conv.i.v
pushi.e 320
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
push.v self.y
pushi.e 580
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 40
conv.i.v
push.v self.path
call.i path_start(argc=4)
popz.v
b [1304]

:[1303]
call.i path_add(argc=0)
pop.v.v self.path
pushi.e 1
conv.i.v
push.v self.path
call.i path_set_kind(argc=2)
popz.v
pushi.e 0
conv.b.v
push.v self.path
call.i path_set_closed(argc=2)
popz.v
pushi.e 100
conv.i.v
push.v self.y
push.v self.x
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 300
conv.i.v
pushi.e 320
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
push.v self.y
pushi.e 60
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 40
conv.i.v
push.v self.path
call.i path_start(argc=4)
popz.v

:[1304]
pushi.e 150
conv.i.d
push.v self.f
div.v.d
pop.v.v self.makedizzy

:[1305]
push.v self.attacktimer
pushi.e 450
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1307]

:[1306]
push.v self.attacktimer
pushi.e 496
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [1308]

:[1307]
push.e 0

:[1308]
bf [1315]

:[1309]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [1311]

:[1310]
push.v self.x
pushi.e 380
cmp.i.v LT
b [1312]

:[1311]
push.e 0

:[1312]
bf [1314]

:[1313]
pushi.e -1
pop.v.i self.blocking
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
b [1315]

:[1314]
pushi.e -1
pop.v.i self.blocking
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r

:[1315]
push.v self.attacktimer
pushi.e 470
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1318]

:[1316]
push.v self.attacktimer
pushi.e 496
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
bf [1318]

:[1317]
push.v self.path_index
pushi.e -1
cmp.i.v EQ
b [1319]

:[1318]
push.e 0

:[1319]
bf [1336]

:[1320]
push.v self.x
pushi.e 70
cmp.i.v LT
bf [1322]

:[1321]
push.v self.path_index
pushi.e -1
cmp.i.v EQ
b [1323]

:[1322]
push.e 0

:[1323]
bf [1328]

:[1324]
pushi.e 0
pop.v.i self.hspeed
pushi.e 60
pop.v.i self.x
pushi.e 2125
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.v self.x
pushi.e 320
cmp.i.v LT
bf [1326]

:[1325]
pushi.e 1
pop.v.i self.drawflip
b [1327]

:[1326]
pushi.e 0
pop.v.i self.drawflip

:[1327]
pushi.e 496
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer

:[1328]
push.v self.x
pushi.e 570
cmp.i.v GT
bf [1330]

:[1329]
push.v self.path_index
pushi.e -1
cmp.i.v EQ
b [1331]

:[1330]
push.e 0

:[1331]
bf [1336]

:[1332]
pushi.e 0
pop.v.i self.hspeed
pushi.e 580
pop.v.i self.x
pushi.e 2125
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.v self.x
pushi.e 320
cmp.i.v LT
bf [1334]

:[1333]
pushi.e 1
pop.v.i self.drawflip
b [1335]

:[1334]
pushi.e 0
pop.v.i self.drawflip

:[1335]
pushi.e 496
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer

:[1336]
push.v self.attacktimer
pushi.e 496
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1338]

:[1337]
pushi.e 784
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[1338]
push.v self.attacktimer
pushi.e 496
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1342]

:[1339]
push.v self.attacktimer
pushi.e 545
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
bf [1342]

:[1340]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [1342]

:[1341]
pushi.e 782
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [1343]

:[1342]
push.e 0

:[1343]
bf [1346]

:[1344]
pushi.e 782
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.circle
pushi.e 1
push.v self.circle
pushi.e -9
pop.v.i [stacktop]self.horizontal
push.v self.horizontal_laser_amount
pushi.e 1
sub.i.v
pop.v.v self.horizontal_laser_amount
push.v self.horizontal_laser_amount
pushi.e 0
cmp.i.v GT
bf [1346]

:[1345]
pushi.e 430
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer

:[1346]
push.v self.attacktimer
pushi.e 570
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1350]

:[1347]
push.v self.x
pushi.e 320
cmp.i.v LT
bf [1349]

:[1348]
pushi.e -20
pop.v.i self.hspeed
b [1350]

:[1349]
pushi.e 20
pop.v.i self.hspeed

:[1350]
push.v self.attacktimer
pushi.e 576
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1352]

:[1351]
pushi.e 3
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer

:[1352]
push.v self.attackcon
pushi.e 3
cmp.i.v EQ
bf [1358]

:[1353]
push.v self.basey
pop.v.v self.y
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [1355]

:[1354]
pushi.e -20
pop.v.i self.x
pushi.e 24
push.v self.f
mul.v.i
pop.v.v self.hspeed

:[1355]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [1357]

:[1356]
pushi.e 660
pop.v.i self.x
pushi.e -24
push.v self.f
mul.v.i
pop.v.v self.hspeed

:[1357]
pushi.e 0
pop.v.i self.vspeed
push.v self.original_depth
pop.v.v self.depth
pushi.e 1
pop.v.i self.attack_succeeded
pushi.e 4
pop.v.i self.attackcon

:[1358]
push.v self.attackcon
pushi.e 4
cmp.i.v EQ
bf [1366]

:[1359]
push.v self.x
push.v self.basex
pushi.e 60
sub.i.v
cmp.v.v GTE
bf [1361]

:[1360]
pushi.e 200
conv.i.d
push.v self.f
div.v.d
pop.v.v self.makedizzy
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e -1
pop.v.i self.blocking

:[1361]
push.v self.x
push.v self.basex
pushi.e 10
sub.i.v
cmp.v.v GTE
bf [1363]

:[1362]
push.v self.x
push.v self.basex
pushi.e 10
add.i.v
cmp.v.v LTE
b [1364]

:[1363]
push.e 0

:[1364]
bf [1366]

:[1365]
pushi.e 200
conv.i.d
push.v self.f
div.v.d
pop.v.v self.makedizzy
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 2099
pop.v.i self.sprite_index
push.v self.basex
pop.v.v self.x
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e -1
pop.v.i self.blocking
pushi.e 0
pop.v.i self.attacktimer
pushi.e 5
pop.v.i self.attackcon

:[1366]
push.v self.attackcon
pushi.e 5
cmp.i.v EQ
bf [1369]

:[1367]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 45
conv.i.d
push.v self.f
div.v.d
push.v self.attack_succeeded
pushi.e 45
mul.i.v
push.v self.f
div.v.v
sub.v.v
cmp.v.v GTE
bf [1369]

:[1368]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attack_succeeded
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[1369]
push.v self.attacktype
pushi.e 8
cmp.i.v EQ
bf [1674]

:[1370]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [1389]

:[1371]
push.v self.punch_type
pushi.e 1
cmp.i.v EQ
bf [1373]

:[1372]
pushi.e 1
pop.v.i self.baseball_amount

:[1373]
push.v self.punch_type
pushi.e 2
cmp.i.v EQ
bf [1375]

:[1374]
pushi.e 2
pop.v.i self.baseball_amount

:[1375]
push.v self.punch_type
pushi.e 3
cmp.i.v EQ
bf [1377]

:[1376]
pushi.e 3
pop.v.i self.baseball_amount

:[1377]
push.v self.punch_type
pushi.e 4
cmp.i.v EQ
bf [1379]

:[1378]
pushi.e 3
pop.v.i self.baseball_amount

:[1379]
pushi.e -1
pop.v.i self.blocking
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
push.v self.arcadebaseballused
push.e 1
add.i.v
pop.v.v self.arcadebaseballused
pushi.e 0
pop.v.i self.attacktimer
pushi.e 0
pop.v.i 777.hit_baseball
pushi.e 0
pop.v.i self.baseball_hit_boss_number
pushi.e -24
pop.v.i self.baseball_timer
pushi.e 2125
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1381]

:[1380]
pushi.e 2142
pop.v.i self.sprite_index

:[1381]
pushi.e 0
pop.v.i self.image_index
push.v self.basey
pop.v.v self.y
pushi.e -32
pop.v.i self.vspeed
push.d 1.655
pop.v.d self.friction
push.v self.first_normal_baseball_throw
pushi.e 1
cmp.i.v EQ
bt [1383]

:[1382]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
b [1384]

:[1383]
push.e 1

:[1384]
bf [1386]

:[1385]
push.d -48.338
pop.v.d self.vspeed
push.d 2.5
pop.v.d self.friction

:[1386]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [1388]

:[1387]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.vspeed
add.v.v
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[1388]
pushi.e 0
pop.v.i self.drawflip
pushi.e 1
pop.v.i 842.hide_ui
pushi.e 1
pop.v.i self.attackcon

:[1389]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
bf [1410]

:[1390]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.first_normal_baseball_throw
pushi.e 0
cmp.i.v EQ
bf [1392]

:[1391]
pushi.e 40
conv.i.d
push.v self.f
div.v.d
pop.v.v local.end_attack_con_timer

:[1392]
push.v self.first_normal_baseball_throw
pushi.e 1
cmp.i.v EQ
bt [1394]

:[1393]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
b [1395]

:[1394]
push.e 1

:[1395]
bf [1397]

:[1396]
pushi.e 30
conv.i.d
push.v self.f
div.v.d
pop.v.v local.end_attack_con_timer

:[1397]
push.v self.attacktimer
pushloc.v local.end_attack_con_timer
cmp.v.v LT
bf [1402]

:[1398]
push.v self.vspeed
pushi.e 3
add.i.v
pop.v.v local.cam_speed
pushloc.v local.cam_speed
pushi.e 0
cmp.i.v GT
bf [1400]

:[1399]
pushi.e 0
pop.v.i local.cam_speed

:[1400]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [1402]

:[1401]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushloc.v local.cam_speed
add.v.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[1402]
push.v self.attacktimer
pushloc.v local.end_attack_con_timer
cmp.v.v GT
bf [1405]

:[1403]
pushi.e 3
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer
pushi.e 2125
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1405]

:[1404]
pushi.e 2142
pop.v.i self.sprite_index

:[1405]
push.v self.attacktimer
pushi.e 20
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1407]

:[1406]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
b [1408]

:[1407]
push.e 0

:[1408]
bf [1410]

:[1409]
push.v self.baseball_amount
pushi.e 1
sub.i.v
pop.v.v self.baseball_amount
pushi.e 788
conv.i.v
pushi.e -20
conv.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.baseball

:[1410]
push.v self.attackcon
pushi.e 3
cmp.i.v EQ
bf [1667]

:[1411]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 2
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1417]

:[1412]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [1416]

:[1413]
push.v self.arcade
conv.v.b
bf [1415]

:[1414]
pushi.e 315
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [1416]

:[1415]
pushi.e 154
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[1416]
pushi.e 1
pop.v.i self.specialcon
pushi.e 54
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer

:[1417]
push.v self.attacktimer
pushi.e 56
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1427]

:[1418]
pushi.e 2126
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1420]

:[1419]
pushi.e 2143
pop.v.i self.sprite_index

:[1420]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 2125
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1422]

:[1421]
pushi.e 2142
pop.v.i self.sprite_index

:[1422]
push.v self.first_normal_baseball_throw
pushi.e 1
cmp.i.v EQ
bt [1424]

:[1423]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
b [1425]

:[1424]
push.e 1

:[1425]
bf [1427]

:[1426]
push.d 0.4
pop.v.d 817.rate
pushi.e 80
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer

:[1427]
push.v self.attacktimer
pushi.e 82
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1429]

:[1428]
push.v self.attacktimer
pushi.e 86
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [1430]

:[1429]
push.e 0

:[1430]
bf [1434]

:[1431]
pushi.e 2112
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1433]

:[1432]
pushi.e 2137
pop.v.i self.sprite_index

:[1433]
pushi.e 1
pop.v.i self.image_index

:[1434]
push.v self.attacktimer
pushi.e 86
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1438]

:[1435]
pushi.e 2112
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1437]

:[1436]
pushi.e 2137
pop.v.i self.sprite_index

:[1437]
pushi.e 2
pop.v.i self.image_index

:[1438]
push.v self.attacktimer
pushi.e 90
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1440]

:[1439]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [1441]

:[1440]
push.e 0

:[1441]
bf [1453]

:[1442]
push.v self.baseball_amount
pushi.e 1
sub.i.v
pop.v.v self.baseball_amount
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [1444]

:[1443]
pushi.e 788
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 5
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.baseball

:[1444]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [1446]

:[1445]
pushi.e 788
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 5
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.baseball

:[1446]
push.v self.punch_type
pushi.e 1
cmp.i.v EQ
bf [1448]

:[1447]
pushi.e 18
conv.i.d
push.v self.f
div.v.d
push.v self.baseball
pushi.e -9
pop.v.v [stacktop]self.vspeed

:[1448]
push.v self.punch_type
pushi.e 4
cmp.i.v EQ
bf [1450]

:[1449]
pushi.e 10
conv.i.v
call.i irandom(argc=1)
pushi.e 5
cmp.i.v LT
b [1451]

:[1450]
push.e 0

:[1451]
bf [1453]

:[1452]
pushi.e 18
conv.i.d
push.v self.f
div.v.d
push.v self.baseball
pushi.e -9
pop.v.v [stacktop]self.vspeed

:[1453]
push.v self.attacktimer
pushi.e 90
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1455]

:[1454]
push.v self.attacktimer
pushi.e 194
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [1456]

:[1455]
push.e 0

:[1456]
bf [1472]

:[1457]
pushi.e 5
push.v self.f
mul.v.i
pop.v.v local.cam_vspeed
pushi.e 788
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [1459]

:[1458]
push.v 788.vspeed
pushi.e 12
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
b [1460]

:[1459]
push.e 0

:[1460]
bf [1462]

:[1461]
pushi.e 11
push.v self.f
mul.v.i
pop.v.v local.cam_vspeed

:[1462]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
cmp.i.v LT
bf [1464]

:[1463]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [1465]

:[1464]
push.e 0

:[1465]
bf [1467]

:[1466]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushloc.v local.cam_vspeed
add.v.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[1467]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
cmp.i.v GT
bf [1469]

:[1468]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [1470]

:[1469]
push.e 0

:[1470]
bf [1472]

:[1471]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[1472]
push.v self.attacktimer
pushi.e 194
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1474]

:[1473]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[1474]
push.v self.attacktimer
pushi.e 90
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1477]

:[1475]
push.v self.attacktimer
pushi.e 194
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
bf [1477]

:[1476]
push.v self.baseball_amount
pushi.e 0
cmp.i.v GT
b [1478]

:[1477]
push.e 0

:[1478]
bf [1499]

:[1479]
pushi.e 788
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [1499]

:[1480]
push.v self.baseball_amount
pushi.e 1
sub.i.v
pop.v.v self.baseball_amount
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [1482]

:[1481]
pushi.e 788
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 5
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.baseball

:[1482]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [1484]

:[1483]
pushi.e 788
conv.i.v
push.v self.y
pushi.e 70
add.i.v
push.v self.x
pushi.e 5
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.baseball

:[1484]
push.v self.punch_type
pushi.e 1
cmp.i.v EQ
bf [1486]

:[1485]
pushi.e 20
conv.i.d
push.v self.f
div.v.d
push.v self.baseball
pushi.e -9
pop.v.v [stacktop]self.vspeed

:[1486]
push.v self.punch_type
pushi.e 4
cmp.i.v EQ
bf [1488]

:[1487]
pushi.e 10
conv.i.v
call.i irandom(argc=1)
pushi.e 5
cmp.i.v LT
b [1489]

:[1488]
push.e 0

:[1489]
bf [1491]

:[1490]
pushi.e 20
conv.i.d
push.v self.f
div.v.d
push.v self.baseball
pushi.e -9
pop.v.v [stacktop]self.vspeed

:[1491]
push.v self.first_normal_baseball_throw
pushi.e 1
cmp.i.v EQ
bf [1499]

:[1492]
pushi.e 34
conv.i.d
push.v self.f
div.v.d
push.v self.baseball
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.v self.punch_type
pushi.e 1
cmp.i.v EQ
bf [1494]

:[1493]
pushi.e 34
conv.i.d
push.v self.f
div.v.d
push.v self.baseball
pushi.e -9
pop.v.v [stacktop]self.vspeed

:[1494]
push.v self.punch_type
pushi.e 4
cmp.i.v EQ
bf [1496]

:[1495]
pushi.e 10
conv.i.v
call.i irandom(argc=1)
pushi.e 5
cmp.i.v LT
b [1497]

:[1496]
push.e 0

:[1497]
bf [1499]

:[1498]
pushi.e 34
conv.i.d
push.v self.f
div.v.d
push.v self.baseball
pushi.e -9
pop.v.v [stacktop]self.vspeed

:[1499]
push.v self.attacktimer
pushi.e 194
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1502]

:[1500]
pushi.e 788
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [1502]

:[1501]
push.v 777.dead
pushi.e 0
cmp.i.v EQ
b [1503]

:[1502]
push.e 0

:[1503]
bt [1509]

:[1504]
push.v self.attacktimer
pushi.e 194
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1507]

:[1505]
push.v self.baseball_amount
pushi.e 0
cmp.i.v GT
bf [1507]

:[1506]
push.v 777.dead
pushi.e 0
cmp.i.v EQ
b [1508]

:[1507]
push.e 0

:[1508]
b [1510]

:[1509]
push.e 1

:[1510]
bf [1512]

:[1511]
pushi.e 188
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer

:[1512]
push.v self.attacktimer
pushi.e 90
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1516]

:[1513]
push.v self.attacktimer
pushi.e 194
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
bf [1516]

:[1514]
pushi.e 788
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [1516]

:[1515]
push.v self.baseball_amount
pushi.e 1
cmp.i.v LT
b [1517]

:[1516]
push.e 0

:[1517]
bt [1523]

:[1518]
push.v self.attacktimer
pushi.e 194
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
bf [1521]

:[1519]
push.v 777.dead
pushi.e 1
cmp.i.v EQ
bf [1521]

:[1520]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [1522]

:[1521]
push.e 0

:[1522]
b [1524]

:[1523]
push.e 1

:[1524]
bf [1526]

:[1525]
pushi.e 194
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer

:[1526]
push.v 777.dead
pushi.e 1
cmp.i.v EQ
bf [1530]

:[1527]
pushi.e 788
pushenv [1529]

:[1528]
pushi.e -9999
pop.v.i self.x

:[1529]
popenv [1528]

:[1530]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1545]

:[1531]
push.v self.attacktimer
pushi.e 196
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1535]

:[1532]
pushi.e 2101
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1534]

:[1533]
pushi.e 2140
pop.v.i self.sprite_index

:[1534]
push.v self.image_index
push.d 0.2
add.d.v
pop.v.v self.image_index
pushi.e -2
pop.v.i self.y
pushi.e 5
pop.v.i self.gravity

:[1535]
push.v self.attacktimer
pushi.e 220
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1537]

:[1536]
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r

:[1537]
push.v self.attacktimer
pushi.e 196
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1540]

:[1538]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [1540]

:[1539]
push.v self.y
push.v self.basey
pushi.e 39
sub.i.v
cmp.v.v GT
b [1541]

:[1540]
push.e 0

:[1541]
bf [1543]

:[1542]
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
push.v self.basey
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity

:[1543]
push.v self.attacktimer
pushi.e 260
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1545]

:[1544]
push.v self.basex
pop.v.v self.x
pushi.e 4
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer

:[1545]
push.v 777.hit_baseball
pushi.e 0
cmp.i.v EQ
bf [1547]

:[1546]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [1548]

:[1547]
push.e 0

:[1548]
bf [1570]

:[1549]
push.v self.attacktimer
pushi.e 196
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1557]

:[1550]
push.v 777.dead
pushi.e 0
cmp.i.v EQ
bf [1554]

:[1551]
push.v self.arcade
conv.v.b
bf [1553]

:[1552]
pushi.e 305
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [1554]

:[1553]
pushi.e 293
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[1554]
pushi.e 2101
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1556]

:[1555]
pushi.e 2140
pop.v.i self.sprite_index

:[1556]
push.v self.image_index
push.d 0.2
add.d.v
pop.v.v self.image_index
pushi.e 200
pop.v.i self.x
pushi.e -2
pop.v.i self.y
pushi.e 5
pop.v.i self.gravity

:[1557]
push.v self.attacktimer
pushi.e 196
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1560]

:[1558]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [1560]

:[1559]
push.v self.y
push.v self.basey
pushi.e 39
sub.i.v
cmp.v.v GT
b [1561]

:[1560]
push.e 0

:[1561]
bf [1563]

:[1562]
push.v self.basey
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 2
pop.v.i 842.hide_ui

:[1563]
push.v self.attacktimer
pushi.e 260
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1565]

:[1564]
pushi.e 32
pop.v.i self.hspeed

:[1565]
push.v self.attacktimer
pushi.e 260
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1567]

:[1566]
push.v self.x
push.v self.basex
pushi.e 31
sub.i.v
cmp.v.v GT
b [1568]

:[1567]
push.e 0

:[1568]
bf [1570]

:[1569]
push.v self.basex
pop.v.v self.x
pushi.e 4
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer

:[1570]
push.v 777.hit_baseball
pushi.e 0
cmp.i.v GT
bf [1572]

:[1571]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [1573]

:[1572]
push.e 0

:[1573]
bf [1667]

:[1574]
push.v self.attacktimer
pushi.e 196
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1581]

:[1575]
push.v self.arcade
conv.v.b
bf [1577]

:[1576]
pushi.e 305
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [1578]

:[1577]
pushi.e 293
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[1578]
pushi.e 2101
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1580]

:[1579]
pushi.e 2140
pop.v.i self.sprite_index

:[1580]
push.v self.image_index
push.d 0.2
add.d.v
pop.v.v self.image_index
pushi.e -2
pop.v.i self.y
pushi.e 5
pop.v.i self.gravity
pushi.e 200
pop.v.i self.x
pushi.e 2
pop.v.i 842.hide_ui

:[1581]
push.v self.attacktimer
pushi.e 196
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1584]

:[1582]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [1584]

:[1583]
push.v self.y
push.v self.basey
pushi.e 23
sub.i.v
cmp.v.v GT
b [1585]

:[1584]
push.e 0

:[1585]
bf [1587]

:[1586]
push.v self.basey
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity

:[1587]
push.v self.attacktimer
pushi.e 200
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1590]

:[1588]
push.v self.vspeed
pushi.e 0
cmp.i.v EQ
bf [1590]

:[1589]
pushi.e 790
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [1591]

:[1590]
push.e 0

:[1591]
bf [1593]

:[1592]
pushi.e 790
conv.i.v
pushi.e -40
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[1593]
push.v self.attacktimer
pushi.e 210
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1596]

:[1594]
pushi.e 790
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [1596]

:[1595]
push.v 790.state
pushi.e 1
cmp.i.v EQ
b [1597]

:[1596]
push.e 0

:[1597]
bf [1667]

:[1598]
push.v 777.boxingtimer
pushi.e 15
cmp.i.v LT
bf [1600]

:[1599]
pushi.e 15
pop.v.i 777.boxingtimer

:[1600]
push.v self.baseball_hit_boss_number
pushi.e 1
add.i.v
pop.v.v self.baseball_hit_boss_number
pushi.e 32
pop.v.i self.hspeed
push.v 842.sub_healthbar_count
pushi.e 2
cmp.i.v EQ
bf [1602]

:[1601]
push.v self.health_count
pushi.e 300
sub.i.v
pop.v.v self.health_count

:[1602]
push.v 842.sub_healthbar_count
pushi.e 2
cmp.i.v NEQ
bf [1604]

:[1603]
push.v self.health_count
pushi.e 80
sub.i.v
pop.v.v self.health_count

:[1604]
push.v self.health_count
pushi.e 1
cmp.i.v LT
bf [1606]

:[1605]
pushi.e 1
pop.v.i self.health_count

:[1606]
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e -1
pop.v.i self.blocking
pushi.e 200
conv.i.d
push.v self.f
div.v.d
pop.v.v self.makedizzy
pushi.e 1
pop.v.i self.first_normal_baseball_throw
pushi.e 100
pop.v.i 842.healthbar_flash
push.v 789.health_count_prev_timer_set
pop.v.v 789.health_count_prev_timer
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bf [1608]

:[1607]
pushi.e 1
pop.v.i 789.drawflip

:[1608]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [1610]

:[1609]
pushi.e 0
pop.v.i 789.drawflip

:[1610]
pushi.e 0
pop.v.i self.hitanim
push.v self.arcade
conv.v.b
bf [1612]

:[1611]
pushi.e 304
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.punchnoise
pushi.e 316
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [1613]

:[1612]
pushi.e 117
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.punchnoise
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[1613]
push.v self.dizzytimer
pushi.e 0
cmp.i.v LTE
bf [1615]

:[1614]
push.v self.noattack
pushi.e 1
add.i.v
pop.v.v self.noattack
b [1619]

:[1615]
push.v self.arcade
conv.v.b
bf [1617]

:[1616]
pushi.e 303
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [1618]

:[1617]
pushi.e 115
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[1618]
push.d 0.8
conv.d.v
push.v self.punchnoise
call.i audio_sound_pitch(argc=2)
popz.v

:[1619]
pushi.e -1
pop.v.i self.blocking
pushi.e 0
pop.v.i self.image_index
pushi.e 2115
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1621]

:[1620]
pushi.e 2114
pop.v.i self.sprite_index

:[1621]
pushi.e 0
pop.v.i self.enddizzy
push.v self.makedizzy
pushi.e 0
cmp.i.v GT
bf [1625]

:[1622]
push.v self.makedizzy
pop.v.v self.dizzytimer
push.v 777.flameactive
pushi.e 1
cmp.i.v EQ
bf [1624]

:[1623]
push.v self.makedizzy
push.d 1.5
mul.d.v
pop.v.v self.dizzytimer

:[1624]
pushi.e 0
pop.v.i self.makedizzy
b [1626]

:[1625]
push.v self.dizzytimer
pushi.e 20
sub.i.v
pop.v.v self.dizzytimer

:[1626]
push.v self.dizzytimer
pushi.e 0
cmp.i.v GT
bf [1628]

:[1627]
push.v self.dizzytimer
pushi.e 60
cmp.i.v LTE
b [1629]

:[1628]
push.e 0

:[1629]
bf [1631]

:[1630]
pushi.e 0
pop.v.i self.dizzytimer
pushi.e 1
pop.v.i self.enddizzy

:[1631]
push.v self.dizzytimer
pushi.e 0
cmp.i.v GT
bf [1634]

:[1632]
pushi.e 2119
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1634]

:[1633]
pushi.e 2145
pop.v.i self.sprite_index

:[1634]
push.v self.drawflip
pushi.e 0
cmp.i.v EQ
bt [1636]

:[1635]
push.v self.drawflip
pushi.e -1
cmp.i.v EQ
b [1637]

:[1636]
push.e 1

:[1637]
bf [1643]

:[1638]
push.v self.dizzytimer
pushi.e 60
cmp.i.v GTE
bf [1640]

:[1639]
pushi.e 1
pop.v.i self.hitanim
b [1641]

:[1640]
pushi.e 2
pop.v.i self.hitnaim

:[1641]
push.v self.enddizzy
pushi.e 1
cmp.i.v EQ
bf [1643]

:[1642]
pushi.e 3
pop.v.i self.hitanim

:[1643]
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [1649]

:[1644]
push.v self.dizzytimer
pushi.e 60
cmp.i.v GTE
bf [1646]

:[1645]
pushi.e -1
pop.v.i self.hitanim
b [1647]

:[1646]
pushi.e -2
pop.v.i self.hitanim

:[1647]
push.v self.enddizzy
pushi.e 1
cmp.i.v EQ
bf [1649]

:[1648]
pushi.e -3
pop.v.i self.hitanim

:[1649]
push.v self.hitanim
pushi.e 3
cmp.i.v EQ
bt [1651]

:[1650]
push.v self.hitanim
pushi.e -3
cmp.i.v EQ
b [1652]

:[1651]
push.e 1

:[1652]
bf [1654]

:[1653]
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

:[1654]
push.v self.hitanim
pushi.e 1
cmp.i.v EQ
bt [1656]

:[1655]
push.v self.hitanim
pushi.e -1
cmp.i.v EQ
b [1657]

:[1656]
push.e 1

:[1657]
bf [1659]

:[1658]
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

:[1659]
push.v self.hitanim
pushi.e 2
cmp.i.v EQ
bt [1661]

:[1660]
push.v self.hitanim
pushi.e -2
cmp.i.v EQ
b [1662]

:[1661]
push.e 1

:[1662]
bf [1664]

:[1663]
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

:[1664]
push.v self.hitanim
pushi.e 0
cmp.i.v EQ
bf [1666]

:[1665]
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_move_precise(argc=3)
popz.v

:[1666]
pushi.e 0
pop.v.i self.hurttimer
pushi.e 1
pop.v.i self.state
pushi.e 0
pop.v.i self.friction

:[1667]
push.v self.attackcon
pushi.e 4
cmp.i.v EQ
bf [1671]

:[1668]
pushi.e 1
pop.v.i self.attack_succeeded
pushi.e 200
conv.i.d
push.v self.f
div.v.d
pop.v.v self.makedizzy
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 2099
pop.v.i self.sprite_index
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [1670]

:[1669]
pushi.e 2147
pop.v.i self.sprite_index

:[1670]
push.v self.basex
pop.v.v self.x
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e -1
pop.v.i self.blocking
pushi.e 0
pop.v.i self.attacktimer
pushi.e 5
pop.v.i self.attackcon

:[1671]
push.v self.attackcon
pushi.e 5
cmp.i.v EQ
bf [1674]

:[1672]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 45
conv.i.d
push.v self.f
div.v.d
push.v self.attack_succeeded
pushi.e 45
mul.i.v
push.v self.f
div.v.v
sub.v.v
cmp.v.v GTE
bf [1674]

:[1673]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.friction
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attack_succeeded
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[1674]
push.v self.attacktype
pushi.e 9
cmp.i.v EQ
bf [1887]

:[1675]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [1677]

:[1676]
pushi.e 1
pop.v.i self.baseball_amount
pushi.e 0
pop.v.i self.attacktimer
pushi.e -1
pop.v.i self.blocking
pushi.e 1
pop.v.i self.invincible_l
pushi.e 1
pop.v.i self.invincible_r
pushi.e 0
pop.v.i 777.hit_baseball
pushi.e 0
pop.v.i self.baseball_hit_boss_number
pushi.e -24
pop.v.i self.baseball_timer
pushi.e 2127
pop.v.i self.sprite_index
push.v self.basey
pop.v.v self.y
pushi.e -26
push.v self.f
mul.v.i
pop.v.v self.vspeed
push.d 2.2
pop.v.d self.friction
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.vspeed
add.v.v
pushi.e 3
add.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 0
pop.v.i self.drawflip
pushi.e 1
pop.v.i 842.hide_ui
pushi.e 1
pop.v.i self.attackcon

:[1677]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
bf [1684]

:[1678]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 46
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
bf [1682]

:[1679]
push.v self.vspeed
pushi.e 1
sub.i.v
pop.v.v local.cam_speed
pushloc.v local.cam_speed
pushi.e 0
cmp.i.v GT
bf [1681]

:[1680]
pushi.e 0
pop.v.i local.cam_speed

:[1681]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushloc.v local.cam_speed
add.v.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[1682]
push.v self.attacktimer
pushi.e 46
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1684]

:[1683]
pushi.e 3
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer

:[1684]
push.v self.attackcon
pushi.e 3
cmp.i.v EQ
bf [1882]

:[1685]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.attacktimer
pushi.e 2
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1692]

:[1686]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [1691]

:[1687]
push.v self.arcade
conv.v.b
bf [1689]

:[1688]
pushi.e 315
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [1690]

:[1689]
pushi.e 154
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[1690]
pushi.e 1
conv.i.v
pushi.e 154
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[1691]
pushi.e 2
pop.v.i self.specialcon
pushi.e 50
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer

:[1692]
push.v self.attacktimer
pushi.e 52
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1694]

:[1693]
pushi.e 791
conv.i.v
push.v self.y
pushi.e 320
sub.i.v
push.v self.x
pushi.e 5
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 820
conv.i.v
push.v self.y
pushi.e 320
sub.i.v
push.v self.x
pushi.e 5
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.charge
pushi.e 50
conv.i.v
push.v self.charge
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm

:[1694]
push.v self.attacktimer
pushi.e 56
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1697]

:[1695]
pushi.e 791
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [1697]

:[1696]
push.v 791.image_xscale
pushi.e 6
cmp.i.v LT
b [1698]

:[1697]
push.e 0

:[1698]
bf [1700]

:[1699]
push.v self.attacktimer
pushi.e 1
sub.i.v
pop.v.v self.attacktimer

:[1700]
push.v self.attacktimer
pushi.e 56
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1702]

:[1701]
pushi.e 2128
pop.v.i self.sprite_index
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 2127
pop.v.i self.sprite_index

:[1702]
push.v self.attacktimer
pushi.e 82
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1704]

:[1703]
push.v self.attacktimer
pushi.e 86
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [1705]

:[1704]
push.e 0

:[1705]
bf [1707]

:[1706]
pushi.e 2112
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index

:[1707]
push.v self.attacktimer
pushi.e 86
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1709]

:[1708]
pushi.e 2112
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_index

:[1709]
push.v self.attacktimer
pushi.e 90
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1711]

:[1710]
pushi.e 8
conv.i.d
push.v self.f
div.v.d
pop.v.v 791.vspeed
pushi.e 0
pop.v.i 791.hit
pushi.e 9
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_snd_loop(argc=1)
popz.v
pushi.e 120
conv.i.v
push.d 0.4
conv.d.v
pushi.e 10
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v

:[1711]
push.v self.attacktimer
pushi.e 90
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1713]

:[1712]
push.v self.attacktimer
pushi.e 196
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [1714]

:[1713]
push.e 0

:[1714]
bt [1720]

:[1715]
push.v self.attacktimer
pushi.e 160
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1718]

:[1716]
pushi.e 791
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [1718]

:[1717]
push.v 791.vspeed
pushi.e 0
cmp.i.v GTE
b [1719]

:[1718]
push.e 0

:[1719]
b [1721]

:[1720]
push.e 1

:[1721]
bf [1726]

:[1722]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
cmp.i.v LT
bf [1724]

:[1723]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 6
push.v self.f
mul.v.i
add.v.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[1724]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
cmp.i.v GT
bf [1726]

:[1725]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[1726]
push.v self.attacktimer
pushi.e 190
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1729]

:[1727]
pushi.e 791
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [1729]

:[1728]
push.v 791.vspeed
pushi.e 0
cmp.i.v GT
b [1730]

:[1729]
push.e 0

:[1730]
bf [1732]

:[1731]
pushi.e 188
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer

:[1732]
push.v 777.hit_baseball
pushi.e 0
cmp.i.v EQ
bf [1737]

:[1733]
push.v self.attacktimer
pushi.e 196
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1735]

:[1734]
pushi.e 2101
pop.v.i self.sprite_index
push.v self.image_index
push.d 0.2
add.d.v
pop.v.v self.image_index
pushi.e 2
pop.v.i 842.hide_ui

:[1735]
push.v self.attacktimer
pushi.e 290
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1737]

:[1736]
push.v self.basex
pop.v.v self.x
pushi.e 4
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attacktimer

:[1737]
push.v 777.hit_baseball
pushi.e 0
cmp.i.v GT
bf [1882]

:[1738]
pushi.e 100
pop.v.i global.turntimer
pushi.e 10
pop.v.i 777.boxingtimer
pushi.e 0
pop.v.i 777.cancontrol
pushi.e 1
pop.v.i 842.hide_ui_quick
push.v self.attacktimer
pushi.e 196
conv.i.d
push.v self.f
div.v.d
cmp.v.v GTE
bf [1741]

:[1739]
pushi.e 791
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [1741]

:[1740]
push.v 791.vspeed
pushi.e 0
cmp.i.v LT
b [1742]

:[1741]
push.e 0

:[1742]
bf [1747]

:[1743]
pushi.e 2098
pop.v.i self.sprite_index
pushi.e 26
pop.v.i self.image_index
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e -750
cmp.i.v GT
bf [1745]

:[1744]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 12
push.v self.f
mul.v.i
sub.v.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[1745]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e -750
cmp.i.v LT
bf [1747]

:[1746]
pushi.e -750
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[1747]
push.v self.attacktimer
pushi.e 600
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1749]

:[1748]
pushi.e 792
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [1750]

:[1749]
push.e 0

:[1750]
bf [1754]

:[1751]
push.v self.basex
pop.v.v self.x
pushi.e 6
pop.v.i 357.gigaqueencon
pushi.e 829
pushenv [1753]

:[1752]
call.i instance_destroy(argc=0)
popz.v

:[1753]
popenv [1752]
pushi.e 2098
pop.v.i self.sprite_index
pushi.e 26
pop.v.i self.image_index
pushi.e 1
pop.v.i self.final_sequence_red_state

:[1754]
push.v self.attacktimer
pushi.e 600
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1756]

:[1755]
push.v self.attacktimer
pushi.e 740
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [1757]

:[1756]
push.e 0

:[1757]
bf [1759]

:[1758]
push.v self.basex
pushi.e 3
sub.i.v
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.x
push.v self.basey
pushi.e 3
sub.i.v
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.y

:[1759]
pushi.e 120
pop.v.i local.aa
push.v self.attacktimer
pushi.e 600
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1761]

:[1760]
push.v self.attacktimer
pushi.e 740
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [1762]

:[1761]
push.e 0

:[1762]
bf [1777]

:[1763]
push.v self.crescent_explosion_timer
push.e 1
add.i.v
pop.v.v self.crescent_explosion_timer
push.v self.crescent_explosion_timer
pushi.e 3
cmp.i.v EQ
bt [1765]

:[1764]
push.v self.crescent_explosion_timer
pushi.e 6
cmp.i.v EQ
b [1766]

:[1765]
push.e 1

:[1766]
bf [1777]

:[1767]
pushi.e 832
conv.i.v
push.v self.y
pushi.e 50
sub.i.v
pushi.e 150
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.x
pushi.e 50
sub.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fx
push.v self.depth
pushi.e 1
sub.i.v
push.v self.fx
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 831
conv.i.v
push.v self.y
pushi.e 50
sub.i.v
pushi.e 150
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.x
pushi.e 50
sub.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fx
push.v self.depth
pushi.e 1
sub.i.v
push.v self.fx
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.crescent_explosion_timer
pushi.e 3
cmp.i.v EQ
bf [1775]

:[1768]
push.v self.arcade
conv.v.b
bf [1772]

:[1769]
pushi.e 317
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [1771]

:[1770]
pushi.e 317
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[1771]
pushi.e 317
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 0.7
push.d 0.6
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 317
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
b [1775]

:[1772]
pushi.e 96
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [1774]

:[1773]
pushi.e 96
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[1774]
pushi.e 96
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 0.7
push.d 0.6
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 96
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[1775]
push.v self.crescent_explosion_timer
pushi.e 6
cmp.i.v EQ
bf [1777]

:[1776]
pushi.e 0
pop.v.i self.crescent_explosion_timer

:[1777]
push.v self.attacktimer
pushi.e 740
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1786]

:[1778]
push.v self.arcade
conv.v.b
bf [1780]

:[1779]
pushi.e 317
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v
b [1781]

:[1780]
pushi.e 96
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[1781]
pushi.e 832
pushenv [1783]

:[1782]
call.i instance_destroy(argc=0)
popz.v

:[1783]
popenv [1782]
pushi.e 831
pushenv [1785]

:[1784]
call.i instance_destroy(argc=0)
popz.v

:[1785]
popenv [1784]

:[1786]
push.v self.attacktimer
pushi.e 600
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1788]

:[1787]
push.v self.attacktimer
pushi.e 700
conv.i.d
push.v self.f
div.v.d
cmp.v.v LTE
b [1789]

:[1788]
push.e 0

:[1789]
bf [1792]

:[1790]
push.v self.final_sequence_red_state
pushi.e 1
cmp.i.v EQ
bf [1792]

:[1791]
push.v self.final_sequence_red_alpha
push.d 0.01
add.d.v
pop.v.v self.final_sequence_red_alpha

:[1792]
push.v self.attacktimer
pushi.e 702
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [1794]

:[1793]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [1795]

:[1794]
push.e 0

:[1795]
bf [1828]

:[1796]
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.v self.text_state
pushi.e 0
cmp.i.v EQ
bf [1798]

:[1797]
push.s "o_boxingqueen_slash_Step_0_gml_3078_0"@27371
conv.s.v
push.s "* Battle Power... Dropping.../%"@27372
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1798]
push.v self.text_state
pushi.e 1
cmp.i.v EQ
bf [1800]

:[1799]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [1801]

:[1800]
push.e 0

:[1801]
bf [1803]

:[1802]
push.s "o_boxingqueen_slash_Step_0_gml_3082_0"@27373
conv.s.v
push.s "* Overheat... Activated/%"@27374
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1803]
push.v self.text_state
pushi.e 2
cmp.i.v EQ
bf [1805]

:[1804]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [1806]

:[1805]
push.e 0

:[1806]
bf [1808]

:[1807]
push.s "o_boxingqueen_slash_Step_0_gml_3086_0"@27375
conv.s.v
push.s "* Listen Well/%"@27376
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1808]
push.v self.text_state
pushi.e 3
cmp.i.v EQ
bf [1810]

:[1809]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [1811]

:[1810]
push.e 0

:[1811]
bf [1813]

:[1812]
push.s "o_boxingqueen_slash_Step_0_gml_3090_0"@27377
conv.s.v
push.s "* You May Have Defeated Me/%"@27378
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1813]
push.v self.text_state
pushi.e 4
cmp.i.v EQ
bf [1815]

:[1814]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [1816]

:[1815]
push.e 0

:[1816]
bf [1818]

:[1817]
push.s "o_boxingqueen_slash_Step_0_gml_3094_0"@27379
conv.s.v
push.s "* But I Still Possess One Thing/%"@27380
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1818]
push.v self.text_state
pushi.e 5
cmp.i.v EQ
bf [1820]

:[1819]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [1821]

:[1820]
push.e 0

:[1821]
bf [1823]

:[1822]
push.s "o_boxingqueen_slash_Step_0_gml_3098_0"@27381
conv.s.v
push.s "* You Three Will Never Have/%"@27382
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1823]
push.v self.text_state
pushi.e 6
cmp.i.v LT
bf [1827]

:[1824]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 28
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 376
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 28
sub.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 64
pushenv [1826]

:[1825]
pushi.e 1
pop.v.i self.shake
pushi.e 2
pop.v.i self.rate
push.v self.y
pushi.e 320
sub.i.v
pop.v.v self.writingy

:[1826]
popenv [1825]

:[1827]
push.v self.text_state
push.e 1
add.i.v
pop.v.v self.text_state

:[1828]
push.v self.attacktimer
pushi.e 704
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [1832]

:[1829]
push.v self.attacktimer
pushi.e 708
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
bf [1832]

:[1830]
push.v self.text_state
pushi.e 0
cmp.i.v GTE
bf [1832]

:[1831]
push.v self.text_state
pushi.e 7
cmp.i.v LT
b [1833]

:[1832]
push.e 0

:[1833]
bt [1839]

:[1834]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1837]

:[1835]
push.v self.text_state
pushi.e 0
cmp.i.v GTE
bf [1837]

:[1836]
push.v self.text_state
pushi.e 7
cmp.i.v LT
b [1838]

:[1837]
push.e 0

:[1838]
b [1840]

:[1839]
push.e 1

:[1840]
bf [1842]

:[1841]
pushi.e 700
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attacktimer

:[1842]
push.v self.attacktimer
pushi.e 710
pushloc.v local.aa
add.v.i
push.v self.f
div.v.v
cmp.v.v EQ
bf [1847]

:[1843]
pushi.e -26
push.v self.f
mul.v.i
pop.v.v self.vspeed
push.d 2.2
pop.v.d self.friction
pushi.e 2132
pop.v.i self.sprite_index
push.v self.arcade
conv.v.b
bf [1845]

:[1844]
pushi.e 307
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [1846]

:[1845]
pushi.e 221
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[1846]
pushi.e 797
conv.i.v
push.v self.y
pushi.e 132
sub.i.v
push.v self.x
pushi.e 8
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[1847]
push.v self.attacktimer
pushi.e 710
pushloc.v local.aa
add.v.i
push.v self.f
div.v.v
cmp.v.v GT
bf [1849]

:[1848]
push.v self.attacktimer
pushi.e 758
pushloc.v local.aa
add.v.i
push.v self.f
div.v.v
cmp.v.v LT
b [1850]

:[1849]
push.e 0

:[1850]
bf [1854]

:[1851]
push.v self.vspeed
pushi.e 1
sub.i.v
pop.v.v local.cam_speed
pushloc.v local.cam_speed
pushi.e 0
cmp.i.v GT
bf [1853]

:[1852]
pushi.e 0
pop.v.i local.cam_speed

:[1853]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushloc.v local.cam_speed
add.v.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[1854]
push.v self.attacktimer
pushi.e 766
pushloc.v local.aa
add.v.i
push.v self.f
div.v.v
cmp.v.v EQ
bf [1858]

:[1855]
push.v self.x
pop.v.v self.basex
push.v self.y
pop.v.v self.basey
pushi.e 2132
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.s "o_boxingqueen_slash_Step_0_gml_3148_0"@27383
conv.s.v
push.s "* Detachable Hands/%"@27384
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 70
pop.v.i global.typer
pushi.e 4
pop.v.i global.fc
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 130
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 130
sub.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 64
pushenv [1857]

:[1856]
push.v self.y
pushi.e 320
sub.i.v
pop.v.v self.writingy

:[1857]
popenv [1856]

:[1858]
push.v self.attacktimer
pushi.e 768
pushloc.v local.aa
add.v.i
push.v self.f
div.v.v
cmp.v.v GT
bf [1861]

:[1859]
push.v self.attacktimer
pushi.e 772
pushloc.v local.aa
add.v.i
push.v self.f
div.v.v
cmp.v.v LT
bf [1861]

:[1860]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [1862]

:[1861]
push.e 0

:[1862]
bf [1864]

:[1863]
pushi.e 768
pushloc.v local.aa
add.v.i
push.v self.f
div.v.v
pop.v.v self.attacktimer

:[1864]
push.v self.attacktimer
pushi.e 772
pushloc.v local.aa
add.v.i
push.v self.f
div.v.v
cmp.v.v EQ
bf [1882]

:[1865]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 4
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.v self.arcade
conv.v.b
bf [1869]

:[1866]
pushi.e 317
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [1868]

:[1867]
pushi.e 317
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[1868]
b [1871]

:[1869]
pushi.e 96
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [1871]

:[1870]
pushi.e 96
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[1871]
pushi.e 789
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1873]

:[1872]
pushi.e 0
pop.v.i 789.visible

:[1873]
pushi.e 777
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1875]

:[1874]
pushi.e 0
pop.v.i 777.visible

:[1875]
pushi.e 813
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1877]

:[1876]
pushi.e 0
pop.v.i 813.visible

:[1877]
pushi.e 812
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1879]

:[1878]
pushi.e 0
pop.v.i 812.visible

:[1879]
pushi.e 797
pushenv [1881]

:[1880]
call.i instance_destroy(argc=0)
popz.v

:[1881]
popenv [1880]
pushi.e 793
conv.i.v
push.v 789.y
push.v 789.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[1882]
push.v self.attackcon
pushi.e 4
cmp.i.v EQ
bf [1884]

:[1883]
pushi.e 200
conv.i.d
push.v self.f
div.v.d
pop.v.v self.makedizzy
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 2099
pop.v.i self.sprite_index
push.v self.basex
pop.v.v self.x
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e -1
pop.v.i self.blocking
pushi.e 0
pop.v.i self.attacktimer
pushi.e 5
pop.v.i self.attackcon

:[1884]
push.v self.attackcon
pushi.e 5
cmp.i.v EQ
bf [1887]

:[1885]
push.v self.attacktimer
pushi.e 1
add.i.v
pop.v.v self.attacktimer
pushi.e 1
pop.v.i self.attack_succeeded
push.v self.attacktimer
pushi.e 45
conv.i.d
push.v self.f
div.v.d
push.v self.attack_succeeded
pushi.e 45
mul.i.v
push.v self.f
div.v.v
sub.v.v
cmp.v.v GTE
bf [1887]

:[1886]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.attackcon
pushi.e 0
pop.v.i self.attack_succeeded
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[1887]
push.v self.state
pushi.e 4
cmp.i.v EQ
bf [1897]

:[1888]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [1890]

:[1889]
push.v self.x
push.v self.basex
cmp.v.v GT
b [1891]

:[1890]
push.e 0

:[1891]
bf [1893]

:[1892]
pushi.e 0
pop.v.i self.hspeed
push.v self.basex
pop.v.v self.x

:[1893]
push.v self.dizzytimer
pushi.e 1
sub.i.v
pop.v.v self.dizzytimer
pushi.e 0
pop.v.i self.image_speed
push.v self.image_index
push.d 0.1
add.d.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 2
cmp.i.v GTE
bf [1895]

:[1894]
pushi.e 0
pop.v.i self.image_index
push.v self.drawflip
pushi.e -1
mul.i.v
pop.v.v self.drawflip

:[1895]
push.v self.dizzytimer
pushi.e 0
cmp.i.v LTE
bf [1897]

:[1896]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[1897]
push.v self.dizzytimer
pushi.e 1
sub.i.v
pop.v.v self.dizzytimer

:[end]