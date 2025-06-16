.localvar 2 arguments
.localvar 11652 _bpf 17790
.localvar 11651 _spb 17791

:[0]
push.v self.bpm
pushi.e 60
conv.i.d
div.d.v
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
div.v.v
pop.v.v local._bpf
pushi.e 1
conv.i.d
push.v self.bpm
pushi.e 60
conv.i.d
div.d.v
div.v.d
pop.v.v local._spb
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
pushloc.v local._spb
div.v.v
pop.v.v self.beat
push.v self.beat
call.i frac(argc=1)
pop.v.v self.beat
b [7]

:[5]
pushi.e 0
pop.v.b self.inSync
push.v self.beat
pushloc.v local._bpf
add.v.v
pop.v.v self.beat
push.v self.beat
pushi.e 1
cmp.i.v GTE
bf [7]

:[6]
push.v self.beat
pushi.e 1
sub.i.v
pop.v.v self.beat

:[7]
push.v self.beat
push.v self.image_number
push.v self.loopsPerBeat
mul.v.v
mul.v.v
pop.v.v self.image_index

:[end]