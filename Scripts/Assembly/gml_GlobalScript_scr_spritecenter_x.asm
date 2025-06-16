.localvar 2 arguments
.localvar 11830 _spriteCenterLen 3476
.localvar 11831 _spriteCenterDir 3477

:[0]
b [3]

> gml_Script_scr_spritecenter_x (locals=2, argc=1)
:[1]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.sprite_height
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_distance(argc=4)
pop.v.v local._spriteCenterLen
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.sprite_height
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_direction(argc=4)
pop.v.v local._spriteCenterDir
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._spriteCenterDir
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.image_angle
add.v.v
pushloc.v local._spriteCenterLen
call.i lengthdir_x(argc=2)
add.v.v
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_spritecenter_x
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_spritecenter_x
popz.v

:[end]