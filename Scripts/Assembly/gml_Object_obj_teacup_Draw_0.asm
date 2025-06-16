.localvar 2 arguments
.localvar 36434 _segSpin 17908
.localvar 36436 _bottomY 17910
.localvar 36437 _screwSegTotal 17911
.localvar 36438 _screwSegStart 17912

:[0]
push.v self.spin
pop.v.v local._segSpin
push.v self.mode
pushi.e 0
cmp.i.v NEQ
bf [4]

:[1]
push.i 99999
push.v self.y
push.v self.heldAmount
sub.v.v
add.v.i
pop.v.v local._segSpin
push.v self.held
conv.v.b
bf [3]

:[2]
push.v self.adjustForCamera
push.v self.riseSpeed
push.v self.camFollowMultiplier
mul.v.v
add.v.v
pop.v.v self.adjustForCamera
push.v local._segSpin
push.v self.adjustForCamera
sub.v.v
pop.v.v local._segSpin
b [4]

:[3]
pushi.e 0
pop.v.i self.adjustForCamera

:[4]
push.v self.ystart
push.v self.heldAmount
add.v.v
pop.v.v local._bottomY
push.v self.startOffset
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [6]

:[5]
push.v self.startOffset
pushi.e 0
cmp.i.v GT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v local._bottomY
push.v self.startOffset
add.v.v
pop.v.v local._bottomY

:[9]
pushloc.v local._bottomY
push.v self.y
sub.v.v
push.v self.screwSegHeight
rem.v.v
pushi.e 1
add.i.v
pop.v.v local._screwSegTotal
pushi.e 0
pop.v.i local._screwSegStart
pushloc.v local._screwSegStart
pop.v.v self.i

:[10]
push.v self.i
pushloc.v local._screwSegTotal
cmp.v.v LT
bf [15]

:[11]
push.v self.i
pushloc.v local._screwSegStart
cmp.v.v NEQ
bf [13]

:[12]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local._bottomY
pushi.e 24
add.i.v
push.v self.i
pushi.e 30
mul.i.v
sub.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2550
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [14]

:[13]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -2
pushloc.v local._bottomY
add.v.i
pushi.e 24
add.i.v
push.v self.i
pushi.e 30
mul.i.v
sub.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2574
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[14]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [10]

:[15]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
pushloc.v local._bottomY
pushi.e 20
add.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2549
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2568
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.spin
push.d 22.5
rem.d.v
pushi.e 2544
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.shadowSurf
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [17]

:[16]
push.v self.sprite_height
push.v self.sprite_width
call.i surface_create(argc=2)
pop.v.v self.shadowSurf

:[17]
push.v self.shadowSurf
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i gpu_set_blendmode_ext(argc=2)
popz.v
pushi.e 1092
pushenv [21]

:[18]
push.v self.master
push.v other.id
cmp.v.v EQ
bf [21]

:[19]
push.v self.ystart
push.v other.y
pushi.e 300
sub.i.v
sub.v.v
pushi.e 300
conv.i.d
div.d.v
pop.v.v self.closenessToRide
push.v self.closenessToRide
push.v self.cutOff
push.v self.spriteHeightRoot
div.v.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.d 0.5
mul.d.v
push.v self.image_xscale
push.v other.y
push.v self.circleY
add.v.v
push.v other.bbox_top
sub.v.v
push.v self.x
push.v other.bbox_left
sub.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.lineToCenter
conv.v.b
bf [21]

:[20]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.closenessToRide
push.v self.cutOff
push.v self.spriteHeightRoot
div.v.v
sub.v.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 4
conv.i.v
push.v other.y
push.v other.bbox_top
sub.v.v
push.v self.xstart
push.v other.bbox_left
sub.v.v
push.v other.y
push.v self.circleY
add.v.v
push.v other.bbox_top
sub.v.v
push.v self.x
push.v other.bbox_left
sub.v.v
call.i draw_line_width(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[21]
popenv [18]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
push.v self.bbox_top
push.v self.bbox_left
push.v self.shadowSurf
call.i draw_surface(argc=3)
popz.v
pushbltn.v builtin.room
pushi.e 89
cmp.i.v EQ
bf [26]

:[22]
push.v self.drawtutorialarrows
pushi.e 1
cmp.b.v EQ
bf [24]

:[23]
push.d 0.15
conv.d.v
pushi.e 1
conv.i.v
push.v self.drawtutorialarrows_alpha
call.i lerp(argc=3)
pop.v.v self.drawtutorialarrows_alpha
b [25]

:[24]
push.d 0.35
conv.d.v
pushi.e 0
conv.i.v
push.v self.drawtutorialarrows_alpha
call.i lerp(argc=3)
pop.v.v self.drawtutorialarrows_alpha

:[25]
push.v self.drawtutorialarrows_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 34
add.i.v
push.v self.idletimer
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e -2
push.v self.x
add.v.i
pushi.e 70
add.i.v
pushi.e 0
conv.i.v
pushi.e 3248
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.drawtutorialarrows_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 34
add.i.v
push.v self.idletimer
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e -2
push.v self.x
add.v.i
pushi.e 70
sub.i.v
pushi.e 0
conv.i.v
pushi.e 3248
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[26]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.cupCharExists
conv.v.b
bf [end]

:[27]
push.v self.debugHitThisFrame
conv.v.b
bf [end]

:[28]
pushi.e 0
conv.b.v
pushi.e 64
conv.i.v
push.v self.y
pushi.e 20
conv.i.v
call.i draw_circle(argc=4)
popz.v
pushi.e 0
pop.v.b self.debugHitThisFrame

:[end]