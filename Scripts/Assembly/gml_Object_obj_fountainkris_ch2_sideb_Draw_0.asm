.localvar 2 arguments

:[0]
push.v self.draw_kris
conv.v.b
bf [end]

:[1]
pushi.e 232
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [3]

:[2]
push.v 232.colcol
pop.v.v self.image_blend
push.v 232.siner
pop.v.v self.siner
b [4]

:[3]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
add.v.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[4]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 4
sub.i.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
pop.v.i self.image_blend
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e -6
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.sprite_height
pushi.e 4
mul.i.v
add.v.v
pushi.e 8
sub.i.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
call.i draw_self(argc=0)
popz.v

:[end]