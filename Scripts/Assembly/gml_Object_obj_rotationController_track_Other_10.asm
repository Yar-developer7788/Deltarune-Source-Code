.localvar 2 arguments

:[0]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [end]

:[1]
push.v self.rotate
pushi.e 0
cmp.b.v EQ
bf [4]

:[2]
push.v self.timer
pushi.e 1
cmp.i.v GT
bf [4]

:[3]
pushi.e -5
pushi.e 368
push.v [array]self.flag
pushi.e 1
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e 3
pop.v.i self.buffer
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.b self.rotate
pushi.e 0
pop.v.i self.timer

:[end]