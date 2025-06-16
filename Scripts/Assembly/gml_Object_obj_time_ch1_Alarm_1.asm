.localvar 2 arguments

:[0]
call.i audio_pause_all(argc=0)
popz.v
pushi.e 1
conv.b.v
call.i instance_deactivate_all(argc=1)
popz.v

:[end]