.localvar 2 arguments

:[0]
b [5]

> gml_Script_c_msgzurasu (locals=0, argc=1)
:[1]
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "zurasuon"@9770
conv.s.v
push.s "msgside"@9765
conv.s.v
call.i gml_Script_c_cmd(argc=5)
popz.v
b [4]

:[3]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "zurasuoff"@9771
conv.s.v
push.s "msgside"@9765
conv.s.v
call.i gml_Script_c_cmd(argc=5)
popz.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_c_msgzurasu
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_msgzurasu
popz.v

:[end]