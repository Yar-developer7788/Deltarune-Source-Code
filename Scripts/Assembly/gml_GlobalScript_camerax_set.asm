.localvar 2 arguments

:[0]
b [2]

> gml_Script_camerax_set (locals=0, argc=1)
:[1]
push.v arg.argument0
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
exit.i

:[2]
push.i [function]gml_Script_camerax_set
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.camerax_set
popz.v

:[end]