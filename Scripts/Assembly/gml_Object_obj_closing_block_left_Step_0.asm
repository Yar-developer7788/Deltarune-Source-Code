.localvar 2 arguments

:[0]
push.v self.x
push.v self.grav
add.v.v
pop.v.v self.x
push.v self.grav
push.d 0.6
add.d.v
pop.v.v self.grav
push.v self.x
pushi.e 320
cmp.i.v GTE
bf [end]

:[1]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity
pushi.e 320
pop.v.i self.x
pushi.e 0
pop.v.i self.grav
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
pushi.e 236
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.state
pushi.e 24
dup.i 0
push.i 0
cmp.i.i LTE
bt [4]

:[3]
pushi.e 806
conv.i.v
pushi.e 0
pushi.e 240
conv.i.v
call.i irandom(argc=1)
add.v.i
pushi.e 320
pushi.e 14
conv.i.v
pushi.e -4
conv.i.v
call.i random_range(argc=2)
add.v.i
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 806
conv.i.v
pushi.e 240
pushi.e 240
conv.i.v
call.i irandom(argc=1)
add.v.i
pushi.e 320
pushi.e 14
conv.i.v
pushi.e -4
conv.i.v
call.i random_range(argc=2)
add.v.i
call.i gml_Script_instance_create(argc=3)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [3]

:[4]
popz.i

:[end]