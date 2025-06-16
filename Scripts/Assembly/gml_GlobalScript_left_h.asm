.localvar 2 arguments

:[0]
b [3]

> gml_Script_left_h (locals=0, argc=0)
:[1]
pushi.e -5
pushi.e 3
push.v [array]self.input_held
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_left_h
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.left_h
popz.v

:[end]