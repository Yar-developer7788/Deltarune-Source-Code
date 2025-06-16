.localvar 2 arguments

:[0]
push.v self.normalanim
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
push.v self.myinteract
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [9]

:[5]
push.v 64.halt
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[7]
push.v 64.halt
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.remanimspeed
pop.v.v self.image_speed

:[9]
push.v self.normalanim
pushi.e 1
cmp.i.v EQ
bt [11]

:[10]
push.v self.normalanim
pushi.e 2
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [15]

:[13]
push.v self.myinteract
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[15]
push.v self.normalanim
pushi.e 3
cmp.i.v EQ
bf [26]

:[16]
push.v self.myinteract
pushi.e 0
cmp.i.v GT
bf [18]

:[17]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [19]

:[18]
push.e 0

:[19]
bf [25]

:[20]
push.v 64.halt
pushi.e 0
cmp.i.v GT
bf [22]

:[21]
push.v self.remanimspeed
pop.v.v self.image_speed

:[22]
push.v 64.halt
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.v self.remanimspeed
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.image_speed

:[24]
b [26]

:[25]
push.v self.remanimspeed
pop.v.v self.image_speed

:[26]
push.v self.normalanim
pushi.e 4
cmp.i.v EQ
bf [end]

:[27]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[end]