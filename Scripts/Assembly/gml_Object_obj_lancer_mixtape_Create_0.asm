.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pause(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
push.d 0.95
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.d
push.d 0.8
conv.d.v
pushi.e 1
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
pushi.e 70
pop.v.i self.timer

:[end]