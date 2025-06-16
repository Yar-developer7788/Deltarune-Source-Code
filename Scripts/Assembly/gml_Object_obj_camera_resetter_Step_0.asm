.localvar 2 arguments

:[0]
push.v self.timertarg
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
push.v self.timertarg
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [7]

:[4]
pushi.e 82
pushenv [6]

:[5]
pushi.e 1
pop.v.i self.cutscene

:[6]
popenv [5]
pushi.e 1158
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1160
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 82
conv.i.v
call.i gml_Script_scr_pan_to_obj(argc=2)
popz.v

:[7]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [11]

:[8]
pushi.e 82
pushenv [10]

:[9]
pushi.e 1
pop.v.i self.cutscene

:[10]
popenv [9]
pushi.e 1158
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1160
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
push.v self.timertarg
pushi.e 82
conv.i.v
call.i gml_Script_scr_pan_to_obj(argc=2)
popz.v

:[11]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.timertarg
pushi.e 1
add.i.v
cmp.v.v GTE
bf [end]

:[12]
pushi.e 82
pushenv [14]

:[13]
pushi.e 0
pop.v.i self.cutscene

:[14]
popenv [13]
call.i instance_destroy(argc=0)
popz.v

:[end]