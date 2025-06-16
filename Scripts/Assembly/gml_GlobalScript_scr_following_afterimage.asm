.localvar 2 arguments
.localvar 9227 __source 1612

:[0]
b [6]

> gml_Script_scr_following_afterimage (locals=1, argc=0)
:[1]
pushbltn.v builtin.argument_count
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
pushi.e -15
pushi.e 1
push.v [array]self.argument
b [4]

:[3]
call.i @@This@@(argc=0)

:[4]
pop.v.v local.__source
pushi.e -15
pushi.e 0
push.v [array]self.argument
pushloc.v local.__source
pushi.e -9
push.v [stacktop]self.y
pushloc.v local.__source
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.afterimage
pushloc.v local.__source
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.parent
pushloc.v local.__source
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushloc.v local.__source
pushi.e -9
push.v [stacktop]self.image_index
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_index
pushloc.v local.__source
pushi.e -9
push.v [stacktop]self.image_blend
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_blend
pushi.e 0
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushloc.v local.__source
pushi.e -9
push.v [stacktop]self.depth
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.depth
pushloc.v local.__source
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushloc.v local.__source
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushloc.v local.__source
pushi.e -9
push.v [stacktop]self.image_angle
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.afterimage
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_following_afterimage
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_following_afterimage
popz.v

:[end]