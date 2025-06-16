.localvar 2 arguments

:[0]
push.v self.bottomhit
conv.v.b
not.b
bf [2]

:[1]
push.v self.y
push.v self.vspeed
add.v.v
push.v 872.y
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 20
sub.i.v
cmp.v.v GT
b [3]

:[2]
push.e 0

:[3]
bf [8]

:[4]
push.v 872.y
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 20
sub.i.v
pop.v.v self.y
push.v 872.y
pushi.e 4
add.i.v
pop.v.v 872.y
pushi.e 150
conv.i.v
pushi.e 30
conv.i.v
call.i random_range(argc=2)
pop.v.v self.direction
pushi.e 3
conv.i.v
call.i random(argc=1)
pop.v.v self.speed
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e 193
conv.i.v
b [7]

:[6]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)

:[7]
pop.v.v self.d
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakex
pushi.e 2
conv.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakey
pushi.e 179
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.bottomhit

:[8]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 580
add.i.v
cmp.v.v GT
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]