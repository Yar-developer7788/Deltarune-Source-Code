.localvar 2 arguments
.localvar 26345 timeslooped 13525
.localvar 26357 realign 13526

:[0]
push.v self.typetext
push.s " frames"@26335
cmp.s.v EQ
bf [2]

:[1]
push.v self.solo_music
call.i audio_sound_get_track_position(argc=1)
pushi.e 30
mul.i.v
pop.v.v self.solotimer
push.v self.solo_music
call.i audio_sound_get_track_position(argc=1)
push.v self.backing_audio_length
div.v.v
call.i floor(argc=1)
pop.v.v local.timeslooped
push.v self.backing_music
call.i audio_sound_get_track_position(argc=1)
pushi.e 30
mul.i.v
push.v self.backing_audio_length
pushloc.v local.timeslooped
mul.v.v
pushi.e 30
mul.i.v
add.v.v
pop.v.v self.backingtimer

:[2]
push.v self.typetext
push.s " seconds"@26346
cmp.s.v EQ
bf [4]

:[3]
push.v self.solo_music
call.i audio_sound_get_track_position(argc=1)
pop.v.v self.solotimer
push.v self.solo_music
call.i audio_sound_get_track_position(argc=1)
push.v self.backing_audio_length
div.v.v
call.i floor(argc=1)
pop.v.v local.timeslooped
push.v self.backing_music
call.i audio_sound_get_track_position(argc=1)
push.v self.backing_audio_length
pushloc.v local.timeslooped
mul.v.v
add.v.v
pop.v.v self.backingtimer

:[4]
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.partfocus
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[6]
push.s "Solo: "@26347
push.v self.solotimer
call.i string(argc=1)
add.v.s
push.v self.typetext
call.i string(argc=1)
add.v.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.partfocus
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[8]
push.s "Backing: "@26348
push.v self.backingtimer
call.i string(argc=1)
add.v.s
push.v self.typetext
add.v.v
push.s "(times looped: "@26349
add.s.v
pushloc.v local.timeslooped
call.i string(argc=1)
add.v.v
push.s ")"@12074
add.s.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "Press left/right arrow key to make track skip backwards/forwards"@26350
conv.s.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "Press up/down arrow key to change track selected"@26351
conv.s.v
pushi.e 80
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "Press R to reset"@26352
conv.s.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "Press Z to change frame count to second count"@26353
conv.s.v
pushi.e 120
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "Press X to sync solo to backing track"@26354
conv.s.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "Length1 "@26355
push.v self.backing_audio_length
call.i string(argc=1)
add.v.s
push.s " Length2 "@26356
add.s.v
push.v self.main_audio_length
call.i string(argc=1)
add.v.v
pushi.e 160
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.main_audio_length
push.v self.backing_audio_length
div.v.v
call.i string(argc=1)
pushi.e 180
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -1
pop.v.i self.partmode
pushi.e 0
pop.v.i local.realign
push.v self.partmode
pushi.e -1
cmp.i.v EQ
bf [35]

:[9]
pushi.e 82
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [11]

:[10]
call.i room_restart(argc=0)
popz.v

:[11]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [15]

:[12]
push.v self.typetext
push.s " frames"@26335
cmp.s.v EQ
bf [14]

:[13]
push.s " seconds"@26346
pop.v.s self.typetext
b [15]

:[14]
push.s " frames"@26335
pop.v.s self.typetext

:[15]
pushi.e 88
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [17]

:[16]
pushi.e 1
pop.v.i local.realign

:[17]
pushi.e 39
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [22]

:[18]
push.v self.partfocus
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
push.v self.solo_music
call.i audio_sound_get_track_position(argc=1)
push.d 0.03333333333333333
add.d.v
push.v self.solo_music
call.i audio_sound_set_track_position(argc=2)
popz.v

:[20]
push.v self.partfocus
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v self.backing_music
call.i audio_sound_get_track_position(argc=1)
push.d 0.03333333333333333
add.d.v
push.v self.backing_music
call.i audio_sound_set_track_position(argc=2)
popz.v

:[22]
pushi.e 37
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [27]

:[23]
push.v self.partfocus
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.v self.solo_music
call.i audio_sound_get_track_position(argc=1)
push.d 0.03333333333333333
sub.d.v
push.v self.solo_music
call.i audio_sound_set_track_position(argc=2)
popz.v

:[25]
push.v self.partfocus
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.v self.backing_music
call.i audio_sound_get_track_position(argc=1)
push.d 0.03333333333333333
sub.d.v
push.v self.backing_music
call.i audio_sound_set_track_position(argc=2)
popz.v

:[27]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [29]

:[28]
push.v self.partfocus
pushi.e 1
sub.i.v
pop.v.v self.partfocus

:[29]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [31]

:[30]
push.v self.partfocus
push.e 1
add.i.v
pop.v.v self.partfocus

:[31]
push.v self.partfocus
pushi.e 0
cmp.i.v LT
bf [33]

:[32]
pushi.e 1
pop.v.i self.partfocus

:[33]
push.v self.partfocus
pushi.e 1
cmp.i.v GT
bf [35]

:[34]
pushi.e 0
pop.v.i self.partfocus

:[35]
push.v self.loopbuffer
push.e 1
sub.i.v
pop.v.v self.loopbuffer
push.v self.loopbuffer
pushi.e 0
cmp.i.v LT
bf [38]

:[36]
push.v self.remlooped
pushloc.v local.timeslooped
cmp.v.v NEQ
bf [38]

:[37]
pushi.e 1
pop.v.i local.realign
pushi.e 10
pop.v.i self.loopbuffer

:[38]
pushloc.v local.realign
conv.v.b
bf [44]

:[39]
push.v self.backing_music
call.i audio_sound_get_track_position(argc=1)
pushi.e 30
mul.i.v
push.v self.backing_audio_length
pushloc.v local.timeslooped
mul.v.v
pushi.e 30
mul.i.v
add.v.v
call.i ceil(argc=1)
pop.v.v self.backingtimer
push.v self.backingtimer
pushi.e 30
conv.i.d
div.d.v
push.d 0.9992
mul.d.v
push.v self.solo_music
call.i audio_sound_set_track_position(argc=2)
popz.v
pushloc.v local.timeslooped
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
pushi.e 0
conv.i.v
push.v self.solo_music
call.i audio_sound_set_track_position(argc=2)
popz.v

:[41]
pushloc.v local.timeslooped
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
pushi.e 0
conv.i.v
push.v self.backing_music
call.i audio_sound_set_track_position(argc=2)
popz.v

:[43]
push.s "realigned"@26358
pushloc.v local.timeslooped
call.i string(argc=1)
add.v.s
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[44]
pushloc.v local.timeslooped
pop.v.v self.remlooped

:[end]