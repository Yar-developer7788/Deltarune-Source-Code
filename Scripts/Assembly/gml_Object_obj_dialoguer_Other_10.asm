.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.active
pushi.e 19
push.v self.f
mul.v.i
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
add.v.v
pop.v.v self.xx
pushi.e 20
push.v self.f
mul.v.i
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
add.v.v
pop.v.v self.yy
push.v self.xx
call.i round(argc=1)
pop.v.v self.xx
push.v self.yy
call.i round(argc=1)
pop.v.v self.yy
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 64
conv.i.v
push.v self.yy
pushi.e 5
push.v self.f
mul.v.i
sub.v.v
push.v self.xx
pushi.e 10
push.v self.f
mul.v.i
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.writer
call.i gml_Script_scr_facechoice(argc=0)
popz.v
push.v self.writer
pushi.e -9
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.dialoguer
push.v other.jpspecial
pop.v.v self.jpspecial

:[3]
popenv [2]

:[4]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [8]

:[5]
pushi.e 64
conv.i.v
push.v self.yy
pushi.e 150
push.v self.f
mul.v.i
add.v.v
push.v self.xx
pushi.e 10
push.v self.f
mul.v.i
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.writer
push.v self.skippable
push.v self.writer
pushi.e -9
pop.v.v [stacktop]self.skippable
call.i gml_Script_scr_facechoice(argc=0)
popz.v
push.v self.writer
pushi.e -9
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.dialoguer
push.v other.jpspecial
pop.v.v self.jpspecial

:[7]
popenv [6]

:[8]
push.v self.writer
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [10]

:[9]
pushglb.v global.fc
pushi.e 0
cmp.i.v NEQ
b [11]

:[10]
push.e 0

:[11]
bf [17]

:[12]
push.v self.writer
pushi.e -9
pushenv [16]

:[13]
pushi.e 1
pop.v.i self.dialoguer
push.v self.originalcharline
pushi.e 33
cmp.i.v EQ
bf [15]

:[14]
pushi.e 26
pop.v.i self.charline

:[15]
push.v other.jpspecial
pop.v.v self.jpspecial

:[16]
popenv [13]

:[17]
pushi.e 1
pop.v.i self.zurasucon

:[end]