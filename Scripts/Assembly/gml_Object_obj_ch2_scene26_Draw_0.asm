.localvar 2 arguments

:[0]
push.v self.specialDraw
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.glowValue
push.d 0.05
add.d.v
call.i clamp(argc=3)
pop.v.v self.glowValue
push.v self.glowValue
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.image_blend
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.image_angle
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.x
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.image_index
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[2]
push.v self.specialDraw
pushi.e 2
cmp.i.v EQ
bf [end]

:[3]
pushi.e 0
conv.i.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.image_blend
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.image_angle
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.x
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.image_index
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v
pushi.e 3
pop.v.i self.specialDraw

:[end]