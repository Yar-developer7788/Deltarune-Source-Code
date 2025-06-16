.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 80
add.i.v
push.v self.y
push.v self.x
call.i draw_rectangle(argc=5)
popz.v
push.v self.dontdraw
pushi.e 0
cmp.b.v EQ
bf [2]

:[1]
pushi.e 3
conv.i.v
push.d 0.3
conv.d.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.sprite_index
call.i gml_Script_draw_sprite_part_parallax_scale(argc=6)
popz.v

:[2]
push.v self.dontdraw
pushi.e 0
cmp.b.v EQ
bf [end]

:[3]
pushi.e 1
conv.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
push.v self.sprite_index
call.i gml_Script_draw_sprite_part_parallax(argc=5)
popz.v

:[end]