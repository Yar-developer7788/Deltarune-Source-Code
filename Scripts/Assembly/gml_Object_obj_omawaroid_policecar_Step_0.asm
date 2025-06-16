.localvar 2 arguments
.localvar 23092 laneOffset 10293
.localvar 23093 finishtime 10294
.localvar 23094 catchuptime 10295
.localvar 23097 laneCheck 10298

:[0]
push.v self.wall_destroy
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 760
add.i.v
cmp.v.v GT
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 580
add.i.v
cmp.v.v GT
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
push.v self.init
conv.v.b
not.b
bf [23]

:[10]
push.v self.x
push.v 872.x
cmp.v.v GT
bf [12]

:[11]
pushi.e 0
conv.i.v
b [13]

:[12]
call.i gml_Script_gt_maxx(argc=0)
push.v 872.x
sub.v.v

:[13]
pop.v.v local.laneOffset
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 412
conv.i.v
call.i gml_Script_gt_maxy(argc=0)
call.i gml_Script_gt_maxx(argc=0)
pushloc.v local.laneOffset
sub.v.v
call.i gml_Script_gt_miny(argc=0)
push.v 872.x
pushloc.v local.laneOffset
sub.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.inst
push.v self.inst
pushi.e -4
cmp.i.v NEQ
bf [17]

:[14]
push.v self.inst
pushi.e -9
push.v [stacktop]self.y
call.i gml_Script_gt_miny(argc=0)
pushi.e 20
sub.i.v
sub.v.v
push.v self.inst
pushi.e -9
push.v [stacktop]self.speed
div.v.v
pop.v.v local.finishtime
pushi.e 0
pop.v.i local.catchuptime
push.v self.inst
pushi.e -9
push.v [stacktop]self.speed
push.v self.speed
cmp.v.v LT
bf [17]

:[15]
push.v self.ystart
push.v self.inst
pushi.e -9
push.v [stacktop]self.y
pushi.e 40
add.i.v
sub.v.v
push.v self.speed
push.v self.inst
pushi.e -9
push.v [stacktop]self.speed
sub.v.v
div.v.v
pop.v.v local.catchuptime
pushloc.v local.catchuptime
pushloc.v local.finishtime
cmp.v.v LT
bf [17]

:[16]
pushi.e 1
pop.v.b self.turnSignal

:[17]
push.v self.turnSignal
conv.v.b
bf [22]

:[18]
push.v self.x
push.v 872.x
cmp.v.v GT
bf [20]

:[19]
push.v self.leftTurnSprite
b [21]

:[20]
push.v self.rightTurnSprite

:[21]
pop.v.v self.sprite_index

:[22]
pushi.e 1
pop.v.b self.init

:[23]
push.v self.initialSpeed
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.v self.speed
pop.v.v self.initialSpeed

:[25]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
push.v self.speed
push.d 0.5
sub.d.v
pop.v.v self.speed
b [end]

:[27]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [41]

:[28]
push.v self.laneTimer
push.d 0.05
add.d.v
pop.v.v self.laneTimer
pushi.e 0
pop.v.i self.lanePosition
push.v self.laneTimer
pushi.e 1
cmp.i.v LT
bf [30]

:[29]
pushi.e 3
conv.i.v
push.v self.laneTimer
call.i gml_Script_scr_ease_inout(argc=2)
push.d 1.25
conv.d.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.lanePosition
b [35]

:[30]
push.v self.laneTimer
push.d 1.5
cmp.d.v LT
bf [32]

:[31]
pushi.e 4
conv.i.v
push.v self.laneTimer
pushi.e 1
sub.i.v
pushi.e 2
mul.i.v
call.i gml_Script_scr_ease_inout(argc=2)
push.d 0.9
conv.d.v
push.d 1.25
conv.d.v
call.i lerp(argc=3)
pop.v.v self.lanePosition
b [35]

:[32]
push.v self.laneTimer
pushi.e 2
cmp.i.v LT
bf [34]

:[33]
pushi.e 4
conv.i.v
push.v self.laneTimer
push.d 1.5
sub.d.v
pushi.e 2
mul.i.v
call.i gml_Script_scr_ease_inout(argc=2)
pushi.e 1
conv.i.v
push.d 0.9
conv.d.v
call.i lerp(argc=3)
pop.v.v self.lanePosition
b [35]

:[34]
pushi.e 0
pop.v.i self.state
pushi.e 1
pop.v.i self.lanePosition
push.v self.lane
pop.v.v self.x

:[35]
push.v self.turnSignal
conv.v.b
bf [37]

:[36]
push.v self.laneTimer
pushi.e 1
cmp.i.v GTE
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 0
pop.v.b self.turnSignal
push.v self.forwardSprite
pop.v.v self.sprite_index
push.v self.image_index
pushi.e 4
mod.i.v
pop.v.v self.image_index

:[40]
push.v self.initialSpeed
push.d 0.25
pushi.e 1
push.v self.laneTimer
pushi.e 1
sub.i.v
call.i abs(argc=1)
sub.v.i
mul.v.d
sub.v.v
pop.v.v self.speed
push.v self.lanePosition
push.v self.lane
push.v self.previousLane
call.i lerp(argc=3)
pop.v.v self.x
pushi.e 1
conv.i.v
push.v self.laneTimer
pushi.e 2
mul.i.v
call.i min(argc=2)
push.v self.y
pushi.e 50
sub.i.v
push.v self.lane
push.v self.x
push.v self.lane
sub.v.v
sub.v.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 90
sub.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_angle
b [end]

:[41]
push.v self.turnSignal
conv.v.b
bf [end]

:[42]
push.v self.y
pushi.e 20
sub.i.v
pop.v.v self.bottomScan
push.v self.x
push.v 872.x
sub.v.v
call.i sign(argc=1)
pop.v.v local.laneCheck
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 412
conv.i.v
push.v self.bottomScan
push.v 872.x
pushloc.v local.laneCheck
pushi.e 30
mul.i.v
add.v.v
push.v self.y
pushi.e 15
sub.i.v
push.v self.speed
pushi.e 7
mul.i.v
sub.v.v
push.v 872.x
pushloc.v local.laneCheck
pushi.e 3
mul.i.v
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.inst
push.v self.inst
pushi.e -4
cmp.i.v NEQ
bf [end]

:[43]
push.v self.x
pop.v.v self.previousLane
push.v 872.x
push.v self.x
push.v 872.x
sub.v.v
sub.v.v
pop.v.v self.lane
pushi.e 0
pop.v.i self.laneTimer
pushi.e 1
pop.v.i self.state

:[end]