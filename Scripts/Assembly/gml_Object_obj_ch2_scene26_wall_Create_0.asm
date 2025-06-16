.localvar 2 arguments

:[0]
pushi.e 43
pop.v.i self.start_x
pushi.e 360
pop.v.i self.start_y
push.v self.start_y
pushi.e 309
conv.i.v
call.i sprite_get_height(argc=1)
add.v.v
pop.v.v self.bottom_start_y
pushbltn.v builtin.room
pushi.e 208
cmp.i.v EQ
bf [2]

:[1]
pushi.e 43
conv.i.v
b [3]

:[2]
pushi.e 0
conv.i.v

:[3]
pop.v.v self.x_offset
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GTE
bf [5]

:[4]
pushi.e 90
pop.v.i self.x_offset

:[5]
pushi.e 209
conv.i.v
push.v self.start_y
push.v self.start_x
push.v self.x_offset
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.looping_coaster_top
pushi.e 309
push.v self.looping_coaster_top
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 309
conv.i.v
call.i sprite_get_width(argc=1)
pushi.e 2
mul.i.v
pushi.e 3
mul.i.v
push.v self.looping_coaster_top
pushi.e -9
pop.v.v [stacktop]self.width
pushi.e 309
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 1
sub.i.v
push.v self.looping_coaster_top
pushi.e -9
pop.v.v [stacktop]self.height
pushi.e 1
push.v self.looping_coaster_top
pushi.e -9
pop.v.b [stacktop]self.room_wide
push.i 1000088
push.v self.looping_coaster_top
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.looping_coaster_top
pushi.e -9
pop.v.i [stacktop]self.x_scale
pushi.e 1
push.v self.looping_coaster_top
pushi.e -9
pop.v.i [stacktop]self.y_scale
pushi.e 209
conv.i.v
push.v self.bottom_start_y
push.v self.start_x
push.v self.x_offset
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.looping_coaster
pushi.e 308
push.v self.looping_coaster
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 308
conv.i.v
call.i sprite_get_width(argc=1)
pushi.e 2
mul.i.v
pushi.e 3
mul.i.v
push.v self.looping_coaster
pushi.e -9
pop.v.v [stacktop]self.width
pushi.e 308
conv.i.v
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
pushi.e 8
mul.i.v
push.v self.looping_coaster
pushi.e -9
pop.v.v [stacktop]self.height
pushi.e 1
push.v self.looping_coaster
pushi.e -9
pop.v.b [stacktop]self.room_wide
push.i 1000088
push.v self.looping_coaster
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.looping_coaster
pushi.e -9
pop.v.i [stacktop]self.x_scale
pushi.e 1
push.v self.looping_coaster
pushi.e -9
pop.v.i [stacktop]self.y_scale
pushi.e 0
pop.v.i self.wall_con
pushi.e -10
pop.v.i self.v_speed

:[end]