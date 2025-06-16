.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_miniface_init_sweet (locals=0, argc=0)
:[1]
push.i 65244086
setowner.e
pushi.e 2359
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.writerimg
pushi.e 2360
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.writerimg
pushi.e 2361
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.writerimg
exit.i

:[2]
push.i [function]gml_Script_scr_miniface_init_sweet
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_miniface_init_sweet
popz.v

:[end]