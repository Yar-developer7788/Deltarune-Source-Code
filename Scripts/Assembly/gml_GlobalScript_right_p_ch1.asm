.localvar 2 arguments

:[0]
b [3]

> gml_Script_right_p_ch1 (locals=0, argc=0)
:[1]
pushi.e -5
pushi.e 1
push.v [array]self.input_pressed
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_right_p_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.right_p_ch1
popz.v

:[end]