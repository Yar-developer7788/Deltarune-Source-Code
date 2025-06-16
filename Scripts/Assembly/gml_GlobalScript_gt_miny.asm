.localvar 2 arguments

:[0]
b [4]

> gml_Script_gt_miny (locals=0, argc=0)
:[1]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
ret.v

:[3]
exit.i

:[4]
push.i [function]gml_Script_gt_miny
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.gt_miny
popz.v

:[end]