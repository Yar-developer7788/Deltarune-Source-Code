.localvar 2 arguments

:[0]
push.v 1110.goalHit
conv.v.b
not.b
bf [end]

:[1]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
pushi.e 1
pop.v.b self.active
pushi.e 1110
pushenv [3]

:[2]
pushi.e 1
pop.v.b self.inUse

:[3]
popenv [2]
push.v self.myPiece
pushi.e -9
pushenv [5]

:[4]
pushi.e 1
pop.v.b self.active

:[5]
popenv [4]
pushi.e 0
pop.v.i self.mybuffer

:[end]