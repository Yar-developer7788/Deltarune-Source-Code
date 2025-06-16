.localvar 2 arguments

:[0]
push.v self.movecon
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.movecon

:[2]
push.v self.movecon
pushi.e 2
cmp.i.v EQ
bf [10]

:[3]
pushi.e 15
pop.v.i self.yspeed
pushi.e -1
push.v self.idealpos
conv.v.i
push.v [array]self.ypos
push.v self.y
sub.v.v
call.i abs(argc=1)
push.v self.yspeed
cmp.v.v GT
bf [9]

:[4]
pushi.e -1
push.v self.idealpos
conv.v.i
push.v [array]self.ypos
push.v self.y
cmp.v.v LT
bf [6]

:[5]
push.v self.y
push.v self.yspeed
sub.v.v
pop.v.v self.y
push.v self.heartobj
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.yspeed
push.d 1.2
div.d.v
sub.v.v
pop.i.v [stacktop]self.y

:[6]
pushi.e -1
push.v self.idealpos
conv.v.i
push.v [array]self.ypos
push.v self.y
cmp.v.v GT
bf [8]

:[7]
push.v self.y
push.v self.yspeed
add.v.v
pop.v.v self.y
push.v self.heartobj
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.yspeed
push.d 1.2
div.d.v
add.v.v
pop.i.v [stacktop]self.y

:[8]
b [10]

:[9]
pushi.e -1
push.v self.idealpos
conv.v.i
push.v [array]self.ypos
pop.v.v self.y
push.v self.idealpos
pop.v.v self.pos
pushi.e 0
pop.v.i self.movecon

:[10]
push.v self.bullettimer
push.e 1
add.i.v
pop.v.v self.bullettimer
push.v self.bullettimer
pushi.e 20
cmp.i.v GTE
bf [21]

:[11]
pushi.e 0
pop.v.i self.bullettimer
push.v self.lightningcon
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
push.v self.lightninghandicap
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e -10
pop.v.i self.bullettimer

:[16]
push.v self.bulletcount
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
pushi.e -7
pop.v.i self.bullettimer

:[18]
push.v self.bulletcount
pushi.e 4
cmp.i.v EQ
bf [20]

:[19]
pushi.e 90
pop.v.i self.bullettimer
pushi.e 0
pop.v.i self.bulletcount

:[20]
push.v self.bulletcount
push.e 1
add.i.v
pop.v.v self.bulletcount

:[21]
push.v self.lightningcon
pushi.e 1
cmp.i.v EQ
bf [29]

:[22]
pushi.e 0
pop.v.i self.n
pushi.e 0
pop.v.i self.lightningtimer
pushi.e 0
pop.v.i self.j

:[23]
push.v self.j
pushi.e 2
cmp.i.v LT
bf [28]

:[24]
pushi.e 0
pop.v.i self.i

:[25]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [27]

:[26]
push.v self.n
push.e 1
add.i.v
pop.v.v self.n
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [25]

:[27]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [23]

:[28]
pushi.e 2
pop.v.i self.lightningcon

:[29]
push.v self.lightningcon
pushi.e 2
cmp.i.v EQ
bf [end]

:[30]
push.v self.lightningtimer
push.e 1
add.i.v
pop.v.v self.lightningtimer
pushi.e 0
pop.v.i self.i

:[31]
push.v self.i
push.v self.n
cmp.v.v LT
bf [end]

:[32]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [31]

:[end]