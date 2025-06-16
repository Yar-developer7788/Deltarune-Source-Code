.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_camerareset (locals=0, argc=1)
:[1]
pushi.e 1317
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.camreset
push.v arg.argument0
push.v self.camreset
pushi.e -9
pop.v.v [stacktop]self.timertarg
exit.i

:[2]
push.i [function]gml_Script_scr_camerareset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_camerareset
popz.v

:[end]