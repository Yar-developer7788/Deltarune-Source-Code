.localvar 2 arguments
.localvar 36487 _percent 18020
.localvar 36497 _yDiff 18021

:[0]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.inSync
pushi.e 1
cmp.b.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_get_track_position(argc=1)
push.v self.spb
div.v.v
pop.v.v self.beats
b [6]

:[5]
pushi.e 0
pop.v.b self.inSync
push.v self.beats
push.v self.bpf
add.v.v
pop.v.v self.beats

:[6]
push.v self.beats
push.v self.beatsPrev
sub.v.v
call.i abs(argc=1)
pushi.e 3
cmp.i.v GT
bf [8]

:[7]
pushi.e 0
pop.v.b self.inSync

:[8]
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
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [10]

:[9]
pushi.e 1
pop.v.i self.active
b [12]

:[10]
push.v self.follow
pushi.e -4
cmp.i.v NEQ
bf [12]

:[11]
push.v self.follow
pushi.e -9
push.v [stacktop]self.x
push.v self.targetX
add.v.v
pop.v.v self.x

:[12]
push.v self.framesAway
push.v self.frames
push.v self.fadeInSpeed
add.v.v
cmp.v.v LT
bf [14]

:[13]
pushi.e 1
conv.i.d
push.v self.fadeInSpeed
div.v.d
pushi.e 1
conv.i.v
push.v self.image_alpha
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.image_alpha

:[14]
push.v self.framesAway
push.v self.frames
cmp.v.v LT
bf [17]

:[15]
pushloc.v local._percent
pushi.e 0
cmp.i.v LTE
bf [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
pushbltn.v builtin.room
pushi.e 95
cmp.i.v EQ
bf [19]

:[18]
push.v self.y
pushi.e 240
cmp.i.v GTE
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 240
pop.v.i self.y
call.i instance_destroy(argc=0)
popz.v

:[22]
pushbltn.v builtin.room
pushi.e 111
cmp.i.v EQ
bf [24]

:[23]
push.v self.y
pushi.e 2440
cmp.i.v GT
b [25]

:[24]
push.e 0

:[25]
bf [end]

:[26]
pushi.e 2440
pop.v.i self.y
call.i instance_destroy(argc=0)
popz.v

:[end]