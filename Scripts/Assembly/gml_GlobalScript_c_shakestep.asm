.localvar 2 arguments

:[0]
b [2]

> gml_Script_c_shakestep (locals=0, argc=2)
:[1]
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "stepsound"@10104
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "imageindex"@9827
conv.s.v
pushi.e 15
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
exit.i

:[2]
push.i [function]gml_Script_c_shakestep
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_shakestep
popz.v

:[end]