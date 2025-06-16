.localvar 2 arguments

:[0]
push.v 777.x
pushi.e 38
add.i.v
pop.v.v self.x
push.v 777.y
pushi.e 96
sub.i.v
pop.v.v self.y
pushi.e 2
pop.v.i self.f
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.state
pushi.e 810
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rotating_sprite_piece1
pushi.e 810
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rotating_sprite_piece2
pushi.e 810
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rotating_sprite_piece3
pushi.e 810
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rotating_sprite_piece4
pushi.e 810
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rotating_sprite_piece5
pushi.e 810
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rotating_sprite_piece6
push.v self.rotating_sprite_piece1
pushi.e -9
pushenv [2]

:[1]
call.i path_add(argc=0)
pop.v.v self.path
pushi.e 1
conv.i.v
push.v self.path
call.i path_set_kind(argc=2)
popz.v
pushi.e 1
conv.b.v
push.v self.path
call.i path_set_closed(argc=2)
popz.v
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
pushi.e 368
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 184
conv.i.v
pushi.e 304
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 184
conv.i.v
pushi.e 272
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
pushi.e 208
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 136
conv.i.v
pushi.e 272
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 136
conv.i.v
pushi.e 304
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 0
conv.b.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
push.v self.path
call.i path_start(argc=4)
popz.v
pushi.e 0
pop.v.i self.path_position

:[2]
popenv [1]
push.v self.rotating_sprite_piece2
pushi.e -9
pushenv [4]

:[3]
call.i path_add(argc=0)
pop.v.v self.path
pushi.e 1
conv.i.v
push.v self.path
call.i path_set_kind(argc=2)
popz.v
pushi.e 1
conv.b.v
push.v self.path
call.i path_set_closed(argc=2)
popz.v
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
pushi.e 368
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 184
conv.i.v
pushi.e 304
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 184
conv.i.v
pushi.e 272
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
pushi.e 208
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 136
conv.i.v
pushi.e 272
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 136
conv.i.v
pushi.e 304
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 0
conv.b.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
push.v self.path
call.i path_start(argc=4)
popz.v
push.d 0.1666
pop.v.d self.path_position

:[4]
popenv [3]
push.v self.rotating_sprite_piece3
pushi.e -9
pushenv [6]

:[5]
call.i path_add(argc=0)
pop.v.v self.path
pushi.e 1
conv.i.v
push.v self.path
call.i path_set_kind(argc=2)
popz.v
pushi.e 1
conv.b.v
push.v self.path
call.i path_set_closed(argc=2)
popz.v
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
pushi.e 368
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 184
conv.i.v
pushi.e 304
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 184
conv.i.v
pushi.e 272
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
pushi.e 208
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 136
conv.i.v
pushi.e 272
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 136
conv.i.v
pushi.e 304
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 0
conv.b.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
push.v self.path
call.i path_start(argc=4)
popz.v
push.d 0.3333
pop.v.d self.path_position

:[6]
popenv [5]
push.v self.rotating_sprite_piece4
pushi.e -9
pushenv [8]

:[7]
call.i path_add(argc=0)
pop.v.v self.path
pushi.e 1
conv.i.v
push.v self.path
call.i path_set_kind(argc=2)
popz.v
pushi.e 1
conv.b.v
push.v self.path
call.i path_set_closed(argc=2)
popz.v
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
pushi.e 368
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 184
conv.i.v
pushi.e 304
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 184
conv.i.v
pushi.e 272
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
pushi.e 208
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 136
conv.i.v
pushi.e 272
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 136
conv.i.v
pushi.e 304
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 0
conv.b.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
push.v self.path
call.i path_start(argc=4)
popz.v
push.d 0.5
pop.v.d self.path_position

:[8]
popenv [7]
push.v self.rotating_sprite_piece5
pushi.e -9
pushenv [10]

:[9]
call.i path_add(argc=0)
pop.v.v self.path
pushi.e 1
conv.i.v
push.v self.path
call.i path_set_kind(argc=2)
popz.v
pushi.e 1
conv.b.v
push.v self.path
call.i path_set_closed(argc=2)
popz.v
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
pushi.e 368
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 184
conv.i.v
pushi.e 304
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 184
conv.i.v
pushi.e 272
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
pushi.e 208
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 136
conv.i.v
pushi.e 272
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 136
conv.i.v
pushi.e 304
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 0
conv.b.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
push.v self.path
call.i path_start(argc=4)
popz.v
push.d 0.66666
pop.v.d self.path_position

:[10]
popenv [9]
push.v self.rotating_sprite_piece6
pushi.e -9
pushenv [12]

:[11]
call.i path_add(argc=0)
pop.v.v self.path
pushi.e 1
conv.i.v
push.v self.path
call.i path_set_kind(argc=2)
popz.v
pushi.e 1
conv.b.v
push.v self.path
call.i path_set_closed(argc=2)
popz.v
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
pushi.e 368
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 184
conv.i.v
pushi.e 304
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 184
conv.i.v
pushi.e 272
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
pushi.e 208
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 136
conv.i.v
pushi.e 272
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
pushi.e 136
conv.i.v
pushi.e 304
conv.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 0
conv.b.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
push.v self.path
call.i path_start(argc=4)
popz.v
push.d 0.8333
pop.v.d self.path_position

:[12]
popenv [11]

:[end]