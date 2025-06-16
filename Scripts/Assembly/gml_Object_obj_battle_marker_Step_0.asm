.localvar 2 arguments

:[0]
push.v self.destroyoncomplete
conv.v.b
not.b
bf [2]

:[1]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]