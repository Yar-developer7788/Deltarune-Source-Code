.localvar 2 arguments

:[0]
pushi.e 1
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
call.i draw_self(argc=0)
popz.v
push.v self.active
conv.v.b
bf [2]

:[1]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 0.2
conv.d.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_wave(argc=4)
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v

:[end]