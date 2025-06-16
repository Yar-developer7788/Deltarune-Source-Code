.localvar 2 arguments

:[0]
b [2]

> gml_Script_c_stickto_stop (locals=0, argc=0)
:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "off"@10079
conv.s.v
push.s "stick"@9818
conv.s.v
call.i gml_Script_c_cmd(argc=5)
popz.v
exit.i

:[2]
push.i [function]gml_Script_c_stickto_stop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_stickto_stop
popz.v

:[end]