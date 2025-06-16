.localvar 2 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
pushi.e 0
conv.b.v
push.v self.current_pal
push.v self.sprite_palette
call.i gml_Script_pal_swap_set(argc=3)
popz.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1811
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1810
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
push.v self.timer
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1809
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_pal_swap_reset(argc=0)
popz.v

:[end]