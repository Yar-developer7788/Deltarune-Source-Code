.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_rememberxy (locals=0, argc=0)
:[1]
push.v self.x
pop.v.v self.___myrememberx
push.v self.y
pop.v.v self.___myremembery
exit.i

:[2]
push.i [function]gml_Script_scr_rememberxy
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_rememberxy
popz.v

:[end]