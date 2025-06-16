.localvar 2 arguments

:[0]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [9]

:[4]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [9]

:[5]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [7]

:[6]
pushi.e 5
pop.v.i self.onebuffer

:[7]
popenv [6]
push.v self.doafter
pushi.e 0
cmp.i.v NEQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.docon

:[9]
push.v self.docon
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [12]

:[11]
push.e 0

:[12]
bf [13]

:[13]
pushi.e 130
conv.i.b
bf [16]

:[14]
pushglb.v global.plot
pushi.e 75
cmp.i.v GTE
bf [16]

:[15]
push.v self.sprite_index
pushi.e 3007
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [end]

:[18]
pushi.e 2641
pop.v.i self.sprite_index

:[end]