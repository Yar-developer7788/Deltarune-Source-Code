.localvar 2 arguments

:[0]
b [3]

> gml_Script_scr_moveheart_ch1 (locals=0, argc=0)
:[1]
pushi.e 1540
conv.i.v
push.v 1534.y
pushi.e 40
add.i.v
push.v 1534.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_moveheart_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_moveheart_ch1
popz.v

:[end]