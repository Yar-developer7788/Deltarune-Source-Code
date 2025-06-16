.localvar 2 arguments

:[0]
b [3]

> gml_Script_scr_fadein (locals=0, argc=1)
:[1]
pushi.e 191
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.__fadeouter
pushi.e -1
conv.i.d
push.v arg.argument0
div.v.d
push.v self.__fadeouter
pushi.e -9
pop.v.v [stacktop]self.fadespeed
pushi.e 3
push.v self.__fadeouter
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.__fadeouter
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_fadein
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_fadein
popz.v

:[end]