.localvar 2 arguments

:[0]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.d -0.09
mul.d.v
push.v self.xstart
add.v.v
pop.v.v self.drawx
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
pushi.e 0
conv.i.v
push.v self.drawx
pushi.e 0
conv.i.v
push.v self.drawx
pushi.e 0
conv.i.v
pushi.e 3144
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v

:[end]