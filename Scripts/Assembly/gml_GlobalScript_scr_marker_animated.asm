.localvar 2 arguments
.localvar 9578 x_pos 1773
.localvar 9579 y_pos 1774
.localvar 9580 sprite 1775
.localvar 9581 anim_speed 1776

:[0]
b [8]

> gml_Script_scr_marker_animated (locals=4, argc=0)
:[1]
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v local.x_pos
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v local.y_pos
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v local.sprite
pushbltn.v builtin.argument_count
pushi.e 3
cmp.i.v GT
bf [3]

:[2]
pushi.e -15
pushi.e 3
push.v [array]self.argument
b [4]

:[3]
push.d 0.2
conv.d.v

:[4]
pop.v.v local.anim_speed
pushi.e 129
conv.i.v
pushloc.v local.y_pos
pushloc.v local.x_pos
call.i gml_Script_instance_create(argc=3)
pop.v.v self.thismarker
push.v self.thismarker
pushi.e -9
pushenv [6]

:[5]
pushloc.v local.sprite
pop.v.v self.sprite_index
pushloc.v local.anim_speed
pop.v.v self.image_speed
call.i gml_Script_scr_depth(argc=0)
popz.v

:[6]
popenv [5]
push.v self.thismarker
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_marker_animated
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_marker_animated
popz.v

:[end]