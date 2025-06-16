.localvar 2 arguments

:[0]
b [6]

> gml_Script_safe_delete (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [5]

:[2]
push.v arg.argument0
pushi.e -9
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[5]
exit.i

:[6]
push.i [function]gml_Script_safe_delete
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.safe_delete
popz.v

:[end]