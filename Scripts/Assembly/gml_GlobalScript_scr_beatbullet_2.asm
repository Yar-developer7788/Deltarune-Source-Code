.localvar 2 arguments
.localvar 11539 _frames 3139
.localvar 11540 _targetBeat 3140
.localvar 11541 _yTop 3141
.localvar 11542 _yBottom 3142
.localvar 11543 _loopOffset 3143
.localvar 11544 _fadeInFrames 3144
.localvar 11545 _horizontal 3145
.localvar 11546 _bullet 3146
.localvar 11559 _length 3157

:[0]
b [23]

> gml_Script_scr_beatbullet_2 (locals=9, argc=0)
:[1]
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v local._frames
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v local._targetBeat
call.i gml_Script_cameray(argc=0)
pop.v.v local._yTop
pushloc.v local._yTop
pushi.e 450
add.i.v
pop.v.v local._yBottom
pushi.e -15
pushi.e 6
push.v [array]self.argument
pushi.e 2
add.i.v
pop.v.v local._loopOffset
pushi.e 15
pop.v.i local._fadeInFrames
pushbltn.v builtin.argument_count
pushi.e 7
cmp.i.v GT
bf [3]

:[2]
pushi.e -15
pushi.e 7
push.v [array]self.argument
pop.v.v local._yTop

:[3]
pushbltn.v builtin.argument_count
pushi.e 8
cmp.i.v GT
bf [5]

:[4]
pushi.e -15
pushi.e 8
push.v [array]self.argument
pop.v.v local._yBottom

:[5]
pushbltn.v builtin.argument_count
pushi.e 9
cmp.i.v GT
bf [7]

:[6]
pushi.e -15
pushi.e 9
push.v [array]self.argument
pop.v.v local._fadeInFrames

:[7]
pushi.e 0
pop.v.b local._horizontal
pushbltn.v builtin.argument_count
pushi.e 10
cmp.i.v GT
bf [9]

:[8]
pushi.e -15
pushi.e 10
push.v [array]self.argument
pop.v.v local._horizontal

:[9]
pushloc.v local._horizontal
conv.v.b
not.b
bf [11]

:[10]
pushi.e 1103
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._yTop
pushi.e -15
pushi.e 0
push.v [array]self.argument
call.i instance_create_depth(argc=4)
pop.v.v local._bullet
b [12]

:[11]
pushi.e 1103
conv.i.v
pushi.e 0
conv.i.v
pushi.e -15
pushi.e 0
push.v [array]self.argument
pushloc.v local._yTop
call.i instance_create_depth(argc=4)
pop.v.v local._bullet

:[12]
pushloc.v local._bullet
pushi.e -9
pushenv [21]

:[13]
pushloc.v local._horizontal
pop.v.v self.horizontal
push.v self.horizontal
conv.v.b
bf [15]

:[14]
pushi.e 90
pop.v.i self.image_angle

:[15]
pushloc.v local._yBottom
pop.v.v self.endY
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.targetX
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.follow
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.bpm
pushi.e 999
pop.v.i self.framesAway
pushloc.v local._frames
pop.v.v self.frames
pushloc.v local._fadeInFrames
pop.v.v self.fadeSpeed
pushi.e 0
pop.v.i self.image_alpha
push.v self.bpm
pushi.e 60
conv.i.d
div.d.v
pop.v.v self.bps
pushi.e 1
conv.i.d
push.v self.bps
div.v.d
pop.v.v self.spb
push.v self.bps
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
div.v.v
pop.v.v self.bpf
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
bf [20]

:[16]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_get_track_position(argc=1)
pop.v.v self.soundTimeStep
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_length(argc=1)
pop.v.v local._length
push.v self.soundTimeStep
push.v self.spb
div.v.v
pop.v.v self.beats
pushloc.v local._length
push.v self.spb
div.v.v
pop.v.v self.beatMax
push.v self.beats
pop.v.v self.beatsPrev
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.looping
pushloc.v local._targetBeat
pop.v.v self.beatLoop
pushloc.v local._loopOffset
pop.v.v self.loopOffset
push.v self.looping
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushloc.v local._targetBeat
pop.v.v self.targetBeat
b [19]

:[18]
push.v self.beats
push.v self.looping
div.v.v
call.i ceil(argc=1)
push.v self.looping
mul.v.v
pushloc.v local._targetBeat
add.v.v
pushloc.v local._loopOffset
add.v.v
pop.v.v self.targetBeat

:[19]
pushi.e 1
pop.v.b self.inSync
b [21]

:[20]
pushi.e 9999
pop.v.i self.beatMax
pushloc.v local._loopOffset
pop.v.v self.loopOffset
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.looping
pushloc.v local._targetBeat
pop.v.v self.beatLoop
pushloc.v local._targetBeat
push.v self.loopOffset
add.v.v
pop.v.v self.targetBeat
pushi.e 0
pop.v.b self.inSync

:[21]
popenv [13]
pushloc.v local._bullet
ret.v

:[22]
exit.i

:[23]
push.i [function]gml_Script_scr_beatbullet_2
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_beatbullet_2
popz.v

:[end]