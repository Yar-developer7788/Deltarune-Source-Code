.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 195
cmp.i.v NEQ
bf [end]

:[1]
push.v self.collider
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[2]
push.v self.collider
pushi.e -9
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[end]