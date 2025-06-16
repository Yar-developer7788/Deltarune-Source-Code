.localvar 2 arguments

:[0]
push.v other.active
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
call.i instance_destroy(argc=0)
popz.v
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]