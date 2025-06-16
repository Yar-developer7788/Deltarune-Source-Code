.localvar 2 arguments

:[0]
push.v self.myinteract
pushi.e 1
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
bf [5]

:[4]
pushi.e 0
pop.v.i self.myinteract

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [14]

:[9]
pushi.e 1264
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[10]
pushi.e 1264
pushenv [12]

:[11]
pushi.e 1
pop.v.i self.tasquespawn

:[12]
popenv [11]

:[13]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 35
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[14]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[15]
pushi.e -1
push.v self.marker2
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e -2
pop.v.i self.depth
pushi.e 542
pop.v.i self.encounterflag
push.i 231204
setowner.e
push.v self.encounterflag
pushi.e -5
pushi.e 54
pop.v.v [array]self.flag
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
push.v self.id
push.v self.marker2
pushi.e 0
conv.i.v
pushi.e 57
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v
pushi.e 24
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 4
pop.v.i self.con
pushi.e 1264
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[16]
pushi.e 1264
pushenv [18]

:[17]
pushi.e 1
pop.v.i self.image_index

:[18]
popenv [17]

:[end]