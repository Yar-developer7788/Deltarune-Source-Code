.localvar 2 arguments

:[0]
push.v self.mysurface
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
call.i surface_create(argc=2)
pop.v.v self.mysurface

:[2]
push.v self.mysurface
call.i surface_set_target(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 361
pushenv [6]

:[3]
push.v self.mask_index
pushi.e 1
cmp.i.v GT
bf [5]

:[4]
push.d 0.5
conv.d.v
push.i 16776960
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.mask_index
call.i draw_sprite_ext(argc=9)
popz.v
b [6]

:[5]
pushi.e 0
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i draw_rectangle(argc=5)
popz.v

:[6]
popenv [3]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
push.v self.mysurface
call.i draw_surface(argc=3)
popz.v
push.i 231131
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp

:[end]