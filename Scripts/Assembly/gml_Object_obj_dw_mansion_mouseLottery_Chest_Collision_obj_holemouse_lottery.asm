.localvar 2 arguments

:[0]
pushi.e -5
push.v self.flag
conv.v.i
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.flag
conv.v.i
pop.v.v [array]self.flag
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.con

:[end]