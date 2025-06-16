.localvar 2 arguments

:[0]
b [4]

> gml_Script_gt_maxx (locals=0, argc=0)
:[1]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
ret.v

:[3]
exit.i

:[4]
push.i [function]gml_Script_gt_maxx
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.gt_maxx
popz.v

:[end]