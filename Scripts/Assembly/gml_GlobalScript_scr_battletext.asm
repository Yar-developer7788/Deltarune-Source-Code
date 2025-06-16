.localvar 2 arguments

:[0]
b [13]

> gml_Script_scr_battletext (locals=0, argc=0)
:[1]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
pushglb.v global.fc
pushi.e 0
cmp.i.v NEQ
bf [3]

:[2]
pushi.e 64
conv.i.v
push.v self.yy
pushi.e 376
add.i.v
push.v self.xx
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.battlewriter

:[3]
pushglb.v global.fc
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 64
conv.i.v
push.v self.yy
pushi.e 376
add.i.v
push.v self.xx
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.battlewriter

:[5]
pushi.e 61
conv.i.v
push.v self.yy
pushi.e 380
add.i.v
push.v self.xx
pushi.e 26
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myface
push.v self.battlewriter
pushi.e -9
pushenv [11]

:[6]
pushi.e 1
pop.v.i self.dialoguer
pushi.e 1
pop.v.i self.facer
pushglb.v global.fc
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.originalcharline
pushi.e 33
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 26
pop.v.i self.charline

:[11]
popenv [6]
push.v self.battlewriter
ret.v

:[12]
exit.i

:[13]
push.i [function]gml_Script_scr_battletext
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_battletext
popz.v

:[end]