.localvar 2 arguments

:[0]
push.v 777.dead
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 0
pop.v.b self.visible
pushi.e 0
pop.v.i self.confirm
exit.i

:[2]
b [4]

:[3]
pushi.e 1
pop.v.b self.visible

:[4]
pushi.e 777
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.v 777.x
pop.v.v self.x
push.v 777.y
pop.v.v self.y

:[6]
push.v self.confirm
pushi.e 2
cmp.i.v EQ
bf [13]

:[7]
push.v 777.hurttimer
pushi.e 0
cmp.i.v EQ
bf [12]

:[8]
push.v self.arcade
conv.v.b
bf [10]

:[9]
pushi.e 320
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [11]

:[10]
pushi.e 169
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[11]
pushi.e 1
pop.v.i self.image_alpha

:[12]
pushi.e 0
pop.v.i self.confirm

:[13]
push.v self.confirm
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 2
pop.v.i self.confirm

:[15]
push.v self.image_alpha
pushi.e 0
cmp.i.v GTE
bf [end]

:[16]
push.v self.image_alpha
push.d 0.25
sub.d.v
pop.v.v self.image_alpha

:[end]