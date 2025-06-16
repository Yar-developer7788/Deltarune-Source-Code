.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 175
cmp.i.v GTE
bf [2]

:[1]
pushi.e 1413
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.checkernpc
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e 1
pop.v.i self.con

:[end]