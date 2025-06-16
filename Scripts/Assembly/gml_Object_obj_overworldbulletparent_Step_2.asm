.localvar 2 arguments

:[0]
push.v self.destroyoffscreen
pushi.e 1
cmp.b.v EQ
bf [end]

:[1]
push.v self.tolerance
push.v self.id
call.i gml_Script_scr_onscreen_tolerance(argc=2)
conv.v.b
not.b
bf [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]