.localvar 2 arguments

:[0]
b [3]

> gml_Script_charaY (locals=0, argc=0)
:[1]
push.v 82.y
push.v 82.sprite_height
add.v.v
pushi.e 8
sub.i.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_charaY
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.charaY
popz.v

:[end]