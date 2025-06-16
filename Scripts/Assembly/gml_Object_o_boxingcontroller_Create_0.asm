.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 93
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.arcade
b [3]

:[2]
pushi.e 0
pop.v.i self.arcade

:[3]
pushi.e 30
pop.v.i builtin.room_speed
pushi.e 7
pop.v.i self.depth
pushi.e 250
pop.v.i self.c
pushi.e 2
pop.v.i self.f
pushi.e 0
pop.v.i self.wireframe_boxing
pushbltn.v builtin.room
pushi.e 93
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.wireframe_boxing

:[5]
push.v self.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pop.v.v self.health_count
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pop.v.v self.health_count_max
b [8]

:[7]
pushi.e 500
pop.v.i self.health_count
pushi.e 500
pop.v.i self.health_count_max

:[8]
pushi.e 1
pop.v.i self.disable_queen_blocking
push.s "o_boxingcontroller_slash_Create_0_gml_18_0"@27038
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 3
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "DODGE with ~1 or ~2!"@27039
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
pop.v.v self.dodge_string
push.s "o_boxingcontroller_slash_Create_0_gml_19_0"@27041
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "Press ~1 to Duck!"@27042
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.duck_string
push.s "o_boxingcontroller_slash_Create_0_gml_20_0"@27044
conv.s.v
push.s "default"@14501
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.default_string
pushi.e 200
pop.v.i self.health_count_prev
pushi.e 24
pop.v.i self.health_count_prev_timer_set
pushi.e 0
pop.v.i self.health_count_prev_timer
pushi.e 0
pop.v.i self.white_flash
pushi.e 0
pop.v.i self.times_hit_by_boss
pushi.e 0
pop.v.i self.hit_baseball
pushi.e 0
pop.v.i self.hit_baseball_check
pushi.e 1
pop.v.i self.damage_multiplier
pushi.e 1
pop.v.i self.punch_speed_multiplier
pushi.e 0
pop.v.i self.color_fade_alpha
pushi.e 0
pop.v.i self.turbo_fade_alpha
pushi.e 0
pop.v.i self.turbo_fade_state
pushi.e 0
pop.v.i self.sword_fade_alpha
pushi.e 0
pop.v.i self.sword_fade_state
pushi.e 0
pop.v.i self.miss_timer
pushi.e 0
pop.v.i self.defend
pushi.e 1
pop.v.i self.failed_kick_tutorial_counter
pushi.e 0
pop.v.i self.succeeded_kick_tutorial
pushi.e 0
pop.v.i self.arcade_loss_count
pushi.e 0
pop.v.i self.arcade_times_blocked
pushi.e 0
pop.v.i self.dead
pushi.e 0
pop.v.i self.dead_timer
pushi.e 0
pop.v.i self.arcade_mode_last_punched_direction
push.s "beat_phase1_no_damage_taken"@27065
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [10]

:[9]
pushi.e 0
pop.v.i global.beat_phase1_no_damage_taken

:[10]
pushi.e 0
pop.v.i self.beat_phase1_no_damage_taken_check
pushi.e 0
pop.v.i self.beat_phase2_no_damage_taken
pushi.e 0
pop.v.i self.beat_phase2_no_damage_taken_check
pushi.e 0
pop.v.i self.phase2_25_percent_health_early
pushi.e 0
pop.v.i self.phase3_hit_check
pushi.e 0
pop.v.i self.phase3_damage_multiplier
pushi.e 0
pop.v.i self.attackintrotimer
pushi.e 0
pop.v.i self.attackintrocon
pushi.e 0
pop.v.i self.talking
pushi.e 0
pop.v.i self.arcaderesettimer
pushi.e 0
pop.v.i self.damagereductiononeturn
pushi.e 0
pop.v.i self.damageoverride
pushi.e 0
pop.v.i self.healoverride
pushi.e 0
pop.v.i self.tpoverride
pushi.e 0
pop.v.i self.actpunchtimer
pushi.e 0
pop.v.i self.acttoenemytalktransition
pushi.e 0
pop.v.i self.lastpunchside
pushi.e 0
pop.v.i self.damagetakenthisturn
push.v self.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [14]

:[11]
pushi.e 843
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 2163
pop.v.i self.sprite_index
pushi.e 789
pushenv [13]

:[12]
pushi.e 2134
pop.v.i self.sprite_index

:[13]
popenv [12]

