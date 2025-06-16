.localvar 2 arguments

:[0]
pushi.e 730
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 100
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 100
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[end]