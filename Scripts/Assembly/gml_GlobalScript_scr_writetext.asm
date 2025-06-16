.localvar 2 arguments

:[0]
b [8]

> gml_Script_scr_writetext (locals=0, argc=4)
:[1]
pushi.e 0
pop.v.i global.fc
push.v arg.argument0
pop.v.v global.msc
push.v arg.argument1
push.s "x"@50
cmp.s.v NEQ
bf [3]

:[2]
push.i 4425555
setowner.e
push.v arg.argument1
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[3]
push.v arg.argument2
pushi.e 0
cmp.i.v NEQ
bf [5]

:[4]
push.v arg.argument2
pop.v.v global.fc

:[5]
pushi.e 5
pop.v.i global.typer
push.v arg.argument3
pushi.e 0
cmp.i.v NEQ
bf [7]

:[6]
push.v arg.argument3
pop.v.v global.typer

:[7]
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
exit.i

:[8]
push.i [function]gml_Script_scr_writetext
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_writetext
popz.v

:[end]