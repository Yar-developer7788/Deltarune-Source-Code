.localvar 2 arguments

:[0]
push.v self.firstwave
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 50
cmp.i.v LT
bf [4]

:[3]
push.v self.speed
push.d -1.75
push.v self.i
push.d 15.707963267948966
add.d.v
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.75
mul.d.v
add.v.d
neg.v
add.v.v
pop.v.v self.speed
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 2
pop.v.i self.firstwave
b [13]

:[5]
push.v self.firstwave
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.speed
pushi.e 50
pop.v.i self.fadetimer
pushi.e -1
pop.v.i self.firstwave
b [13]

:[7]
push.v self.timer
pushi.e 0
cmp.i.v GTE
bf [13]

:[8]
push.d -3.5
push.v self.timer
push.d 15.707963267948966
add.d.v
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 3.5
mul.d.v
add.v.d
neg.v
pop.v.v self.speed
push.v self.middespawn
conv.v.b
bf [10]

:[9]
push.v self.traveldistance
pushi.e 110
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.v self.speed
pushi.e 2
div.i.v
pop.v.v self.speed

:[13]
push.v self.traveldistance
push.v self.speed
add.v.v
pop.v.v self.traveldistance
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[end]