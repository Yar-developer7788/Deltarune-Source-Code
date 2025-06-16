.localvar 2 arguments

:[0]
pushi.e 619
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 619.depth
pop.v.v self.depth

:[2]
push.v self.image_yscale
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
push.v self.init
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [9]

:[6]
push.v self.image_yscale
pushi.e 2
sub.i.v
pop.v.v self.image_yscale
push.v self.image_yscale
push.d -16.125
cmp.d.v LT
bf [8]

:[7]
push.d -16.125
pop.v.d self.image_yscale
pushi.e 1
pop.v.i self.init
push.v 697.crusher_start_hspeed
pop.v.v self.hspeed

:[8]
exit.i

:[9]
push.v self.image_yscale
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
push.v self.init
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [16]

:[13]
push.v self.image_yscale
pushi.e 2
add.i.v
pop.v.v self.image_yscale
push.v self.image_yscale
push.d 16.125
cmp.d.v GT
bf [15]

:[14]
push.d 16.125
pop.v.d self.image_yscale
pushi.e 1
pop.v.i self.init
push.v 697.crusher_start_hspeed
pop.v.v self.hspeed

:[15]
exit.i

:[16]
push.v self.hspeed
push.v self.haccel
sub.v.v
pop.v.v self.hspeed
push.v self.vbounce
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.v self.column
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [24]

:[20]
push.v self.y
push.v self.bottomy
cmp.v.v GT
bf [22]

:[21]
push.v self.bottomy
pushi.e 1
sub.i.v
pop.v.v self.y
push.v self.vspeed
call.i abs(argc=1)
neg.v
pop.v.v self.vspeed

:[22]
push.v self.y
push.v self.topy
cmp.v.v LT
bf [24]

:[23]
push.v self.topy
pushi.e 1
add.i.v
pop.v.v self.y
push.v self.vspeed
call.i abs(argc=1)
pop.v.v self.vspeed

:[24]
push.v self.column
pushi.e 1
cmp.i.v EQ
bf [end]

:[25]
push.d 0.3
pop.v.d self.haccel
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.amplitude
mul.v.v
sub.v.v
pop.v.v self.y

:[end]