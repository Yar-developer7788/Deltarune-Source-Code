.localvar 2 arguments
.localvar 107 i 15760

:[0]
pushi.e 45
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [2]

:[1]
call.i room_goto_next(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i local.i
pushi.e 0
pop.v.i self.mute
pushi.e 68
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [7]

:[3]
push.s "debug_soundlist.txt"@29940
pop.v.s self.file
push.v self.file
call.i file_text_open_write(argc=1)
pop.v.v self.myfileid
pushi.e 0
pop.v.i local.i

:[4]
pushloc.v local.i
push.v self.soundtotal
cmp.v.v LT
bf [6]

:[5]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.soundName
push.v self.myfileid
call.i file_text_write_string(argc=2)
popz.v
push.v self.myfileid
call.i file_text_writeln(argc=1)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [4]

:[6]
push.v self.myfileid
call.i file_text_close(argc=1)
popz.v

:[7]
pushi.e 40
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [9]

:[8]
push.v self.moved
push.e 1
add.i.v
pop.v.v self.moved

:[9]
pushi.e 38
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [11]

:[10]
push.v self.moved
push.e 1
sub.i.v
pop.v.v self.moved

:[11]
pushi.e 39
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [13]

:[12]
push.v self.moved
pushi.e 15
add.i.v
pop.v.v self.moved

:[13]
pushi.e 37
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [15]

:[14]
push.v self.moved
pushi.e 15
sub.i.v
pop.v.v self.moved

:[15]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [17]

:[16]
pushi.e 5
pop.v.i self.moved

:[17]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [19]

:[18]
pushi.e -5
pop.v.i self.moved

:[19]
push.v self.auto
pushi.e 1
cmp.i.v EQ
bf [22]

:[20]
push.v self.moved
push.d 0.5
add.d.v
pop.v.v self.moved
push.v self.moved
pushi.e 5
cmp.i.v GTE
bf [22]

:[21]
pushi.e 1
pop.v.i self.playsound
pushi.e 1
pop.v.i self.mute

:[22]
push.v self.moved
pushi.e 5
cmp.i.v GTE
bf [24]

:[23]
push.v self.current
push.e 1
add.i.v
pop.v.v self.current
push.v self.moved
pushi.e 5
sub.i.v
pop.v.v self.moved
b [22]

:[24]
push.v self.moved
pushi.e -5
cmp.i.v LTE
bf [26]

:[25]
push.v self.current
push.e 1
sub.i.v
pop.v.v self.current
push.v self.moved
pushi.e 5
add.i.v
pop.v.v self.moved
b [24]

:[26]
push.v self.current
pushi.e 1
cmp.i.v LT
bf [28]

:[27]
pushi.e 1
pop.v.i self.current

:[28]
push.v self.current
push.v self.soundtotal
pushi.e 1
sub.i.v
cmp.v.v GT
bf [30]

:[29]
push.v self.soundtotal
pushi.e 1
sub.i.v
pop.v.v self.current

:[30]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [32]

:[31]
pushi.e 1
pop.v.i self.playsound

:[32]
pushi.e 77
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [34]

:[33]
pushi.e 1
pop.v.i self.mute

:[34]
push.v self.mute
conv.v.b
bf [36]

:[35]
call.i gml_Script_snd_free_all(argc=0)
popz.v
call.i gml_Script_snd_stop_all(argc=0)
popz.v
pushi.e 0
pop.v.i self.mute

:[36]
push.v self.playsound
conv.v.b
bf [38]

:[37]
pushi.e 0
pop.v.i self.playsound
push.v self.pitch
pushi.e -1
push.v self.current
conv.v.i
push.v [array]self.soundNo
call.i gml_Script_snd_play_pitch(argc=2)
popz.v

:[38]
pushi.e 65
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [42]

:[39]
push.v self.auto
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
pushi.e 1
pop.v.i self.auto
b [42]

:[41]
pushi.e 0
pop.v.i self.auto

:[42]
pushi.e 74
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [45]

:[43]
push.s ""@157
conv.s.v
push.s "Enter index of sound to jump to sound. ex. snd_noise"@29941
conv.s.v
call.i get_string(argc=2)
pop.v.v self.checkstring
push.v self.checkstring
call.i asset_get_index(argc=1)
pop.v.v self.checkaudio
push.v self.checkaudio
call.i audio_exists(argc=1)
conv.v.b
bf [45]

:[44]
push.v self.checkaudio
push.v self.firstsound
sub.v.v
pop.v.v self.current

:[45]
pushi.e 33
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [47]

:[46]
pushi.e 1
pop.v.i self.current

:[47]
pushi.e 34
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [49]

:[48]
push.v self.soundtotal
pushi.e 1
sub.i.v
pop.v.v self.current

:[49]
pushi.e 85
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [51]

:[50]
push.v self.pitch
push.d 0.1
add.d.v
pop.v.v self.pitch

:[51]
pushi.e 89
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[52]
push.v self.pitch
push.d 0.1
sub.d.v
pop.v.v self.pitch

:[end]