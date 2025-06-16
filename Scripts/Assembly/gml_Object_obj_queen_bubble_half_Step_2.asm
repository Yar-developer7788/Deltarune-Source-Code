.localvar 2 arguments

:[0]
push.v self.parent
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v self.parent
pushi.e -9
push.v [stacktop]self.image_xscale
pop.v.v self.image_xscale
push.v self.parent
pushi.e -9
push.v [stacktop]self.image_yscale
pop.v.v self.image_yscale
push.v self.parent
pushi.e -9
push.v [stacktop]self.image_angle
pop.v.v self.image_angle
push.v self.parent
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
push.v self.parent
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y
push.v self.override_sprite
conv.v.b
not.b
bf [4]

:[3]
push.v self.parent
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v self.sprite_index

:[4]
push.v self.parent
pushi.e -9
push.v [stacktop]self.image_index
pop.v.v self.image_index
push.v self.parent
pushi.e -9
push.v [stacktop]self.image_blend
pop.v.v self.image_blend

:[end]