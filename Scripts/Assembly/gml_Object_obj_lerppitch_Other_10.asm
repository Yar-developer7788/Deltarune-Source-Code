.localvar 2 arguments

:[0]
push.v self.sndtarget
call.i audio_sound_get_pitch(argc=1)
pop.v.v self.initpitch

:[end]