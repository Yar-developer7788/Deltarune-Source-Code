.localvar 2 arguments
.localvar 11806 __targetdir 12278
.localvar 11799 __diff 12279
.localvar 25475 _xdir 12280

:[0]
call.i event_inherited(argc=0)
popz.v
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.speed
pop.v.v self.rawspeed
pushi.e 1
pop.v.i self.init

:[2]
push.v self.x
push.v self.mouthx
pushi.e 16
sub.i.v
cmp.v.v GTE
bf [4]

:[3]
push.v self.creator
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v self.creator
pushi.e -9
push.v [stacktop]self.y
push.v self.creator
pushi.e -9
push.v [stacktop]self.mouthy
add.v.v
pushi.e 4
sub.i.v
push.v self.ystart
sub.v.v
pop.v.v self.offset
b [9]

:[7]
push.v self.x
push.v self.mouthx
pushi.e 16
sub.i.v
cmp.v.v LT
bf [9]

:[8]
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
push.v self.offset
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.offset

:[9]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.x
push.v self.mouthx
cmp.v.v LT
b [12]

:[11]
push.e 0

:[12]
bf [18]

:[13]
pushi.e 0
pop.v.i self.speed
push.v self.tracked
conv.v.b
not.b
bf [17]

:[14]
push.v self.targety
push.v self.targetx
push.v self.truey
push.v self.x
call.i point_direction(argc=4)
pop.v.v local.__targetdir
pushloc.v local.__targetdir
push.v self.fauxdirection
call.i angle_difference(argc=2)
pop.v.v local.__diff
pushloc.v local.__diff
call.i abs(argc=1)
pushi.e 10
cmp.i.v GT
bf [16]

:[15]
push.v self.fauxdirection
pushloc.v local.__diff
call.i sign(argc=1)
pushi.e 10
mul.i.v
sub.v.v
pop.v.v self.fauxdirection
b [17]

:[16]
pushi.e 1
pop.v.b self.tracked
pushloc.v local.__targetdir
pop.v.v self.fauxdirection

:[17]
push.v self.fauxdirection
pushi.e 5
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v local._xdir
push.v self.x
pushloc.v local._xdir
pushi.e 5
conv.i.d
pushloc.v local._xdir
div.v.d
call.i abs(argc=1)
mul.v.v
add.v.v
pop.v.v self.x
push.v self.truey
push.v self.fauxdirection
pushi.e 5
conv.i.v
call.i lengthdir_y(argc=2)
pushi.e 5
conv.i.d
pushloc.v local._xdir
div.v.d
call.i abs(argc=1)
mul.v.v
add.v.v
pop.v.v self.truey

:[18]
push.v self.truey
push.v self.x
push.v self.x
push.v self.mouthx
pushi.e 16
sub.i.v
cmp.v.v GT
bf [20]

:[19]
pushi.e 12
conv.i.v
b [21]

:[20]
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
push.v self.sinesize
call.i clamp(argc=3)

:[21]
div.v.v
call.i cos(argc=1)
pushi.e 10
mul.i.v
push.v self.sinesign
mul.v.v
add.v.v
push.v self.offset
add.v.v
pop.v.v self.y
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [23]

:[22]
push.v self.x
push.v self.mouthx
cmp.v.v GTE
b [24]

:[23]
push.e 1

:[24]
bf [end]

:[25]
push.d 0.25
conv.d.v
pushi.e 5
conv.i.v
push.v self.speed
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.speed

:[end]