.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.timer
pushi.e 200
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [3]

:[2]
pushi.e 1
pop.v.i self.state

:[3]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [17]

:[4]
push.v self.image_alpha
push.d 2.2
cmp.d.v GT
bf [16]

:[5]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bt [8]

:[6]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bt [8]

:[7]
call.i gml_Script_button3_p(argc=0)
conv.v.b
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
pushi.e 2
pop.v.i self.state
pushi.e 823
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e -150
pop.v.i 823.depth

:[11]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [13]

:[12]
pushi.e 1
pop.v.i self.con

:[13]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [15]

:[14]
pushi.e 0
pop.v.i self.con

:[15]
b [17]

:[16]
push.v self.image_alpha
push.d 0.02
add.d.v
pop.v.v self.image_alpha

:[17]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [57]

:[18]
push.v self.image_alpha
push.d 0.01
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 2.6
cmp.d.v GT
bf [20]

:[19]
push.v self.con
pushi.e 1
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 884
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.gameend
pushi.e 8
push.v self.gameend
pushi.e -9
pop.v.i [stacktop]self.EVENT

:[23]
push.v self.image_alpha
push.d 2.6
cmp.d.v GT
bf [25]

:[24]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [57]

:[27]
pushi.e 0
pop.v.i self.j

:[28]
push.v self.j
pushi.e 13
cmp.i.v LT
bf [30]

:[29]
push.i 231171
setowner.e
pushi.e 840
push.v self.j
conv.v.i
push.v [array]self.items
pushi.e -5
push.v self.j
conv.v.i
pop.v.v [array]self.item
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [28]

:[30]
pushi.e 0
pop.v.i self.j

:[31]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [36]

:[32]
pushi.e 0
pop.v.i self.i

:[33]
push.v self.i
pushi.e 13
cmp.i.v LT
bf [35]

:[34]
push.i 231614
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.item
pushi.e 357
push.v self.i
conv.v.i
push.v [arraypopaf]self.tempitem
push.v self.j
conv.v.i
popaf.e
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [33]

:[35]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [31]

:[36]
push.i 231921
setowner.e
push.s "scr_encountersetup_slash_scr_encountersetup_gml_1104_0"@7777
conv.s.v
push.s "* GIGA Queen blocks the way!"@7778
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushi.e 824
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.i 232336
setowner.e
push.s "boxing_boss.ogg"@27428
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i gml_Script_mus_loop_ext(argc=3)
popz.v
pushi.e 3
pop.v.i global.boxingphase
pushi.e 840
pushenv [38]

:[37]
pushi.e 0
pop.v.i self.balloonorder
pushi.e 0
pop.v.i self.ballooncon
pushi.e 1
pop.v.i self.balloonend
pushi.e 0
pop.v.i self.talkedcon
pushi.e 0
pop.v.i self.playerhasntdodged
pushi.e 0
pop.v.i self.playerhasntdodgedorder
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.didntcounterthisturn
pushi.e 0
pop.v.i self.didntpunchthisturn
pushi.e 0
pop.v.i self.didntdodgethisturn
pushi.e 0
pop.v.i self.recentphasetransition

:[38]
popenv [37]
pushi.e 777
pushenv [40]

:[39]
push.i 231131
setowner.e
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp
pushi.e 0
pop.v.i global.tension
pushi.e 0
pop.v.i self.specialcon
pushi.e 200
pop.v.i self.health_count
pushi.e 0
pop.v.i self.dead
pushi.e 1
pop.v.i self.cancontrol
pushi.e 1
pop.v.i self.drawflip
pushi.e 2
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.dead
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y
pushi.e 2153
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.vspeed
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

:[40]
popenv [39]
pushi.e 842
pushenv [42]

:[41]
pushi.e 2
pop.v.i self.sub_healthbar_count
pushi.e 0
pop.v.i self.healthbar_flash
pushi.e 0
pop.v.i self.hide_ui
pushi.e 0
pop.v.i self.hide_ui_quick

:[42]
popenv [41]
pushi.e 843
pushenv [44]

:[43]
pushi.e 0
pop.v.i self.pacifist_timer
pushi.e 0
pop.v.i self.pacifist_state
pushi.e 0
pop.v.i self.draw_draw_timer

:[44]
popenv [43]
pushi.e 789
pushenv [48]

