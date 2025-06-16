.localvar 2 arguments
.localvar 36552 _moveH 18128
.localvar 36553 _moveV 18129
.localvar 36554 _centerLength 18130
.localvar 36555 _moveDir 18131
.localvar 36556 pieceCenterLen 18132
.localvar 36557 pieceCenterDir 18133
.localvar 9183 _xx 18134
.localvar 9185 _yy 18135
.localvar 6706 d 18136

:[0]
push.v self.mybuffer
pushi.e 10
cmp.i.v LT
bf [2]

:[1]
push.v self.mybuffer
push.e 1
add.i.v
pop.v.v self.mybuffer

:[2]
push.v self.mybuffer
pushi.e 2
cmp.i.v GT
bf [end]

:[3]
push.v self.active
conv.v.b
bf [5]

:[4]
push.v self.bird
pushi.e 0
cmp.i.v GTE
b [6]

:[5]
push.e 0

:[6]
bf [58]

:[7]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bt [9]

:[8]
push.v 1110.goalHit
conv.v.b
b [10]

:[9]
push.e 1

:[10]
bf [16]

:[11]
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1110
pushenv [13]

:[12]
pushi.e 0
pop.v.b self.inUse

:[13]
popenv [12]
pushi.e 0
pop.v.b self.active
pushi.e 0
pop.v.i self.image_index
push.v 1110.goalHit
pop.v.v global.interact
pushi.e 0
pop.v.i global.facing
push.v self.myPiece
pushi.e -9
pushenv [15]

:[14]
pushi.e 0
pop.v.b self.active

:[15]
popenv [14]
exit.i

:[16]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [27]

:[17]
push.d 1.5
conv.d.v
pushi.e 173
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
push.v self.myPiece
pushi.e -9
pushenv [24]

:[18]
push.v other.troublePiece
conv.v.b
bf [20]

:[19]
push.v self.image_angle
pushi.e -90
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.v self.image_angle
pushi.e 90
add.i.v
pop.v.v self.image_angle
push.v self.x
push.v self.image_angle
push.v self.sprite_width
call.i lengthdir_x(argc=2)
sub.v.v
pop.v.v self.x
push.v self.y
push.v self.image_angle
push.v self.sprite_width
call.i lengthdir_y(argc=2)
sub.v.v
pop.v.v self.y
b [24]

:[23]
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

:[24]
popenv [18]
pushi.e 1110
pushenv [26]

:[25]
pushi.e 1
pop.v.b self.goalCheck

:[26]
popenv [25]

:[27]
call.i gml_Script_right_h(argc=0)
call.i gml_Script_left_h(argc=0)
sub.v.v
pop.v.v local._moveH
call.i gml_Script_down_h(argc=0)
call.i gml_Script_up_h(argc=0)
sub.v.v
pop.v.v local._moveV
push.v self.myPiece
pushi.e -9
pushenv [38]

:[28]
push.v self.sprite_width
pushi.e 2
conv.i.v
call.i sqrt(argc=1)
pushi.e 2
conv.i.d
div.d.v
mul.v.v
pop.v.v local._centerLength
push.v self.x
push.v self.image_angle
pushi.e 45
sub.i.v
pushloc.v local._centerLength
call.i lengthdir_x(argc=2)
add.v.v
pushloc.v local._moveH
push.v other.moveAmount
mul.v.v
add.v.v
pushi.e 0
cmp.i.v LT
bt [30]

:[29]
push.v self.x
push.v self.image_angle
pushi.e 45
sub.i.v
pushloc.v local._centerLength
call.i lengthdir_x(argc=2)
add.v.v
pushloc.v local._moveH
push.v other.moveAmount
mul.v.v
add.v.v
pushi.e 640
cmp.i.v GT
b [31]

:[30]
push.e 1

:[31]
bf [33]

:[32]
pushi.e 0
pop.v.i local._moveH

:[33]
push.v self.y
push.v self.image_angle
pushi.e 45
sub.i.v
pushloc.v local._centerLength
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local._moveV
push.v other.moveAmount
mul.v.v
add.v.v
pushi.e 200
cmp.i.v LT
bt [35]

:[34]
push.v self.y
push.v self.image_angle
pushi.e 45
sub.i.v
pushloc.v local._centerLength
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local._moveV
push.v other.moveAmount
mul.v.v
add.v.v
pushi.e 480
cmp.i.v GT
b [36]

:[35]
push.e 1

:[36]
bf [38]

:[37]
pushi.e 0
pop.v.i local._moveV

