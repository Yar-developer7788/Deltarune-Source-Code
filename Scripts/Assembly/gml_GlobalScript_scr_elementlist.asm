.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_elementlist (locals=0, argc=0)
:[1]
exit.i

:[2]
push.i [function]gml_Script_scr_elementlist
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_elementlist
popz.v

:[end]