.localvar 2 arguments
.localvar 6249 pitchthing 570

:[0]
b [7]

> gml_Script_snd_pitch_time (locals=1, argc=3)
:[1]
pushi.e 928
pushenv [4]

:[2]
push.v self.sndtarget
push.v arg.argument0
cmp.v.v EQ
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [2]
pushi.e 928
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.pitchthing
push.v arg.argument0
pushloc.v local.pitchthing
pushi.e -9
pop.v.v [stacktop]self.sndtarget
push.v arg.argument1
pushloc.v local.pitchthing
pushi.e -9
pop.v.v [stacktop]self.targetpitch
push.v arg.argument2
pushloc.v local.pitchthing
pushi.e -9
pop.v.v [stacktop]self.maxframes
pushloc.v local.pitchthing
pushi.e -9
pushenv [6]

:[5]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
popenv [5]
exit.i

:[7]
push.i [function]gml_Script_snd_pitch_time
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.snd_pitch_time
popz.v

:[end]