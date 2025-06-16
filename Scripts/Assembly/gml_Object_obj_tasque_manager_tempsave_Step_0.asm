.localvar 2 arguments

:[0]
pushi.e 275
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e -5
pushi.e 371
push.v [array]self.flag
pushi.e 1
cmp.i.v NEQ
bf [6]

:[5]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 371
pop.v.v [array]self.flag
call.i gml_Script_scr_tempsave(argc=0)
popz.v

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]