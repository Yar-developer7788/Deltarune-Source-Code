.localvar 2 arguments
.localvar 11642 _bulletDepth 3251
.localvar 11643 _bpm 3252
.localvar 11541 _yTop 3253
.localvar 11644 _instruments 3254
.localvar 11645 _instrumentsB 3256
.localvar 11646 _instrumentsAlt 3258
.localvar 11647 _xLanes 3260
.localvar 11648 _yLanes 3262
.localvar 11649 _laneType 3264
.localvar 11650 _bps 3266
.localvar 11651 _spb 3267
.localvar 11652 _bpf 3268
.localvar 11653 _laneSelected 3269
.localvar 11654 _lanes 3271
.localvar 107 i 3272
.localvar 11546 _bullet 3273
.localvar 11559 _length 3277
.localvar 11658 _measure 3278

:[0]
b [26]

> gml_Script_scr_musicalbattlebullet (locals=18, argc=3)
:[1]
pushi.e 0
pop.v.i local._bulletDepth
pushi.e 60
pop.v.i local._bpm
pushi.e -40
pop.v.i local._yTop
push.i 38899080
setowner.e
pushi.e 271
conv.i.v
pushi.e 270
conv.i.v
pushi.e 269
conv.i.v
pushi.e 268
conv.i.v
pushi.e 267
conv.i.v
pushi.e 266
conv.i.v
pushi.e 265
conv.i.v
call.i @@NewGMLArray@@(argc=7)
pop.v.v local._instruments
push.i 38899081
setowner.e
pushi.e 278
conv.i.v
pushi.e 277
conv.i.v
pushi.e 276
conv.i.v
pushi.e 275
conv.i.v
pushi.e 274
conv.i.v
pushi.e 273
conv.i.v
pushi.e 272
conv.i.v
call.i @@NewGMLArray@@(argc=7)
pop.v.v local._instrumentsB
push.i 38899082
setowner.e
pushi.e 264
conv.i.v
pushi.e 263
conv.i.v
pushi.e 262
conv.i.v
call.i @@NewGMLArray@@(argc=3)
pop.v.v local._instrumentsAlt
push.i 38899083
setowner.e
pushi.e 460
conv.i.v
pushi.e 420
conv.i.v
pushi.e 380
conv.i.v
pushi.e 340
conv.i.v
pushi.e 300
conv.i.v
pushi.e 260
conv.i.v
pushi.e 220
conv.i.v
pushi.e 180
conv.i.v
call.i @@NewGMLArray@@(argc=8)
pop.v.v local._xLanes
push.i 38899084
setowner.e
pushi.e 280
conv.i.v
pushi.e 280
conv.i.v
pushi.e 280
conv.i.v
pushi.e 280
conv.i.v
pushi.e 280
conv.i.v
pushi.e 280
conv.i.v
pushi.e 280
conv.i.v
pushi.e 280
conv.i.v
call.i @@NewGMLArray@@(argc=8)
pop.v.v local._yLanes
push.i 38899085
setowner.e
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=8)
pop.v.v local._laneType
pushloc.v local._bpm
pushi.e 60
conv.i.d
div.d.v
pop.v.v local._bps
pushi.e 1
conv.i.d
pushloc.v local._bps
div.v.d
pop.v.v local._spb
pushloc.v local._bps
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
div.v.v
pop.v.v local._bpf
push.v arg.argument0
pop.v.v local._laneSelected
pushloc.v local._laneSelected
call.i array_length_1d(argc=1)
pop.v.v local._lanes
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushloc.v local._lanes
cmp.v.v LT
bf [25]

:[3]
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self._laneSelected
pushi.e 1
cmp.i.v EQ
bt [5]

:[4]
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self._laneSelected
pushi.e 2
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [24]

:[7]
pushi.e 1107
conv.i.v
pushloc.v local._bulletDepth
pushloc.v local._yTop
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self._xLanes
call.i instance_create_depth(argc=4)
pop.v.v local._bullet
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self._laneSelected
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 300
pushloc.v local._bullet
pushi.e -9
pop.v.i [stacktop]self.varianty

:[9]
pushloc.v local._bullet
pushi.e -9
pushenv [23]

:[10]
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self._laneType
pop.v.v self.bulletType
push.v self.bulletType
pop.v.v self.image_index
push.v self.bulletType
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.image_yscale
push.d 0.5
mul.d.v
pop.v.v self.image_yscale
push.v self.image_alpha
push.d 0.7
mul.d.v
pop.v.v self.image_alpha

:[12]
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self._yLanes
pop.v.v self.yTarget
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_sound_get_track_position(argc=1)
pop.v.v self.soundTimeStep
push.v self.soundTimeStep
pushloc.v local._spb
div.v.v
pop.v.v self.beats
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_sound_length(argc=1)
pop.v.v local._length
pushloc.v local._length
pushloc.v local._spb
div.v.v
pop.v.v self.beatMax
pushloc.v local._bpf
pop.v.v self.bpf
pushloc.v local._spb
pop.v.v self.spb
push.v self.soundTimeStep
pushloc.v local._spb
div.v.v
pop.v.v self.beats
push.v self.beats
call.i ceil(argc=1)
push.v arg.argument1
add.v.v
pop.v.v self.targetBeat
push.v self.targetBeat
pushi.e 2
rem.i.v
pushi.e 2
mod.i.v
pop.v.v local._measure
pushloc.v local._measure
conv.v.b
bf [14]

:[13]
pushi.e -7
pushi.e 6
conv.i.v
call.i irandom(argc=1)
conv.v.i
push.v [array]self._instrumentsB
pop.v.v self.instrument
b [15]

:[14]
pushi.e -7
pushi.e 6
conv.i.v
call.i irandom(argc=1)
conv.v.i
push.v [array]self._instruments
pop.v.v self.instrument

:[15]
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e -7
pushi.e 0
push.v [array]self._instrumentsAlt
pop.v.v self.instrument

:[17]
pushloc.v local.i
pushi.e 6
cmp.i.v EQ
bf [19]

:[18]
pushi.e -7
pushi.e 1
push.v [array]self._instrumentsAlt
pop.v.v self.instrument

:[19]
pushloc.v local.i
pushi.e 7
cmp.i.v EQ
bf [21]

:[20]
pushi.e -7
pushi.e 2
push.v [array]self._instrumentsAlt
pop.v.v self.instrument

:[21]
push.v arg.argument2
pop.v.v self.frames
push.v self.targetBeat
push.v self.beats
sub.v.v
pushloc.v local._bpf
div.v.v
pop.v.v self.framesAway
push.v self.framesAway
push.v self.frames
cmp.v.v LT
bf [23]

:[22]
push.s "not enough time for this bullet!!"@11660
conv.s.v
call.i show_debug_message(argc=1)
popz.v

:[23]
popenv [10]

:[24]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[25]
exit.i

:[26]
push.i [function]gml_Script_scr_musicalbattlebullet
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_musicalbattlebullet
popz.v

:[end]