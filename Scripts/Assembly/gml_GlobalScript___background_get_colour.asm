.localvar 2 arguments
.localvar 11009 __colinfo 2860
.localvar 11011 __col 2862

:[0]
b [5]

> gml_Script___background_get_colour (locals=2, argc=0)
:[1]
call.i gml_Script___background_get_colour_element(argc=0)
pop.v.v local.__colinfo
pushi.e -7
pushi.e 0
push.v [array]self.__colinfo
pushi.e -1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
conv.i.v
ret.v

:[3]
pushi.e -7
pushi.e 0
push.v [array]self.__colinfo
call.i layer_background_get_blend(argc=1)
pop.v.v local.__col
pushloc.v local.__col
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script___background_get_colour
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.__background_get_colour
popz.v

:[end]