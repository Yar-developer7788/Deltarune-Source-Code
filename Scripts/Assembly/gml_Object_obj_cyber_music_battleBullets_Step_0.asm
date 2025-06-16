.localvar 2 arguments

:[0]
pushi.e 1247
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 1247.x
pushi.e 38
add.i.v
pop.v.v self.xx
pushi.e 152
pop.v.i self.yy
pushi.e 232
pop.v.i self.mody
push.v self.xx
pushi.e 50
sub.i.v
pushi.e 38
sub.i.v
pushi.e 2
add.i.v
pop.v.v self.rx
push.v self.xx
pushi.e 330
add.i.v
pushi.e 38
sub.i.v
pushi.e 2
add.i.v
pushi.e 4
sub.i.v
pop.v.v self.lx

:[2]
push.v self.active
pushi.e 1
cmp.b.v EQ
bf [4]

:[3]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[4]
push.v self.timer
pushi.e 45
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1104
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 0
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.down
pushi.e 1104
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 204
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.down

:[6]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [8]

:[7]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_stop(argc=1)
popz.v
push.i 231459
setowner.e
push.s "cyber_battle_prelude.ogg"@37910
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 1
pop.v.i self.sndinit

:[8]
push.v self.sndinit
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_get_track_position(argc=1)
pop.v.v self.trackpos
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_length(argc=1)
pop.v.v self.sndlength
push.d 0.5333333333333333
pop.v.d self.modifier
push.d 1.848
conv.d.v
call.i gml_Script_scr_bullbattle_muspos(argc=1)
conv.v.b
bf [11]

:[10]
pushi.e 1104
conv.i.v
push.v self.mody
pushi.e 0
add.i.v
push.v self.lx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.left
pushi.e 1104
conv.i.v
push.v self.mody
pushi.e 136
add.i.v
push.v self.rx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.right
push.v self.seq
push.e 1
add.i.v
pop.v.v self.seq

:[11]
push.d 3.694
conv.d.v
call.i gml_Script_scr_bullbattle_muspos(argc=1)
conv.v.b
bf [13]

:[12]
pushi.e 1104
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 0
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.down
pushi.e 1104
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 136
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.down
push.v self.seq
push.e 1
add.i.v
pop.v.v self.seq

:[13]
push.d 5.54
conv.d.v
call.i gml_Script_scr_bullbattle_muspos(argc=1)
conv.v.b
bf [15]

:[14]
pushi.e 1104
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 68
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.down
pushi.e 1104
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 204
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.down
push.v self.seq
push.e 1
add.i.v
pop.v.v self.seq

:[15]
push.d 6.481
conv.d.v
call.i gml_Script_scr_bullbattle_muspos(argc=1)
conv.v.b
bf [17]

:[16]
pushi.e 1104
conv.i.v
push.v self.mody
pushi.e 0
add.i.v
push.v self.lx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.left
pushi.e 1104
conv.i.v
push.v self.mody
pushi.e 0
add.i.v
push.v self.rx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.right
push.v self.seq
push.e 1
add.i.v
pop.v.v self.seq

:[17]
push.d 7.401
conv.d.v
call.i gml_Script_scr_bullbattle_muspos(argc=1)
conv.v.b
bf [19]

:[18]
pushi.e 1104
conv.i.v
push.v self.mody
pushi.e 0
add.i.v
push.v self.lx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.left
pushi.e 1104
conv.i.v
push.v self.mody
pushi.e 68
add.i.v
push.v self.lx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.left
push.v self.seq
push.e 1
add.i.v
pop.v.v self.seq

:[19]
push.d 9.233
conv.d.v
call.i gml_Script_scr_bullbattle_muspos(argc=1)
conv.v.b
bf [21]

:[20]
pushi.e 1104
conv.i.v
push.v self.mody
pushi.e 68
add.i.v
push.v self.rx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.right
pushi.e 1104
conv.i.v
push.v self.mody
pushi.e 136
add.i.v
push.v self.rx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.right
push.v self.seq
push.e 1
add.i.v
pop.v.v self.seq

:[21]
push.d 11.079
conv.d.v
call.i gml_Script_scr_bullbattle_muspos(argc=1)
conv.v.b
bf [23]

:[22]
pushi.e 1104
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 0
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.down
pushi.e 1104
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 68
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.down
push.v self.seq
push.e 1
add.i.v
pop.v.v self.seq

:[23]
push.d 13.438666666666666
conv.d.v
call.i gml_Script_scr_bullbattle_muspos(argc=1)
conv.v.b
bf [25]

:[24]
pushi.e 1104
conv.i.v
push.v self.mody
pushi.e 0
add.i.v
push.v self.lx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.left
pushi.e 1104
conv.i.v
push.v self.mody
pushi.e 136
add.i.v
push.v self.lx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.left
pushi.e 1104
conv.i.v
push.v self.mody
pushi.e 0
add.i.v
push.v self.rx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.right
pushi.e 1104
conv.i.v
push.v self.mody
pushi.e 136
add.i.v
push.v self.rx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.right
pushi.e 1104
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 0
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.down
pushi.e 1104
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 204
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.down
push.v self.seq
push.e 1
add.i.v
pop.v.v self.seq

:[25]
push.v self.trackpos
push.d 16.290000000000003
cmp.d.v GTE
bf [end]

:[26]
pushi.e 2
pop.v.i self.con
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 2
pop.v.i self.sndinit
pushi.e 0
pop.v.i self.active

:[end]