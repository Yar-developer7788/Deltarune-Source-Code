.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_sound_get_track_position(argc=1)
pop.v.v self.trackpos
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
push.v self.trackpos
push.d 58.335
cmp.d.v GTE
bf [3]

:[2]
push.v self.trackpos
push.d 58.375
cmp.d.v LTE
b [4]

:[3]
push.e 0

:[4]
bf [7]

:[5]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.timer
push.s "hey"@37942
conv.s.v
call.i gml_Script_debug_message(argc=1)
popz.v
pushi.e 1
pop.v.i self.con

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [10]

:[8]
pushi.e -5
push.v 729.myself
conv.v.i
push.v [array]self.monstery
push.v 729.x
pushi.e 10
sub.i.v
push.v self.lang
pushi.e 3239
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 12
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.con

:[10]
pushi.e -5
pushi.e 54
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[11]
push.s "battle ended"@37943
conv.s.v
call.i gml_Script_debug_message(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]