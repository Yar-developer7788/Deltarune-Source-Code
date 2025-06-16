.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [2]

:[1]
pushi.e -5
pushi.e 315
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[5]
pushi.e 952
conv.i.v
pushi.e 1130
conv.i.v
pushi.e 135
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.snowy
push.v self.snowy
pushi.e -9
pushenv [7]

:[6]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 957
conv.i.v
pushi.e 1130
conv.i.v
pushi.e 170
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.monsterkid
push.v self.monsterkid
pushi.e -9
pushenv [9]

:[8]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[9]
popenv [8]

:[end]