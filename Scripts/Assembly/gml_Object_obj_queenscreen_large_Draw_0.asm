.localvar 2 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
call.i draw_self(argc=0)
popz.v
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.d 0.1
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.d 0.01
add.d.v
push.v self.image_xscale
push.d 0.01
add.d.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v

:[end]