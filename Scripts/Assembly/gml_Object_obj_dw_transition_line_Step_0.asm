.localvar 2 arguments

:[0]
push.v self.y
pushi.e 400
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 400
conv.i.v
push.v self.id
call.i gml_Script_scr_onscreen_tolerance(argc=2)
conv.v.b
not.b
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]