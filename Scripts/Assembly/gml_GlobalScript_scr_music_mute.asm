.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_music_mute (locals=0, argc=0)
:[1]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [4]

:[2]
pushi.e 77
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_is_playing(argc=1)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [9]

:[6]
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_is_paused(argc=1)
conv.v.b
not.b
bf [8]

:[7]
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_pause_sound(argc=1)
popz.v
b [9]

:[8]
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_resume_sound(argc=1)
popz.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_scr_music_mute
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_music_mute
popz.v

:[end]