.localvar 2 arguments

:[0]
push.v self.ystart
push.v self.gravity
add.v.v
pop.v.v self.ystart
push.v self.introtimer
pushi.e 0
cmp.i.v GTE
bf [4]

:[1]
push.v self.introtimer
push.e 1
add.i.v
pop.v.v self.introtimer
push.v self.introtimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 1112
conv.i.v
push.v self.xstart
call.i lerp(argc=3)
pop.v.v self.x
push.v self.introtimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 44
conv.i.v
push.v self.ystart
call.i lerp(argc=3)
pop.v.v self.y
push.v self.introtimer
pushi.e 10
cmp.i.v EQ
bf [3]

:[2]
pushi.e -1
pop.v.i self.introtimer
push.v self.x
pop.v.v self.xstart
push.v self.y
pop.v.v self.ystart

:[3]
exit.i

:[4]
push.v self.outrotimer
pushi.e 0
cmp.i.v GTE
bf [10]

:[5]
push.v self.outrotimer
push.e 1
add.i.v
pop.v.v self.outrotimer
push.v self.outrotimer
pushi.e 10
conv.i.d
div.d.v
push.v self.outrox
push.v self.xstart
call.i lerp(argc=3)
pop.v.v self.x
push.v self.outrotimer
pushi.e 10
conv.i.d
div.d.v
push.v self.outroy
push.v self.ystart
call.i lerp(argc=3)
pop.v.v self.y
push.v self.outrotimer
pushi.e 10
cmp.i.v EQ
bf [9]

:[6]
call.i instance_destroy(argc=0)
popz.v
pushi.e 975
pushenv [8]

:[7]
pushi.e 1
push.v self.berdly_wire
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 1
push.v self.be_actor
pushi.e -9
pop.v.b [stacktop]self.visible

:[8]
popenv [7]

:[9]
exit.i

:[10]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.v self.siner
push.d 0.4
add.d.v
pop.v.v self.siner
push.v self.ystart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.y

:[12]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [15]

:[13]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
push.v self.ystart
pushi.e 200
sub.i.v
push.v self.ystart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
call.i lerp(argc=3)
pop.v.v self.y
push.v self.timer
pushi.e 10
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.timer
pushi.e 99
pop.v.i self.con

:[15]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [18]

:[16]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
push.v self.ystart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.ystart
pushi.e 200
sub.i.v
call.i lerp(argc=3)
pop.v.v self.y
push.v self.timer
pushi.e 10
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con

:[18]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [21]

:[19]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
push.v self.xstart
push.v self.xx
call.i lerp(argc=3)
pop.v.v self.x
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
push.v self.ystart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.yy
call.i lerp(argc=3)
pop.v.v self.y
push.v self.timer
pushi.e 10
cmp.i.v EQ
bf [21]

:[20]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con

:[21]
push.v self.alphacon
pushi.e 1
cmp.i.v EQ
bf [26]

:[22]
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
bf [24]

:[23]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha

:[24]
pushglb.v global.turntimer
pushi.e 3
cmp.i.v LT
bf [26]

:[25]
pushi.e 2
pop.v.i self.alphacon

:[26]
push.v self.alphacon
pushi.e 2
cmp.i.v EQ
bf [end]

:[27]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [end]

:[28]
pushi.e 0
pop.v.i self.alphacon

:[end]