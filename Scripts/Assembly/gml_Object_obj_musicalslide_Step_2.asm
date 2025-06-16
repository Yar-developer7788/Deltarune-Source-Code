.localvar 2 arguments
.localvar 36486 _camY 17992
.localvar 36487 _percent 17993

:[0]
push.v self.sweettimer
push.e 1
add.i.v
pop.v.v self.sweettimer
push.v self.sweetcon
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 129
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 768
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sweet
pushi.e 1775
push.v self.sweet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.sweet
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 2
push.v self.sweet
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.sweet
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 129
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 768
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.table
pushi.e 499
push.v self.table
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.table
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 2
push.v self.table
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.table
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e -1
pop.v.i self.sweetcon

:[2]
push.v self.sweetcon
pushi.e 1
cmp.i.v EQ
bf [6]

:[3]
push.v self.sweet
pushi.e -9
push.v [stacktop]self.x
pushi.e 541
cmp.i.v GT
bf [5]

:[4]
push.d 0.1
conv.d.v
pushi.e 540
conv.i.v
push.v self.sweet
pushi.e -9
push.v [stacktop]self.x
call.i lerp(argc=3)
push.v self.sweet
pushi.e -9
pop.v.v [stacktop]self.x
b [6]

:[5]
pushi.e 540
push.v self.sweet
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 2
pop.v.i self.sweetcon

:[6]
push.v self.sweet
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [10]

:[7]
push.v self.fadingOut
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
call.i gml_Script_cameray(argc=0)
pushi.e 20
add.i.v
push.v self.sweettimer
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
sub.v.v
push.v self.sweet
pushi.e -9
pop.v.v [stacktop]self.y
b [10]

:[9]
push.d 0.125
conv.d.v
pushi.e -128
conv.i.v
push.v self.sweet
pushi.e -9
push.v [stacktop]self.y
call.i lerp(argc=3)
push.v self.sweet
pushi.e -9
pop.v.v [stacktop]self.y

:[10]
push.v self.sweet
pushi.e -9
push.v [stacktop]self.x
pushi.e 54
sub.i.v
push.v self.table
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.sweet
pushi.e -9
push.v [stacktop]self.y
pushi.e 58
add.i.v
push.v self.table
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [29]

:[11]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[12]
push.v 82.y
push.v self.gameIntroY
cmp.v.v GT
b [14]

:[13]
push.e 0

:[14]
bf [29]

:[15]
pushi.e 82
pushenv [17]

:[16]
pushi.e 656
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.fun
pushi.e 2
pop.v.i self.autorun
pushi.e 1
pop.v.i self.cutscene
pushi.e 1
pop.v.i self.battlemode

:[17]
popenv [16]
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [24]

:[18]
pushi.e 276
pushenv [23]

:[19]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [21]

:[20]
push.v self.x
pop.v.v other.susX
push.v self.y
pop.v.v other.susY
pushi.e 0
pop.v.b self.visible

:[21]
push.v self.name
push.s "ralsei"@72
cmp.s.v EQ
bf [23]

:[22]
push.v self.x
pop.v.v other.ralX
push.v self.y
pop.v.v other.ralY
pushi.e 0
pop.v.b self.visible

:[23]
popenv [19]

:[24]
pushi.e 129
conv.i.v
push.v self.susY
push.v self.susX
call.i gml_Script_instance_create(argc=3)
pop.v.v self.slideSus
pushi.e 129
conv.i.v
push.v self.ralY
push.v self.ralX
call.i gml_Script_instance_create(argc=3)
pop.v.v self.slideRal
push.v self.slideSus
pushi.e -9
pushenv [26]

:[25]
pushi.e 0
pop.v.i self.con
pushi.e 831
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.25
pop.v.d self.image_speed
push.i 900000
pop.v.i self.depth
pushi.e 0
pop.v.i self.timer

:[26]
popenv [25]
push.v self.slideRal
pushi.e -9
pushenv [28]

:[27]
pushi.e 0
pop.v.i self.con
pushi.e 815
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.25
pop.v.d self.image_speed
push.i 900000
pop.v.i self.depth
pushi.e 0
pop.v.i self.timer

:[28]
popenv [27]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 237
conv.i.v
call.i gml_Script_snd_loop(argc=1)
pop.v.v self.slideSound
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i self.state
pushi.e 244
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[29]
push.v self.slideRal
pushi.e 0
cmp.i.v NEQ
bf [47]

:[30]
push.v self.slideRal
pushi.e -9
pushenv [46]

:[31]
push.i 900000
pop.v.i self.depth
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [35]

