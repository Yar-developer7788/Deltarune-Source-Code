.localvar 2 arguments

:[0]
b [2]

> gml_Script_setxy (locals=0, argc=2)
:[1]
push.v arg.argument0
pop.v.v self.x
push.v arg.argument1
pop.v.v self.y
exit.i

:[2]
push.i [function]gml_Script_setxy
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.setxy
popz.v

:[end]