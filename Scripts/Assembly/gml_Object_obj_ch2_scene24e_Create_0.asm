.localvar 2 arguments
.localvar 32533 savepoint 16492

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [3]

:[1]
pushi.e -5
pushi.e 319
push.v [array]self.flag
pushi.e 2
cmp.i.v LT
bt [3]

:[2]
pushglb.v global.plot
pushi.e 160
cmp.i.v GTE
b [4]

:[3]
push.e 1

:[4]
bf [end]

:[5]
pushglb.v global.plot
pushi.e 160
cmp.i.v GTE
bf [9]

:[6]
pushi.e 127
conv.i.v
pushi.e 720
conv.i.v
pushi.e 460
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.savepoint
pushloc.v local.savepoint
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]