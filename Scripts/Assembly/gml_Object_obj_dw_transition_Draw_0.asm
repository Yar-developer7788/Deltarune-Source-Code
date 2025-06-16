.localvar 2 arguments
.localvar 107 i 16077
.localvar 30827 total_recruits 16101

:[0]
push.v self.index
pushi.e 1
add.i.v
pop.v.v self.index
push.v self.rect_draw
pushi.e 1
cmp.i.v EQ
bf [14]

:[1]
push.v self.rs
pushi.e 1
add.i.v
pop.v.v self.rs
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
push.v self.rect_amount
cmp.v.v LT
bf [14]

:[3]
push.i 173153
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.rsize
push.d 0.25
add.d.v
pop.i.v [array]self.rsize
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.rsize
push.d 0.25
add.d.v
pop.i.v [array]self.rsize

:[5]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.rsize
pushi.e 0
cmp.i.v GT
bf [13]

:[6]
pushi.e 5
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.rsize
push.d 0.8
mul.d.v
sub.v.i
pop.v.v self.r_darkest
push.v self.rs
pushi.e 20
cmp.i.v LT
bf [8]

:[7]
push.v self.r_darkest
push.v self.rs
pushi.e 20
conv.i.d
div.d.v
mul.v.v
pop.v.v self.r_darkest

:[8]
push.v self.r_darkest
pushi.e 0
cmp.i.v LT
bf [10]

:[9]
pushi.e 0
pop.v.i self.r_darkest

:[10]
push.v self.r_darkest
pushi.e 1
cmp.i.v GT
bf [12]

:[11]
pushi.e 1
pop.v.i self.r_darkest

:[12]
push.v self.r_darkest
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.r_color
pushi.e 1
conv.i.v
push.v self.r_color
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.rsize
push.v self.rh
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.rsize
mul.v.v
push.v self.rw
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.rsize
mul.v.v
push.v self.ry
call.i gml_Script_cameray(argc=0)
add.v.v
push.v self.rx
call.i gml_Script_camerax(argc=0)
add.v.v
pushi.e 0
conv.i.v
pushi.e 537
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[13]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [2]

:[14]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [22]

:[15]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 82
pushenv [17]

:[16]
pushi.e 1
pop.v.i self.cutscene

:[17]
popenv [16]
pushi.e 74
pushenv [19]

:[18]
pushi.e 0
pop.v.i self.follow
push.v 944.depth
pushi.e 10
sub.i.v
pop.v.v self.depth

:[19]
popenv [18]
pushi.e 1
pop.v.i self.sus_draw
pushi.e 980
pop.v.i self.sus_sprite
pushi.e 0
pop.v.i self.sus_index
pushi.e 663
pop.v.i self.kris_sprite
pushi.e 0
pop.v.i self.kris_index
push.d 1.2
pop.v.d self.sus_v
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 2
pop.v.i self.sus_v

:[21]
pushi.e 0
pop.v.i self.timer
pushi.e 9
pop.v.i self.con
pushi.e 0
pop.v.i self.doorblack

:[22]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [48]

:[23]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bt [25]

:[24]
push.v self.skiprunback
pushi.e 1
cmp.i.v EQ
b [26]

:[25]
push.e 1

:[26]
bf [31]

:[27]
push.v self.timer
pushi.e 40
cmp.i.v LT
bf [31]

:[28]
call.i gml_Script_snd_free_all(argc=0)
popz.v
push.v self.skiprunback
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.doorblack

:[30]
pushi.e 6
pop.v.i self.sus_v
push.d 0.4
pop.v.d self.sus_f
pushi.e 45
pop.v.i self.timer
push.v self.kris_x
pushi.e 4
sub.i.v
pop.v.v self.kris_x
pushi.e 541
pop.v.i self.sus_sprite
pushi.e 551
pop.v.i self.kris_sprite

:[31]
push.v self.timer
pushi.e 30
cmp.i.v LT
bf [33]

:[32]
push.v self.sus_index
push.d 0.2
add.d.v
pop.v.v self.sus_index

