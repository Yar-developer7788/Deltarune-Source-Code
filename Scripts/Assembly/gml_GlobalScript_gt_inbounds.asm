.localvar 2 arguments

:[0]
b [3]

> gml_Script_gt_inbounds (locals=0, argc=2)
:[1]
pushi.e 0
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_gt_inbounds_tol(argc=3)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_gt_inbounds
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.gt_inbounds
popz.v
b [11]

> gml_Script_gt_inbounds_tol (locals=0, argc=3)
:[4]
push.v arg.argument0
push.i [function]gml_Script_gt_minx
push.v arg.argument2
sub.v.i
cmp.v.v GTE
bf [8]

:[5]
push.v arg.argument0
push.i [function]gml_Script_gt_maxx
push.v arg.argument2
add.v.i
cmp.v.v LTE
bf [8]

:[6]
push.v arg.argument1
push.i [function]gml_Script_gt_miny
push.v arg.argument2
sub.v.i
cmp.v.v GTE
bf [8]

:[7]
push.v arg.argument1
push.i [function]gml_Script_gt_maxy
push.v arg.argument2
add.v.i
cmp.v.v LTE
b [9]

:[8]
push.e 0

:[9]
conv.b.v
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_gt_inbounds_tol
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -6
pop.v.v [stacktop]self.gt_inbounds_tol
popz.v

:[end]