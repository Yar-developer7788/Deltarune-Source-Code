.localvar 2 arguments

:[0]
push.v self.image_angle
push.v self.y
push.v self.x
push.v self.y
pushi.e 9
add.i.v
push.v self.x
pushi.e 9
add.i.v
call.i gml_Script_scr_orbitx(argc=5)
pop.v.v self.xx
push.v self.image_angle
push.v self.y
push.v self.x
push.v self.y
pushi.e 9
add.i.v
push.v self.x
pushi.e 9
add.i.v
call.i gml_Script_scr_orbity(argc=5)
pop.v.v self.yy
push.v self.image_xscale
pushi.e 1
cmp.i.v NEQ
bt [2]

:[1]
push.v self.image_yscale
pushi.e 1
cmp.i.v NEQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v 631.image_index
push.v self.sprite_index
call.i gml_Script_draw_sprite_ext_centerscale(argc=9)
popz.v
b [end]

:[5]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.yy
push.v self.xx
push.v 631.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]