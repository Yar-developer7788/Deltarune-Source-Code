.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushbltn.v builtin.pointer_null
pop.v.v self.ra_npc
pushbltn.v builtin.pointer_null
pop.v.v self.su_npc
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.talked
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
pushi.e -1
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushglb.v global.plot
pushi.e 8
cmp.i.v EQ
bt [4]

:[3]
pushglb.v global.plot
pushi.e 9
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [11]

:[6]
pushi.e 10
pop.v.i self.con
pushi.e 103
conv.i.v
pushi.e 541
conv.i.v
pushi.e 377
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.susie
push.v self.susie
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 135
conv.i.v
pushi.e 590
conv.i.v
pushi.e 279
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ralsei
push.v self.ralsei
pushi.e -9
pushenv [10]

:[9]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[10]
popenv [9]

:[11]
pushglb.v global.plot
pushi.e 9
cmp.i.v EQ
bf [end]

:[12]
pushi.e 50
pop.v.i self.con
pushi.e 82
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.cutscene

:[14]
popenv [13]

:[end]