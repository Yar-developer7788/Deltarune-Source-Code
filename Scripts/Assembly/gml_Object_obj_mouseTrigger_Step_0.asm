.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [2]

:[1]
push.v self.letgo
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [8]

:[4]
pushi.e 1167
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[5]
pushi.e 1167
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.mousecreate

:[7]
popenv [6]

:[8]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [10]

:[9]
push.v self.letgo
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.letgo
pushi.e 0
pop.v.i self.image_index

:[13]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [end]

:[14]
push.v self.mydialoguer
call.i gml_Script_i_ex(argc=1)
pushi.e 0
cmp.b.v EQ
bf [end]

:[15]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [17]

:[16]
pushi.e 5
pop.v.i self.onebuffer

:[17]
popenv [16]

:[end]