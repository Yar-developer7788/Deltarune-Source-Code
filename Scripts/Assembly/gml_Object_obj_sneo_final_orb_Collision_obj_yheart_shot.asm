.localvar 2 arguments

:[0]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [7]

:[1]
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.hp
push.e 1
sub.i.v
pop.v.v self.hp
pushi.e 3
pop.v.i self.speed
b [4]

:[3]
push.v self.hp
pushi.e 3
sub.i.v
pop.v.v self.hp
pushi.e 0
pop.v.i self.speed

:[4]
push.v self.hp
pushi.e 0
cmp.i.v LTE
bf [6]

:[5]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 189
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.speed
b [7]

:[6]
pushi.e -1
pop.v.i self.timer
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[7]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [9]

:[8]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[9]
popenv [8]

:[end]