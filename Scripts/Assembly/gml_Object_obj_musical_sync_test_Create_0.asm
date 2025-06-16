.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
push.s " frames"@26335
pop.v.s self.typetext
pushi.e 0
pop.v.i self.solotimer
pushi.e 0
pop.v.i self.backingtimer
pushi.e 0
pop.v.i self.partfocus
pushi.e -1
pop.v.i self.remlooped
pushi.e 0
pop.v.i self.loopbuffer
call.i gml_Script_snd_stop_all(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 90
conv.i.v
pushi.e 126
conv.i.v
call.i audio_play_sound(argc=3)
pop.v.v self.backing_music
pushi.e 1
conv.i.v
pushi.e 90
conv.i.v
pushi.e 130
conv.i.v
call.i audio_play_sound(argc=3)
pop.v.v self.solo_music
push.v self.backing_music
call.i audio_sound_length(argc=1)
pop.v.v self.backing_audio_length
push.v self.solo_music
call.i audio_sound_length(argc=1)
pop.v.v self.main_audio_length

:[end]