.localvar 2 arguments

:[0]
push.v self.drawwhite
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[2]
push.v self.split
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
call.i draw_self(argc=0)
popz.v

:[4]
push.v self.split
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
push.v self.splity
push.d 0.6
push.v self.splitfriction
sub.v.d
add.v.v
pop.v.v self.splity
push.v self.splitfriction
push.d 0.5
cmp.d.v LT
bf [7]

:[6]
push.v self.splitfriction
push.d 0.01
add.d.v
pop.v.v self.splitfriction

:[7]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.splity
sub.v.v
push.v self.x
push.v self.splity
add.v.v
pushi.e 16
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.splity
add.v.v
push.v self.x
push.v self.splity
sub.v.v
pushi.e 15
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.splity
sub.v.v
push.v self.x
push.v self.splity
add.v.v
push.v self.image_index
push.v self.headsprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.i 16777215
conv.i.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.splity
sub.v.v
push.v self.x
push.v self.splity
add.v.v
push.v self.image_index
push.v self.headsprite
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.i 16777215
conv.i.v
push.v self.image_alpha
push.v self.headcolor
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.splity
sub.v.v
push.v self.x
push.v self.splity
add.v.v
push.v self.image_index
push.v self.headsprite
call.i gml_Script_draw_sprite_ext_glow(argc=10)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v

:[end]