:[33]
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [37]

:[34]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 65
pushenv [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [35]
pushi.e 1
pop.v.i self.doorblack
pushi.e 0
pop.v.i self.sus_index
pushi.e 0
pop.v.i self.sus_v
push.v self.kris_x
pushi.e 4
sub.i.v
pop.v.v self.kris_x
pushi.e 541
pop.v.i self.sus_sprite
pushi.e 551
pop.v.i self.kris_sprite

:[37]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [39]

:[38]
pushi.e 541
pop.v.i self.sus_sprite
pushi.e 551
pop.v.i self.kris_sprite
pushi.e -5
pop.v.i self.sus_v
pushi.e 0
pop.v.i self.sus_f

:[39]
push.v self.timer
pushi.e 60
cmp.i.v GT
bf [41]

:[40]
push.v self.timer
pushi.e 68
cmp.i.v LT
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
push.v self.kris_y
pushi.e 1
sub.i.v
pop.v.v self.kris_y
push.v self.sus_index
push.d 0.25
add.d.v
pop.v.v self.sus_index

:[44]
push.v self.timer
pushi.e 68
cmp.i.v EQ
bf [46]

:[45]
push.d 0.15
pop.v.d self.sus_f
pushi.e -4
pop.v.i self.sus_v
push.v self.sus_y
pushi.e 2
sub.i.v
pop.v.v self.sus_y
push.v self.sus_x
pushi.e 2
sub.i.v
pop.v.v self.sus_x
pushi.e 539
pop.v.i self.sus_sprite
pushi.e 531
pop.v.i self.kris_sprite
pushi.e 15
pop.v.i self.con
pushi.e 0
pop.v.i self.soundtimer

:[46]
push.v self.doorblack
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.ry2
call.i gml_Script_cameray(argc=0)
add.v.v
push.v self.rx2
call.i gml_Script_camerax(argc=0)
add.v.v
push.v self.ry1
call.i gml_Script_cameray(argc=0)
add.v.v
push.v self.rx1
call.i gml_Script_camerax(argc=0)
add.v.v
call.i draw_rectangle(argc=5)
popz.v

:[48]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [55]

:[49]
pushi.e 0
pop.v.i self.rs
push.v self.ry2
push.v self.ry1
sub.v.v
pushi.e 100
conv.i.d
div.d.v
pop.v.v self.rh
push.v self.rx2
push.v self.rx1
sub.v.v
pushi.e 100
conv.i.d
div.d.v
pop.v.v self.rw
push.v self.rx1
push.v self.rx2
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.rx
push.v self.ry1
push.v self.ry2
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.ry
pushi.e 0
pop.v.i local.i

:[50]
pushloc.v local.i
pushi.e 8
cmp.i.v LT
bf [52]

:[51]
push.i 173153
setowner.e
pushi.e 1
pushloc.v local.i
pushi.e -2
mul.i.v
add.v.i
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.rsize
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [50]

:[52]
pushi.e 6
pop.v.i self.rect_amount
pushi.e 1
pop.v.i self.rect_draw
pushi.e 0
pop.v.i self.timer
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
pushi.e 3
pop.v.i self.rect_amount

:[54]
pushi.e 16
pop.v.i self.con
pushi.e 3
pop.v.i self.soundtimer
pushi.e 0
pop.v.i self.rectsound

:[55]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [69]

:[56]
pushi.e 6
pop.v.i self.soundthreshold
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
pushi.e 3
pop.v.i self.soundthreshold

:[58]
push.v self.soundtimer
push.e 1
add.i.v
pop.v.v self.soundtimer
push.v self.soundtimer
push.v self.soundthreshold
cmp.v.v GTE
bf [60]

:[59]
push.v self.rectsound
push.v self.rect_amount
cmp.v.v LT
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
pushi.e 0
pop.v.i self.soundtimer
pushi.e 244
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 244
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 244
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
push.v self.rectsound
push.e 1
add.i.v
pop.v.v self.rectsound

:[63]
push.v self.sus_index
push.d 0.25
add.d.v
pop.v.v self.sus_index
push.v self.sus_v
pushi.e 0
cmp.i.v GTE
bf [65]

:[64]
pushi.e 0
pop.v.i self.sus_f
push.v self.sus_v
push.d 0.005
add.d.v
pop.v.v self.sus_v

:[65]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
pushi.e 80
pop.v.i self.threshold
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
pushi.e 30
pop.v.i self.threshold

:[67]
push.v self.timer
push.v self.threshold
cmp.v.v GTE
bf [69]

:[68]
pushi.e 0
pop.v.i self.timer
pushi.e 17
pop.v.i self.con
pushi.e 0
pop.v.i self.sus_index

:[69]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [71]

:[70]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___background_set(argc=3)
popz.v
pushi.e 0
pop.v.i self.draw_rect
pushi.e 1
pop.v.i self.linecon
push.v self.sus_x
pop.v.v self.sus_x_current
push.v self.kris_x
pop.v.v self.kris_x_current
pushi.e 530
pop.v.i self.sus_sprite
pushi.e 535
pop.v.i self.kris_sprite
pushi.e 18
pop.v.i self.con
pushi.e 1
pop.v.i self.soundcon
pushi.e 60
pop.v.i self.radius

:[71]
push.v self.soundcon
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
pushi.e 245
conv.i.v
call.i gml_Script_snd_loop(argc=1)
pop.v.v self.dronesfx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.dronesfx
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 60
conv.i.v
push.d 0.5
conv.d.v
push.v self.dronesfx
call.i gml_Script_snd_volume(argc=3)
popz.v
push.d 0.1
conv.d.v
push.v self.dronesfx
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 0
pop.v.i self.dronetimer
pushi.e 2
pop.v.i self.soundcon

:[73]
push.v self.soundcon
pushi.e 2
cmp.i.v EQ
bf [79]

:[74]
push.v self.dronetimer
push.e 1
add.i.v
pop.v.v self.dronetimer
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
push.v self.dronetimer
push.e 1
add.i.v
pop.v.v self.dronetimer

:[76]
push.v self.dronetimer
pushi.e 80
conv.i.d
div.d.v
pop.v.v self.dronepitch
push.v self.dronepitch
pushi.e 1
cmp.i.v GTE
bf [78]

:[77]
pushi.e 1
pop.v.i self.dronepitch
pushi.e 3
pop.v.i self.soundcon

:[78]
push.v self.dronepitch
push.v self.dronesfx
call.i gml_Script_snd_pitch(argc=2)
popz.v

:[79]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [86]

:[80]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer

:[82]
push.v self.timer
pushi.e 36
conv.i.d
div.d.v
pushi.e 5
mul.i.v
pop.v.v self.sus_index
push.v self.sus_x_current
push.v self.timer
push.d 2.5
mul.d.v
call.i degtorad(argc=1)
call.i sin(argc=1)
push.v self.radius
mul.v.v
sub.v.v
pop.v.v self.sus_x
push.v self.kris_only
pushi.e 0
cmp.i.v EQ
bf [84]

:[83]
push.v self.kris_x_current
push.v self.timer
push.d 2.5
mul.d.v
call.i degtorad(argc=1)
call.i sin(argc=1)
push.v self.radius
mul.v.v
add.v.v
pop.v.v self.kris_x

:[84]
push.v self.timer
pushi.e 35
cmp.i.v GTE
bf [86]

:[85]
pushi.e 532
pop.v.i self.sus_sprite
pushi.e 549
pop.v.i self.kris_sprite
pushi.e 0
pop.v.i self.sus_index
pushi.e 19
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[86]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [91]

:[87]
push.v self.sus_index
push.d 0.2
add.d.v
pop.v.v self.sus_index
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
pushi.e 8
pop.v.i self.timer

:[89]
push.v self.timer
pushi.e 8
cmp.i.v GTE
bf [91]

:[90]
pushi.e 30
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.sus_draw

:[91]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [98]

:[92]
push.v self.kris_only
pushi.e 0
cmp.i.v EQ
bf [94]

:[93]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.sus_y
push.v self.sus_x
push.v self.index
pushi.e 4
conv.i.d
div.d.v
pushi.e 532
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[94]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.kris_y
push.v self.kris_x
push.v self.index
pushi.e 4
conv.i.d
div.d.v
pushi.e 549
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer

:[96]
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [98]

:[97]
pushi.e 31
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 534
conv.i.v
call.i sprite_get_width(argc=1)
pop.v.v self.sus_width
pushi.e 534
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.sus_height
push.v self.sus_height
pop.v.v self.sus_top
pushi.e 536
conv.i.v
call.i sprite_get_width(argc=1)
pop.v.v self.kris_width
pushi.e 536
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.kris_height
push.v self.kris_height
pop.v.v self.kris_top

:[98]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [142]

:[99]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.kris_only
pushi.e 0
cmp.i.v EQ
bf [101]

:[100]
push.v self.sus_y
push.v self.sus_x
push.v self.sus_top
push.v self.sus_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.index
pushi.e 4
conv.i.d
div.d.v
pushi.e 532
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[101]
push.v self.kris_y
push.v self.kris_x
push.v self.kris_top
push.v self.kris_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.index
pushi.e 4
conv.i.d
div.d.v
pushi.e 549
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
push.v self.kris_only
pushi.e 0
cmp.i.v EQ
bf [103]

:[102]
push.v self.sus_y
push.v self.sus_top
add.v.v
push.v self.sus_x
push.v self.sus_height
push.v self.sus_top
sub.v.v
push.v self.sus_width
push.v self.sus_top
pushi.e 0
conv.i.v
push.v self.index
pushi.e 4
conv.i.d
div.d.v
pushi.e 534
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[103]
push.v self.kris_y
push.v self.kris_top
add.v.v
push.v self.kris_x
push.v self.kris_height
push.v self.kris_top
sub.v.v
push.v self.kris_width
push.v self.kris_top
pushi.e 0
conv.i.v
push.v self.index
pushi.e 4
conv.i.d
div.d.v
pushi.e 536
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [118]

:[104]
pushi.e 74
pushenv [106]

:[105]
pushi.e 1
pop.v.i self.breakcon

:[106]
popenv [105]
pushbltn.v builtin.room
pushi.e 52
cmp.i.v EQ
bf [111]

:[107]
pushi.e 232
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[108]
pushloc.v local.i
pushi.e 1
cmp.i.v LT
bf [110]

:[109]
push.i 168175
setowner.e
pushi.e 2475
conv.i.v
push.v self.kris_y
pushi.e 15
add.i.v
push.v self.kris_x
pushi.e 15
add.i.v
call.i gml_Script_scr_marker(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.sparkle
push.i 133655
setowner.e
push.d 0.5
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133623
setowner.e
pushi.e 3
conv.i.v
pushi.e -3
conv.i.v
call.i random_range(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.i 133627
setowner.e
push.d 0.05
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.friction
push.i 133628
setowner.e
push.d -0.1
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.gravity
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [108]

:[110]
pushi.e 9
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v

:[111]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [113]

:[112]
pushi.e -5
pushi.e 387
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [114]

:[113]
push.e 0

:[114]
bf [118]

:[115]
pushi.e 232
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 1
add.i.v
pop.v.v local.total_recruits
pushi.e 0
pop.v.i local.i

:[116]
pushloc.v local.i
pushloc.v local.total_recruits
cmp.v.v LT
bf [118]

:[117]
push.i 168175
setowner.e
pushi.e 2475
conv.i.v
push.v self.kris_y
pushi.e 15
add.i.v
push.v self.kris_x
pushi.e 15
add.i.v
call.i gml_Script_scr_marker(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.sparkle
push.i 133655
setowner.e
push.d 0.5
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133623
setowner.e
pushi.e 3
conv.i.v
pushi.e -3
conv.i.v
call.i random_range(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.i 133627
setowner.e
push.d 0.05
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.friction
push.i 133628
setowner.e
push.d -0.1
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.gravity
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [116]

:[118]
push.v self.timer
pushi.e 4
cmp.i.v GTE
bf [136]

:[119]
push.v self.sus_top
pushi.e 2
cmp.i.v GT
bf [123]

:[120]
push.v self.sus_top
push.d 0.5
sub.d.v
pop.v.v self.sus_top
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
push.v self.sus_top
push.d 1.5
sub.d.v
pop.v.v self.sus_top

:[122]
b [124]

:[123]
pushi.e 0
pop.v.i self.sus_top

:[124]
push.v self.sus_top
pushi.e 2
cmp.i.v GTE
bf [126]

:[125]
push.v self.kris_only
pushi.e 0
cmp.i.v EQ
b [127]

:[126]
push.e 0

:[127]
bf [129]

:[128]
pushi.e 942
conv.i.v
push.v self.sus_y
push.v self.sus_top
add.v.v
push.v self.sus_x
pushi.e 3
add.i.v
push.v self.sus_width
pushi.e 6
sub.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sus_particle
push.v self.sus_y
push.v self.sus_top
add.v.v
push.v self.sus_x
pushi.e 1
conv.i.v
push.v self.sus_width
push.v self.sus_top
pushi.e 0
conv.i.v
push.v self.index
pushi.e 4
conv.i.d
div.d.v
pushi.e 546
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[129]
push.v self.kris_top
pushi.e 5
cmp.i.v GT
bf [133]

:[130]
push.v self.kris_top
push.d 0.5
sub.d.v
pop.v.v self.kris_top
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bf [132]

:[131]
push.v self.kris_top
push.d 1.5
sub.d.v
pop.v.v self.kris_top

:[132]
b [134]

:[133]
pushi.e 0
pop.v.i self.kris_top

:[134]
push.v self.kris_top
pushi.e 2
cmp.i.v GTE
bf [136]

:[135]
pushi.e 942
conv.i.v
push.v self.kris_y
push.v self.kris_top
add.v.v
push.v self.kris_x
pushi.e 3
add.i.v
push.v self.kris_width
pushi.e 6
sub.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kris_particle
push.v self.kris_y
push.v self.kris_top
add.v.v
push.v self.kris_x
pushi.e 1
conv.i.v
push.v self.kris_width
push.v self.kris_top
pushi.e 0
conv.i.v
push.v self.index
pushi.e 4
conv.i.d
div.d.v
pushi.e 533
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[136]
pushi.e 130
pop.v.i self.threshold
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bf [138]

:[137]
pushi.e 40
pop.v.i self.threshold

:[138]
push.v self.timer
push.v self.threshold
cmp.v.v GTE
bf [142]

:[139]
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bf [141]

:[140]
pushi.e 0
pop.v.i self.linecon

:[141]
push.v self.sus_y
call.i round(argc=1)
pop.v.v self.sus_y
push.v self.sus_x
call.i round(argc=1)
pop.v.v self.sus_x
push.v self.kris_y
call.i round(argc=1)
pop.v.v self.kris_y
push.v self.kris_x
call.i round(argc=1)
pop.v.v self.kris_x
pushi.e 0
pop.v.i self.timer
push.d -0.2
pop.v.d self.sus_v
push.d 0.01
pop.v.d self.sus_f
pushi.e 32
pop.v.i self.con

:[142]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [172]

:[143]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [147]

:[144]
pushi.e 547
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.megablack
push.v self.megablack
pushi.e -9
pushenv [146]

:[145]
pushi.e 150
pop.v.i self.depth
pushi.e 1
pop.v.i self.image_alpha
pushi.e -999
pop.v.i self.y
pushi.e 999
pop.v.i self.image_xscale
pushi.e 999
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_blend
pushi.e 1
pop.v.i self.persistent

:[146]
popenv [145]

:[147]
push.v self.timer
pushi.e 2
cmp.i.v EQ
bf [149]

:[148]
pushi.e 0
push.v self.megablack
pushi.e -9
pop.v.i [stacktop]self.y

:[149]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 0
cmp.i.v GTE
bf [151]

:[150]
push.v self.timer
pushi.e 8
cmp.i.v LT
b [152]

:[151]
push.e 0

:[152]
bf [156]

:[153]
push.v self.sus_v
push.d 0.5
sub.d.v
pop.v.v self.sus_v
push.v self.kris_only
pushi.e 0
cmp.i.v EQ
bf [155]

:[154]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.sus_y
push.v self.sus_x
pushi.e 0
conv.i.v
pushi.e 552
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[155]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.kris_y
push.v self.kris_x
pushi.e 0
conv.i.v
pushi.e 538
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[156]
push.v self.timer
pushi.e 8
cmp.i.v GTE
bf [158]

:[157]
push.v self.timer
pushi.e 12
cmp.i.v LT
b [159]

:[158]
push.e 0

:[159]
bf [163]

:[160]
push.v self.sus_v
pushi.e 1
add.i.v
pop.v.v self.sus_v
pushi.e 0
pop.v.i self.sus_f
push.v self.kris_only
pushi.e 0
cmp.i.v EQ
bf [162]

:[161]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.sus_y
push.v self.sus_x
pushi.e 1
conv.i.v
pushi.e 552
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[162]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.kris_y
push.v self.kris_x
pushi.e 1
conv.i.v
pushi.e 538
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[163]
push.v self.timer
pushi.e 12
cmp.i.v GTE
bf [165]

:[164]
push.v self.timer
pushi.e 13
cmp.i.v LTE
b [166]

:[165]
push.e 0

:[166]
bf [170]

:[167]
push.v self.sus_v
pushi.e 4
add.i.v
pop.v.v self.sus_v
push.v self.kris_only
pushi.e 0
cmp.i.v EQ
bf [169]

:[168]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.sus_y
push.v self.sus_x
pushi.e 2
conv.i.v
pushi.e 552
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[169]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.kris_y
push.v self.kris_x
pushi.e 2
conv.i.v
pushi.e 538
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[170]
push.v self.timer
pushi.e 14
cmp.i.v GTE
bf [172]

:[171]
pushi.e 4
pop.v.i self.soundcon
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.v self.dronesfx
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 13
pop.v.i self.sus_v
pushi.e 0
pop.v.i self.sus_f
pushi.e 0
pop.v.i self.timer
pushi.e 33
pop.v.i self.con
pushi.e 0
pop.v.i self.rect_draw

:[172]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [194]

:[173]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bf [175]

:[174]
push.v self.timer
pushi.e 31
cmp.i.v LT
b [176]

:[175]
push.e 0

:[176]
bf [178]

:[177]
pushi.e 31
pop.v.i self.timer

:[178]
push.v self.kris_only
pushi.e 0
cmp.i.v EQ
bf [180]

:[179]
push.d 0.25
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.sus_y
push.v self.sus_v
pushi.e 2
mul.i.v
sub.v.v
push.v self.sus_x
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e 542
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.sus_y
push.v self.sus_v
sub.v.v
push.v self.sus_x
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e 542
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.sus_y
push.v self.sus_x
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e 542
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[180]
push.d 0.25
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.kris_y
push.v self.sus_v
pushi.e 2
mul.i.v
sub.v.v
push.v self.kris_x
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e 544
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.kris_y
push.v self.sus_v
sub.v.v
push.v self.kris_x
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e 544
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.kris_y
push.v self.kris_x
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e 544
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.timer
pushi.e 14
cmp.i.v EQ
bf [182]

:[181]
pushi.e 0
pop.v.i self.linecon

:[182]
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [184]

:[183]
pushi.e -20
pop.v.i self.sus_y
pushi.e -14
pop.v.i self.kris_y

:[184]
push.v self.timer
pushi.e 30
cmp.i.v GT
bf [194]

:[185]
push.v self.skiprunback
pushi.e 1
cmp.i.v EQ
bf [187]

:[186]
push.v self.timer
pushi.e 36
cmp.i.v EQ
b [188]

:[187]
push.e 0

:[188]
bf [190]

:[189]
pushi.e 240
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[190]
push.v self.timer
pushi.e 39
cmp.i.v EQ
bf [192]

:[191]
pushi.e 240
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[192]
push.v self.sus_y
push.v self.finaly
pushi.e 8
sub.i.v
cmp.v.v GTE
bf [194]

:[193]
pushi.e 34
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.sus_v
push.v self.finaly
pushi.e 6
add.i.v
pop.v.v self.kris_y
push.v self.finaly
pop.v.v self.sus_y
pushi.e 0
pop.v.i self.getup_index
pushi.e 1
pop.v.i self.fake_screenshake
pushi.e 8
pop.v.i self.fake_shakeamount
push.v self.kris_x
call.i gml_Script_camerax(argc=0)
sub.v.v
pop.v.v self.remkrisx
push.v self.kris_y
call.i gml_Script_cameray(argc=0)
sub.v.v
pop.v.v self.remkrisy
push.v self.sus_x
call.i gml_Script_camerax(argc=0)
sub.v.v
pop.v.v self.remsusx
push.v self.sus_y
call.i gml_Script_cameray(argc=0)
sub.v.v
pop.v.v self.remsusy

:[194]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [247]

:[195]
push.v self.dronesfx
call.i gml_Script_snd_stop(argc=1)
popz.v
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bf [197]

:[196]
push.v self.timer
pushi.e 15
cmp.i.v LT
b [198]

:[197]
push.e 0

:[198]
bf [200]

:[199]
pushi.e 15
pop.v.i self.timer

:[200]
push.v self.timer
pushi.e 1
cmp.i.v GT
bf [204]

:[201]
push.v self.kris_only
pushi.e 0
cmp.i.v EQ
bf [203]

:[202]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
push.v self.dz
mul.v.i
pushi.e 1
push.v self.dz
mul.v.i
push.v self.sus_y
push.v self.dz
mul.v.v
push.v self.sus_x
push.v self.dz
mul.v.v
push.v self.fake_shakeamount
add.v.v
push.v self.getup_index
pushi.e 548
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[203]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
push.v self.dz
mul.v.i
pushi.e 1
push.v self.dz
mul.v.i
push.v self.kris_y
push.v self.dz
mul.v.v
push.v self.kris_x
push.v self.dz
mul.v.v
push.v self.fake_shakeamount
add.v.v
push.v self.getup_index
pushi.e 540
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[204]
push.v self.timer
pushi.e 26
cmp.i.v EQ
bf [208]

:[205]
push.v self.remkrisx
pop.v.v self.kris_x
push.v self.remkrisy
pop.v.v self.kris_y
push.v self.remsusx
pop.v.v self.sus_x
push.v self.remsusy
pop.v.v self.sus_y
pushi.e -5
pushi.e 302
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [207]

:[206]
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 302
pop.v.v [array]self.flag

:[207]
call.i gml_Script_scr_become_dark(argc=0)
popz.v
pushglb.v global.darkzone
pushi.e 1
add.i.v
pop.v.v self.dz
push.v self.nextroom
call.i room_goto(argc=1)
popz.v

:[208]
push.v self.timer
pushi.e 27
cmp.i.v EQ
bf [216]

:[209]
pushi.e 241
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 82
pushenv [211]

:[210]
pushi.e -999
pop.v.i self.x
pushi.e 1
pop.v.i self.cutscene
pushi.e 0
pop.v.i self.visible

:[211]
popenv [210]
pushi.e 276
pushenv [213]

:[212]
pushi.e -999
pop.v.i self.x
pushi.e 0
pop.v.i self.visible

:[213]
popenv [212]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [216]

:[214]
pushglb.v global.plot
pushi.e 9
cmp.i.v EQ
bf [216]

:[215]
push.v self.kris_y
pop.v.v 82.y
push.v self.kris_y
pushi.e 200
add.i.v
pop.v.v self.kris_y
call.i gml_Script_cameray(argc=0)
pushi.e 400
add.i.v
call.i gml_Script_cameray_set(argc=1)
popz.v

:[216]
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [218]

:[217]
push.v self.timer
pushi.e 60
cmp.i.v LT
b [219]

:[218]
push.e 0

:[219]
bf [226]

:[220]
push.v self.megablack
pushi.e -9
pushenv [222]

:[221]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha

:[222]
popenv [221]
push.v self.quick_mode
pushi.e 1
cmp.i.v EQ
bf [226]

:[223]
push.v self.megablack
pushi.e -9
pushenv [225]

:[224]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha

:[225]
popenv [224]

:[226]
push.v self.timer
pushi.e 50
cmp.i.v EQ
bf [228]

:[227]
pushi.e 1
pop.v.i self.getup_index

:[228]
push.v self.timer
pushi.e 53
cmp.i.v EQ
bf [230]

:[229]
pushi.e 2
pop.v.i self.getup_index

:[230]
push.v self.timer
pushi.e 55
cmp.i.v EQ
bf [247]

:[231]
push.v self.megablack
pushi.e -9
pushenv [233]

:[232]
call.i instance_destroy(argc=0)
popz.v

:[233]
popenv [232]
pushi.e 0
pop.v.i self.persistent
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
push.v self.kris_x
pushi.e 2
mul.i.v
pushi.e 8
add.i.v
pop.v.v 82.x
push.v self.kris_y
pushi.e 2
mul.i.v
pushi.e 4
add.i.v
pop.v.v 82.y
pushi.e 82
pushenv [235]

:[234]
pushi.e 1
pop.v.i self.visible

:[235]
popenv [234]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [239]

:[236]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pushenv [238]

:[237]
call.i instance_destroy(argc=0)
popz.v

:[238]
popenv [237]

:[239]
push.v self.kris_only
pushi.e 0
cmp.i.v EQ
bf [241]

:[240]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [242]

:[241]
push.e 0

:[242]
bf [246]

:[243]
push.i 133617
setowner.e
push.v self.sus_x
pushi.e 2
mul.i.v
pushi.e 10
add.i.v
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
push.v self.sus_y
pushi.e 2
mul.i.v
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 276
pushenv [245]

:[244]
pushi.e 1
pop.v.i self.visible
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v
push.i 165705
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.target
conv.v.i
pop.v.v [array]self.facing
push.v self.dsprite
pop.v.v self.sprite_index

:[245]
popenv [244]

:[246]
call.i instance_destroy(argc=0)
popz.v

:[247]
push.v self.sus_draw
pushi.e 1
cmp.i.v EQ
bf [end]

:[248]
pushi.e 74
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [250]

:[249]
push.v self.kris_x
pushi.e 14
add.i.v
pop.v.v 74.x
push.v self.kris_y
pushi.e 2
sub.i.v
pop.v.v 74.y

:[250]
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [254]

:[251]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.kris_y
push.v self.kris_x
push.v self.fake_shakeamount
add.v.v
push.v self.sus_index
push.v self.kris_sprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.kris_only
pushi.e 0
cmp.i.v EQ
bf [253]

:[252]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.sus_y
push.v self.sus_x
push.v self.fake_shakeamount
add.v.v
push.v self.sus_index
push.v self.sus_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[253]
b [end]

:[254]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.kris_y
pushi.e 2
mul.i.v
push.v self.kris_x
pushi.e 2
mul.i.v
push.v self.fake_shakeamount
add.v.v
push.v self.sus_index
push.v self.kris_sprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.kris_only
pushi.e 0
cmp.i.v EQ
bf [end]

:[255]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.sus_y
pushi.e 2
mul.i.v
push.v self.sus_x
pushi.e 2
mul.i.v
push.v self.fake_shakeamount
add.v.v
push.v self.sus_index
push.v self.sus_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[end]