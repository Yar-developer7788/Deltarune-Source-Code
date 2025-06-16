.localvar 2 arguments

:[0]
b [3]

> gml_Script_cameray (locals=0, argc=0)
:[1]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_cameray
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.cameray
popz.v

:[end]