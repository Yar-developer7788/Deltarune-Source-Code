.localvar 2 arguments
.localvar 27582 _ratio 14802

:[0]
push.v self.hide_ui
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
push.v self.topyy
pushi.e -800
cmp.i.v GTE
bf [4]

:[2]
push.v self.topyy
push.d 1.1
mul.d.v
pop.v.v self.topyy
push.v self.topyy
pushi.e 50
sub.i.v
pop.v.v self.topyy
push.v self.topyy
pushi.e -800
cmp.i.v LTE
bf [4]

:[3]
pushi.e -800
pop.v.i self.topyy

:[4]
b [32]

:[5]
push.v self.hide_ui
pushi.e 2
cmp.i.v EQ
bf [10]

:[6]
push.v self.topyy
pushi.e -800
cmp.i.v GTE
bf [9]

:[7]
push.v self.topyy
push.d 0.95
mul.d.v
pop.v.v self.topyy
push.v self.topyy
pushi.e 23
add.i.v
pop.v.v self.topyy
push.v self.topyy
pushi.e 50
cmp.i.v GTE
bf [9]

:[8]
pushi.e 0
pop.v.i self.hide_ui
pushi.e 50
pop.v.i self.topyy

:[9]
b [32]

:[10]
pushglb.v global.boxingphase
pushi.e 0
cmp.i.v EQ
bt [13]

:[11]
pushglb.v global.boxingphase
pushi.e 3
cmp.i.v EQ
bt [13]

:[12]
push.v 789.phase_transition
pushi.e 0
cmp.i.v GT
b [14]

:[13]
push.e 1

:[14]
bf [22]

:[15]
push.v self.topyy
pushi.e 0
cmp.i.v GTE
bf [18]

:[16]
push.v self.topyy
push.d 0.8
mul.d.v
pop.v.v self.topyy
push.v self.topyy
pushi.e 1
sub.i.v
pop.v.v self.topyy
push.v self.topyy
pushi.e 0
cmp.i.v LTE
bf [18]

:[17]
pushi.e 0
pop.v.i self.topyy

:[18]
push.v self.bottomyy
pushi.e 160
cmp.i.v LT
bf [21]

:[19]
push.v self.bottomyy
pushi.e 1
add.i.v
pop.v.v self.bottomyy
push.v self.bottomyy
push.d 1.2
mul.d.v
pop.v.v self.bottomyy
push.v self.bottomyy
pushi.e 160
cmp.i.v GTE
bf [21]

:[20]
pushi.e 160
pop.v.i self.bottomyy

:[21]
b [32]

:[22]
pushglb.v global.boxingphase
pushi.e 1
cmp.i.v EQ
bt [24]

:[23]
pushglb.v global.boxingphase
pushi.e 2
cmp.i.v EQ
b [25]

:[24]
push.e 1

:[25]
bf [32]

:[26]
push.v self.topyy
pushi.e 50
cmp.i.v LTE
bf [29]

:[27]
push.v self.topyy
push.d 1.2
mul.d.v
pop.v.v self.topyy
push.v self.topyy
pushi.e 4
add.i.v
pop.v.v self.topyy
push.v self.topyy
pushi.e 50
cmp.i.v GTE
bf [29]

:[28]
pushi.e 50
pop.v.i self.topyy

:[29]
push.v self.bottomyy
pushi.e 60
cmp.i.v GT
bf [32]

:[30]
push.v self.bottomyy
pushi.e 1
sub.i.v
pop.v.v self.bottomyy
push.v self.bottomyy
push.d 0.8
mul.d.v
pop.v.v self.bottomyy
push.v self.bottomyy
pushi.e 60
cmp.i.v LTE
bf [32]

:[31]
pushi.e 60
pop.v.i self.bottomyy

:[32]
push.v self.hide_ui_quick
pushi.e 1
cmp.i.v EQ
bt [35]

:[33]
pushi.e 1081
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [35]

:[34]
pushi.e 1080
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [36]

:[35]
push.e 1

:[36]
bf [38]

:[37]
exit.i

:[38]
push.v self.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [41]

:[39]
push.v 789.health_count
pushi.e 1
cmp.i.v LT
bf [41]

:[40]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [47]

:[43]
pushi.e 1
pop.v.i 789.health_count
push.v 789.attackpattern
pushi.e 99
cmp.i.v NEQ
bf [47]

:[44]
pushi.e 789
pushenv [46]

