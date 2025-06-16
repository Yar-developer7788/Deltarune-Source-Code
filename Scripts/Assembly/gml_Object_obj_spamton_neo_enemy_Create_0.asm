.localvar 2 arguments

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushglb.v global.fighting
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.myself
push.i 231526
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[2]
pushi.e 10
pop.v.i self.heart_attack_count
pushi.e 25
pop.v.i self.heart_health
pushi.e 2
pop.v.i self.heart_speed_scaling
pushi.e 6
pop.v.i self.heart_1st_wave_timer
pushi.e 11
pop.v.i self.heart_2nd_wave_timer
pushi.e 16
pop.v.i self.heart_3rd_wave_timer
pushi.e 90
pop.v.i self.heart_variant_arm_shoot_timer
pushi.e 1200
pop.v.i self.heart_turntimer
pushi.e 27
pop.v.i self.heart_hurt_timer_reduction
pushi.e 108
pop.v.i self.heart_hurt_timer_reduction_bigshot
push.d 1.1
pop.v.d self.heart_bullet_image_scale
push.d 0.1
pop.v.d self.heart_bullet_speed_1st_wave
push.d 0.1
pop.v.d self.heart_bullet_friction_1st_wave
push.d 0.1
pop.v.d self.heart_bullet_speed_2nd_wave
push.d 0.09
pop.v.d self.heart_bullet_friction_2nd_wave
push.d 0.1
pop.v.d self.heart_bullet_speed_3rd_wave
push.d 0.08
pop.v.d self.heart_bullet_friction_3rd_wave
push.d 1.075
pop.v.d self.heart_bullet_gravity_acceleration
pushi.e -3
pop.v.i self.crusher_start_hspeed
push.d 0.4
pop.v.d self.crusher_start_hacceleration
pushi.e 15
pop.v.i self.crusher_turret_speed
pushi.e 44
pop.v.i self.crusher_turret_distance
pushi.e 220
pop.v.i self.crusher_x_origin
push.d -0.5
pop.v.d self.crusher_turret_bullet_speed
push.d 0.5
pop.v.d self.crusher_turret_bullet_gravity
pushi.e 0
pop.v.i self.upgrade
pushi.e 1
pop.v.i self.bigshot
pushi.e 0
pop.v.i self.bigshotused
pushi.e 0
pop.v.i self.bigshotcount
pushi.e 0
pop.v.i self.tinyralsei
pushi.e 0
pop.v.i self.weakentimer
pushi.e 0
pop.v.i self.weakenshakeamount
pushi.e 6
pop.v.i self.maxvinecount
pushi.e 0
pop.v.i self.vinecuttimer
pushi.e 18
pop.v.i self.vinebgcount
pushi.e -1
pop.v.i self.vineid
pushi.e 0
pop.v.i self.snapallcount
pushi.e 0
pop.v.i self.endcon
pushi.e 0
pop.v.i self.weirdpathendcon
pushi.e 0
pop.v.i self.weirdpathendtimer
pushi.e 0
pop.v.i self.endtimer
pushi.e 0
pop.v.i self.dancealtcon
pushi.e 0
pop.v.i self.cantspareinit
pushi.e 0
pop.v.i self.savemeactcon
pushi.e 0
pop.v.i self.usedact
pushi.e 0
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.turn
pushi.e 0
pop.v.i self.phaseturn
pushi.e 1
pop.v.i self.phase
pushi.e 0
pop.v.i self.firstheartattack
pushi.e 0
pop.v.i self.fireslasers
pushi.e 0
pop.v.i self.haveusedfinalattack
pushi.e 0
pop.v.i self.phonejokeplayerdied
pushi.e 1
pop.v.i self.newcrushermovement
pushi.e 0
pop.v.i self.sneomacaronihandscon
pushi.e 0
pop.v.i self.flyingheadsbseen
pushi.e 0
pop.v.i self.singleshotmercy
pushi.e 0
pop.v.i self.prevmercy
pushi.e 0
pop.v.i self.prevhearttack
pushi.e 0
pop.v.i self.facebroken
pushi.e -1
pop.v.i self.correct_answer
pushi.e 0
pop.v.i self.hurttimer2
pushi.e 0
pop.v.i self.faceattackcount
pushi.e 1
pop.v.i self.nothitduringphonehands
pushi.e 0
pop.v.i self.sneo_defeat_cutscene_version
pushi.e 0
pop.v.i self.targetbgspeed
pushi.e 0
pop.v.i self.smoketimer
pushi.e 1
pop.v.i self.smokethreshold
pushi.e 0
pop.v.i self.didwejustdie
pushi.e 0
pop.v.i self.dontchangepose
pushi.e 0
pop.v.i self.lastwirecon
pushi.e 0
pop.v.i self.lastwiretimer
pushi.e 0
pop.v.i self.headendcon
pushi.e 0
pop.v.i self.finalattackconversationcon
pushi.e 0
pop.v.i self.funnycheat
pushi.e 0
pop.v.i self.funnycheattimer
pushi.e 0
pop.v.i self.funnycheattimer2
pushi.e 0
pop.v.i self.funnycheattimer3
pushi.e 0
pop.v.i self.headexpand
pushi.e 0
pop.v.i self.hellmode
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pop.v.v self.laserflash
pushi.e 90
pop.v.i self.talkmax
push.d 0.16666666666666666
pop.v.d self.image_speed
pushi.e 1988
pop.v.i self.idlesprite
pushi.e 1988
pop.v.i self.hurtsprite
pushi.e 1988
pop.v.i self.sparedsprite
pushi.e 1
pop.v.i self.custom_draw
pushi.e 2
pop.v.i self.f
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.sinerb
pushi.e 0
pop.v.i self.lerper
pushi.e 0
pop.v.i self.shocker
pushi.e 0
pop.v.i self.dead
pushi.e 0
pop.v.i self.checkcount
pushi.e 0
pop.v.i self.shake_head
pushi.e 0
pop.v.i self.heart_release_con
pushi.e 10
pop.v.i self.shocker_threshold
pushi.e 0
pop.v.i self.shotanimtimer
pushi.e 0
pop.v.i self.shocktimer
pushi.e 10
pop.v.i self.shockthreshold
pushi.e 0
pop.v.i self.laughtimer
pushi.e 0
pop.v.i self.fakegrav
pushi.e 0
pop.v.i self.falltimer
pushi.e 10
pop.v.i self.fallshake
pushi.e 1
pop.v.i self.aim
pushi.e 0
pop.v.i self.hitcon
pushi.e 597
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hitdetector
pushi.e 0
pop.v.i self.stoprumblesfx
push.d 0.1
pop.v.d self.chargepitch
pushi.e 0
pop.v.i self.chargesfxtimer
pushi.e 0
pop.v.i self.dance_con
pushi.e 0
pop.v.i self.dance_timer
pushi.e 0
pop.v.i self.partfocus
push.d 0.15
conv.d.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.blend
pushi.e 0
pop.v.i self.shootydanceinit
push.v self.x
pop.v.v self.shootydancex
push.v self.y
pop.v.v self.shootydancey
push.i 171269
setowner.e
pushi.e 1976
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.partsprite
pushi.e 1977
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.partsprite
pushi.e 1978
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.partsprite
pushi.e 1979
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.partsprite
pushi.e 1981
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.partsprite
pushi.e 3322
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.partsprite
pushi.e 1987
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.partsprite
pushi.e 1986
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.partsprite
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [5]

