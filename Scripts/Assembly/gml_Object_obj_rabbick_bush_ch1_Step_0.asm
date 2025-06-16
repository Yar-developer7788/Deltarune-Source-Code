.localvar 2 arguments

:[0]
pushi.e 1351
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1351.x
push.v 1351.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.mx
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.ox
push.v self.mx
push.v self.ox
sub.v.v
call.i abs(argc=1)
push.v self.radius
cmp.v.v LTE
bf [4]

:[2]
push.v 1351.y
push.v self.y
cmp.v.v GTE
bf [4]

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e 369
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 369
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
pop.v.v self.lo
push.d 0.8
conv.d.v
push.v self.lo
call.i gml_Script_snd_pitch_ch1(argc=2)
popz.v
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i self.visible
pushi.e 1489
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.rabbick
pushi.e 16
push.v self.rabbick
pushi.e -9
pop.v.i [stacktop]self.vspeed

:[end]