.localvar 2 arguments
.localvar 10824 _hitboxwidth 2748
.localvar 10827 _hitboxheight 2751

:[0]
b [3]

> gml_Script_scr_create_hitbox_solid (locals=2, argc=0)
:[1]
push.v self.bbox_right
push.v self.bbox_left
sub.v.v
pop.v.v local._hitboxwidth
push.v self.bbox_bottom
push.v self.bbox_top
sub.v.v
pop.v.v local._hitboxheight
pushi.e 1144
conv.i.v
push.v self.bbox_top
push.v self.bbox_left
call.i gml_Script_instance_create(argc=3)
pop.v.v self.___createdsolid
push.d 0.025
pushloc.v local._hitboxwidth
mul.v.d
push.v self.___createdsolid
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.d 0.025
pushloc.v local._hitboxheight
mul.v.d
push.v self.___createdsolid
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.___createdsolid
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_create_hitbox_solid
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_create_hitbox_solid
popz.v

:[end]