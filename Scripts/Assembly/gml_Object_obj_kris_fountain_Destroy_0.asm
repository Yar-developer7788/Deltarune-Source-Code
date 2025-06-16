.localvar 2 arguments

:[0]
push.v self.fountain_sound
pushi.e -4
cmp.i.v NEQ
bf [end]

:[1]
push.v self.fountain_sound
call.i audio_stop_sound(argc=1)
popz.v

:[end]