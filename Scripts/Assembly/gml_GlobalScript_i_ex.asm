.localvar 2 arguments

:[0]
b [6]

> gml_Script_i_ex (locals=0, argc=1)
:[1]
push.v arg.argument0
pushi.e 0
cmp.i.v GT
bf [4]

:[2]
push.v arg.argument0
call.i instance_exists(argc=1)
ret.v

:[3]
b [5]

:[4]
pushi.e 0
conv.b.v
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_i_ex
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.i_ex
popz.v

:[end]