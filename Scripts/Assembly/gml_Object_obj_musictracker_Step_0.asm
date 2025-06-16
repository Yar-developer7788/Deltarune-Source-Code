.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_get_track_position(argc=1)
pop.v.v self.trackpos

:[end]