.localvar 2 arguments

:[0]
b [6]

> gml_Script_button3_h (locals=0, argc=0)
:[1]
pushi.e -5
pushi.e 6
push.v [array]self.input_held
conv.v.b
bf [3]

:[2]
pushi.e 1
conv.i.v
ret.v

:[3]
pushi.e -5
pushi.e 9
push.v [array]self.input_held
conv.v.b
bf [5]

:[4]
pushi.e 1
conv.i.v
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_button3_h
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.button3_h
popz.v

:[end]