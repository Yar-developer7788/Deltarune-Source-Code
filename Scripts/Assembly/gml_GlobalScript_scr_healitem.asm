.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_healitem (locals=0, argc=2)
:[1]
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_scr_heal(argc=2)
popz.v
push.v arg.argument0
call.i gml_Script_scr_charbox_x(argc=1)
pop.v.v self.healx
pushi.e 278
conv.i.v
push.v self.yy
pushi.e 430
add.i.v
push.v self.healx
pushi.e 70
add.i.v
push.v self.xx
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.healtext
push.v arg.argument1
push.v self.healtext
pushi.e -9
pop.v.v [stacktop]self.healamt
exit.i

:[2]
push.i [function]gml_Script_scr_healitem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_healitem
popz.v

:[end]