:[14]
pushi.e 0
pop.v.i self.htimer
pushi.e 0
pop.v.i self.hcon
pushi.e 0
pop.v.i self.hsubcon
pushi.e 0
pop.v.i self.qtimer
pushi.e 0
pop.v.i self.qcon
pushi.e 0
pop.v.i self.qsubcon
pushi.e 0
pop.v.i self.punchcon
pushi.e 0
pop.v.i self.punchtimer
pushi.e 0
pop.v.i self.dodgecon
pushi.e 0
pop.v.i self.dodgetimer
pushi.e 0
pop.v.i self.dodging
pushi.e 0
pop.v.i self.duckcon
pushi.e 0
pop.v.i self.ducktimer
pushi.e 0
pop.v.i self.ducking
pushi.e 0
pop.v.i self.jumpcon
pushi.e 0
pop.v.i self.jumptimer
pushi.e 0
pop.v.i self.jumping
pushi.e 0
pop.v.i self.hurtcon
pushi.e 0
pop.v.i self.hurttimer
pushi.e 22
conv.i.d
push.v self.f
div.v.d
pop.v.v self.hurt_length
pushi.e 0
pop.v.i self.invincible
pushi.e 0
pop.v.i self.invincibility_timer
pushi.e 0
pop.v.i self.buffer_punch
pushi.e 0
pop.v.i self.buffer_l
pushi.e 0
pop.v.i self.buffer_u
pushi.e 0
pop.v.i self.buffer_d
pushi.e 0
pop.v.i self.buffer_r
pushi.e 0
pop.v.i self.buffer_z
pushi.e 0
pop.v.i self.buffer_x
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 320
pop.v.i self.x
pushi.e 390
pop.v.i self.y
push.v self.x
pop.v.v self.basex
push.v self.y
pop.v.v self.basey
pushi.e 1
pop.v.i self.drawflip
pushi.e 2161
pop.v.i self.headsprite
push.i 172019
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.background_xscale
push.i 172020
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.background_yscale
pushi.e 841
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.grazer
pushi.e 842
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hud
pushi.e 0
pop.v.i global.boxingphase
pushi.e 0
pop.v.i self.cancontrol
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.boxingtimer
pushi.e 0
pop.v.i self.i

:[15]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [17]

:[16]
push.i 172026
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.specialactive
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [15]

:[17]
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [20]

:[19]
push.i 172027
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.imagefistx
push.i 172028
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.imagefisty
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [18]

:[20]
pushi.e 0
pop.v.i self.specialcon
pushi.e 0
pop.v.i self.specialcontimer
pushi.e 0
pop.v.i self.special_punch_count
pushi.e 0
pop.v.i self.special_punch_turns
pushi.e 0
pop.v.i self.flameactive
pushi.e 0
pop.v.i self.flametimer
pushi.e 0
pop.v.i self.flamepunch
pushi.e 0
pop.v.i self.swordactive
pushi.e 0
pop.v.i self.swordtimer
pushi.e 0
pop.v.i self.swordpunch
pushi.e 0
pop.v.i self.laseractive
pushi.e 0
pop.v.i self.lasertimer
pushi.e 0
pop.v.i self.laserpunch
pushi.e 0
pop.v.i self.duckactive
pushi.e 0
pop.v.i self.ducktimer
pushi.e 0
pop.v.i self.duckpunch
pushi.e 0
pop.v.i self.turboactive
pushi.e 0
pop.v.i self.turbotimer
pushi.e 0
pop.v.i self.turbopunch
pushi.e 0
pop.v.i self.healactive
pushi.e 0
pop.v.i self.healtimer
pushi.e 0
pop.v.i self.healpunch
pushi.e 0
pop.v.i self.laserpunchfadetimer
pushi.e 88
pop.v.i self.xspot
pushi.e 180
pop.v.i self.yspot
push.i 172027
setowner.e
pushi.e 50
push.v self.xspot
sub.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.imagefistx
push.i 172028
setowner.e
pushi.e 90
push.v self.yspot
sub.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.imagefisty
push.i 172027
setowner.e
pushi.e 68
push.v self.xspot
sub.v.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.imagefistx
push.i 172028
setowner.e
pushi.e 98
push.v self.yspot
sub.v.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.imagefisty
push.i 172027
setowner.e
pushi.e -1
pushi.e 1
push.v [array]self.imagefistx
pushi.e -1
pushi.e 3
pop.v.v [array]self.imagefistx
push.i 172028
setowner.e
pushi.e -1
pushi.e 1
push.v [array]self.imagefisty
pushi.e -1
pushi.e 3
pop.v.v [array]self.imagefisty
push.i 172027
setowner.e
pushi.e 74
push.v self.xspot
sub.v.i
pushi.e -1
pushi.e 2
pop.v.v [array]self.imagefistx
push.i 172028
setowner.e
pushi.e 18
push.v self.yspot
sub.v.i
pushi.e -1
pushi.e 2
pop.v.v [array]self.imagefisty
push.i 172027
setowner.e
pushi.e 70
push.v self.xspot
sub.v.i
pushi.e -1
pushi.e 4
pop.v.v [array]self.imagefistx
push.i 172028
setowner.e
pushi.e 70
push.v self.yspot
sub.v.i
pushi.e -1
pushi.e 4
pop.v.v [array]self.imagefisty
push.i 172027
setowner.e
pushi.e 26
push.v self.xspot
sub.v.i
pushi.e -1
pushi.e 6
pop.v.v [array]self.imagefistx
push.i 172028
setowner.e
pushi.e 110
push.v self.yspot
sub.v.i
pushi.e -1
pushi.e 6
pop.v.v [array]self.imagefisty
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 2160
pop.v.i self.headsprite

:[22]
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
pushi.e 2159
pop.v.i self.headsprite

:[24]
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [26]

:[25]
pushi.e 2162
pop.v.i self.headsprite

:[26]
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
pushi.e -5
pushi.e 223
push.v [array]self.flag
pushi.e 8
mul.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.headcolor
pushi.e 0
pop.v.i self.glow

:[end]