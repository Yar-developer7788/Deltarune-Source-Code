.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.f
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.text_state
pushi.e 0
pop.v.i self.black_alpha
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.zoom
pushi.e -1
pop.v.i self.depth
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 4
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 1079
conv.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 1
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shouler_l
pushi.e 2
push.v self.shouler_l
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.shouler_l
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.shouler_l
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.shouler_l
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.depth
push.v self.depth
pushi.e 1
add.i.v
cmp.v.v EQ
push.v self.shouler_l
pushi.e -9
pop.v.b [stacktop]self.depth
pushi.e 1079
conv.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shouler_r
pushi.e 2
push.v self.shouler_r
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.shouler_r
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 3
push.v self.shouler_r
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.shouler_r
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.depth
pushi.e 1
add.i.v
push.v self.shouler_r
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1079
conv.i.v
push.v self.y
pushi.e 36
sub.i.v
push.v self.x
pushi.e 49
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.arm_l
pushi.e 0
push.v self.arm_l
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 0
push.v self.arm_l
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.arm_l
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.arm_l
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.depth
pushi.e 1
add.i.v
push.v self.arm_l
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1079
conv.i.v
push.v self.y
pushi.e 36
sub.i.v
push.v self.x
pushi.e 49
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.arm_r
pushi.e 0
push.v self.arm_r
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 0
push.v self.arm_r
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.arm_r
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.arm_r
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.depth
pushi.e 1
add.i.v
push.v self.arm_r
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1079
conv.i.v
push.v self.y
pushi.e 12
add.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.leg_l
pushi.e 0
push.v self.leg_l
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 0
push.v self.leg_l
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 5
push.v self.leg_l
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e -10
push.v self.leg_l
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e 0
push.v self.leg_l
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.depth
pushi.e 1
add.i.v
push.v self.leg_l
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1079
conv.i.v
push.v self.y
pushi.e 12
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.leg_r
pushi.e 0
push.v self.leg_r
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 0
push.v self.leg_r
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 6
push.v self.leg_r
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 10
push.v self.leg_r
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e 0
push.v self.leg_r
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.depth
pushi.e 1
add.i.v
push.v self.leg_r
pushi.e -9
pop.v.v [stacktop]self.depth

:[end]