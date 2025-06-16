.localvar 2 arguments

:[0]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [4]

:[3]
push.d 1.1
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 142
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
popenv [3]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
exit.i

:[6]
push.v self.hp
pushi.e 10
sub.i.v
pop.v.v self.hp
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]