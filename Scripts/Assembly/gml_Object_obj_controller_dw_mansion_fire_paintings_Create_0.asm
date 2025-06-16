.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.suppress
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 397
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 129
conv.i.v
pushi.e 80
conv.i.v
pushi.e 480
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.knockout
pushi.e 2882
push.v self.knockout
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.knockout
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.knockout
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.knockout
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.v 82.depth
pushi.e 800
add.i.v
pushi.e 40
add.i.v
push.v self.knockout
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 129
conv.i.v
pushi.e 80
conv.i.v
pushi.e 480
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.queen_wall
pushi.e 2882
push.v self.queen_wall
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.queen_wall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.queen_wall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v 82.depth
pushi.e 800
add.i.v
push.v self.queen_wall
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 129
conv.i.v
pushi.e 180
conv.i.v
pushi.e 480
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.queen_monitor_frame
pushi.e 2881
push.v self.queen_monitor_frame
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.queen_monitor_frame
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.queen_monitor_frame
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.queen_wall
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.queen_monitor_frame
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 288
conv.i.v
push.v self.queen_monitor_frame
pushi.e -9
push.v [stacktop]self.y
push.v self.queen_monitor_frame
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.queen_monitor
push.v self.queen_wall
pushi.e -9
push.v [stacktop]self.depth
pushi.e 5
sub.i.v
push.v self.queen_monitor
pushi.e -9
pop.v.v [stacktop]self.depth
b [end]

:[2]
pushi.e 999
pop.v.i self.con
pushi.e 0
pop.v.i self.suppress
pushi.e 268
conv.i.v
pushi.e 280
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bularea
pushi.e 18
push.v self.bularea
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.bularea
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 270
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.active

:[4]
popenv [3]

:[end]