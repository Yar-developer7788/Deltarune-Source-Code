.localvar 2 arguments

:[0]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 100
add.i.v
cmp.v.v GTE
bt [4]

:[1]
push.v self.x
pushi.e -100
cmp.i.v LTE
bt [4]

:[2]
push.v self.y
pushbltn.v builtin.room_height
pushi.e 100
add.i.v
cmp.v.v GTE
bt [4]

:[3]
push.v self.y
pushi.e -100
cmp.i.v LTE
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.barrier
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
push.v self.barrier
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y
push.v self.image_angle
push.v self.angle_speed
add.v.v
pop.v.v self.image_angle
push.v self.deathtimer
pushi.e 0
cmp.i.v GT
bf [end]

:[8]
push.v self.deathtimer
push.e 1
sub.i.v
pop.v.v self.deathtimer
push.v self.deathtimer
pushi.e 0
cmp.i.v EQ
bf [end]

:[9]
pushi.e 598
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
pushi.e 3
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.anim
pushi.e -9
pushenv [11]

:[10]
pushi.e 1972
pop.v.i self.sprite_index

:[11]
popenv [10]
push.v self.barrier
call.i instance_destroy(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]