:[32]
pushi.e 210
pop.v.i self.desiredpoint
call.i gml_Script_charaX(argc=0)
pushi.e 64
sub.i.v
pushi.e 10
sub.i.v
push.v self.desiredpoint
cmp.v.v GT
bf [34]

:[33]
call.i gml_Script_charaX(argc=0)
pushi.e 64
sub.i.v
pushi.e 10
sub.i.v
pop.v.v self.desiredpoint

:[34]
pushi.e 10
conv.i.v
pushi.e 148
conv.i.v
push.v self.desiredpoint
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[35]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [38]

:[36]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [38]

:[37]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[38]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [41]

:[39]
push.v other.slideSus
pushi.e -9
push.v [stacktop]self.con
pushi.e 2
cmp.i.v EQ
bf [41]

:[40]
pushi.e 3
push.v other.slideSus
pushi.e -9
pop.v.i [stacktop]self.con
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[41]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [44]

:[42]
push.v self.y
pushi.e 8
add.i.v
pop.v.v self.y
push.v self.image_alpha
push.d 0.99
mul.d.v
pop.v.v self.image_alpha
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
pushi.e 32
add.i.v
cmp.v.v GT
bf [44]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[44]
push.v self.y
pushi.e 360
cmp.i.v GT
bf [46]

:[45]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[46]
popenv [31]

:[47]
push.v self.slideSus
pushi.e 0
cmp.i.v NEQ
bf [63]

:[48]
push.v self.slideSus
pushi.e -9
pushenv [62]

:[49]
push.i 900000
pop.v.i self.depth
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [53]

:[50]
pushi.e 260
pop.v.i self.desiredpoint
push.v self.desiredpoint
call.i gml_Script_charaX(argc=0)
pushi.e 28
add.i.v
pushi.e 10
add.i.v
cmp.v.v LT
bf [52]

:[51]
call.i gml_Script_charaX(argc=0)
pushi.e 28
add.i.v
pushi.e 10
add.i.v
pop.v.v self.desiredpoint

:[52]
pushi.e 390
conv.i.v
pushi.e 260
conv.i.v
push.v self.desiredpoint
call.i clamp(argc=3)
pop.v.v self.desiredpoint
pushi.e 10
conv.i.v
pushi.e 148
conv.i.v
push.v self.desiredpoint
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[53]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [56]

:[54]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [56]

:[55]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[56]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [57]

:[57]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [60]

:[58]
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.y
push.v self.image_alpha
push.d 0.99
mul.d.v
pop.v.v self.image_alpha
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
pushi.e 32
add.i.v
cmp.v.v GT
bf [60]

:[59]
call.i instance_destroy(argc=0)
popz.v

:[60]
push.v self.y
pushi.e 360
cmp.i.v GT
bf [62]

:[61]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[62]
popenv [49]

:[63]
push.v self.state
pushi.e 0
cmp.i.v GT
bf [75]

:[64]
pushi.e 343
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [68]

:[65]
pushi.e 343
pushenv [67]

:[66]
push.v self.y
pushi.e 10
sub.i.v
pop.v.v self.y

:[67]
popenv [66]

:[68]
push.v self.tileLayer
call.i layer_get_y(argc=1)
push.v self.slideSpeed
sub.v.v
push.v self.tileLayer
call.i layer_y(argc=2)
popz.v
push.v self.tileLayer
call.i layer_get_y(argc=1)
pushi.e -960
cmp.i.v LT
bf [70]

:[69]
push.v self.tileLayer
call.i layer_get_y(argc=1)
pushi.e 480
add.i.v
push.v self.tileLayer
call.i layer_y(argc=2)
popz.v

:[70]
push.v self.spriteLayer
call.i layer_get_y(argc=1)
push.v self.slideSpeed
sub.v.v
push.v self.spriteLayer
call.i layer_y(argc=2)
popz.v
push.v self.spriteLayer
call.i layer_get_y(argc=1)
pushi.e -960
cmp.i.v LT
bf [72]

:[71]
push.v self.spriteLayer
call.i layer_get_y(argc=1)
pushi.e 480
add.i.v
push.v self.spriteLayer
call.i layer_y(argc=2)
popz.v

:[72]
pushi.e 82
pushenv [74]

:[73]
pushi.e 200
conv.i.v
push.v self.x
call.i max(argc=2)
pop.v.v self.x

:[74]
popenv [73]

:[75]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [78]

