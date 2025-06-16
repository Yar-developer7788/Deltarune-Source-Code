.localvar 2 arguments

:[0]
b [3]

> gml_Script_scr_afterimage_ch1 (locals=0, argc=0)
:[1]
pushi.e 1513
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.afterimage
push.v self.sprite_index
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_blend
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_blend
pushi.e 0
push.v self.afterimage
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.depth
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.image_xscale
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.image_angle
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.afterimage
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_afterimage_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_afterimage_ch1
popz.v

:[end]