:[4]
push.i 171306
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.partframe
push.i 171507
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.partsiner
push.i 171262
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.partrot
push.i 171579
setowner.e
push.i 16777215
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.partblend
push.i 167985
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.partx
push.i 165821
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.party
push.i 171256
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.partsprite
call.i sprite_get_xoffset(argc=1)
pushi.e 2
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.partxoff
push.i 171257
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.partsprite
call.i sprite_get_yoffset(argc=1)
pushi.e 2
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.partyoff
push.i 171508
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.partvisible
push.i 171509
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.partweakened
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[5]
pushi.e 0
pop.v.i self.ii

:[6]
push.v self.ii
pushi.e 18
cmp.i.v LT
bf [8]

:[7]
push.i 171504
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.ii
conv.v.i
pop.v.v [array]self.partsiner_back
push.i 171502
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.ii
conv.v.i
pop.v.v [array]self.partx_back
push.i 171505
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.ii
conv.v.i
pop.v.v [array]self.party_back
push.i 171503
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.partsprite
call.i sprite_get_xoffset(argc=1)
push.d 1.8
push.v self.ii
pushi.e 9
conv.i.d
div.d.v
add.v.d
mul.v.v
pushi.e -1
push.v self.ii
conv.v.i
pop.v.v [array]self.partxoff_back
push.i 171506
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.partsprite
call.i sprite_get_yoffset(argc=1)
pushi.e 2
mul.i.v
pushi.e -1
push.v self.ii
conv.v.i
pop.v.v [array]self.partyoff_back
push.i 171501
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.ii
conv.v.i
pop.v.v [array]self.partvisible_back
push.v self.ii
pushi.e 1
add.i.v
pop.v.v self.ii
b [6]

