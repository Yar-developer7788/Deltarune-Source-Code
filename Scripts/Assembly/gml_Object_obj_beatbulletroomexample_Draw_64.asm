.localvar 2 arguments
.localvar 36510 _beats 18059

:[0]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[1]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1102
conv.i.v
call.i instance_number(argc=1)
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
bf [end]

:[2]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_get_track_position(argc=1)
push.v self.spb
div.v.v
pop.v.v local._beats
pushloc.v local._beats
pushi.e 40
conv.i.v
pushi.e 10
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]