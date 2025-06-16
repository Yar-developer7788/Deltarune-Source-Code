.localvar 2 arguments

:[0]
call.i instance_destroy(argc=0)
popz.v
push.v other.heart_health
push.d 0.5
sub.d.v
pop.v.v other.heart_health
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]