.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1216
pop.v.i self.sprite_index

:[2]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1217
pop.v.i self.sprite_index

:[4]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1218
pop.v.i self.sprite_index

:[6]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1219
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[8]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [17]

:[9]
push.v self.x
pushi.e 1380
cmp.i.v LT
bf [15]

:[10]
push.v self.hspeed
pushi.e 3
cmp.i.v LT
bf [12]

:[11]
pushi.e 3
pop.v.i self.hspeed

:[12]
push.v self.hspeed
pushi.e 1
add.i.v
pop.v.v self.hspeed
push.v self.y
push.v self.ystart
pushi.e 60
sub.i.v
cmp.v.v GTE
bf [14]

:[13]
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y

:[14]
b [16]

:[15]
pushi.e 0
pop.v.i self.hspeed

:[16]
b [22]

:[17]
push.v self.x
push.v self.xstart
cmp.v.v GT
bf [21]

:[18]
push.v self.y
push.v self.ystart
cmp.v.v LTE
bf [20]

:[19]
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y

:[20]
push.v self.hspeed
pushi.e 1
sub.i.v
pop.v.v self.hspeed
b [22]

:[21]
pushi.e 0
pop.v.i self.hspeed

:[22]
push.v self.x
pushi.e 1455
cmp.i.v GT
bf [end]

:[23]
pushi.e 1455
pop.v.i self.x

:[end]