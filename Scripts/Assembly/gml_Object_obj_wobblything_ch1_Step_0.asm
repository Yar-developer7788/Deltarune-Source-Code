.localvar 2 arguments

:[0]
push.v self.wobbled
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1351
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[2]
push.v 1351.x
push.v self.x
pushi.e 10
sub.i.v
cmp.v.v GT
bf [4]

:[3]
push.v 1351.x
push.v self.x
pushi.e 50
add.i.v
cmp.v.v LT
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e 460
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
pop.v.v self.s
push.d 0.8
push.d 0.3
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.s
call.i gml_Script_snd_pitch_ch1(argc=2)
popz.v
push.d 0.2
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.wobbled

:[end]