.localvar 2 arguments

:[0]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.d -0.125
mul.d.v
push.v self.xstart
add.v.v
pop.v.v self.drawx
pushbltn.v builtin.room
pushi.e 203
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
push.d -0.125
mul.d.v
push.v self.ystart
add.v.v
pop.v.v self.drawy

:[2]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.drawy
push.v self.y_offset
add.v.v
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushbltn.v builtin.room_width
push.v self.drawy
push.v self.drawx
push.v self.x_offset
add.v.v
push.v self.drawy
push.v self.y_offset
add.v.v
push.v self.drawx
push.v self.x_offset
add.v.v
pushi.e 0
conv.i.v
pushi.e 2872
conv.i.v
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v

:[end]