:[76]
pushi.e 1
pop.v.i self.sweetcon
push.d 0.03333333333333333
conv.d.v
pushi.e 1
conv.i.v
push.v self.lanesFadein
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.lanesFadein
push.v self.lanesFadein
pushi.e 1
cmp.i.v GTE
bf [78]

:[77]
pushi.e 2
pop.v.i self.state

:[78]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [81]

:[79]
push.d 0.06666666666666667
conv.d.v
pushi.e 1
conv.i.v
push.v self.lanesEndFadein
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.lanesEndFadein
push.v self.lanesEndFadein
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
pushi.e 3
pop.v.i self.state
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_free(argc=1)
popz.v
push.s "cyber.ogg"@19754
conv.s.v
call.i gml_Script_mus_initloop(argc=1)
popz.v

:[81]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [104]

:[82]
pushi.e 82
pushenv [84]

:[83]
pushi.e 656
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.autorun

:[84]
popenv [83]
call.i gml_Script_cameray(argc=0)
pop.v.v local._camY
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
bf [86]

:[85]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_get_track_position(argc=1)
pop.v.v self.soundTimeStep
b [87]

:[86]
push.v self.soundTimeStep
push.v self.bpf
add.v.v
pop.v.v self.soundTimeStep

:[87]
push.v self.soundTimeStep
push.v self.spb
div.v.v
pop.v.v self.beats
push.v self.beats
call.i floor(argc=1)
push.v self.beatsPrev
call.i floor(argc=1)
cmp.v.v GT
bf [89]

:[88]
push.v self.soundTimeStep
push.v self.spb
div.v.v
pop.v.v self.beats
pushi.e 1
pop.v.i self.flashAlpha

:[89]
push.v self.beats
pop.v.v self.beatsPrev
pushi.e 1101
pushenv [102]

:[90]
push.v self.targetBeat
push.v other.beats
sub.v.v
push.v other.bpf
div.v.v
pop.v.v self.framesAway
push.v self.framesAway
push.v self.frames
div.v.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v local._percent
pushloc.v local._camY
pushi.e 1
conv.i.v
push.v other.lanesEndY
neg.v
push.v other.lanesEndY
pushloc.v local._percent
call.i gml_Script_ease_out_cubic(argc=4)
add.v.v
pop.v.v self.y
pushloc.v local._camY
pushi.e 10
add.i.v
push.v self.y
call.i max(argc=2)
pop.v.v self.y
push.v self.active
conv.v.b
bf [92]

:[91]
push.v self.hit
conv.v.b
not.b
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[95]
push.v self.y
pushloc.v local._camY
sub.v.v
push.v self.lastY
sub.v.v
pop.v.v self.yChange
push.v self.y
pushloc.v local._camY
sub.v.v
pop.v.v self.lastY
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [97]

:[96]
pushi.e 1
pop.v.i self.active

:[97]
push.v self.framesAway
push.v self.frames
push.v self.fadeInSpeed
add.v.v
cmp.v.v LT
bf [99]

:[98]
pushi.e 1
conv.i.d
push.v self.fadeInSpeed
div.v.d
pushi.e 1
conv.i.v
push.v self.image_alpha
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.image_alpha

:[99]
push.v self.framesAway
push.v self.frames
cmp.v.v LT
bf [102]

:[100]
pushloc.v local._percent
pushi.e 0
cmp.i.v LTE
bf [102]

:[101]
call.i instance_destroy(argc=0)
popz.v
push.d 0.2
pop.v.d other.bigFlash

:[102]
popenv [90]
push.v self.flashAlpha
push.d 0.9
mul.d.v
pop.v.v self.flashAlpha
push.v self.bigFlash
push.d 0.95
mul.d.v
pop.v.v self.bigFlash
push.v self.beats
pushi.e 32
cmp.i.v GTE
bf [104]

:[103]
pushi.e 1
pop.v.b self.fadingOut

:[104]
push.v self.fadingOut
conv.v.b
bf [111]

:[105]
push.d 0.03333333333333333
conv.d.v
pushi.e 1
conv.i.v
push.v self.fadeToWhite
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.fadeToWhite
push.v self.fadeToWhite
pushi.e 1
cmp.i.v EQ
bf [111]

:[106]
pushi.e 82
pushenv [108]

:[107]
pushi.e 0
pop.v.i self.battlemode

:[108]
popenv [107]
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -9
pushenv [110]

:[109]
push.i 16777215
pop.v.i self.image_blend

:[110]
popenv [109]
pushi.e 3
pop.v.i global.interact
pushi.e 1
pop.v.i global.entrance
call.i room_goto_next(argc=0)
popz.v

:[111]
push.v 82.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[end]