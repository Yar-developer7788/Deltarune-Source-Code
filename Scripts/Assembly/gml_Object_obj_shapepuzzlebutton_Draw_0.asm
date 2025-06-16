.localvar 2 arguments
.localvar 9183 _xx 18139
.localvar 36564 _spotlightRotation 18140
.localvar 36556 pieceCenterLen 18141
.localvar 36557 pieceCenterDir 18142
.localvar 36565 pieceX 18143
.localvar 36566 pieceY 18144
.localvar 36567 _spotlight_color 18145
.localvar 36568 glowBrightness 18146

:[0]
call.i draw_self(argc=0)
popz.v
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
push.v self.y
pushi.e 45
sub.i.v
push.v self.x
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2421
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.active
cmp.v.v LTE
bf [3]

:[2]
pushi.e 1
push.v self.i
push.d 0.2
mul.d.v
add.v.i
push.v self.icon_color
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 45
sub.i.v
push.v self.x
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
push.v self.puzzle_icon
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 320
push.v self.x
pushi.e 20
add.i.v
pushi.e 320
sub.i.v
push.d 1.25
mul.d.v
add.v.i
pop.v.v local._xx
push.v 1110.goalHit
conv.v.b
bf [5]

:[4]
push.v 1110.y
push.v 1110.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v 1110.x
push.v 1110.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 26
conv.i.v
pushloc.v local._xx
call.i point_direction(argc=4)
pushi.e 90
add.i.v
pop.v.v local._spotlightRotation
b [6]

:[5]
push.v self.myPiece
pushi.e -9
push.v [stacktop]self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.myPiece
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_distance(argc=4)
pop.v.v local.pieceCenterLen
push.v self.myPiece
pushi.e -9
push.v [stacktop]self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.myPiece
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_direction(argc=4)
pop.v.v local.pieceCenterDir
push.v self.myPiece
pushi.e -9
push.v [stacktop]self.x
pushloc.v local.pieceCenterDir
push.v self.myPiece
pushi.e -9
push.v [stacktop]self.image_angle
add.v.v
pushloc.v local.pieceCenterLen
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v local.pieceX
push.v self.myPiece
pushi.e -9
push.v [stacktop]self.y
pushloc.v local.pieceCenterDir
push.v self.myPiece
pushi.e -9
push.v [stacktop]self.image_angle
add.v.v
pushloc.v local.pieceCenterLen
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v local.pieceY
pushloc.v local.pieceY
pushloc.v local.pieceX
pushi.e 26
conv.i.v
pushloc.v local._xx
call.i point_direction(argc=4)
pushi.e 90
add.i.v
pop.v.v local._spotlightRotation

:[6]
push.v self.myPiece
pushi.e -9
push.v [stacktop]self.image_blend
pop.v.v local._spotlight_color
push.v self.myPiece
pushi.e -9
push.v [stacktop]self.active
conv.v.b
bf [8]

:[7]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 0.2
conv.d.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_wave(argc=4)
b [9]

:[8]
push.v 1110.finalGlow

:[9]
pop.v.v local.glowBrightness
pushi.e 1
conv.i.v
pushloc.v local._spotlight_color
pushloc.v local._spotlightRotation
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 26
conv.i.v
pushloc.v local._xx
pushi.e 3
conv.i.v
pushi.e 2423
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushloc.v local.glowBrightness
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
pushloc.v local.glowBrightness
push.i 16777215
conv.i.v
pushloc.v local._spotlightRotation
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 26
conv.i.v
pushloc.v local._xx
pushi.e 3
conv.i.v
pushi.e 2423
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[11]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local._spotlightRotation
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 26
conv.i.v
pushloc.v local._xx
pushi.e 0
conv.i.v
pushi.e 2423
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
pushi.e 1
conv.i.v
pushloc.v local._spotlight_color
pushloc.v local._spotlightRotation
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 26
conv.i.v
pushloc.v local._xx
pushi.e 1
conv.i.v
pushi.e 2423
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushloc.v local.glowBrightness
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
pushloc.v local.glowBrightness
push.i 16777215
conv.i.v
pushloc.v local._spotlightRotation
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 26
conv.i.v
pushloc.v local._xx
pushi.e 1
conv.i.v
pushi.e 2423
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[13]
pushi.e 0
conv.i.v
call.i gpu_set_blendmode(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 26
conv.i.v
pushloc.v local._xx
pushi.e 2
conv.i.v
pushi.e 2423
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]