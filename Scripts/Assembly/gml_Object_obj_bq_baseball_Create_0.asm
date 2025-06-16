.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 93
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.arcade
b [3]

:[2]
pushi.e 0
pop.v.i self.arcade

:[3]
pushi.e 2
pop.v.i self.f
pushi.e 250
pop.v.i self.c
push.v 789.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
pushi.e 359
conv.i.v
call.i irandom(argc=1)
pop.v.v self.image_angle
pushi.e 12
conv.i.d
push.v self.f
div.v.d
pop.v.v self.vspeed
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 12
conv.i.d
push.v self.f
div.v.d
pop.v.v self.vspeed

:[5]
pushi.e 0
pop.v.i self.hit
pushi.e 0
pop.v.i self.hit_timer
pushbltn.v builtin.room_speed
pop.v.v self.prev_room_speed
push.v self.x
pop.v.v self.xbase
push.v self.y
pop.v.v self.ybase
pushi.e -1
pop.v.i self.hit_direction
pushi.e 0
pop.v.i self.baseball_combo_timer
pushi.e 0
pop.v.i self.reticletimer
push.d 1.75
pop.v.d self.image_xscale
push.d 1.75
pop.v.d self.image_yscale
pushi.e -10
pop.v.i self.reticletimer
pushi.e 776
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.baseball_hitbox
push.v self.baseball_hitbox
pushi.e -9
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.baseball
pushi.e 0
pop.v.i self.hit_jumping
pushi.e 22
conv.i.d
push.v self.f
div.v.d
pop.v.v self.give_hurt
pushi.e 400
conv.i.d
push.v self.f
div.v.d
pop.v.v self.timer
pushi.e 25
pop.v.i self.damage
pushi.e 1
pop.v.i self.grazed
push.v self.id
pop.v.v self.maker_id
pushi.e 2
pop.v.i self.image_yscale
pushi.e 4
pop.v.i self.image_xscale

:[7]
popenv [6]
pushi.e 776
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wheel_hitbox_graze
push.v self.wheel_hitbox_graze
pushi.e -9
pushenv [9]

:[8]
pushi.e 1
pop.v.i self.baseball
pushi.e 0
pop.v.i self.hit_jumping
pushi.e 400
conv.i.d
push.v self.f
div.v.d
pop.v.v self.timer
pushi.e 1
pop.v.i self.graze_only
push.v self.id
pop.v.v self.maker_id
pushi.e 2
pop.v.i self.image_yscale
pushi.e 8
pop.v.i self.image_xscale

:[9]
popenv [8]

:[end]