.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_shakescreen (locals=0, argc=0)
:[1]
pushi.e 193
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_shakescreen
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_shakescreen
popz.v

:[end]