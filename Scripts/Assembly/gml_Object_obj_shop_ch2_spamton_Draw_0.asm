.localvar 2 arguments
.localvar 27870 y1_off 15215
.localvar 27871 y2_off 15216
.localvar 28782 condition 15217
.localvar 28894 stringscale 15220

:[0]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [6]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [6]

:[3]
push.v self.i
call.i string(argc=1)
call.i ord(argc=1)
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [5]

:[4]
push.v self.i
pop.v.v global.fe

:[5]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[6]
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
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2511
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.greybg
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
b [26]

:[8]
push.v self.glitchtimer
push.e 1
add.i.v
pop.v.v self.glitchtimer
push.v self.glitchtimer2
push.e 1
add.i.v
pop.v.v self.glitchtimer2
push.v self.glitchtimer
pushi.e 1
cmp.i.v EQ
bf [12]

:[9]
pushi.e 0
pop.v.i self.i

:[10]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [12]

:[11]
push.i 172585
setowner.e
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
push.v self.i
add.v.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
pushi.e 10
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.randoml
push.i 172586
setowner.e
push.v self.siner
pushi.e 11
conv.i.d
div.d.v
push.v self.i
add.v.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
pushi.e 10
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.randomw
push.i 172587
setowner.e
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
push.v self.i
add.v.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
pushi.e 15
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.randomx
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [10]

:[12]
push.v self.glitchtimer
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
pop.v.i self.glitchtimer

:[14]
push.v self.glitchtimer2
pushi.e 1
cmp.i.v EQ
bf [18]

:[15]
pushi.e 0
pop.v.i self.i

:[16]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [18]

