.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_darksize (locals=0, argc=1)
:[1]
push.v arg.argument0
pop.v.v self.inst
pushi.e 2
push.v self.inst
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.inst
pushi.e -9
pop.v.i [stacktop]self.image_yscale
exit.i

:[2]
push.i [function]gml_Script_scr_darksize
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_darksize
popz.v

:[end]