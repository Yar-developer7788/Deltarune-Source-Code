.localvar 2 arguments

:[0]
push.v self.middespawn
conv.v.b
bf [2]

:[1]
push.v self.timer
pushi.e 0
cmp.i.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.traveldistance
push.v self.psuedo_speed
add.v.v
pop.v.v self.traveldistance
b [10]

:[5]
push.v self.middespawn
conv.v.b
not.b
bf [7]

:[6]
push.v self.timer
pushi.e 0
cmp.i.v GTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
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
push.v self.traveldistance
push.v self.speed
add.v.v
pop.v.v self.traveldistance

:[10]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[end]