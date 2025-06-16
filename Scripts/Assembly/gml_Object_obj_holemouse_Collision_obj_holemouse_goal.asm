.localvar 2 arguments

:[0]
pushi.e 1
pop.v.b self.nointeract
push.v self.con
pushi.e 5
cmp.i.v NEQ
bt [2]

:[1]
push.v self.bouncethisframe
conv.v.b
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
push.v self.gulped
pushi.e 0
cmp.b.v EQ
bf [6]

:[5]
pushi.e 180
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.b self.gulped

:[6]
pushi.e 1
pop.v.b other.win
pushi.e 1
pop.v.b self.win
pushi.e 2
pop.v.i self.con
pushbltn.v builtin.room
pushi.e 126
cmp.i.v EQ
bf [11]

:[7]
pushi.e 1162
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
pushi.e 1
pop.v.i 1162.victory

:[9]
pushglb.v global.plot
pushi.e 72
cmp.i.v LT
bf [11]

:[10]
pushi.e 72
pop.v.i global.plot

:[11]
pushbltn.v builtin.room
pushi.e 134
cmp.i.v EQ
bf [end]

:[12]
pushi.e 1164
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[13]
pushi.e 1
pop.v.i 1164.victory

:[14]
pushglb.v global.plot
pushi.e 77
cmp.i.v LT
bf [16]

:[15]
pushi.e 77
pop.v.i global.plot

:[16]
pushi.e -5
pushi.e 368
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[17]
push.i 231204
setowner.e
push.d 0.5
conv.d.v
pushi.e -5
pushi.e 368
pop.v.v [array]self.flag

:[end]