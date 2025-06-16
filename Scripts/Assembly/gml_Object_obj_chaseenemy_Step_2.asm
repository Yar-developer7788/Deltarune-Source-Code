.localvar 2 arguments
.localvar 20089 repositioned 8214

:[0]
push.v self.alertcon
pushi.e 1
cmp.i.v GTE
bf [3]

:[1]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.ignoresolid
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [29]

:[5]
push.v self.slide
pushi.e 0
cmp.i.v EQ
bf [11]

:[6]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 68
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
conv.v.b
bt [8]

:[7]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 250
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
conv.v.b
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
push.v self.x
push.v self.hspeed
sub.v.v
pop.v.v self.x
push.v self.y
push.v self.vspeed
sub.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed

:[11]
push.v self.slide
pushi.e 1
cmp.i.v EQ
bf [29]

:[12]
pushi.e 0
pop.v.i local.repositioned
pushi.e 68
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [14]

:[13]
pushi.e 250
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
b [15]

:[14]
push.e 1

:[15]
bf [29]

:[16]
pushi.e 68
conv.i.v
push.v self.y
push.v self.x
push.v self.hspeed
sub.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [18]

:[17]
pushi.e 250
conv.i.v
push.v self.y
push.v self.x
push.v self.hspeed
sub.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.v self.x
push.v self.hspeed
sub.v.v
pop.v.v self.x
pushi.e 1
pop.v.i local.repositioned

:[21]
pushloc.v local.repositioned
conv.v.b
not.b
bf [24]

:[22]
pushi.e 68
conv.i.v
push.v self.y
push.v self.vspeed
sub.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [24]

:[23]
pushi.e 250
conv.i.v
push.v self.y
push.v self.vspeed
sub.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
push.v self.y
push.v self.vspeed
sub.v.v
pop.v.v self.y
pushi.e 1
pop.v.i local.repositioned

:[27]
pushloc.v local.repositioned
conv.v.b
not.b
bf [29]

:[28]
push.v self.x
push.v self.hspeed
sub.v.v
pop.v.v self.x
push.v self.y
push.v self.vspeed
sub.v.v
pop.v.v self.y

:[29]
push.v self.pacetype
pushi.e 11
cmp.i.v EQ
bf [35]

:[30]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [34]

:[31]
push.v self.path_speed
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
push.v self.pathSpeed
pop.v.v self.path_speed

:[33]
b [35]

:[34]
pushi.e 0
pop.v.i self.path_speed

:[35]
push.v self.customhitbox
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 82
conv.i.v
push.v self.y
push.v self.hity2
add.v.v
push.v self.x
push.v self.hitx2
add.v.v
push.v self.y
push.v self.hity1
add.v.v
push.v self.x
push.v self.hitx1
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.hitvar

:[37]
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [39]

:[38]
push.v self.customhitbox
pushi.e 0
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bt [45]

:[41]
push.v self.customhitbox
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
push.v self.hitvar
pushi.e -4
cmp.i.v NEQ
b [44]

:[43]
push.e 0

:[44]
b [46]

:[45]
push.e 1

:[46]
bf [end]

:[47]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bt [49]

:[48]
pushglb.v global.interact
pushi.e 4
cmp.i.v EQ
b [50]

:[49]
push.e 1

:[50]
bf [end]

:[51]
push.v self.encounterflag
pushi.e 0
cmp.i.v GT
bf [53]

:[52]
push.i 231204
setowner.e
push.v self.encounterflag
pushi.e -5
pushi.e 54
pop.v.v [array]self.flag

:[53]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]