:[45]
pushi.e 1500
pop.v.i self.health_count
pushi.e 0
pop.v.i self.phase_transition
pushi.e 0
pop.v.i self.attackcount
pushi.e 0
pop.v.i self.attackcountmax
pushi.e 1
pop.v.i self.useattacklist
pushi.e 0
pop.v.i self.pattern_state
pushi.e 0
pop.v.i self.player_dead_timer
pushi.e 0
pop.v.i self.attackpattern
pushi.e 0
pop.v.i self.attackcon
pushi.e 1
pop.v.i self.attacktype
pushi.e 1
pop.v.i self.punch_amount
pushi.e 0
pop.v.i self.state
pushi.e 2121
pop.v.i self.sprite_index
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y
call.i gml_Script_scr_qb_reset(argc=0)
popz.v
pushi.e 777
pushenv [47]

:[46]
pushi.e 270
pop.v.i self.boxingtimer

:[47]
popenv [46]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[48]
popenv [45]
pushi.e 803
pushenv [50]

:[49]
call.i instance_destroy(argc=0)
popz.v

:[50]
popenv [49]
pushi.e 804
pushenv [52]

:[51]
call.i instance_destroy(argc=0)
popz.v

:[52]
popenv [51]
pushi.e 810
pushenv [54]

:[53]
call.i instance_destroy(argc=0)
popz.v

:[54]
popenv [53]
pushi.e 811
pushenv [56]

:[55]
call.i instance_destroy(argc=0)
popz.v

:[56]
popenv [55]
call.i instance_destroy(argc=0)
popz.v

:[57]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.s "obj_boxing_loss_controller_slash_Draw_0_gml_116_0"@27431
conv.s.v
push.s "Don't give up...!"@27432
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 150
conv.i.v
pushi.e 340
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 320
conv.i.v
pushi.e 320
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2164
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v 777.headsprite
pushi.e 2159
cmp.i.v EQ
bf [59]

:[58]
pushi.e 305
conv.i.v
pushi.e 322
conv.i.v
pushi.e 9
conv.i.v
pushi.e 2159
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[59]
push.v 777.headsprite
pushi.e 2160
cmp.i.v EQ
bf [61]

:[60]
pushi.e 306
conv.i.v
pushi.e 320
conv.i.v
pushi.e 9
conv.i.v
pushi.e 2160
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[61]
push.v 777.headsprite
pushi.e 2161
cmp.i.v EQ
bf [63]

:[62]
pushi.e 303
conv.i.v
pushi.e 321
conv.i.v
pushi.e 9
conv.i.v
pushi.e 2161
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[63]
push.v 777.headsprite
pushi.e 2162
cmp.i.v EQ
bf [65]

:[64]
pushi.e 300
conv.i.v
pushi.e 321
conv.i.v
pushi.e 9
conv.i.v
pushi.e 2162
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[65]
push.v self.image_alpha
pushi.e 1
sub.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 320
conv.i.v
pushi.e 320
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2164
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v 777.headsprite
pushi.e 2159
cmp.i.v EQ
bf [67]

:[66]
pushi.e 305
conv.i.v
pushi.e 322
conv.i.v
pushi.e 9
conv.i.v
pushi.e 2159
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[67]
push.v 777.headsprite
pushi.e 2160
cmp.i.v EQ
bf [69]

:[68]
pushi.e 306
conv.i.v
pushi.e 320
conv.i.v
pushi.e 9
conv.i.v
pushi.e 2160
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[69]
push.v 777.headsprite
pushi.e 2161
cmp.i.v EQ
bf [71]

:[70]
pushi.e 303
conv.i.v
pushi.e 321
conv.i.v
pushi.e 9
conv.i.v
pushi.e 2161
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[71]
push.v 777.headsprite
pushi.e 2162
cmp.i.v EQ
bf [73]

:[72]
pushi.e 300
conv.i.v
pushi.e 321
conv.i.v
pushi.e 9
conv.i.v
pushi.e 2162
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[73]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 400
conv.i.v
pushi.e 190
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2194
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [76]

:[75]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 400
conv.i.v
pushi.e 190
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2194
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[76]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 400
conv.i.v
pushi.e 370
conv.i.v
pushi.e 1
conv.i.v
push.s "spr_acrade_retire"@12032
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

:[78]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 400
conv.i.v
pushi.e 370
conv.i.v
pushi.e 0
conv.i.v
push.s "spr_acrade_retire"@12032
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v

:[end]