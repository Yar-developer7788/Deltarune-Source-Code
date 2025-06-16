.localvar 2 arguments

:[0]
b [3]

> gml_Script_charaHeartX (locals=0, argc=0)
:[1]
push.v 82.x
pushi.e 20
add.i.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_charaHeartX
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.charaHeartX
popz.v

:[end]