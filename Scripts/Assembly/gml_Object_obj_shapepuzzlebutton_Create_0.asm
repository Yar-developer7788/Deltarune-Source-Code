.localvar 2 arguments
.localvar 24314 _count 18121
.localvar 36551 _loopcount 18126

:[0]
pushi.e 0
pop.v.b self.active
pushi.e 10
pop.v.i self.moveAmount
pushi.e 3
pop.v.i self.holdDelayMax
pushi.e 0
pop.v.i self.holdDelay
push.i 174349
setowner.e
push.i 16776960
conv.i.v
push.i 65535
conv.i.v
push.i 8388736
conv.i.v
push.i 32768
conv.i.v
push.i 4235519
conv.i.v
call.i @@NewGMLArray@@(argc=5)
pop.v.v self.pieceColours
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.troublePiece
pushi.e 1109
conv.i.v
push.v self.depth
push.v self.y
pushi.e 170
add.i.v
push.v self.x
pushi.e 20
conv.i.v
pushi.e -20
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
add.v.v
call.i instance_create_depth(argc=4)
pop.v.v self.myPiece
push.i 999990
pop.v.i self.depth
pushi.e 1109
conv.i.v
call.i instance_number(argc=1)
pop.v.v local._count
pushi.e -1
pushloc.v local._count
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.pieceColours
pop.v.v self.icon_color
pushloc.v local._count
pushi.e 5
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
b [3]

:[2]
pushi.e 0
conv.i.v

:[3]
pop.v.v self.bird
pushi.e 0
pop.v.i self.berdly_taunt_timer
pushi.e 0
pop.v.i self.mybuffer
push.v self.myPiece
pushi.e -9
pushenv [17]

:[4]
push.i 999900
pop.v.i self.depth
push.v 1110.sprite_index
pop.v.v self.sprite_index
pushi.e 1109
conv.i.v
call.i instance_number(argc=1)
pop.v.v local._count
pushi.e 1
pushloc.v local._count
add.v.i
pop.v.v self.image_index
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local._count
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.pieceColours
pop.v.v self.image_blend
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushbltn.v builtin.room
pushi.e 164
cmp.i.v EQ
bf [6]

:[5]
push.v self.image_index
pushi.e 5
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 1
pop.v.b other.troublePiece

:[9]
pushbltn.v builtin.room
pushi.e 165
cmp.i.v EQ
bf [11]

:[10]
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pop.v.v local._loopcount
b [14]

:[11]
push.v other.troublePiece
conv.v.b
bf [13]

:[12]
pushi.e 1
pop.v.i local._loopcount
b [14]

:[13]
pushi.e 1
pushi.e 2
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v local._loopcount

:[14]
pushloc.v local._loopcount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [16]

:[15]
push.v self.image_angle
pushi.e 90
sub.i.v
pop.v.v self.image_angle
push.v self.x
push.v self.image_angle
pushi.e 90
add.i.v
push.v self.sprite_width
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.image_angle
pushi.e 90
add.i.v
push.v self.sprite_width
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [15]

:[16]
popz.i

:[17]
popenv [4]
push.v 1110.goalHit
conv.v.b
bf [end]

:[18]
pushi.e 8
pop.v.i self.image_index

:[end]