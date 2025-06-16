.localvar 2 arguments

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
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bt [3]

:[2]
pushglb.v global.plot
pushi.e 205
cmp.i.v GTE
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[6]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[7]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[end]