:[45]
call.i gml_Script_scr_qb_reset(argc=0)
popz.v

:[46]
popenv [45]

:[47]
push.v 777.health_count
pushi.e 0
cmp.i.v GT
bf [50]

:[48]
push.v self.sub_healthbar_count
pushi.e -1
cmp.i.v NEQ
bf [50]

:[49]
push.v 789.sprite_index
pushi.e 2131
cmp.i.v NEQ
b [51]

:[50]
push.e 0

:[51]
bf [end]

:[52]
push.d 3.75
pop.v.d local._ratio
push.v self.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
push.d 4.5
pop.v.d local._ratio

:[54]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "o_boxinghud_slash_Draw_0_gml_66_0"@27583
conv.s.v
push.s "BOSS"@27584
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -31
push.v self.topyy
add.v.i
pushi.e 50
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e -20
push.v self.topyy
add.v.i
pushi.e 2
add.i.v
pushi.e 122
push.v 789.health_count_max
pushloc.v local._ratio
div.v.v
add.v.i
pushi.e -30
push.v self.topyy
add.v.i
pushi.e 2
sub.i.v
pushi.e 118
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.d 0.85
conv.d.v
pushi.e 0
conv.i.v
pushi.e 255
conv.i.v
call.i merge_colour(argc=3)
pop.v.v self.col
push.v self.col
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e -20
push.v self.topyy
add.v.i
pushi.e 120
push.v 789.health_count_max
pushloc.v local._ratio
div.v.v
add.v.i
pushi.e -30
push.v self.topyy
add.v.i
pushi.e 120
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e -20
push.v self.topyy
add.v.i
pushi.e 120
push.v 789.health_count_prev
pushloc.v local._ratio
div.v.v
add.v.i
pushi.e -30
push.v self.topyy
add.v.i
pushi.e 120
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e -20
push.v self.topyy
add.v.i
pushi.e 120
push.v 789.health_count
pushloc.v local._ratio
div.v.v
add.v.i
pushi.e -30
push.v self.topyy
add.v.i
pushi.e 120
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.healthbar_flash
pushi.e 100
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.healthbar_flash
pushi.e 10
sub.i.v
pop.v.v self.healthbar_flash
pushi.e 0
conv.b.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
push.i 16777215
conv.i.v
pushi.e -20
push.v self.topyy
add.v.i
pushi.e 120
push.v 789.health_count
pushloc.v local._ratio
div.v.v
add.v.i
pushi.e -30
push.v self.topyy
add.v.i
pushi.e 120
conv.i.v
call.i draw_rectangle_colour(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v 789.health_count_prev_timer
pushi.e 1
sub.i.v
pop.v.v 789.health_count_prev_timer
push.v 789.health_count_prev_timer
pushi.e 1
cmp.i.v LT
bf [56]

:[55]
push.v 789.health_count_prev
push.v 789.health_count
cmp.v.v GT
b [57]

:[56]
push.e 0

:[57]
bf [60]

:[58]
push.v 789.health_count_prev
pushi.e 8
sub.i.v
pop.v.v 789.health_count_prev
push.v 789.health_count_prev
push.v 789.health_count
cmp.v.v LT
bf [60]

:[59]
push.v 789.health_count
pop.v.v 789.health_count_prev

:[60]
push.v 789.health_count
pushi.e 1
cmp.i.v LT
bf [119]

:[61]
push.v self.sub_healthbar_count
pushi.e 1
sub.i.v
pop.v.v self.sub_healthbar_count
push.v self.sub_healthbar_count
pushi.e -1
cmp.i.v EQ
bf [67]

:[62]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
pushi.e 0
pop.v.i 789.health_count

:[64]
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
pushi.e 1
pop.v.i 789.phase_transition

:[66]
b [119]

:[67]
push.v self.arcade
conv.v.b
bf [79]

:[68]
pushi.e 309
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [70]

:[69]
pushi.e 57
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[70]
pushi.e 322
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [72]

:[71]
pushi.e 116
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[72]
pushi.e 323
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [74]

:[73]
pushi.e 158
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[74]
pushi.e 324
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [76]

:[75]
pushi.e 123
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[76]
pushi.e 325
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [78]

:[77]
pushi.e 159
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[78]
pushi.e 321
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [90]

:[79]
pushi.e 57
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [81]

:[80]
pushi.e 57
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[81]
pushi.e 116
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [83]

:[82]
pushi.e 116
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[83]
pushi.e 158
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [85]

:[84]
pushi.e 158
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[85]
pushi.e 123
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [87]

:[86]
pushi.e 123
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[87]
pushi.e 159
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [89]

:[88]
pushi.e 159
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[89]
pushi.e 224
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[90]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [92]

:[91]
pushi.e 1800
pop.v.i 789.health_count_max

:[92]
push.v 789.health_count_max
pop.v.v 789.health_count
push.v 789.health_count_max
pop.v.v 789.health_count_prev
pushi.e 1
pop.v.i 789.phase_transition
pushi.e 1
pop.v.i 789.state
pushi.e 0
pop.v.i 789.combo
pushi.e 0
pop.v.i 789.times_hit_in_a_row
pushi.e 0
pop.v.i 789.pattern_state
push.v 777.beat_phase1_no_damage_taken_check
pushi.e 0
cmp.i.v EQ
bf [94]

:[93]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 527
pop.v.v [array]self.flag

:[94]
push.v 777.beat_phase2_no_damage_taken_check
pushi.e 0
cmp.i.v EQ
bf [96]

:[95]
push.v self.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
pushi.e 1
pop.v.i 777.beat_phase2_no_damage_taken

:[99]
push.v 842.sub_healthbar_count
pushi.e 1
cmp.i.v EQ
bf [104]

:[100]
pushi.e 789
pushenv [103]

:[101]
call.i gml_Script_scr_qb_reset(argc=0)
popz.v
pushi.e 2
pop.v.i self.attackpattern
push.v self.usedbaseball
pushi.e 0
cmp.i.v EQ
bf [103]

:[102]
push.d 1.4
pop.v.d self.attackpattern
pushi.e 1
pop.v.i self.usedbaseball

:[103]
popenv [101]
pushi.e 2
pop.v.i 840.recentphasetransition

:[104]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
push.v 777.beat_phase2_no_damage_taken
pushi.e 0
cmp.i.v EQ
b [107]

:[106]
push.e 0

:[107]
bf [111]

:[108]
pushi.e 789
pushenv [110]

:[109]
call.i gml_Script_scr_qb_reset(argc=0)
popz.v
pushi.e 15
pop.v.i self.attackpattern

:[110]
popenv [109]
pushi.e 3
pop.v.i 840.recentphasetransition

:[111]
push.v 842.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [113]

:[112]
push.v 777.beat_phase2_no_damage_taken
pushi.e 1
cmp.i.v EQ
b [114]

:[113]
push.e 0

:[114]
bf [118]

:[115]
pushi.e 789
pushenv [117]

:[116]
call.i gml_Script_scr_qb_reset(argc=0)
popz.v
pushi.e 21
pop.v.i self.attackpattern

:[117]
popenv [116]
pushi.e 1
pop.v.i 777.phase3_hit_check
pushi.e 3
pop.v.i 840.recentphasetransition

:[118]
pushi.e 826
conv.i.v
push.v self.y
push.v 777.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 3
pop.v.i 826.rep

:[119]
push.v self.sub_healthbar_count
pushi.e 2
cmp.i.v EQ
bf [121]

:[120]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.d 1.2
mul.d.v
push.v self.image_xscale
push.d 1.2
mul.d.v
push.v self.topyy
pushi.e 7
sub.i.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2178
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.topyy
pushi.e 7
sub.i.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2178
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[121]
push.v self.sub_healthbar_count
pushi.e 1
cmp.i.v GTE
bf [123]

:[122]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.d 1.2
mul.d.v
push.v self.image_xscale
push.d 1.2
mul.d.v
push.v self.topyy
pushi.e 7
sub.i.v
pushi.e 125
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2178
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.topyy
pushi.e 7
sub.i.v
pushi.e 125
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2178
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[123]
push.v self.sub_healthbar_count
pushi.e 1
cmp.i.v LTE
bf [125]

:[124]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.d 1.2
mul.d.v
push.v self.image_xscale
push.d 1.2
mul.d.v
push.v self.topyy
pushi.e 7
sub.i.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2179
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.topyy
pushi.e 7
sub.i.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2179
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[125]
push.v self.sub_healthbar_count
pushi.e 0
cmp.i.v EQ
bf [end]

:[126]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.d 1.2
mul.d.v
push.v self.image_xscale
push.d 1.2
mul.d.v
push.v self.topyy
pushi.e 7
sub.i.v
pushi.e 125
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2179
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.topyy
pushi.e 7
sub.i.v
pushi.e 125
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2179
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]