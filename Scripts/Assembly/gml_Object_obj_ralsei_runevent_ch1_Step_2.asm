.localvar 2 arguments

:[0]
pushi.e 1351
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1351.runmove
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.runamt
pushi.e 1
add.i.v
pop.v.v self.runamt

:[3]
push.v self.runamt
pushi.e 30
cmp.i.v GTE
bf [5]

:[4]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 99
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 206
pop.v.v [array]self.flag

:[8]
push.v 1351.y
pushi.e 760
cmp.i.v GT
bf [11]

:[9]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 31
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
pushi.e 2
pop.v.i global.fc
pushi.e 130
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[14]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [end]

:[18]
pushi.e 0
pop.v.i global.interact
pushi.e 99
pop.v.i self.con
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 206
pop.v.v [array]self.flag

:[end]