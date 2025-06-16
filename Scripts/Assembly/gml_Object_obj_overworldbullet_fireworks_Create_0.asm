.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.type
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.type
pushbltn.v builtin.room
pushi.e 217
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.type

:[2]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1743
pop.v.i self.sprite_index
pushi.e 95
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e -20
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.vspeed
pushi.e 1
pop.v.i self.friction
b [end]

:[4]
push.d 0.5
conv.d.v
pushi.e 95
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 2005
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
push.v self.x
pushbltn.v builtin.room_width
cmp.v.v GT
bf [6]

:[5]
push.s "left"@5994
pop.v.s self.dir
pushi.e -12
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.hspeed

:[6]
push.v self.x
pushi.e 0
cmp.i.v LT
bf [end]

:[7]
push.s "right"@4637
pop.v.s self.dir
pushi.e 12
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed

:[end]