.localvar 2 arguments

:[0]
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
pushi.e 1
conv.i.v
push.v self.y
pushi.e 39
add.i.v
push.v self.x
push.v self.total_width
add.v.v
pushi.e 1
sub.i.v
push.v self.y
push.v self.x
push.v self.y
push.v self.x
push.v self.animsiner
pushi.e 16
conv.i.d
div.d.v
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v

:[end]