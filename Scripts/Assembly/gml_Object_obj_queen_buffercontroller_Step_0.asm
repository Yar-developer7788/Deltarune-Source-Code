.localvar 2 arguments

:[0]
push.v self.buffering
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.bufferbar
push.e 1
add.i.v
pop.v.v self.bufferbar
push.v self.bufferbar
push.v self.bufferdelay
pushi.e 15
sub.i.v
cmp.v.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_sound_get_track_position(argc=1)
pop.v.v self.songtime

:[3]
push.v self.bufferbar
push.v self.bufferdelay
cmp.v.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i self.bufferbar
pushi.e 1
pop.v.i self.buffering

:[5]
b [end]

:[6]
push.v self.buffering
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
push.v self.bufferbar
pushi.e 15
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.songtime
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_sound_set_track_position(argc=2)
popz.v

:[9]
push.v self.bufferbar
push.e 1
add.i.v
pop.v.v self.bufferbar
push.v self.bufferbar
push.v self.bufferduration
cmp.v.v EQ
bf [end]

:[10]
pushi.e 2
pop.v.i self.buffering

:[end]