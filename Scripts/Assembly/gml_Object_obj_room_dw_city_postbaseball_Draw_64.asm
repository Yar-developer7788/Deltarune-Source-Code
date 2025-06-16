.localvar 2 arguments

:[0]
pushi.e 1
conv.i.v
push.s "con   "@21476
push.v self.con
call.i string(argc=1)
add.v.s
call.i gml_Script_debug_printline(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "instance_number(obj_caterpillarchara)     "@21477
pushi.e 276
conv.i.v
call.i instance_number(argc=1)
call.i string(argc=1)
add.v.s
call.i gml_Script_debug_printline(argc=2)
popz.v
pushi.e 3
conv.i.v
push.s "instance_number(obj_actor)    "@21478
pushi.e 893
conv.i.v
call.i instance_number(argc=1)
call.i string(argc=1)
add.v.s
call.i gml_Script_debug_printline(argc=2)
popz.v

:[end]