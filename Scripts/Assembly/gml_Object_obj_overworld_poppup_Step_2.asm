.localvar 2 arguments
.localvar 20089 repositioned 10501

:[0]
pushi.e 0
pop.v.i local.repositioned
pushi.e 68
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [2]

:[1]
pushi.e 250
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
pushi.e 68
conv.i.v
push.v self.y
push.v self.x
push.v self.hspeed
sub.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [6]

:[5]
pushi.e 250
conv.i.v
push.v self.y
push.v self.x
push.v self.hspeed
sub.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v self.x
push.v self.hspeed
sub.v.v
pop.v.v self.x
pushi.e 1
pop.v.i local.repositioned

:[9]
pushloc.v local.repositioned
conv.v.b
not.b
bf [12]

:[10]
pushi.e 68
conv.i.v
push.v self.y
push.v self.vspeed
sub.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [12]

:[11]
pushi.e 250
conv.i.v
push.v self.y
push.v self.vspeed
sub.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.v self.y
push.v self.vspeed
sub.v.v
pop.v.v self.y
pushi.e 1
pop.v.i local.repositioned

:[15]
pushloc.v local.repositioned
conv.v.b
not.b
bf [end]

:[16]
push.v self.x
push.v self.hspeed
sub.v.v
pop.v.v self.x
push.v self.y
push.v self.vspeed
sub.v.v
pop.v.v self.y

:[end]