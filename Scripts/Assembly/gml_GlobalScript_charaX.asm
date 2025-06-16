.localvar 2 arguments

:[0]
b [3]

> gml_Script_charaX (locals=0, argc=0)
:[1]
push.v 82.x
push.v 82.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_charaX
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.charaX
popz.v

:[end]