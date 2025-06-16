.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 1
pop.v.b self.cantrigger
pushi.e 2982
conv.i.v
pushi.e 141
conv.i.v
pushi.e 153
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.torieldoor
push.v self.torieldoor
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[2]
popenv [1]
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [5]

:[3]
pushglb.v global.plot
pushi.e 210
cmp.i.v GTE
bt [5]

:[4]
pushglb.v global.plot
pushi.e 205
cmp.i.v LT
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[8]
pushi.e 153
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 403
conv.i.v
pushi.e 20
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.housetop
push.v self.housetop
pushi.e -9
pushenv [10]

:[9]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[10]
popenv [9]

:[end]