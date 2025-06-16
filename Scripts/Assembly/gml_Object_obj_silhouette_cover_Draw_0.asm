.localvar 2 arguments

:[0]
push.i 6699283
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
push.v self.x
push.v self.sprite_index
call.i sprite_get_width(argc=1)
push.v self.image_xscale
mul.v.v
add.v.v
pushi.e 5
add.i.v
push.v self.y
pushi.e 4
sub.i.v
push.v self.x
pushi.e 4
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushbltn.v builtin.room_height
push.v self.x
push.v self.sprite_index
call.i sprite_get_width(argc=1)
push.v self.image_xscale
mul.v.v
add.v.v
push.v self.y
push.v self.x
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e -1
push.v self.top_type
conv.v.i
push.v [array]self.top
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
sub.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e -1
push.v self.top_type
conv.v.i
push.v [array]self.top
call.i draw_sprite_ext(argc=9)
popz.v

:[end]