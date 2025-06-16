.localvar 2 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 179
cmp.i.v EQ
bf [2]

:[1]
push.v self.type
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
push.v self.y
push.v 872.y
cmp.v.v LT
bf [6]

:[5]
pushi.e 2
pop.v.i self.vspeed
b [7]

:[6]
pushi.e -2
pop.v.i self.vspeed

:[7]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [end]

:[8]
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner
push.v self.xstart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 50
mul.i.v
add.v.v
pop.v.v self.x

:[end]