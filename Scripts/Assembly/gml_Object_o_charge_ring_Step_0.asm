.localvar 2 arguments

:[0]
push.v self.f
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [10]

:[1]
push.v self.radCurrent
pop.v.v self.radLast
push.v self.radA
push.d 0.079
add.d.v
pop.v.v self.radA
push.v self.radA
push.d 3.141592653589793
cmp.d.v GTE
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
push.v self.radA
call.i cos(argc=1)
pushi.e 1
add.i.v
pushi.e 2
conv.i.d
div.d.v
push.v self.radStart
mul.v.v
pop.v.v self.radCurrent
push.v self.radA
call.i sin(argc=1)
push.v self.width
mul.v.v
pop.v.v self.widthC
push.v self.radA
pushi.e 3
cmp.i.v LT
bf [5]

:[4]
push.v self.radA
push.d 0.1
cmp.d.v GT
b [6]

:[5]
push.e 0

:[6]
bf [9]

:[7]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.angle
push.v self.radCurrent
push.v self.radLast
call.i random_range(argc=2)
pop.v.v self.temp1
pushi.e 822
conv.i.v
push.v self.y
push.v self.angle
call.i sin(argc=1)
push.v self.temp1
mul.v.v
add.v.v
push.v self.x
push.v self.angle
call.i cos(argc=1)
push.v self.temp1
mul.v.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.o
push.v self.angle
call.i cos(argc=1)
push.v self.radCurrent
push.v self.radLast
sub.v.v
mul.v.v
push.d 0.5
mul.d.v
push.v self.o
pushi.e -9
pop.v.v [stacktop]self.xs
push.v self.angle
call.i sin(argc=1)
push.v self.radCurrent
push.v self.radLast
sub.v.v
mul.v.v
push.d 0.5
mul.d.v
push.v self.o
pushi.e -9
pop.v.v [stacktop]self.ys
pushi.e 2172
push.v self.o
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[9]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[10]
popz.i

:[end]