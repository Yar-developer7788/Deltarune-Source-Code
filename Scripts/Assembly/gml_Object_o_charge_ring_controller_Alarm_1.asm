.localvar 2 arguments

:[0]
pushi.e 821
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.frequencyD
push.v self.frequencyD
pushi.e 3
conv.i.d
div.d.v
push.v self.frequencyD
neg.v
pushi.e 3
conv.i.d
div.d.v
call.i irandom_range(argc=2)
add.v.v
pop.v.v self.frequency
push.i 68097
setowner.e
push.v self.frequency
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 151
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 0.7
push.v self.ringcount
pushi.e 5
conv.i.d
div.d.v
add.v.d
pushi.e 151
conv.i.v
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 151
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
push.v self.ringcount
push.e 1
add.i.v
pop.v.v self.ringcount

:[end]