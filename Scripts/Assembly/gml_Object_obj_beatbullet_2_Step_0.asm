.localvar 2 arguments
.localvar 36501 _shouldActivate 18031
.localvar 36502 _prevBeats 18032
.localvar 36487 _percent 18033
.localvar 36497 _yDiff 18034
.localvar 6402 flash 18035

:[0]
pushi.e 0
pop.v.b local._shouldActivate
pushi.e 82
pushenv [3]

:[1]
pushi.e 0
pop.v.b local._shouldActivate
push.v self.battlemode
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.b local._shouldActivate

:[3]
popenv [1]
pushloc.v local._shouldActivate
pop.v.v self.shouldActivate
push.v self.shouldActivate
pushi.e 1
cmp.b.v EQ
bf [5]

:[4]
push.v self.framesAway
push.v self.frames
cmp.v.v GT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.b self.readyToGo

:[8]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
bf [10]

:[9]
push.v self.inSync
pushi.e 1
cmp.b.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
push.v self.beats
pop.v.v local._prevBeats
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_get_track_position(argc=1)
push.v self.spb
div.v.v
pop.v.v self.beats
push.v self.beats
pushloc.v local._prevBeats
cmp.v.v LT
bf [14]

:[13]
push.v self.targetBeat
push.v self.beatMax
sub.v.v
pop.v.v self.targetBeat
pushi.e 1
pop.v.b self.forgiveLoop

:[14]
b [16]

:[15]
pushi.e 0
pop.v.b self.inSync
push.v self.beats
push.v self.bpf
add.v.v
pop.v.v self.beats

:[16]
push.v self.beats
push.v self.beatsPrev
sub.v.v
call.i abs(argc=1)
pushi.e 3
cmp.i.v GT
bf [20]

:[17]
push.v self.forgiveLoop
conv.v.b
not.b
bf [19]

:[18]
pushi.e 0
pop.v.b self.inSync
b [20]

:[19]
pushi.e 0
pop.v.b self.forgiveLoop

:[20]
push.v self.beats
pop.v.v self.beatsPrev
push.v self.targetBeat
push.v self.beats
sub.v.v
push.v self.bpf
div.v.v
pop.v.v self.framesAway
push.v self.framesAway
push.v self.frames
div.v.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v local._percent
push.v self.horizontal
conv.v.b
not.b
bf [22]

:[21]
push.v self.ystart
push.v self.endY
sub.v.v
call.i abs(argc=1)
pop.v.v local._yDiff
pushi.e 1
conv.i.v
pushloc.v local._yDiff
neg.v
push.v self.endY
pushloc.v local._percent
call.i gml_Script_ease_out_cubic(argc=4)
pop.v.v self.y
push.v self.ystart
push.v self.y
call.i max(argc=2)
pop.v.v self.y
b [23]

:[22]
push.v self.xstart
push.v self.endY
sub.v.v
call.i abs(argc=1)
pop.v.v local._yDiff
pushi.e 1
conv.i.v
pushloc.v local._yDiff
neg.v
push.v self.endY
pushloc.v local._percent
call.i gml_Script_ease_out_cubic(argc=4)
pop.v.v self.x
push.v self.xstart
push.v self.x
call.i max(argc=2)
pop.v.v self.x

:[23]
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [25]

:[24]
pushi.e 1
pop.v.i self.active
b [28]

:[25]
push.v self.follow
pushi.e -4
cmp.i.v NEQ
bf [27]

:[26]
push.v self.follow
pushi.e -9
push.v [stacktop]self.x
push.v self.targetX
add.v.v
pop.v.v self.x

:[27]
pushi.e 0
pop.v.b self.active

:[28]
push.v self.framesAway
push.v self.frames
push.v self.fadeInSpeed
add.v.v
cmp.v.v LT
bf [30]

:[29]
push.v self.readyToGo
conv.v.b
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 1
conv.i.d
push.v self.fadeInSpeed
div.v.d
pushi.e 1
conv.i.v
push.v self.image_alpha
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.image_alpha

:[33]
push.v self.readyToGo
conv.v.b
not.b
bf [35]

:[34]
pushi.e 1
conv.i.d
push.v self.fadeInSpeed
div.v.d
pushi.e 0
conv.i.v
push.v self.image_alpha
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.image_alpha

:[35]
push.v self.framesAway
push.v self.frames
cmp.v.v LT
bf [end]

:[36]
pushloc.v local._percent
pushi.e 0
cmp.i.v LTE
bf [end]

:[37]
push.v self.active
conv.v.b
bf [40]

:[38]
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1100
conv.i.v
push.v self.depth
push.v self.y
push.v self.x
call.i instance_create_depth(argc=4)
pop.v.v local.flash
push.v self.sprite_width
pushloc.v local.flash
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e 1
conv.i.d
push.v self.sprite_height
div.v.d
pushi.e 300
mul.i.v
pushloc.v local.flash
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.image_angle
pushloc.v local.flash
pushi.e -9
pop.v.v [stacktop]self.image_angle

:[40]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.b self.readyToGo
push.v self.shouldActivate
conv.v.b
bf [42]

:[41]
pushi.e 1
pop.v.b self.readyToGo

:[42]
push.v self.looping
pushi.e 0
cmp.i.v NEQ
bf [44]

:[43]
push.v self.targetBeat
push.v self.looping
add.v.v
pop.v.v self.targetBeat

:[44]
pushi.e 0
pop.v.i self.active

:[end]