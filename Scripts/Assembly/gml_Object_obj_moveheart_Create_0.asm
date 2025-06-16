.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.burst
pushi.e 1
pop.v.i self.shift
pushi.e 0
pop.v.i self.image_alpha
pushi.e 8
pop.v.i self.flytime
pushi.e 368
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 368.x
pop.v.v self.distx
push.v 368.y
pop.v.v self.disty
b [5]

:[2]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [4]

:[3]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 310
add.i.v
pop.v.v self.distx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 160
add.i.v
pop.v.v self.disty
b [5]

:[4]
push.v 872.x
pushi.e 10
sub.i.v
pop.v.v self.distx
push.v 872.y
pushi.e 10
sub.i.v
pop.v.v self.disty

:[5]
push.v self.disty
push.v self.distx
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pop.v.v self.dist
push.v self.dist
push.v self.flytime
div.v.v
push.v self.disty
push.v self.distx
call.i move_towards_point(argc=3)
popz.v
push.i 68097
setowner.e
push.v self.flytime
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.image_speed
pushi.e 367
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[end]