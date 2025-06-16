.localvar 2 arguments

:[0]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
exit.i

:[4]
push.v other.active
conv.v.b
not.b
bf [6]

:[5]
exit.i

:[6]
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.hp

:[end]