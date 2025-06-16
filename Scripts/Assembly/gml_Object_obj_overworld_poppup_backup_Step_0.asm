.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 82.y
pushi.e 40
add.i.v
push.v 82.x
pushi.e 20
add.i.v
call.i distance_to_point(argc=2)
pop.v.v self.dist

:[2]
push.v self.dist
pushi.e 160
cmp.i.v LT
bf [4]

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.speed1
pushi.e 2
pop.v.i self.con

:[7]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [12]

:[8]
push.d 0.25
pop.v.d self.image_speed
push.v self.image_index
pushi.e 7
cmp.i.v EQ
bf [10]

:[9]
pushi.e 3
pop.v.i self.image_index

:[10]
push.v self.speed1
push.d 1.5
mul.d.v
pop.v.v self.speed1
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
push.v self.speed1
call.i clamp(argc=3)
pop.v.v self.speed1
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[11]
push.v self.speed1
push.v 82.y
pushi.e 80
add.i.v
push.v 82.x
pushi.e 40
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[12]
call.i gml_Script_scr_depth_alt(argc=0)
popz.v
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [end]

:[13]
pushi.e 1647
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.marker
push.v self.image_index
push.v self.marker
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.sprite_index
push.v self.marker
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.x
push.v self.marker
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.marker
pushi.e -9
pop.v.v [stacktop]self.y
push.d 0.25
push.v self.marker
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.image_xscale
push.v self.marker
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.marker
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.topsprite
pushi.e 0
cmp.i.v NEQ
bf [15]

:[14]
pushi.e 434
conv.i.v
push.v self.y
pushi.e 42
sub.i.v
push.v self.topyoff
add.v.v
push.v self.x
push.v self.topxoff
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flyoff
push.v self.topsprite
push.v self.flyoff
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 2
push.v self.flyoff
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.flyoff
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.flyoff
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e -10
push.v self.flyoff
pushi.e -9
pop.v.i [stacktop]self.image_angle

:[15]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.marker
pushi.e 0
conv.i.v
pushi.e 51
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]