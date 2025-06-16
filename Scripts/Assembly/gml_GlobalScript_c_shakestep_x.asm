.localvar 2 arguments

:[0]
b [10]

> gml_Script_c_shakestep_x (locals=0, argc=6)
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
push.v arg.argument5
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
conv.i.v
push.s "stepsound"@10104
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v

:[3]
pushi.e 0
conv.i.v
push.s "imageindex"@9827
conv.s.v
push.v arg.argument2
call.i gml_Script_c_delaycmd(argc=3)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v arg.argument4
pushi.e 1
cmp.i.v GT
bf [9]

:[4]
pushi.e 1
pop.v.i self.__argi

:[5]
push.v self.__argi
push.v arg.argument4
cmp.v.v LT
bf [9]

:[6]
pushi.e 1
conv.i.v
push.s "imageindex"@9827
conv.s.v
push.v self.__argi
push.v arg.argument3
mul.v.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument1
push.v arg.argument0
push.s "addxy"@9875
conv.s.v
push.v self.__argi
push.v arg.argument3
mul.v.v
call.i gml_Script_c_delaycmd4(argc=6)
popz.v
push.v arg.argument5
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "stepsound"@10104
conv.s.v
pushi.e 0
conv.i.v
push.s "var"@9781
conv.s.v
push.v self.__argi
push.v arg.argument3
mul.v.v
call.i gml_Script_c_delaycmd4(argc=6)
popz.v

:[8]
pushi.e 0
conv.i.v
push.s "imageindex"@9827
conv.s.v
push.v self.__argi
push.v arg.argument3
mul.v.v
push.v arg.argument2
add.v.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "shakeobj"@9131
conv.s.v
push.v self.__argi
push.v arg.argument3
mul.v.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v self.__argi
push.e 1
add.i.v
pop.v.v self.__argi
b [5]

:[9]
exit.i

:[10]
push.i [function]gml_Script_c_shakestep_x
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_shakestep_x
popz.v

:[end]