.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.dog
conv.v.b
bf [2]

:[1]
push.v self.image_angle
push.v self.rotation
add.v.v
pop.v.v self.image_angle

:[2]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 45
sub.i.v
cmp.v.v LTE
bf [10]

:[3]
pushi.e 0
pop.v.i self.image_angle
push.v self.y
pushi.e 480
add.i.v
pop.v.v self.y
push.v self.timer
pushi.e 900
cmp.i.v GTE
bf [6]

:[4]
push.v self.dog
conv.v.b
not.b
bf [6]

:[5]
pushi.e 1
conv.i.v
call.i random(argc=1)
push.d 0.99
cmp.d.v GTE
b [7]

:[6]
push.e 0

:[7]
pop.v.b self.dog
push.v self.dog
conv.v.b
bf [9]

:[8]
pushi.e 2362
pop.v.i self.sprite_index
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i random_range(argc=2)
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.rotation
push.d 0.5
pop.v.d self.image_speed
b [10]

:[9]
pushi.e 281
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[10]
push.v self.y
pushi.e 5
sub.i.v
pop.v.v self.y

:[end]