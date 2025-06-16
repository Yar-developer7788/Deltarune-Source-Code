.localvar 2 arguments

:[0]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [4]

:[3]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
popenv [3]

:[5]
pushi.e 1
pop.v.i self.timer
pushi.e 1
pop.v.i self.image_speed
pushi.e 143
conv.i.v
call.i gml_Script_snd_loop(argc=1)
pop.v.v self.bomsfallsfx

:[end]