.localvar 2 arguments

:[0]
push.v self.goggles_surface
call.i surface_exists(argc=1)
conv.v.b
not.b
bt [2]

:[1]
push.v self.static_surface
call.i surface_exists(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
exit.i

:[5]
push.v self.goggles_surface
call.i surface_set_target(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_clear(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 343
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
push.v self.static_surface
call.i surface_set_target(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.offset_y
push.v self.offset_x
pushi.e 0
conv.i.v
pushi.e 344
conv.i.v
call.i draw_sprite_tiled_ext(argc=8)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.goggles_surface
call.i draw_surface(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.static_surface
call.i draw_surface_ext(argc=8)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.static_surface
call.i draw_surface_ext(argc=8)
popz.v
push.v self.image_alpha
pushi.e 2
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.static_surface
call.i draw_surface_ext(argc=8)
popz.v
push.v self.image_alpha
pushi.e 3
cmp.i.v LT
bf [end]

:[6]
push.v self.image_alpha
push.d 0.02
add.d.v
pop.v.v self.image_alpha

:[end]