.localvar 2 arguments
.localvar 24779 newx 11778
.localvar 24780 newy 11779

:[0]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
bf [2]

:[1]
exit.i

:[2]
push.v self.x
push.v self.direction
push.v self.fauxspeed
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.nextx
push.v self.y
push.v self.direction
push.v self.fauxspeed
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.nexty
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.init
push.i 231467
setowner.e
push.v self.damage
pushi.e -1
pushi.e 0
push.v [array]self.hitbox
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.damage
pushi.e -1
pushi.e 1
push.v [array]self.hitbox
pushi.e -9
pop.v.v [stacktop]self.damage

:[4]
pushi.e 0
pop.v.i local.newx
pushi.e 0
pop.v.i local.newy
pushi.e 100
pop.v.i self.traillength
push.v self.bouncecount
push.v self.bouncecap
cmp.v.v LT
bf [25]

:[5]
push.v self.nextx
push.v self.minx
cmp.v.v LTE
bf [7]

:[6]
push.v self.direction
pushi.e 0
conv.i.v
call.i angle_difference(argc=2)
call.i abs(argc=1)
pushi.e 90
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [13]

:[9]
push.v self.minx
pop.v.v local.newx
push.v self.direction
pushi.e 180
cmp.i.v EQ
bf [11]

:[10]
push.v self.y
pop.v.v local.newy
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=4)
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_direction(argc=4)
pop.v.v self.direction
push.v self.y
push.v self.direction
push.v self.minx
push.v self.nextx
sub.v.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.nexty
push.v self.minx
push.v self.direction
push.v self.minx
push.v self.nextx
sub.v.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.nextx
b [12]

:[11]
pushi.e 0
conv.i.v
push.v self.direction
call.i gml_Script_scr_reflect(argc=2)
pop.v.v self.direction
push.v self.nexty
push.v self.y
push.v self.minx
push.v self.nextx
push.v self.x
call.i gml_Script_scr_remapvalue(argc=5)
pop.v.v local.newy
push.v self.minx
push.v self.minx
push.v self.nextx
sub.v.v
add.v.v
pop.v.v self.nextx

:[12]
push.v self.bouncecount
push.e 1
add.i.v
pop.v.v self.bouncecount
b [21]

:[13]
push.v self.nextx
push.v self.maxx
cmp.v.v GTE
bf [15]

:[14]
push.v self.direction
pushi.e 180
conv.i.v
call.i angle_difference(argc=2)
call.i abs(argc=1)
pushi.e 90
cmp.i.v GT
b [16]

:[15]
push.e 0

:[16]
bf [21]

:[17]
push.v self.maxx
pop.v.v local.newx
push.v self.direction
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.v self.y
pop.v.v local.newy
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
pushi.e -2
conv.i.v
call.i choose(argc=4)
pushi.e -2
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_direction(argc=4)
pop.v.v self.direction
push.v self.y
push.v self.direction
push.v self.maxx
push.v self.nextx
sub.v.v
call.i lengthdir_y(argc=2)
sub.v.v
pop.v.v self.nexty
push.v self.maxx
push.v self.direction
push.v self.maxx
push.v self.nextx
sub.v.v
call.i lengthdir_x(argc=2)
sub.v.v
pop.v.v self.nextx
b [20]

:[19]
push.v self.nexty
push.v self.y
push.v self.maxx
push.v self.nextx
push.v self.x
call.i gml_Script_scr_remapvalue(argc=5)
pop.v.v local.newy
pushi.e 180
conv.i.v
push.v self.direction
call.i gml_Script_scr_reflect(argc=2)
pop.v.v self.direction
push.v self.maxx
push.v self.maxx
push.v self.nextx
sub.v.v
add.v.v
pop.v.v self.nextx

:[20]
push.v self.bouncecount
push.e 1
add.i.v
pop.v.v self.bouncecount

:[21]
push.v self.nexty
push.v self.miny
cmp.v.v LTE
bf [23]

:[22]
push.v self.miny
pop.v.v local.newy
push.v self.nextx
push.v self.x
push.v self.miny
push.v self.nexty
push.v self.y
call.i gml_Script_scr_remapvalue(argc=5)
pop.v.v local.newx
pushi.e 270
conv.i.v
push.v self.direction
call.i gml_Script_scr_reflect(argc=2)
pop.v.v self.direction
push.v self.miny
push.v self.miny
push.v self.nexty
sub.v.v
add.v.v
pop.v.v self.nexty
push.v self.bouncecount
push.e 1
add.i.v
pop.v.v self.bouncecount
b [25]

:[23]
push.v self.nexty
push.v self.maxy
cmp.v.v GTE
bf [25]

:[24]
push.v self.maxy
pop.v.v local.newy
push.v self.nextx
push.v self.x
push.v self.maxy
push.v self.nexty
push.v self.y
call.i gml_Script_scr_remapvalue(argc=5)
pop.v.v local.newx
pushi.e 90
conv.i.v
push.v self.direction
call.i gml_Script_scr_reflect(argc=2)
pop.v.v self.direction
push.v self.maxy
push.v self.maxy
push.v self.nexty
sub.v.v
add.v.v
pop.v.v self.nexty
push.v self.bouncecount
push.e 1
add.i.v
pop.v.v self.bouncecount

:[25]
push.v self.nextx
pop.v.v self.x
push.v self.nexty
pop.v.v self.y
pushloc.v local.newx
pushi.e 0
cmp.i.v NEQ
bt [27]

:[26]
pushloc.v local.newy
pushi.e 0
cmp.i.v NEQ
b [28]

:[27]
push.e 1

:[28]
bf [30]

:[29]
push.i 170898
setowner.e
pushi.e -1
pushi.e 1
push.v [array]self.bouncepoint_x
pushi.e -1
pushi.e 2
pop.v.v [array]self.bouncepoint_x
push.i 170899
setowner.e
pushi.e -1
pushi.e 1
push.v [array]self.bouncepoint_y
pushi.e -1
pushi.e 2
pop.v.v [array]self.bouncepoint_y
push.i 170898
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.bouncepoint_x
pushi.e -1
pushi.e 1
pop.v.v [array]self.bouncepoint_x
push.i 170899
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.bouncepoint_y
pushi.e -1
pushi.e 1
pop.v.v [array]self.bouncepoint_y
push.i 170898
setowner.e
pushloc.v local.newx
pushi.e -1
pushi.e 0
pop.v.v [array]self.bouncepoint_x
push.i 170899
setowner.e
pushloc.v local.newy
pushi.e -1
pushi.e 0
pop.v.v [array]self.bouncepoint_y

:[30]
pushi.e -1
pushi.e 0
push.v [array]self.bouncepoint_y
pushi.e -1
pushi.e 0
push.v [array]self.bouncepoint_x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.image_angle
pushi.e -1
pushi.e 2
push.v [array]self.bouncepoint_x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
bf [32]

:[31]
call.i instance_destroy(argc=0)
popz.v

:[32]
pushi.e -1
pushi.e 2
push.v [array]self.bouncepoint_x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 760
add.i.v
cmp.v.v GT
bf [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
pushi.e -1
pushi.e 2
push.v [array]self.bouncepoint_y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
bf [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
pushi.e -1
pushi.e 2
push.v [array]self.bouncepoint_y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 580
add.i.v
cmp.v.v GT
bf [end]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[end]