:[38]
popenv [28]
pushloc.v local._moveV
pushloc.v local._moveH
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_direction(argc=4)
pop.v.v local._moveDir
pushloc.v local._moveH
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushloc.v local._moveV
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 0
pop.v.i self.holdDelay
pushi.e 0
pop.v.i self.image_index
b [57]

:[43]
pushi.e 4
conv.i.v
pushi.e 1
pushloc.v local._moveDir
pushi.e 90
conv.i.d
div.d.v
call.i round(argc=1)
add.v.i
call.i min(argc=2)
pop.v.v self.image_index
push.v self.holdDelay
push.e 1
sub.i.v
dup.v 0
pop.v.v self.holdDelay
pushi.e 0
cmp.i.v LTE
bf [57]

:[44]
push.d 1.5
conv.d.v
pushi.e 260
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
push.v self.holdDelayMax
pop.v.v self.holdDelay
push.v self.myPiece
pushi.e -9
pushenv [54]

:[45]
push.v self.x
pushloc.v local._moveH
push.v other.moveAmount
mul.v.v
add.v.v
pop.v.v self.x
push.v self.y
pushloc.v local._moveV
push.v other.moveAmount
mul.v.v
add.v.v
pop.v.v self.y
push.v other.bird
pushi.e 0
cmp.i.v GT
bf [54]

:[46]
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_distance(argc=4)
pop.v.v local.pieceCenterLen
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_direction(argc=4)
pop.v.v local.pieceCenterDir
push.v self.x
pushloc.v local.pieceCenterDir
push.v self.image_angle
add.v.v
pushloc.v local.pieceCenterLen
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v local._xx
push.v self.y
pushloc.v local.pieceCenterDir
push.v self.image_angle
add.v.v
pushloc.v local.pieceCenterLen
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v local._yy
pushloc.v local._xx
pushi.e 530
cmp.i.v GTE
bf [50]

:[47]
pushloc.v local._xx
pushi.e 610
cmp.i.v LTE
bf [50]

:[48]
pushloc.v local._yy
pushi.e 255
cmp.i.v GTE
bf [50]

:[49]
pushloc.v local._yy
pushi.e 315
cmp.i.v LTE
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 2
pop.v.i other.bird
b [54]

:[53]
pushi.e 1
pop.v.i other.bird

:[54]
popenv [45]
pushi.e 1110
pushenv [56]

:[55]
pushi.e 1
pop.v.b self.goalCheck

:[56]
popenv [55]

:[57]
b [63]

:[58]
push.v 1110.goalHit
conv.v.b
bf [63]

:[59]
push.v self.image_index
pushi.e 5
cmp.i.v LT
bf [61]

:[60]
pushi.e 5
pop.v.i self.image_index
b [63]

:[61]
push.v self.image_index
pushi.e 8
cmp.i.v LT
bf [63]

:[62]
push.v self.image_index
push.d 0.5
add.d.v
pop.v.v self.image_index

:[63]
push.v self.bird
pushi.e 2
cmp.i.v EQ
bf [65]

:[64]
push.v self.active
conv.v.b
b [66]

:[65]
push.e 0

:[66]
bf [69]

:[67]
push.v self.berdly_taunt_timer
push.e 1
add.i.v
pop.v.v self.berdly_taunt_timer
push.v self.berdly_taunt_timer
pushi.e 15
cmp.i.v GTE
bf [69]

:[68]
pushi.e 0
pop.v.i self.image_index
pushi.e -1
pop.v.i self.bird
pushi.e 0
pop.v.b self.active
pushi.e 0
pop.v.i global.facing
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_shapepuzzlebutton_slash_Step_0_gml_101_0"@36558
conv.s.v
push.s "\\EB* Kris!^1 Stop taunting me with that appealing blue shape!/"@36559
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_shapepuzzlebutton_slash_Step_0_gml_102_0"@36560
conv.s.v
push.s "\\EC* Y^1-You're just lucky this isn't online,^1 or...^1 or.../"@36561
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_shapepuzzlebutton_slash_Step_0_gml_103_0"@36562
conv.s.v
push.s "\\ED* ... or you wouldn't be able to taunt!!/%"@36563
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side

:[69]
push.v self.bird
pushi.e -1
cmp.i.v EQ
bf [71]

:[70]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [72]

:[71]
push.e 0

:[72]
bf [end]

:[73]
pushi.e 1
pop.v.b self.active
pushi.e 2
pop.v.i global.facing
pushi.e 0
pop.v.i self.bird

:[end]