.localvar 2 arguments

:[0]
pushi.e -4
conv.i.v
pushi.e 0
conv.i.v
push.l 9
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 40
sub.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 20
conv.i.v
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v

:[end]