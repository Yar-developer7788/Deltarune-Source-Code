.localvar 2 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v LTE
bf [2]

:[1]
push.v self.flashtimer
pushi.e 1
add.i.v
pop.v.v self.flashtimer
push.v self.flashtimer
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
call.i abs(argc=1)
pop.v.v self.image_alpha

:[2]
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [6]

:[3]
pushi.e 1
pop.v.i self.image_alpha
push.d 0.1
pop.v.d self.vspeed
pushi.e 158
conv.i.v
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [5]

:[4]
pushi.e 2
conv.i.v
pushi.e 158
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
pop.v.v self.spawn
pushi.e 0
conv.i.v
push.d 0.6
conv.d.v
push.v self.spawn
call.i gml_Script_snd_volume(argc=3)
popz.v

:[5]
pushi.e 1
pop.v.i self.con

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[7]
pushbltn.v builtin.room
pushi.e 205
cmp.i.v EQ
bf [9]

:[8]
pushi.e 18
conv.i.v
pushi.e 0
conv.i.v
push.v self.vspeed
call.i clamp(argc=3)
pop.v.v self.vspeed
push.v self.vspeed
push.d 1.6
mul.d.v
pop.v.v self.vspeed
b [10]

:[9]
pushi.e 14
conv.i.v
pushi.e 0
conv.i.v
push.v self.vspeed
call.i clamp(argc=3)
pop.v.v self.vspeed
push.v self.vspeed
push.d 1.5
mul.d.v
pop.v.v self.vspeed

:[10]
push.v self.y
push.v self.basey
push.v self.fallAmount
add.v.v
cmp.v.v GTE
bf [12]

:[11]
push.v self.basey
push.v self.fallAmount
add.v.v
pop.v.v self.y
pushi.e 2
pop.v.i self.con

:[12]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [18]

:[13]
pushi.e 1291
conv.i.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.left
push.v self.left
pushi.e -9
pushenv [15]

:[14]
push.s "left"@5994
pop.v.s self.dir

:[15]
popenv [14]
pushi.e 1291
conv.i.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.right
push.v self.right
pushi.e -9
pushenv [17]

:[16]
push.s "right"@4637
pop.v.s self.dir

:[17]
popenv [16]
push.d 1.5
conv.d.v
pushi.e 141
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
pop.v.v self.drop
pushi.e 0
conv.i.v
push.d 0.3
conv.d.v
push.v self.drop
call.i gml_Script_snd_volume(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[18]
call.i gml_Script_scr_depth_alt(argc=0)
popz.v

:[end]