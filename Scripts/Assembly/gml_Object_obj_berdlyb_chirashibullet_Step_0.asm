.localvar 2 arguments
.localvar 24456 lerpValue 11272

:[0]
push.v self.phase
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
push.v self.image_blend
push.i 16777215
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.color_timer
push.d 0.1
add.d.v
pop.v.v self.color_timer
push.v self.color_timer
push.i 16777215
conv.i.v
push.i 8421504
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[5]
push.v self.phase
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [12]

:[6]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [18]

:[7]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [21]

:[8]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [26]

:[9]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [32]

:[10]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [35]

:[11]
b [36]

:[12]
push.v self.delay
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
pop.v.i self.image_alpha

:[14]
push.v self.delay
push.v self.timer
cmp.v.v GTE
bf [16]

:[15]
pushi.e 1
pop.v.i self.image_alpha
push.v self.phase
push.e 1
add.i.v
pop.v.v self.phase
b [17]

:[16]
push.v self.delay
push.e 1
add.i.v
pop.v.v self.delay

:[17]
b [36]

:[18]
push.v self.lerpPoint
pushi.e 15
conv.i.d
div.d.v
pop.v.v local.lerpValue
pushi.e -1
pushloc.v local.lerpValue
mul.v.i
pushloc.v local.lerpValue
pushi.e 2
sub.i.v
mul.v.v
pop.v.v self.ease
push.v self.ease
push.v self.___myrememberx
push.v self.startx
call.i lerp(argc=3)
pop.v.v self.x
push.v self.ease
push.v self.___myremembery
push.v self.starty
call.i lerp(argc=3)
pop.v.v self.y
push.v self.lerpPoint
push.e 1
add.i.v
pop.v.v self.lerpPoint
push.v self.image_angle
push.v self.rotationSpeed
push.v self.rotationDir
mul.v.v
add.v.v
pop.v.v self.image_angle
push.v self.lerpPoint
pushi.e 15
cmp.i.v GT
bf [20]

:[19]
push.v self.phase
push.e 1
add.i.v
pop.v.v self.phase

:[20]
b [36]

:[21]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 205
push.v self.targetAngle
pushi.e 205
sub.i.v
push.d 0.75
mul.d.v
sub.v.i
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.targetAngle
b [26]

:[23]
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.v 631.y
push.v 631.x
push.v self.___myremembery
push.v self.___myrememberx
call.i point_direction(argc=4)
pop.v.v self.targetAngle
push.v self.targetAngle
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.targetAngle
b [26]

:[25]
push.v 872.y
push.v 872.x
push.v self.___myremembery
push.v self.___myrememberx
call.i point_direction(argc=4)
pop.v.v self.targetAngle
pushi.e 210
push.v self.targetAngle
pushi.e 210
sub.i.v
push.d 1.1
mul.d.v
sub.v.i
pop.v.v self.targetAngle

:[26]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.rotationSpeed
pushi.e 2
cmp.i.v GT
bf [28]

:[27]
push.v self.rotationSpeed
pushi.e 1
sub.i.v
pop.v.v self.rotationSpeed

:[28]
push.v self.image_angle
push.v self.rotationSpeed
push.v self.rotationDir
mul.v.v
add.v.v
pop.v.v self.image_angle
push.v self.timer
pushi.e 6
push.v self.fireoffset
pushi.e 2
conv.i.d
div.d.v
add.v.i
cmp.v.v GTE
bf [31]

:[29]
pushi.e 0
pop.v.i self.timer
push.v self.phase
push.e 1
add.i.v
pop.v.v self.phase
push.v self.targetAngle
push.v self.image_angle
call.i angle_difference(argc=2)
call.i sign(argc=1)
pop.v.v self.rotationDir
push.v self.rotationDir
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
pushi.e 1
pop.v.i self.rotationDir

:[31]
b [36]

:[32]
push.v self.image_angle
pushi.e 40
conv.i.v
push.v self.targetAngle
push.v self.image_angle
call.i angle_difference(argc=2)
call.i abs(argc=1)
call.i min(argc=2)
push.v self.rotationDir
mul.v.v
add.v.v
pop.v.v self.image_angle
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 4
push.v self.fireoffset
pushi.e 2
conv.i.d
div.d.v
add.v.i
cmp.v.v GTE
bf [34]

:[33]
push.v self.targetAngle
pop.v.v self.direction
push.v self.targetAngle
pop.v.v self.image_angle
pushi.e 1
pop.v.b self.active
push.v self.phase
push.e 1
add.i.v
pop.v.v self.phase
push.d 0.7
conv.d.v
push.d 0.5
conv.d.v
call.i random_range(argc=2)
pop.v.v self.gravity
push.v self.targetAngle
pop.v.v self.gravity_direction
pushi.e -2
pop.v.i self.speed

:[34]
b [36]

:[35]
push.v self.speed
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
push.v self.sprite_index
call.i sprite_get_number(argc=1)
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
call.i clamp(argc=3)
pop.v.v self.image_index

:[36]
popz.v

:[end]