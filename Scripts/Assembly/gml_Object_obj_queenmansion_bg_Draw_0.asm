.localvar 2 arguments

:[0]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
call.i gml_Script_camerax(argc=0)
pushi.e 0
conv.i.v
pushi.e 3144
conv.i.v
call.i draw_sprite_tiled_ext(argc=8)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
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
pushi.e 160
add.i.v
call.i gml_Script_camerax(argc=0)
call.i draw_rectangle_color(argc=9)
popz.v
push.i 8388608
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [3]

:[2]
push.v self.i
push.v self.i
mul.v.v
pushi.e 100
conv.i.d
div.d.v
pushi.e 250
conv.i.v
pushi.e 160
conv.i.v
call.i lerp(argc=3)
pop.v.v self.ly
pushi.e 4
push.v self.i
pushi.e 3
conv.i.d
div.d.v
sub.v.i
push.v self.ly
pushbltn.v builtin.room_width
pushi.e 10
add.i.v
push.v self.ly
pushi.e -10
conv.i.v
call.i draw_line_width(argc=5)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
call.i gml_Script_camerax(argc=0)
push.v self.cx
add.v.v
call.i gml_Script_cameray(argc=0)
push.v self.factor
div.v.v
sub.v.v
pop.v.v self.drawx
push.v self.animsiner
push.e 1
add.i.v
pop.v.v self.animsiner
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.drawx
pushi.e 25
sub.i.v
push.v self.animsiner
pushi.e 10
conv.i.d
div.d.v
pushi.e 2270
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.drawx
push.v self.image_index
pushi.e 3031
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.drawx
push.v self.image_index
pushi.e 3032
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.drawx
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.b.v
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.bred
push.v self.y
pushi.e 240
add.i.v
pushi.e 720
push.v self.cx
add.v.i
push.v self.y
pushi.e 240
add.i.v
pushi.e 520
push.v self.cx
add.v.i
push.v self.y
pushi.e 160
add.i.v
push.v self.drawx
pushi.e 3
sub.i.v
call.i draw_triangle_colour(argc=10)
popz.v

:[end]