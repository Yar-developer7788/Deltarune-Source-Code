.localvar 2 arguments

:[0]
pushi.e 535
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[1]
push.v 535.scrollSpeed
pushi.e 14
cmp.i.v GT
bt [3]

:[2]
push.v 535.scrollPrep
conv.v.b
b [4]

:[3]
push.e 1

:[4]
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
exit.i

:[8]
push.v self.xstart
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 60
mul.i.v
add.v.v
pop.v.v self.x
push.v self.siner
pushi.e 4
conv.i.d
pushi.e 8
conv.i.v
pushi.e 4
conv.i.v
push.v 535.scrollSpeed
call.i clamp(argc=3)
div.v.d
add.v.v
pop.v.v self.siner

:[end]