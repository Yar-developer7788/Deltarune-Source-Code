.localvar 2 arguments

:[0]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 50
pop.v.i self.con
pushi.e 1261
push.v self.kknpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_free(argc=1)
popz.v
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]