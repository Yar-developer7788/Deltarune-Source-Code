.localvar 2 arguments

:[0]
call.i instance_destroy(argc=0)
popz.v
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [2]

:[1]
push.d 1.1
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 142
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
call.i gml_Script_scr_afterimage_cut(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]