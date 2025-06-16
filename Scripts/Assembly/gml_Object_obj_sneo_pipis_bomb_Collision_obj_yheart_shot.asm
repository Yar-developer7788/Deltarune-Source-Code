.localvar 2 arguments

:[0]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.spawninvincibilitytimer
pushi.e 11
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [8]

:[5]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [7]

:[6]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
popenv [6]

:[8]
pushi.e 1
pop.v.i self.timer
pushi.e 1
pop.v.i self.image_speed
pushi.e 143
conv.i.v
call.i gml_Script_snd_loop(argc=1)
pop.v.v self.bomsfallsfx

:[end]