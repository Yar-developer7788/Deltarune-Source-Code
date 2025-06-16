.localvar 2 arguments

:[0]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1189
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[2]
push.v 1189.weird
pushi.e 1
cmp.b.v EQ
bf [5]

:[3]
push.v 1189.solve
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.image_index

:[5]
push.v 1189.solve
pushi.e 0
cmp.i.v GT
bf [end]

:[6]
pushi.e 1
pop.v.i self.image_index

:[end]