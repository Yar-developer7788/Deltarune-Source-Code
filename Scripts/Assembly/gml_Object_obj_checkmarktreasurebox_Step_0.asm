.localvar 2 arguments

:[0]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [11]

:[1]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [7]

:[2]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [6]

:[3]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [5]

:[4]
pushi.e 5
pop.v.i self.onebuffer

:[5]
popenv [4]

:[6]
b [11]

:[7]
push.v self.mydialoguer
call.i gml_Script_i_ex(argc=1)
pushi.e 0
cmp.b.v EQ
bf [11]

:[8]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [10]

:[9]
pushi.e 5
pop.v.i self.onebuffer

:[10]
popenv [9]

:[11]
push.v self.opened
pop.v.v self.image_index

:[end]