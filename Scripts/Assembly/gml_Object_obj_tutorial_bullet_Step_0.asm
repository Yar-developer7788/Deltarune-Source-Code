.localvar 2 arguments

:[0]
push.v self.direction
pop.v.v self.image_angle
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 220
add.i.v
cmp.v.v GT
bt [3]

:[1]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
pushi.e 120
sub.i.v
cmp.v.v LT
bt [3]

:[2]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
pushi.e 120
add.i.v
cmp.v.v GT
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.b self.fade

:[6]
push.v self.fade
pushi.e 1
cmp.b.v EQ
bf [9]

:[7]
push.v self.image_alpha
push.d 0.6
mul.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.01
cmp.d.v LT
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
push.v self.ticked
pushi.e 0
cmp.i.v EQ
bf [end]

:[10]
pushi.e 20
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 20
cmp.i.v LT
bf [12]

:[11]
push.v self.y
pushi.e 205
cmp.i.v GT
b [13]

:[12]
push.e 0

:[13]
bf [end]

:[14]
pushi.e 1
pop.v.i self.ticked
pushi.e 20
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.tickAlpha

:[16]
popenv [15]
pushi.e 169
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]