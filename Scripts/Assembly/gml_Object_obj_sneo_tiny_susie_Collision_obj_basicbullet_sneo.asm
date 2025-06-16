.localvar 2 arguments

:[0]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
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