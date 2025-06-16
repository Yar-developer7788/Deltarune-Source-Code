.localvar 2 arguments

:[0]
pushi.e 1
conv.i.v
push.s "instance_number(obj_caterpillarchara):"@36023
pushi.e 276
conv.i.v
call.i instance_number(argc=1)
call.i string(argc=1)
add.v.s
call.i string(argc=1)
call.i gml_Script_debug_printline(argc=2)
popz.v

:[end]