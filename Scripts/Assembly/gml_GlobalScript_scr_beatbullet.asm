.localvar 2 arguments
.localvar 11539 _frames 3238
.localvar 11540 _targetBeat 3239
.localvar 11541 _yTop 3240
.localvar 11542 _yBottom 3241

:[0]
b [10]

> gml_Script_scr_beatbullet (locals=4, argc=0)
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
pushbltn.v builtin.argument_count
pushi.e 5
cmp.i.v GT
bf [3]

:[2]
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v local._yTop

:[3]
pushbltn.v builtin.argument_count
pushi.e 6
cmp.i.v GT
bf [5]

:[4]
pushi.e -15
pushi.e 6
push.v [array]self.argument
pop.v.v local._yBottom

:[5]
pushi.e 1102
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._yTop
pushi.e -15
pushi.e 0
push.v [array]self.argument
call.i instance_create_depth(argc=4)
pushi.e -9
pushenv [9]

:[6]
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
bf [8]

:[7]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_get_track_position(argc=1)
pop.v.v self.soundTimeStep
push.v self.soundTimeStep
push.v self.spb
div.v.v
pop.v.v self.beats
push.v self.beats
pop.v.v self.beatsPrev
push.v self.beats
pushloc.v local._targetBeat
add.v.v
call.i floor(argc=1)
pop.v.v self.targetBeat
pushi.e 1
pop.v.b self.inSync
b [9]

:[8]
pushloc.v local._targetBeat
pop.v.v self.targetBeat
pushi.e 0
pop.v.b self.inSync

:[9]
popenv [6]
exit.i

:[10]
push.i [function]gml_Script_scr_beatbullet
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_beatbullet
popz.v

:[end]