:[17]
push.i 172588
setowner.e
pushi.e 300
conv.i.v
call.i random(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.randoml2
push.i 172589
setowner.e
pushi.e 200
conv.i.v
call.i random(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.randomt2
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [16]

:[18]
push.v self.glitchtimer2
pushi.e 12
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i self.glitchtimer2

:[20]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 240
conv.i.v
pushi.e 540
conv.i.v
pushi.e 0
conv.i.v
pushi.e 520
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
pop.v.i self.j

:[21]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [26]

:[22]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
push.v self.j
pushi.e 16
mul.i.v
pushi.e 16
conv.i.v
pushi.e 8
conv.i.v
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.randomt2
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.randoml2
pushi.e 0
conv.i.v
pushi.e 2511
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 0
pop.v.i self.i

:[23]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [25]

:[24]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.j
pushi.e 80
mul.i.v
pushi.e 480
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.randomx
add.v.i
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
push.v self.j
add.v.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pushi.e 40
conv.i.v
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.randomw
add.v.i
pushi.e 40
push.v self.j
mul.v.i
pushi.e 240
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.randoml
add.v.i
pushi.e 0
conv.i.v
pushi.e 2511
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [23]

:[25]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [21]

:[26]
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
pushi.e 114
conv.i.v
pushi.e 556
conv.i.v
push.v self.phoneindex
pushi.e 2510
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_get_track_position(argc=1)
pop.v.v self.trackpos
push.v self.phoneringing
pushi.e 0
cmp.i.v EQ
bf [42]

:[27]
push.v self.trackpos
push.d 25.305
cmp.d.v GTE
bf [29]

:[28]
push.v self.trackpos
push.d 25.345000000000002
cmp.d.v LTE
b [30]

:[29]
push.e 0

:[30]
bt [39]

:[31]
push.v self.trackpos
push.d 30.892999999999997
cmp.d.v GTE
bf [33]

:[32]
push.v self.trackpos
push.d 30.933
cmp.d.v LTE
b [34]

:[33]
push.e 0

:[34]
bt [39]

:[35]
push.v self.trackpos
push.d 36.426
cmp.d.v GTE
bf [37]

:[36]
push.v self.trackpos
push.d 36.466
cmp.d.v LTE
b [38]

:[37]
push.e 0

:[38]
b [40]

:[39]
push.e 1

:[40]
bf [42]

:[41]
pushi.e 1
pop.v.i self.phoneringing

:[42]
push.v self.phoneringing
pushi.e 1
cmp.i.v EQ
bf [45]

:[43]
push.v self.phoneindex
push.d 0.25
add.d.v
pop.v.v self.phoneindex
push.v self.phoneindex
pushi.e 10
cmp.i.v GT
bf [45]

:[44]
pushi.e 0
pop.v.i self.phoneindex
pushi.e 0
pop.v.i self.phoneringing

:[45]
pushglb.v global.fe
pushi.e 0
cmp.i.v EQ
bf [47]

:[46]
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 200
push.v self.spamtonx
add.v.i
pushi.e 0
conv.i.v
pushi.e 2512
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[47]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 200
push.v self.spamtonx
add.v.i
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
pushi.e 2514
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[49]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [51]

:[50]
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.vibratey
pushi.e 200
push.v self.spamtonx
add.v.i
push.v self.vibratex
add.v.v
pushi.e 0
conv.i.v
pushi.e 2513
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[51]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [53]

:[52]
push.v self.mouthsiner
push.e 1
add.i.v
pop.v.v self.mouthsiner
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 200
push.v self.spamtonx
add.v.i
pushi.e 4
conv.i.v
pushi.e 2513
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 6
push.v self.mouthsiner
push.d 1.5
div.d.v
call.i sin(argc=1)
pushi.e 18
mul.i.v
add.v.i
pushi.e 200
push.v self.spamtonx
add.v.i
pushi.e 1
conv.i.v
pushi.e 2513
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
push.v self.mouthsiner
push.d 1.5
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.i
pushi.e 200
push.v self.spamtonx
add.v.i
pushi.e 2
conv.i.v
pushi.e 2513
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[53]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [55]

:[54]
push.v self.mouthsiner
push.e 1
add.i.v
pop.v.v self.mouthsiner
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 200
push.v self.spamtonx
add.v.i
pushi.e 4
conv.i.v
pushi.e 2513
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 6
push.v self.mouthsiner
call.i sin(argc=1)
pushi.e 18
mul.i.v
add.v.i
pushi.e 200
push.v self.spamtonx
add.v.i
pushi.e 1
conv.i.v
pushi.e 2513
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
push.v self.mouthsiner
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.i
pushi.e 200
push.v self.spamtonx
add.v.i
pushi.e 2
push.v self.mouthsiner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
call.i abs(argc=1)
add.v.i
pushi.e 2513
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[55]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [59]

:[56]
push.v self.mouthsiner
push.e 1
add.i.v
pop.v.v self.mouthsiner
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 200
push.v self.spamtonx
add.v.i
pushi.e 4
conv.i.v
pushi.e 2513
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 6
push.v self.mouthsiner
call.i sin(argc=1)
pushi.e 18
mul.i.v
add.v.i
pushi.e 200
push.v self.spamtonx
add.v.i
pushi.e 1
conv.i.v
pushi.e 2513
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.mouthsiner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 0
cmp.i.v LT
bf [58]

:[57]
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
pushi.e 2
push.v self.mouthsiner
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.i
pushi.e 200
push.v self.spamtonx
add.v.i
pushi.e 200
add.i.v
pushi.e 2
push.v self.mouthsiner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
call.i abs(argc=1)
add.v.i
pushi.e 2513
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [59]

:[58]
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
push.v self.mouthsiner
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.i
pushi.e 200
push.v self.spamtonx
add.v.i
pushi.e 2
push.v self.mouthsiner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
call.i abs(argc=1)
add.v.i
pushi.e 2513
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[59]
pushglb.v global.fe
pushi.e 6
cmp.i.v EQ
bf [63]

:[60]
push.v self.mouthsiner
push.e 1
add.i.v
pop.v.v self.mouthsiner
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 200
push.v self.spamtonx
add.v.i
pushi.e 4
conv.i.v
pushi.e 2513
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 6
push.v self.mouthsiner
call.i sin(argc=1)
pushi.e 18
mul.i.v
add.v.i
pushi.e 200
push.v self.spamtonx
add.v.i
pushi.e 1
conv.i.v
pushi.e 2513
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.mouthsiner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.8
cmp.d.v LT
bf [62]

:[61]
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.d 2.4
conv.d.v
pushi.e 2
push.v self.mouthsiner
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.i
pushi.e 200
push.v self.spamtonx
add.v.i
pushi.e 2
push.v self.mouthsiner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
call.i abs(argc=1)
add.v.i
pushi.e 2513
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [63]

:[62]
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.d 2.4
conv.d.v
pushi.e 2
push.v self.mouthsiner
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.i
push.v self.vibratey
pushi.e 2
mul.i.v
add.v.v
pushi.e 200
push.v self.spamtonx
add.v.i
push.v self.vibratex
add.v.v
pushi.e 1
conv.i.v
pushi.e 2516
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[63]
pushglb.v global.fe
pushi.e 7
cmp.i.v EQ
bf [65]

:[64]
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.vibratey
pushi.e 200
push.v self.spamtonx
add.v.i
push.v self.vibratex
add.v.v
pushi.e 0
conv.i.v
pushi.e 2515
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[65]
pushglb.v global.fe
pushi.e 8
cmp.i.v EQ
bf [67]

:[66]
push.v self.spamtonalpha
push.v self.siner
pushi.e 62
conv.i.d
div.d.v
call.i cos(argc=1)
call.i abs(argc=1)
push.d 0.8
mul.d.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
push.v self.spamtonx
pushi.e 260
add.i.v
pushi.e 60
conv.i.v
pushi.e 58
conv.i.v
push.v self.siner
neg.v
pushi.e 30
mod.i.v
push.v self.siner
pushi.e 50
mod.i.v
pushi.e 1
conv.i.v
pushi.e 2516
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.spamtonalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 200
push.v self.spamtonx
add.v.i
pushi.e 0
conv.i.v
pushi.e 2516
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[67]
pushglb.v global.fe
pushi.e 9
cmp.i.v EQ
bf [69]

:[68]
push.v self.spamtonalpha
pushi.e 255
conv.i.v
pushi.e 60
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 15
mul.i.v
add.v.i
push.v self.siner
pushi.e 8
mul.i.v
pushi.e 255
mod.i.v
call.i make_color_hsv(argc=3)
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 200
push.v self.spamtonx
add.v.i
pushi.e 0
conv.i.v
pushi.e 2513
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[69]
pushglb.v global.fe
pushi.e 0
cmp.i.v EQ
bf [72]

:[70]
push.v self.pause_music
conv.v.b
bf [72]

:[71]
pushi.e 0
pop.v.b self.pause_music
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_resume(argc=1)
popz.v

:[72]
pushglb.v global.fe
pushi.e 8
cmp.i.v EQ
bf [73]

:[73]
push.v self.vibrationtimer
push.e 1
add.i.v
pop.v.v self.vibrationtimer
push.v self.vibrationtimer
pushi.e 2
cmp.i.v EQ
bf [75]

:[74]
pushi.e 0
pop.v.i self.vibrationtimer
pushi.e 6
conv.i.v
call.i random(argc=1)
pop.v.v self.vibratex
pushi.e 6
conv.i.v
call.i random(argc=1)
pop.v.v self.vibratey

:[75]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.numbertimer
push.e 1
add.i.v
pop.v.v self.numbertimer
push.v self.numbertimer
pushi.e 10
cmp.i.v EQ
bf [77]

:[76]
push.i 99999
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.randomnumber
pushi.e 1
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.i
pop.v.v self.randomscale
pushi.e 0
pop.v.i self.numbertimer

:[77]
push.v self.greybg
pushi.e 1
cmp.i.v EQ
bf [86]

:[78]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.greybgtimer
pushi.e 320
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2511
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.greybgtimer
pushi.e 120
cmp.i.v LT
bf [80]

:[79]
push.v self.greybgtimer
pushi.e 1
add.i.v
pop.v.v self.greybgtimer

:[80]
push.v self.greybgtimer
pushi.e 120
cmp.i.v EQ
bf [84]

:[81]
pushi.e 4
pop.v.i self.menu
pushi.e 2
pop.v.i self.sell
pushi.e 64
pushenv [83]

:[82]
call.i instance_destroy(argc=0)
popz.v

:[83]
popenv [82]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_stop(argc=1)
popz.v
push.i 231459
setowner.e
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_play(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
push.d 0.7
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 121
pop.v.i self.greybgtimer

:[84]
push.v self.greybgtimer
pushi.e 999
cmp.i.v GT
bf [86]

:[85]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[86]
push.i 8388608
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 900
conv.i.v
pushi.e 650
conv.i.v
pushi.e 240
conv.i.v
pushi.e -1
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_shopmenu(argc=1)
popz.v
push.v self.menu
pushi.e 3
cmp.i.v LTE
bt [88]

:[87]
push.v self.menu
pushi.e 10
cmp.i.v GTE
b [89]

:[88]
push.e 1

:[89]
bf [91]

:[90]
pushi.e 480
conv.i.v
pushi.e 415
conv.i.v
pushi.e 240
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_darkbox_black(argc=4)
popz.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 240
conv.i.v
pushi.e 400
conv.i.v
call.i gml_Script_scr_darkbox_black(argc=4)
popz.v

:[91]
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [93]

:[92]
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
pushi.e 240
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_darkbox_black(argc=4)
popz.v

:[93]
push.v self.menu
pushi.e 0
cmp.i.v EQ
bf [109]

:[94]
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.selling
pushi.e 0
pop.v.i self.sidemessage
push.i 166593
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.menuc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.menuc
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [98]

:[95]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_272_0"@28711
conv.s.v
push.s "* HURRY UP AND BUY!"@28712
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.mainmessage
pushi.e 0
cmp.i.v EQ
bf [97]

:[96]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_274_0"@28713
conv.s.v
push.s "* HEY EVERY       !&* IT'S ME^1, SPAMTON G.& &SPAMTON!"@28714
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[97]
pushi.e 64
conv.i.v
pushi.e 270
conv.i.v
pushi.e 30
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[98]
pushi.e 3
pop.v.i self.menumax
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_282_0"@28715
conv.s.v
push.s "BUY"@28716
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 260
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_283_0"@28717
conv.s.v
push.s "BUYMORE!!!"@28718
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 300
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_284_0"@28719
conv.s.v
push.s "TALKING"@28720
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 340
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_285_0"@28721
conv.s.v
push.s "ESCAPE"@28722
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 380
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 135
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 20
mul.i.v
add.v.i
pushi.e 2
mul.i.v
pushi.e 450
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [109]

:[99]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 1
pop.v.i self.mainmessage
pushi.e 64
pushenv [101]

:[100]
call.i instance_destroy(argc=0)
popz.v

:[101]
popenv [100]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [103]

:[102]
pushi.e 1
pop.v.i self.menu

:[103]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
pushi.e 1
pop.v.i self.menu

:[105]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 2
cmp.i.v EQ
bf [107]

:[106]
pushi.e 3
pop.v.i self.menu

:[107]
pushi.e -1
pushi.e 0
push.v [array]self.menuc
pushi.e 3
cmp.i.v EQ
bf [109]

:[108]
pushi.e 2
pop.v.i self.sell
pushi.e 4
pop.v.i self.menu

:[109]
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [111]

:[110]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [112]

:[111]
push.e 1

:[112]
bf [213]

:[113]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.menu
pushi.e 1
cmp.i.v EQ
bf [115]

:[114]
push.v self.moneytimer
push.e 1
add.i.v
pop.v.v self.moneytimer

:[115]
push.v self.moneytimer
pushi.e 15
cmp.i.v GTE
bf [119]

:[116]
push.i 172504
setowner.e
push.i 49030
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.buyvalue
pushi.e 50
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.buyvalue
pushi.e 50
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pushi.e -1
pushi.e 2
pop.v.v [array]self.buyvalue
pushi.e 50
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pushi.e -1
pushi.e 3
pop.v.v [array]self.buyvalue
push.v self.moneytimercount
push.e 1
add.i.v
pop.v.v self.moneytimercount
push.v self.moneytimercount
pushi.e 10
cmp.i.v EQ
bf [118]

:[117]
pushi.e 60
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.buyvalue
pushi.e 0
pop.v.i self.moneytimercount

:[118]
push.d -0.1
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.runawayscale
pushi.e 0
pop.v.i self.moneytimer

:[119]
pushi.e 0
pop.v.i self.i

:[120]
push.v self.i
push.v self.itemtotal
cmp.v.v LT
bf [125]

:[121]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.soldout
pushi.e 1
cmp.i.v LT
bf [123]

:[122]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shopitemname
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.i
pushi.e 40
mul.i.v
add.v.i
pushi.e 60
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_337_0"@28723
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.buyvalue
call.i string(argc=1)
push.s "~1 KROMER"@28724
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushi.e 260
push.v self.i
pushi.e 40
mul.i.v
add.v.i
pushi.e 240
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
b [124]

:[123]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_339_0"@28725
conv.s.v
push.s "--SOLD OUT--"@28726
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 260
push.v self.i
pushi.e 40
mul.i.v
add.v.i
pushi.e 60
conv.i.v
call.i draw_text(argc=3)
popz.v

:[124]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [120]

:[125]
pushi.e 0
conv.i.v
push.d 1.4
push.v self.runawayscale
add.v.d
pushi.e 2
push.v self.runawayscale
add.v.i
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_342_0"@28727
conv.s.v
push.s "RUN AWAY"@28728
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 260
push.v self.itemtotal
pushi.e 40
mul.i.v
add.v.i
pushi.e 60
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
push.v self.menu
pushi.e 1
cmp.i.v EQ
bf [160]

:[126]
pushi.e 4
pop.v.i self.menumax
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [142]

:[127]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [129]

:[128]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_352_0"@28729
conv.s.v
push.s "\\E0DEALS SO&GOOD I'LL&[$!$$]&MYSELF!"@28730
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[129]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [131]

:[130]
pushi.e 10
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self._rr
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_356_0"@28731
conv.s.v
push.s "\\E2DELICIOUS&KROMER"@28732
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[131]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [133]

:[132]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_359_0"@28733
conv.s.v
push.s "\\E2WHAT!?&YOU WERE&SO CLOSE!!"@28734
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[133]
push.v self.sidemessage
pushi.e 3
cmp.i.v EQ
bf [135]

:[134]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_360_0"@28735
conv.s.v
push.s "\\E2MONEY NO"@28736
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[135]
push.v self.sidemessage
pushi.e 4
cmp.i.v EQ
bf [137]

:[136]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_361_0"@28737
conv.s.v
push.s "\\E2YOU HAVE&TOO MUCH& &MONEY"@28738
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[137]
push.v self.sidemessage
pushi.e 5
cmp.i.v EQ
bf [139]

:[138]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_362_0"@28739
conv.s.v
push.s "\\E2[Storing up&for the&winter!]"@28740
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[139]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [141]

:[140]
push.i 231251
setowner.e
push.s "obj_shop1_slash_Draw_0_gml_153_0"@27868
conv.s.v
push.s "/*"@27869
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[141]
pushi.e 64
conv.i.v
pushi.e 260
conv.i.v
pushi.e 450
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[142]
pushi.e 270
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 40
mul.i.v
add.v.i
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [145]

:[143]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [145]

:[144]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.soldout
pushi.e 1
cmp.i.v NEQ
b [146]

:[145]
push.e 0

:[146]
bf [151]

:[147]
pushi.e 2
pop.v.i self.menu
pushi.e 2
pop.v.i self.onebuffer
pushi.e 64
pushenv [149]

:[148]
call.i instance_destroy(argc=0)
popz.v

:[149]
popenv [148]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
push.v self.menumax
cmp.v.v EQ
bf [151]

:[150]
pushi.e 0
pop.v.i self.menu

:[151]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [154]

:[152]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [154]

:[153]
push.v self.onebuffer
pushi.e 2
cmp.i.v LT
b [155]

:[154]
push.e 0

:[155]
bf [159]

:[156]
pushi.e 0
pop.v.i self.menu
pushi.e 2
pop.v.i self.twobuffer
pushi.e 220
pop.v.i self.minimenuy
pushi.e 64
pushenv [158]

:[157]
call.i instance_destroy(argc=0)
popz.v

:[158]
popenv [157]

:[159]
push.i 166593
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menuc

:[160]
push.v self.menu
pushi.e 2
cmp.i.v EQ
bf [197]

:[161]
pushi.e 1
pop.v.i self.menumax
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 290
conv.i.v
pushi.e 260
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.y1_off
pushi.e 260
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.y2_off
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_379_0"@28741
conv.s.v
push.s "TRANSMIT"@28742
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushloc.v local.y1_off
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_380_0"@28743
conv.s.v
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.buyvalue
call.i string(argc=1)
push.s "~1 KROMER ?"@28744
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushloc.v local.y2_off
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_169_0"@27876
conv.s.v
push.s "Yes"@5613
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 340
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_170_0"@27877
conv.s.v
push.s "No"@2449
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 370
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 350
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 30
mul.i.v
add.v.i
pushi.e 450
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [163]

:[162]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [164]

:[163]
push.e 0

:[164]
bf [166]

:[165]
pushi.e 1
pop.v.i self.menu
pushi.e 2
pop.v.i self.sidemessage
pushi.e 2
pop.v.i self.twobuffer
pushi.e 2
pop.v.i self.onebuffer

:[166]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [169]

:[167]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [169]

:[168]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [170]

:[169]
push.e 0

:[170]
bf [197]

:[171]
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 0
cmp.i.v EQ
bf [194]

:[172]
pushi.e 0
pop.v.i self.afford
pushglb.v global.gold
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.buyvalue
cmp.v.v GTE
bf [174]

:[173]
pushi.e 1
pop.v.i self.afford

:[174]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.soldout
pushi.e 1
cmp.i.v EQ
bf [176]

:[175]
pushi.e 0
pop.v.i self.afford

:[176]
push.v self.afford
pushi.e 1
cmp.i.v EQ
bf [193]

:[177]
pushi.e 0
pop.v.i self._pocketed
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "item"@229
cmp.s.v EQ
bf [179]

:[178]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_itemget(argc=1)
popz.v

:[179]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "keyitem"@230
cmp.s.v EQ
bf [182]

:[180]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 3
cmp.i.v LT
bf [182]

:[181]
push.i 231204
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 309
pop.v.v [array]self.flag
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_keyitemget(argc=1)
popz.v
push.i 172559
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.soldout

:[182]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@231
cmp.s.v EQ
bf [184]

:[183]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_weaponget(argc=1)
popz.v

:[184]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "armor"@232
cmp.s.v EQ
bf [186]

:[185]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.item
call.i gml_Script_scr_armorget(argc=1)
popz.v

:[186]
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [190]

:[187]
push.v global.gold
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.buyvalue
sub.v.v
pop.v.v global.gold
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self._pocketed
pushi.e 1
cmp.i.v EQ
bf [189]

:[188]
pushi.e 5
pop.v.i self.sidemessage
b [190]

:[189]
pushi.e 1
pop.v.i self.sidemessage

:[190]
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [192]

:[191]
pushi.e 4
pop.v.i self.sidemessage

:[192]
b [194]

:[193]
pushi.e 3
pop.v.i self.sidemessage

:[194]
pushi.e -1
pushi.e 2
push.v [array]self.menuc
pushi.e 1
cmp.i.v EQ
bf [196]

:[195]
pushi.e 2
pop.v.i self.sidemessage

:[196]
pushi.e 1
pop.v.i self.menu

:[197]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 4
cmp.i.v NEQ
bf [209]

:[198]
push.v self.minimenuy
pushi.e 20
cmp.i.v LTE
bf [200]

:[199]
pushi.e 20
pop.v.i self.minimenuy

:[200]
push.v self.minimenuy
pushi.e 20
cmp.i.v GT
bf [202]

:[201]
push.v self.minimenuy
pushi.e 5
sub.i.v
pop.v.v self.minimenuy

:[202]
push.v self.minimenuy
pushi.e 50
cmp.i.v GT
bf [204]

:[203]
push.v self.minimenuy
pushi.e 5
sub.i.v
pop.v.v self.minimenuy

:[204]
push.v self.minimenuy
pushi.e 100
cmp.i.v GT
bf [206]

:[205]
push.v self.minimenuy
pushi.e 8
sub.i.v
pop.v.v self.minimenuy

:[206]
push.v self.minimenuy
pushi.e 150
cmp.i.v GT
bf [208]

:[207]
push.v self.minimenuy
pushi.e 10
sub.i.v
pop.v.v self.minimenuy

:[208]
b [211]

:[209]
push.v self.minimenuy
pushi.e 200
cmp.i.v LT
bf [211]

:[210]
push.v self.minimenuy
pushi.e 40
add.i.v
pop.v.v self.minimenuy

:[211]
push.v self.minimenuy
pushi.e 200
cmp.i.v GTE
bf [213]

:[212]
pushi.e 200
pop.v.i self.minimenuy

:[213]
push.v self.menu
pushi.e 3
cmp.i.v EQ
bf [240]

:[214]
pushi.e 4
pop.v.i self.menumax
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
conv.v.b
not.b
bf [216]

:[215]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_445_0"@28745
conv.s.v
push.s "OUR DEAL"@28746
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 260
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
b [217]

:[216]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_449_0"@28747
conv.s.v
push.s "GIVE DISK"@28748
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 260
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v

:[217]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_452_0"@28749
conv.s.v
push.s "ABOUT YOU"@28750
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 300
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
pushi.e 329
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [219]

:[218]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_455_0"@28751
conv.s.v
push.s "KNIGHT"@28752
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 340
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
b [220]

:[219]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_459_0"@28753
conv.s.v
push.s "FRIENDS"@28754
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 340
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v

:[220]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_462_0"@28755
conv.s.v
push.s "FEAR"@28756
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 380
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_464_0"@28757
conv.s.v
push.s "EXIT AND BUY MORE!!!"@28758
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 420
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [222]

:[221]
push.i 231251
setowner.e
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_469_0"@28759
conv.s.v
push.s "\\E0LET'S MAKE&A DEAL."@28760
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 260
conv.i.v
pushi.e 440
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[222]
pushi.e 270
pushi.e -1
pushi.e 3
push.v [array]self.menuc
pushi.e 40
mul.i.v
add.v.i
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [224]

:[223]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [225]

:[224]
push.e 0

:[225]
bf [232]

:[226]
pushi.e 2
pop.v.i self.onebuffer
pushi.e 64
pushenv [228]

:[227]
call.i instance_destroy(argc=0)
popz.v

:[228]
popenv [227]
pushi.e -1
pushi.e 3
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [230]

:[229]
pushi.e -1
pushi.e 3
push.v [array]self.menuc
pushi.e 3
add.i.v
pop.v.v self.sell
pushi.e 4
pop.v.i self.menu
b [231]

:[230]
pushi.e 0
pop.v.i self.menu

:[231]
b [240]

:[232]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [235]

:[233]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [235]

:[234]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [236]

:[235]
push.e 0

:[236]
bf [240]

:[237]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.menu
pushi.e 64
pushenv [239]

:[238]
call.i instance_destroy(argc=0)
popz.v

:[239]
popenv [238]

:[240]
push.v self.menu
pushi.e 10
cmp.i.v EQ
bf [290]

:[241]
push.i 166593
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.menuc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 12
pop.v.v [array]self.menuc
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 13
pop.v.v [array]self.menuc
pushi.e 4
pop.v.i self.menumax
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_278_0"@27896
conv.s.v
push.s "Sell Items"@27897
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 260
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_279_0"@27898
conv.s.v
push.s "Sell Weapons"@27899
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 300
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_280_0"@27900
conv.s.v
push.s "Sell Armor"@27901
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 340
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_506_0"@28761
conv.s.v
push.s "Sell Pocket Items"@27903
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 380
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_507_0"@28762
conv.s.v
push.s "Return"@20999
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 420
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [249]

:[242]
push.v self.sidemessage
pushi.e 0
cmp.i.v EQ
bf [244]

:[243]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_511_0"@28763
conv.s.v
push.s " "@353
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[244]
push.v self.sidemessage
pushi.e 1
cmp.i.v EQ
bf [246]

:[245]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_512_0"@28764
conv.s.v
push.s " "@353
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[246]
push.v self.sidemessage
pushi.e 2
cmp.i.v EQ
bf [248]

:[247]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_513_0"@28765
conv.s.v
push.s " "@353
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[248]
pushi.e 64
conv.i.v
pushi.e 260
conv.i.v
pushi.e 460
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[249]
pushi.e 270
pushi.e -1
pushi.e 10
push.v [array]self.menuc
pushi.e 40
mul.i.v
add.v.i
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [251]

:[250]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [252]

:[251]
push.e 0

:[252]
bf [282]

:[253]
pushi.e 0
pop.v.i self.pagemax
pushi.e 0
pop.v.i self.sidemessage2
pushi.e 2
pop.v.i self.onebuffer
pushi.e 64
pushenv [255]

:[254]
call.i instance_destroy(argc=0)
popz.v

:[255]
popenv [254]
pushi.e 1
pop.v.i self.can
pushi.e -1
pushi.e 10
push.v [array]self.menuc
pushi.e 11
add.i.v
pop.v.v self.idealmenu
push.v self.idealmenu
pushi.e 11
cmp.i.v EQ
bf [261]

:[256]
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [258]

:[257]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[258]
push.v self.itemcount
pop.v.v self.nothingcount
call.i gml_Script_scr_iteminfo_all(argc=0)
popz.v
push.s "item"@229
pop.v.s self.selltype
pushi.e 12
pop.v.i self.selltotal
pushi.e 0
pop.v.i self.i

:[259]
push.v self.i
push.v self.selltotal
cmp.v.v LT
bf [261]

:[260]
push.i 166616
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.itemvalue
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemsellvalue
push.i 166591
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.itemnameb
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemsellname
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [259]

:[261]
push.v self.idealmenu
pushi.e 12
cmp.i.v EQ
bf [265]

:[262]
pushi.e 0
conv.i.v
call.i gml_Script_scr_weaponcheck_inventory(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [264]

:[263]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[264]
call.i gml_Script_scr_weaponinfo_all(argc=0)
popz.v

:[265]
push.v self.idealmenu
pushi.e 13
cmp.i.v EQ
bf [269]

:[266]
pushi.e 0
conv.i.v
call.i gml_Script_scr_armorcheck_inventory(argc=1)
popz.v
push.v self.itemcount
pushi.e 12
cmp.i.v EQ
bf [268]

:[267]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[268]
call.i gml_Script_scr_armorinfo_all(argc=0)
popz.v

:[269]
push.v self.idealmenu
pushi.e 14
cmp.i.v EQ
bf [276]

:[270]
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck_pocket(argc=1)
popz.v
push.v self.itemcount
pushi.e -5
pushi.e 64
push.v [array]self.flag
cmp.v.v EQ
bf [272]

:[271]
pushi.e 2
pop.v.i self.sidemessage
pushi.e 0
pop.v.i self.can

:[272]
push.s "pocket"@9747
pop.v.s self.selltype
pushi.e 0
pop.v.i self.nothingcount
pushi.e -5
pushi.e 64
push.v [array]self.flag
pop.v.v self.selltotal
pushi.e 0
pop.v.i self.i

:[273]
push.v self.i
pushi.e -5
pushi.e 64
push.v [array]self.flag
cmp.v.v LT
bf [275]

:[274]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.pocketitem
call.i gml_Script_scr_iteminfo(argc=1)
popz.v
push.i 166616
setowner.e
push.v self.value
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemsellvalue
push.i 166591
setowner.e
push.v self.itemnameb
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.itemsellname
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [273]

:[275]
pushi.e 11
pop.v.i self.idealmenu

:[276]
pushi.e -1
pushi.e 10
push.v [array]self.menuc
push.v self.menumax
cmp.v.v LT
bf [280]

:[277]
push.v self.can
pushi.e 1
cmp.i.v EQ
bf [279]

:[278]
push.v self.idealmenu
pop.v.v self.menu

:[279]
pushi.e 0
pop.v.i self.sidemessage1
b [281]

:[280]
pushi.e 0
pop.v.i self.menu

:[281]
pushi.e 0
pop.v.i self.submenu
push.i 172495
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.submenuc

:[282]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [285]

:[283]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
bf [285]

:[284]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
b [286]

:[285]
push.e 0

:[286]
bf [290]

:[287]
pushi.e 2
pop.v.i self.twobuffer
pushi.e 0
pop.v.i self.menu
pushi.e 64
pushenv [289]

:[288]
call.i instance_destroy(argc=0)
popz.v

:[289]
popenv [288]

:[290]
push.v self.menu
pushi.e 11
cmp.i.v EQ
bt [293]

:[291]
push.v self.menu
pushi.e 12
cmp.i.v EQ
bt [293]

:[292]
push.v self.menu
pushi.e 13
cmp.i.v EQ
b [294]

:[293]
push.e 1

:[294]
bf [320]

:[295]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [320]

:[296]
push.v self.sidemessage2
pushi.e 0
cmp.i.v EQ
bf [298]

:[297]
push.v self.menu
pushi.e 11
cmp.i.v EQ
b [299]

:[298]
push.e 0

:[299]
bf [301]

:[300]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_598_0"@28766
conv.s.v
push.s " "@353
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[301]
push.v self.sidemessage2
pushi.e 0
cmp.i.v EQ
bf [303]

:[302]
push.v self.menu
pushi.e 12
cmp.i.v EQ
b [304]

:[303]
push.e 0

:[304]
bf [306]

:[305]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_599_0"@28767
conv.s.v
push.s " "@353
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[306]
push.v self.sidemessage2
pushi.e 0
cmp.i.v EQ
bf [308]

:[307]
push.v self.menu
pushi.e 13
cmp.i.v EQ
b [309]

:[308]
push.e 0

:[309]
bf [311]

:[310]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_600_0"@28768
conv.s.v
push.s " "@353
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[311]
push.v self.sidemessage2
pushi.e 1
cmp.i.v EQ
bf [313]

:[312]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_601_0"@28769
conv.s.v
push.s " "@353
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[313]
push.v self.sidemessage2
pushi.e 2
cmp.i.v EQ
bf [315]

:[314]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_602_0"@28770
conv.s.v
push.s " "@353
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[315]
push.v self.sidemessage2
pushi.e 3
cmp.i.v EQ
bf [317]

:[316]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_603_0"@28771
conv.s.v
push.s " "@353
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[317]
push.v self.sidemessage2
pushi.e 4
cmp.i.v EQ
bf [319]

:[318]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_604_0"@28772
conv.s.v
push.s " "@353
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[319]
pushi.e 64
conv.i.v
pushi.e 260
conv.i.v
pushi.e 450
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[320]
pushi.e 4
conv.i.v
call.i gml_Script_scr_shopmenu(argc=1)
popz.v
push.v self.menu
pushi.e 15
cmp.i.v EQ
bt [323]

:[321]
push.v self.menu
pushi.e 16
cmp.i.v EQ
bt [323]

:[322]
push.v self.menu
pushi.e 17
cmp.i.v EQ
b [324]

:[323]
push.e 1

:[324]
bf [326]

:[325]
pushi.e 1
pop.v.i self.menumax
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "mainbig"@6175
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 290
conv.i.v
pushi.e 260
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.y1_off
pushi.e 260
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_langopt(argc=2)
pop.v.v local.y2_off
push.s "obj_shop1_slash_Draw_0_gml_365_0"@27927
conv.s.v
push.s "Sell it for"@27928
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushloc.v local.y1_off
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_619_0"@28773
conv.s.v
push.v self.sellvalue
call.i string(argc=1)
push.s "$~1 ?"@27875
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
call.i string_hash_to_newline(argc=1)
pushloc.v local.y2_off
pushi.e 460
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_367_0"@27930
conv.s.v
push.s "Yes"@5613
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 340
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "obj_shop1_slash_Draw_0_gml_368_0"@27931
conv.s.v
push.s "No"@2449
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i string_hash_to_newline(argc=1)
pushi.e 370
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 350
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
pushi.e 30
mul.i.v
add.v.i
pushi.e 450
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[326]
pushi.e 5
conv.i.v
call.i gml_Script_scr_shopmenu(argc=1)
popz.v
push.v self.menu
pushi.e 4
cmp.i.v EQ
bf [411]

:[327]
push.v self.sell
pushi.e 0
cmp.i.v EQ
bf [329]

:[328]
pushi.e 0
pop.v.i self.menu

:[329]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [331]

:[330]
push.v self.selling
pushi.e 0
cmp.i.v EQ
b [332]

:[331]
push.e 0

:[332]
bf [371]

:[333]
pushi.e 1
pop.v.i self.selling
push.v self.sell
pushi.e 1
cmp.i.v EQ
bf [334]

:[334]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [344]

:[335]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_647_0"@28774
conv.s.v
push.s "\\E2* DON'T FORGET TO&[Like and Subscribe]&FOR MORE&[Hyperlink Blocked]!/%"@28775
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bt [337]

:[336]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 4
cmp.i.v EQ
b [338]

:[337]
push.e 1

:[338]
bf [340]

:[339]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_648_0"@28776
conv.s.v
push.s "\\E2* MANSION... BASEMENT!&* FIND IT!!/%"@28777
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[340]
pushi.e 10
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
conv.v.b
bf [342]

:[341]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_649_0"@28778
conv.s.v
push.s "\\E2* YOU'RE LEAVING!?&* WHAT ABOUT MY DISK!?!?/%"@28779
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[342]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 7
cmp.i.v GTE
bf [344]

:[343]
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_650_0"@28780
conv.s.v
push.s " /%"@28781
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[344]
push.v self.sell
pushi.e 3
cmp.i.v EQ
bf [360]

:[345]
pushi.e 0
pop.v.i local.condition
pushi.e -5
pushi.e 434
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [347]

:[346]
pushi.e 12
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
conv.v.b
b [348]

:[347]
push.e 0

:[348]
bf [350]

:[349]
pushi.e 1
pop.v.i local.condition

:[350]
pushi.e 10
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
conv.v.b
bf [352]

:[351]
pushi.e 2
pop.v.i local.condition

:[352]
pushloc.v local.condition
pushi.e 1
cmp.i.v EQ
bf [354]

:[353]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_689_0"@28783
conv.s.v
push.s "\\E9* KEYGEN/%"@28784
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 10
pop.v.i self.sell
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pause(argc=1)
popz.v
push.s "KEYGEN.ogg"@28785
conv.s.v
call.i gml_Script_snd_init(argc=1)
pop.v.v self.keygenmusic
push.v self.keygenmusic
call.i gml_Script_mus_loop(argc=1)
popz.v

:[354]
pushloc.v local.condition
pushi.e 0
cmp.i.v EQ
bf [358]

:[355]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 434
pop.v.v [array]self.flag
push.v self.talked_deal
push.e 1
add.i.v
pop.v.v self.talked_deal
push.v self.talked_deal
pushi.e 1
cmp.i.v EQ
bf [357]

:[356]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_662_0"@28787
conv.s.v
push.s "\\E0* KRIS!!^1! YOU [Little Sponge]^1! I KNEW YOU'D COME HERE [[On A Saturday Night]]!/"@28788
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_663_0"@28789
conv.s.v
push.s "\\E3* AFTER ALL^1, YOU WANNA BE A [Big Shot]! EAHAHAHAHAA!!/"@28790
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_664_0"@28791
conv.s.v
push.s "\\E0* BUT HOW? HOW CAN YOU BE?/"@28792
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_665_0"@28793
conv.s.v
push.s "\\E2* LISTEN. IN THE [Deep Abyss] OF QUEEN'S [Mansion]/"@28794
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_666_0"@28795
conv.s.v
push.s "\\E3* [[A Great Deal]] IS WAITING For [[A LimiTed Time Only!]]&* A HEAVEN-PIERCING [[Workout-Ready Body]]/"@28796
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_667_0"@28797
conv.s.v
push.s "\\E4* [[Designed BY The Classics You've Come To Expect^1! (C)1997]]/"@28798
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_668_0"@28799
conv.s.v
push.s "\\E0* KRIS THAT [Little Nipper] IS OUR [One-way Ticket] TO MAKE YOU [Big]. MAKE ME [Big]./"@28800
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_669_0"@28801
conv.s.v
push.s "\\E2* BEFORE YOU KNOW IT WE WILL BE TAKING [ A Ride around Town on Our Specil Cungadero]/"@28802
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_670_0"@28803
conv.s.v
push.s "\\E3* VACATIONING IN [Burning acid] WHILE YOU SOAK IN THE [Hyperlink Blocked]./"@28804
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_671_0"@28805
conv.s.v
push.s "\\E0* BUT KRIS DON'T [Breathe] YET!! THE WAY IS LOCKED BY [High Quality Encryption]!!!/"@28806
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_672_0"@28807
conv.s.v
push.s "\\E1* YOU WILL NEVER GET INSIDE./"@28808
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_673_0"@28809
conv.s.v
push.s "\\E5* WAIT KRIS LOOK!! HEAR THOSE [Balloons]??? YOU ARE [1000th Customer]!!./"@28810
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_674_0"@28811
conv.s.v
push.s "\\E2* AS A [Commemorative Ring] I WILL LET YOU BUY [KeyGen] FROM ME AT [The Low Low Price Of]/"@28812
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_675_0"@28813
conv.s.v
push.s "\\E4* WHAT DO YOU THINK!?!? IT'S SUCH A STEAL^1, I'M [$!X$]ING MYSELF!!!/"@28814
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_676_0"@28815
conv.s.v
push.s "\\E5* TAKE THIS DEAL AND YOU WILL [[Die]]!!&* IT'S THAT GOOD!!!/"@28816
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_677_0"@28817
conv.s.v
push.s "\\E0* [BUY] THE KEYGEN FROM ME^1, UNLOCK THE BASEMENT, AND GET THAT EmptyDisk!!!/%"@28818
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [358]

:[357]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_681_0"@28819
conv.s.v
push.s "\\E2* KRIS!! BUY [KeyGen] FROM ME AND GO TO QUEEN'S MANSION'S [Luxurious Basement Apartment]!!/"@28820
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_682_0"@28821
conv.s.v
push.s "\\E7* WHAT!? GO MYSELF!? KRIS!!!!! NO!!!!!&* THE MEN INSIDE WOULD&* THE MEN INSIDE WOULD/%"@28822
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[358]
pushloc.v local.condition
pushi.e 2
cmp.i.v EQ
bf [360]

:[359]
pushi.e 15
pop.v.i self.sell
pushi.e 3
pop.v.i self.selling
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_699_0"@28823
conv.s.v
push.s "\\E4* KRIS!!^1! YOU DID IT!^1! YOU [[Funky]] LITTLE [[Worm]]^1! YOU BROUGHT ME THE DISK!!/"@28824
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_700_0"@28825
conv.s.v
push.s "\\E5* HOCHI MAMA!!!! I CAN FEEL THAT [Smooth Taste] ALREADY!!/"@28826
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_701_0"@28827
conv.s.v
push.s "\\E7* ..^1. NOW KRIS. DON'T BE GREEDY. HAND OVER. THE DISK./"@28828
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_702_0"@28829
conv.s.v
push.s "* THEN WE WILL TRANSFER./"@28830
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_703_0"@28831
conv.s.v
push.s "\\E7* MY [[Hyperlink Blocked]]./"@28832
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_704_0"@28833
conv.s.v
push.s "\\E7* THEN. KRIS. AFTER. THIS IS VERY, VERY IMPORTANT./"@28834
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_705_0"@28835
conv.s.v
push.s "* GO BACK. AND PUT. THE DISK. BACK. WHERE YOU GOT IT./"@28836
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_706_0"@28837
conv.s.v
push.s "\\E3* DO THAT...&* AND YOU HAVE MY [Specil Guaranttee] I WILL [[Pass My Savings Onto You!]]/"@28838
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_707_0"@28839
conv.s.v
push.s "\\E4* EVERY [Big], EVERY [Shot], EVERY [Hyperlink Blocked], ALL YOURS, KRIS./"@28840
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_708_0"@28841
conv.s.v
push.s "* SO WHAT DO YOU SAY? BIG SHOT.../"@28842
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_709_0"@28843
conv.s.v
push.s "\\E0* [[Warning^1! If you consent to the terms and agreements^1,]]&* [[OUR STORE is PERMANENTLY Closing Down!!]]/%"@28844
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
pop.v.i self.ynchoice
pushi.e 4
pop.v.i self.ynchoicebuffer

:[360]
push.v self.sell
pushi.e 4
cmp.i.v EQ
bf [362]

:[361]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_719_0"@28846
conv.s.v
push.s "\\E2* I USED TO BE NOTHING BUT THE E_MAIL GUY^1, NOW I'M THE [[It Burns^1! Ow^1! Stop^1! Help Me^1! It Burns!]] GUY!/"@28847
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_720_0"@28848
conv.s.v
push.s "\\E6* [[Amazed at thi5 amazing transformation? You too can]] HAVE A [[Communion]] WITH [[Unintelligble Laughter]]/"@28849
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_721_0"@28850
conv.s.v
push.s "\\E3* SOON I'LL EVEN SURPASS THAT DAMNED [[Clown Around Town!]]/"@28851
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_722_0"@28852
conv.s.v
push.s "\\E4* BUT UNLIKE HIM I'M GONNA [[Shoot For the Sky!]] AND  GET ON THE PATH TO .../"@28853
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_723_0"@28854
conv.s.v
push.s "\\E7* [[The Big One]]/"@28855
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_724_0"@28856
conv.s.v
push.s "\\E6* I'LL GET SO.&* I'LL GET SO.&* I'LL GET SO.&* I'LL GET SO.&* I'LL GET SO.&* I'LL GET SO./"@28857
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_725_0"@28858
conv.s.v
push.s "\\E6* [[Hyperlink blocked.]]/%"@28859
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[362]
push.v self.sell
pushi.e 5
cmp.i.v EQ
bf [366]

:[363]
pushi.e -5
pushi.e 329
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [365]

:[364]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 329
pop.v.v [array]self.flag
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_734_0"@28860
conv.s.v
push.s "\\E7* SPEAKING OF [[Communion]]/"@28861
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_735_0"@28862
conv.s.v
push.s "\\E2* KRIS^1, DID YOU KNOW THAT THE KNIGHT.../"@28863
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_737_0"@28864
conv.s.v
push.s "\\E6* No^1, I'm sorry^1! I'm sorry^1! I didn't mean to --/"@28865
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_738_0"@28866
conv.s.v
push.s "\\E7* TOO MANY EXCESS VACATION DAYS?? TAKE A GOD DAMN VACATION STRAIGHT TO HELL/%"@28867
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [366]

:[365]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_742_0"@28868
conv.s.v
push.s "\\E1* ME? ..^1. FRIENDS?/"@28869
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_743_0"@28870
conv.s.v
push.s "\\E2* EAHAEHAEHAEHAEH!!!&* KRIS^1! YOU AND ME. ARE ALREADY [Friend Request Accepted]/"@28871
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_744_0"@28872
conv.s.v
push.s "\\E3* WE DON'T NEED ANYONE ELSE!!^1! WE DON'T NEED [[Easels]] or [[CRTs]]!/"@28873
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_745_0"@28874
conv.s.v
push.s "\\E4* WE DON'T NEED ANY [[Man^1, Woman^1, or Child]] [[At Half Price]]!!/"@28875
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_746_0"@28876
conv.s.v
push.s "\\E5* WE DON'T NEED [[MIKE]]!!!/"@28877
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_747_0"@28878
conv.s.v
push.s "\\E8* ..^4.&* ..^1. Mike.../"@28879
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_748_0"@28880
conv.s.v
push.s "\\E7* KRIS!!^1! DON'T BELIEVE [[Anything You See On TV!]]&* THE MAN'S A CRIMINAL^1, I TELL YOU!^1! A CRIMINAL!!/%"@28881
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[366]
push.v self.sell
pushi.e 6
cmp.i.v EQ
bf [370]

:[367]
push.v self.talked_fear
push.e 1
add.i.v
pop.v.v self.talked_fear
push.v self.talked_fear
pushi.e 1
cmp.i.v EQ
bf [369]

:[368]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_758_0"@28882
conv.s.v
push.s "\\E2* WHAT ARE YOU AFRAID OF??? ACCORDING TO [[Encyclopedia of]] [[Being Afraid]]/"@28883
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_759_0"@28884
conv.s.v
push.s "\\E3* THERE'S NOTHING TO FEAR EXCEPT/"@28885
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_761_0"@28886
conv.s.v
push.s "\\E8* .../"@631
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_762_0"@28887
conv.s.v
push.s "* ..^1. can anyone hear me? Help..^1./"@28888
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_763_0"@28889
conv.s.v
push.s "\\E3* HUH??? WHAT?? NO^1, I DIDN'T HEAR ANYTHING JUST NOW!!!/"@28890
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_764_0"@28891
conv.s.v
push.s "\\E7* ..^1. BUT IT SOUNDED LIKE THEY WERE TALKING TO YOU./%"@28892
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [370]

:[369]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_768_0"@28893
conv.s.v
push.s "\\E0* .../%"@3988
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[370]
pushi.e 64
conv.i.v
pushi.e 270
conv.i.v
pushi.e 30
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[371]
push.v self.sell
pushi.e 10
cmp.i.v EQ
bf [373]

:[372]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [374]

:[373]
push.e 0

:[374]
bf [376]

:[375]
push.v self.keygenmusic
call.i gml_Script_snd_free(argc=1)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_resume(argc=1)
popz.v
pushi.e 0
pop.v.i global.fe
pushi.e 11
pop.v.i self.sell

:[376]
push.v self.selling
pushi.e 1
cmp.i.v EQ
bf [378]

:[377]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [379]

:[378]
push.e 0

:[379]
bf [389]

:[380]
push.v self.sell
pushi.e 2
cmp.i.v EQ
bf [382]

:[381]
pushi.e 2
pop.v.i self.selling
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
b [389]

:[382]
push.v self.sell
pushi.e 1
cmp.i.v EQ
bt [384]

:[383]
push.v self.sell
pushi.e 7
cmp.i.v EQ
b [385]

:[384]
push.e 1

:[385]
bf [387]

:[386]
pushi.e 0
pop.v.i self.menu
b [388]

:[387]
pushi.e 3
pop.v.i self.menu

:[388]
pushi.e 0
pop.v.i self.sell
pushi.e 0
pop.v.i self.selling
pushi.e 0
pop.v.i global.fe

:[389]
push.v self.selling
pushi.e 3
cmp.i.v EQ
bf [391]

:[390]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [392]

:[391]
push.e 0

:[392]
bf [406]

:[393]
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 5.2
pop.v.d local.stringscale
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [395]

:[394]
pushi.e 12
pop.v.i local.stringscale

:[395]
pushi.e 0
conv.i.v
push.d 12.2
conv.d.v
pushloc.v local.stringscale
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_800_0"@28895
conv.s.v
push.s "TRANSFER"@28896
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 260
conv.i.v
pushi.e 140
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_801_0"@28897
conv.s.v
push.s "DO NOT"@28898
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 400
conv.i.v
pushi.e 560
conv.i.v
call.i draw_text(argc=3)
popz.v
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [397]

:[396]
pushi.e 1
pop.v.i self.ynchoice

:[397]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [399]

:[398]
pushi.e 0
pop.v.i self.ynchoice

:[399]
pushi.e 400
conv.i.v
pushi.e 120
push.v self.ynchoice
pushi.e 400
mul.i.v
add.v.i
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.ynchoicebuffer
push.e 1
sub.i.v
pop.v.v self.ynchoicebuffer
push.v self.ynchoicebuffer
pushi.e 0
cmp.i.v LT
bf [401]

:[400]
call.i gml_Script_button1_p(argc=0)
conv.v.b
b [402]

:[401]
push.e 0

:[402]
bf [406]

:[403]
push.v self.ynchoice
pushi.e 0
cmp.i.v EQ
bf [405]

:[404]
pushi.e 4
pop.v.i self.selling
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_813_0"@28899
conv.s.v
push.s "\\E3* FINALLY!!^1! I KNEW YOU WOULD [[Request Accepted]]/"@28900
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_814_0"@28901
conv.s.v
push.s "\\E5* KRIS!!^1! HERE I GO!!^1! BEGIN THE [[Transfer]]/%"@28902
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 64
conv.i.v
pushi.e 270
conv.i.v
pushi.e 30
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
b [406]

:[405]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_820_0"@28903
conv.s.v
push.s "\\E7* TURNING DOWN A BELOVED [[Stranger]]..^1. THAT'S NOT VERY [[Big Shot]] OF YOU^1, KRIS./%"@28904
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 64
conv.i.v
pushi.e 270
conv.i.v
pushi.e 30
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.selling

:[406]
push.v self.selling
pushi.e 4
cmp.i.v EQ
bf [408]

:[407]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [409]

:[408]
push.e 0

:[409]
bf [411]

:[410]
pushi.e 0
pop.v.i self.selling
pushi.e 0
pop.v.i self.sell
pushi.e 999
pop.v.i self.menu
pushi.e 1
pop.v.i self.greybg
pushi.e 7
conv.i.v
pushi.e -5
pushi.e 309
pop.v.v [array]self.flag
pushi.e 10
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 11
conv.i.v
call.i gml_Script_scr_keyitemget(argc=1)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_stop(argc=1)
popz.v

:[411]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [420]

:[412]
push.v self.menu
pushi.e 11
cmp.i.v NEQ
bf [416]

:[413]
push.v self.menu
pushi.e 12
cmp.i.v NEQ
bf [416]

:[414]
push.v self.menu
pushi.e 13
cmp.i.v NEQ
bf [416]

:[415]
push.v self.greybg
pushi.e 1
cmp.i.v NEQ
b [417]

:[416]
push.e 0

:[417]
bf [420]

:[418]
push.i 166593
setowner.e
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
add.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
push.v self.menumax
cmp.v.v GT
bf [420]

:[419]
pushi.e 0
conv.i.v
pushi.e -1
push.v self.menu
conv.v.i
pop.v.v [array]self.menuc

:[420]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [429]

:[421]
push.v self.menu
pushi.e 11
cmp.i.v NEQ
bf [425]

:[422]
push.v self.menu
pushi.e 12
cmp.i.v NEQ
bf [425]

:[423]
push.v self.menu
pushi.e 13
cmp.i.v NEQ
bf [425]

:[424]
push.v self.greybg
pushi.e 1
cmp.i.v NEQ
b [426]

:[425]
push.e 0

:[426]
bf [429]

:[427]
pushi.e -1
push.v self.menu
conv.v.i
dup.i 1
push.v [array]self.menuc
pushi.e 1
sub.i.v
pop.i.v [array]self.menuc
pushi.e -1
push.v self.menu
conv.v.i
push.v [array]self.menuc
pushi.e 0
cmp.i.v LT
bf [429]

:[428]
push.v self.menumax
pushi.e -1
push.v self.menu
conv.v.i
pop.v.v [array]self.menuc

:[429]
push.v self.menu
pushi.e 4
cmp.i.v LT
bt [431]

:[430]
push.v self.menu
pushi.e 10
cmp.i.v GTE
b [432]

:[431]
push.e 1

:[432]
bf [444]

:[433]
pushglb.v global.gold
call.i string(argc=1)
push.s "obj_shop_ch2_spamton_slash_Draw_0_gml_872_0"@28905
conv.s.v
push.s " KROMER"@28906
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
add.v.v
call.i string_hash_to_newline(argc=1)
pushi.e 420
conv.i.v
pushi.e 440
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.menu
pushi.e 1
cmp.i.v EQ
bt [435]

:[434]
push.v self.menu
pushi.e 2
cmp.i.v EQ
b [436]

:[435]
push.e 1

:[436]
bf [444]

:[437]
pushi.e -1
pushi.e 1
push.v [array]self.menuc
pushi.e 4
cmp.i.v LT
bf [444]

:[438]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "item"@229
cmp.s.v EQ
bf [440]

:[439]
pushi.e 0
conv.i.v
call.i gml_Script_scr_itemcheck_inventory_and_pocket(argc=1)
popz.v

:[440]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "armor"@232
cmp.s.v EQ
bf [442]

:[441]
pushi.e 0
conv.i.v
call.i gml_Script_scr_armorcheck_inventory(argc=1)
popz.v

:[442]
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.menuc
conv.v.i
push.v [array]self.itemtype
push.s "weapon"@231
cmp.s.v EQ
bf [444]

:[443]
pushi.e 0
conv.i.v
call.i gml_Script_scr_weaponcheck_inventory(argc=1)
popz.v

:[444]
push.v self.onebuffer
pushi.e 1
sub.i.v
pop.v.v self.onebuffer
push.v self.twobuffer
pushi.e 1
sub.i.v
pop.v.v self.twobuffer

:[end]