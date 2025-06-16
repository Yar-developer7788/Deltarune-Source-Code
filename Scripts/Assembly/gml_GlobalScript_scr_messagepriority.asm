.localvar 2 arguments

:[0]
b [9]

> gml_Script_scr_messagepriority (locals=0, argc=1)
:[1]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [7]

:[2]
push.v 357.messagepriority
push.v arg.argument0
cmp.v.v LT
bf [5]

:[3]
push.v arg.argument0
pop.v.v 357.messagepriority
pushi.e 1
conv.b.v
ret.v

:[4]
b [6]

:[5]
pushi.e 0
conv.b.v
ret.v

:[6]
b [8]

:[7]
pushi.e 0
conv.b.v
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_scr_messagepriority
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_messagepriority
popz.v

:[end]