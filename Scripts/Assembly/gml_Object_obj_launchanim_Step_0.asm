.localvar 2 arguments

:[0]
push.v self.g
pushi.e 1
add.i.v
pop.v.v self.g
push.v self.g
pushi.e 20
cmp.i.v EQ
bf [2]

:[1]
pushi.e 104
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 35
pop.v.i self.speed
pushi.e 1
pop.v.i self.gravity

:[2]
push.v self.g
pushi.e 20
cmp.i.v GTE
bf [end]

:[3]
push.v self.image_angle
pushi.e 50
sub.i.v
pop.v.v self.image_angle
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t

:[end]