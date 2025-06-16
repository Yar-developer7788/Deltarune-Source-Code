.localvar 2 arguments

:[0]
pushi.e 1170
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.inert
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 15
pop.v.i 1170.gentimer
pushi.e 1
pop.v.i 1170.mousecreate
pushi.e 177
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.b self.freezeplayer

:[end]