:[8]
pushi.e 0
pop.v.i self.heartattackoffsetx
pushi.e 26
pop.v.i self.extra_vines
pushi.e 146
conv.i.v
pushi.e 36
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.partyoff
pushi.e -1
pushi.e 1
push.v [array]self.partxoff
call.i point_distance(argc=4)
pop.v.v self.armlength
pushi.e 1
pop.v.i self.partmode
pushi.e 0
pop.v.i self.songtime
pushi.e 1
pop.v.i self.songplaying
push.d 1.715
pop.v.d self.resumeinterval
pushi.e 0
pop.v.i self.drawaimer
pushi.e 0
pop.v.i self.phoneevent
pushi.e 0
pop.v.i self.headmode
pushi.e 0
pop.v.i self.vinex
pushi.e -1
pop.v.i self.attackdebug
pushi.e -1
pop.v.i self.difficultydebug
pushi.e 0
pop.v.i self.musicdebug
pushi.e 0
pop.v.b self.party_heal
pushi.e 0
pop.v.i self.makeheart
pushi.e 0
pop.v.i self.makeheartinit
pushi.e 0
pop.v.i self.makehearttype
pushi.e 0
pop.v.i self.makehearttimer
pushi.e 0
pop.v.i self.makeheartalt
pushi.e 0
pop.v.i self.violentendflash
pushi.e 0
pop.v.i self.head_recoil_amount
pushi.e 0
pop.v.i self.shadow_amount
pushi.e 1
pop.v.i self.facing
pushi.e 0
pop.v.i self.headhit
pushi.e 1
pop.v.i self.headsize
pushi.e -1
pop.v.i self.headforceframe
pushi.e 0
pop.v.i self.aimmode
pushi.e -80
pop.v.i self.armaim
pushi.e 0
pop.v.i self.hitcontimer
pushi.e 0
pop.v.i self.balloonorder
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
pushi.e 0
pop.v.i self.talkedcon
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.statustextorder
pushi.e 0
pop.v.i self.statustextalt
pushi.e 0
pop.v.i self.statustextalt2
pushi.e 0
pop.v.i self.statustextupdate
pushi.e 0
pop.v.i self.joke
pushi.e 16
pop.v.i self.eyeshp
pushi.e 16
pop.v.i self.nosehp
pushi.e 16
pop.v.i self.mouthhp
pushi.e 0
pop.v.i self.specialcontimer
pushi.e 0
pop.v.i self.specialcon
pushi.e 0
pop.v.i self.flameframe
pushi.e 0
pop.v.i self.flamealpha

:[end]