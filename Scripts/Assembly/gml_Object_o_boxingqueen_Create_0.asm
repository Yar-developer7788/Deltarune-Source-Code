.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.f
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 320
pop.v.i self.x
pushi.e 300
pop.v.i self.y
pushi.e 9
pop.v.i self.depth
call.i randomize(argc=0)
popz.v
pushi.e 845
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bg
push.v self.depth
pushi.e 1
add.i.v
push.v self.bg
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1500
pop.v.i self.health_count
pushi.e 1500
pop.v.i self.health_count_max
pushi.e 1500
pop.v.i self.health_count_prev
pushbltn.v builtin.room
pushi.e 207
cmp.i.v EQ
bt [2]

:[1]
pushbltn.v builtin.room
pushi.e 13
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 1080
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1500
pop.v.i self.health_count
pushi.e 1500
pop.v.i self.health_count_max
pushi.e 1500
pop.v.i self.health_count_prev
b [6]

:[5]
pushi.e 1000
pop.v.i self.health_count
pushi.e 1000
pop.v.i self.health_count_max
pushi.e 1000
pop.v.i self.health_count_prev

:[6]
pushi.e 48
conv.i.d
push.v self.f
div.v.d
pop.v.v self.health_count_prev_timer_set
pushi.e 0
pop.v.i self.health_count_prev_timer
pushi.e 0
pop.v.i self.white_flash
pushi.e 0
pop.v.i self.rand_fix
pushi.e 3
pop.v.i self.vertical_laser_amount
pushi.e 0
pop.v.i self.arc_movement
pushi.e 2
pop.v.i self.horizontal_laser_amount
pushi.e 0
pop.v.i self.flametimer
pushi.e 0
pop.v.i self.specialcon
pushi.e 0
pop.v.i self.specialcontimer
pushi.e 1
pop.v.i self.baseball_amount
pushi.e 0
pop.v.i self.baseball_timer
pushi.e 48
conv.i.d
push.v self.f
div.v.d
pop.v.v self.baseball_timer_max
pushi.e 0
pop.v.i self.baseball_hit_boss_number
pushi.e 0
pop.v.i self.first_normal_baseball_throw
pushi.e 0
pop.v.i self.phase_transition
pushi.e 0
pop.v.i self.phase_transition_timer
push.d 0.1
pop.v.d self.stomp_speed
pushi.e 0
pop.v.i self.force_drawflip
pushi.e 0
pop.v.i self.first_octagon_attack
pushi.e 0
pop.v.i self.player_dead_timer
pushi.e 0
pop.v.i self.pattern_phase
pushi.e 0
pop.v.i self.pattern_state
pushi.e 0
pop.v.i self.has_boss_done_pattern7
pushi.e 0
pop.v.i self.final_sequence_red_alpha
pushi.e 0
pop.v.i self.final_sequence_red_state
pushi.e 0
pop.v.i self.crescent_explosion_timer
pushi.e 0
pop.v.i self.text_state
pushi.e 0
pop.v.i self.hurt_fx1_timer
pushi.e 0
pop.v.i self.hurt_fx1_timer2
pushi.e 1
pop.v.i self.hurt_fx1_state
pushi.e 1
pop.v.i self.hurt_fx2_state
pushi.e 0
pop.v.i self.hurt_fx2_timer
pushi.e 0
pop.v.i self.times_hit_in_a_row
pushi.e 0
pop.v.i self.damagetakenincrease
pushi.e 0
pop.v.i self.actpunchtimer
pushi.e 0
pop.v.i self.playerhitbykick
pushi.e 0
pop.v.i self.shortcomboend
pushi.e 0
pop.v.i self.shaketimer
pushi.e 0
pop.v.i self.readycon
pushi.e 0
pop.v.i self.finalbaseballused
pushi.e 1
pop.v.i self.firstquickpunch
pushi.e 0
pop.v.i self.arcadebaseballused
pushi.e 0
pop.v.i self.finalphasearcadecon
pushi.e 0
pop.v.i self.usedbaseball
pushi.e 0
pop.v.i self.kicks_done
pushi.e 0
pop.v.i self.attackorderlooping
pushi.e 0
pop.v.i self.phaseprevious
pushi.e 0
pop.v.i self.attackorderloopingturn
pushi.e 1
pop.v.i self.pacifist
pushi.e 3
pop.v.i self.dodgehintcount
pushi.e 3
pop.v.i self.duckhintcount
pushi.e 0
pop.v.i self.delayattack
pushi.e 0
pop.v.i self.delayattacktelegraph
pushi.e 0
pop.v.i self.firstwheelattack
pushi.e 0
pop.v.i self.firstwheelattackdelay
push.v self.depth
pop.v.v self.original_depth
pushi.e 0
pop.v.i self.attackcon
pushi.e 1
pop.v.i self.attacktype
pushi.e 1
pop.v.i self.punch_amount
pushi.e 0
pop.v.i self.punch_type
pushi.e 1
pop.v.i self.kick_amount
pushi.e 1
pop.v.i self.splash_amount
pushi.e 1
pop.v.i self.pirouette_amount
pushi.e 1
pop.v.i self.pirouette_type
pushi.e 3
pop.v.i self.wheel_amount
pushi.e 0
pop.v.i self.wheel_type
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.makedizzy
pushi.e 0
pop.v.i self.dizzytimer
pushi.e 0
pop.v.i self.hurttimer
pushi.e 0
pop.v.i self.blocktimer
pushi.e 0
pop.v.i self.substate
pushi.e 0
pop.v.i self.vshake
pushi.e 0
pop.v.i self.vshaketimer
pushi.e 0
pop.v.i self.idletimer
pushi.e 0
pop.v.i self.fsiner
pushi.e 0
pop.v.i self.init
pushi.e -1
pop.v.i self.path
pushi.e 0
pop.v.i self.combo
pushi.e 0
pop.v.i self.ohpitch
pushi.e 0
pop.v.i self.savex
pushi.e 0
pop.v.i self.savey
pushi.e 0
pop.v.i self.movetimer
pushi.e 0
pop.v.i self.drawflip
pushi.e 0
pop.v.i self.index_previous
pushi.e 0
pop.v.i self.explosion_snd_count
push.v self.x
pop.v.v self.basex
push.v self.y
pop.v.v self.basey
pushi.e 120
conv.i.d
push.v self.f
div.v.d
pop.v.v self.flipthreshold
pushi.e 0
pop.v.i self.fliptimer
pushi.e 90
conv.i.d
push.v self.f
div.v.d
pop.v.v self.attackthreshold
pushi.e 0
pop.v.i self.attack_succeded
push.v self.attackthreshold
pop.v.v self.attackthresholddefault
pushi.e 0
pop.v.i self.wheelsoundtimer
pushi.e 0
pop.v.i self.bouncetimer
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.invincible_l
pushi.e 0
pop.v.i self.invincible_r
pushi.e -1
pop.v.i self.blocking
pushi.e 0
pop.v.i self.noattack
pushi.e -1
pop.v.i self.nextdrawflip
pushi.e 1
pop.v.i self.turnbased
pushi.e 0
pop.v.i self.myturn
push.s "nothing"@27311
pop.v.s self.debug_text
pushi.e 14
pop.v.i self.maxpattern
pushi.e 1
pop.v.i self.useattacklist
call.i gml_Script_scr_qb_reset(argc=0)
popz.v
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 2134
pop.v.i self.sprite_index

:[8]
pushbltn.v builtin.room
pushi.e 93
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.arcade
b [end]

:[10]
pushi.e 0
pop.v.i self.arcade

:[end]