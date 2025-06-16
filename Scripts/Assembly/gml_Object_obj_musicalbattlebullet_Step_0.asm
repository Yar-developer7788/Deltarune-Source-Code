.localvar 2 arguments
.localvar 36502 _prevBeats 18074
.localvar 36487 _percent 18075

:[0]
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_sound_get_track_position(argc=1)
pop.v.v self.soundTimeStep
push.v self.beats
pop.v.v local._prevBeats
push.v self.soundTimeStep
push.v self.spb
div.v.v
pop.v.v self.beats
push.v self.beats
pushloc.v local._prevBeats
cmp.v.v LT
bf [2]

:[1]
push.v self.targetBeat
push.v self.beatMax
sub.v.v
pop.v.v self.targetBeat

:[2]
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
pushloc.v local._percent
pushi.e 0
cmp.i.v GT
bf [3]

:[3]
push.v self.varianty
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
push.v self.varianty
pushi.e 5
sub.i.v
pop.v.v self.varianty

:[5]
pushloc.v local._percent
push.v self.ystart
push.v self.varianty
sub.v.v
push.v self.yTarget
call.i lerp(argc=3)
pop.v.v self.y
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [12]

:[6]
push.v self.remFramesAway
push.v self.framesAway
sub.v.v
call.i abs(argc=1)
pushi.e 4
cmp.i.v GTE
bf [8]

:[7]
push.v self.y
pushi.e 60
cmp.i.v GTE
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 0
pop.v.i self.active
pushi.e 1
pop.v.i self.failed

:[11]
push.v self.framesAway
pop.v.v self.remFramesAway

:[12]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.framesAway
pop.v.v self.remFramesAway
pushi.e 1
pop.v.i self.init

:[14]
push.v self.failed
pushi.e 1
cmp.i.v EQ
bf [17]

:[15]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
pushloc.v local._percent
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.v self.failed
pushi.e 0
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [end]

:[21]
pushi.e 1108
conv.i.v
push.v self.depth
pushi.e 1
add.i.v
push.v self.y
push.v self.x
call.i instance_create_depth(argc=4)
popz.v
push.v self.instrument
call.i gml_Script_snd_stop(argc=1)
popz.v
push.v self.instrument
call.i gml_Script_snd_play(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]