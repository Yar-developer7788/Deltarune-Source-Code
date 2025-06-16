.localvar 2 arguments

:[0]
pushi.e 778
conv.i.v
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 113
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v
pushi.e 326
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[end]