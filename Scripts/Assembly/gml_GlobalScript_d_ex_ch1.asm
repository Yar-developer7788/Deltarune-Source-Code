.localvar 2 arguments

:[0]
b [3]

> gml_Script_d_ex_ch1 (locals=0, argc=0)
:[1]
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_d_ex_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.d_ex_ch1
popz.v

:[end]