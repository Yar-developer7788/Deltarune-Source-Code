.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_alpha
push.d 0.25
add.d.v
pop.v.v self.image_alpha
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y
push.v self.image_alpha
push.d 1.5
cmp.d.v GTE
bf [3]

:[2]
pushi.e 1
pop.v.i self.image_alpha
pushi.e 1
pop.v.i self.con
push.v self.ystart
pushi.e 40
add.i.v
pop.v.v self.y

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [6]

:[5]
push.e 0

:[6]
bf [31]

:[7]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 2
cmp.i.v GTE
bf [31]

:[8]
push.v self.direction
pushi.e 90
cmp.i.v EQ
bt [10]

:[9]
push.v self.direction
pushi.e 270
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [21]

:[12]
push.v self.direction
pushi.e 90
cmp.i.v EQ
bf [16]

:[13]
pushi.e 68
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [15]

:[14]
pushi.e 0
pop.v.i self.direction
push.v self.x
pushi.e 40
add.i.v
pop.v.v self.x
b [16]

:[15]
pushi.e 90
pop.v.i self.direction
push.v self.y
pushi.e 40
sub.i.v
pop.v.v self.y

:[16]
push.v self.direction
pushi.e 270
cmp.i.v EQ
bf [20]

:[17]
pushi.e 68
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [19]

:[18]
pushi.e 0
pop.v.i self.direction
push.v self.x
pushi.e 40
add.i.v
pop.v.v self.x
b [20]

:[19]
pushi.e 270
pop.v.i self.direction
push.v self.y
pushi.e 40
add.i.v
pop.v.v self.y

:[20]
b [30]

:[21]
pushi.e 68
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [23]

:[22]
pushi.e 68
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 0
pop.v.i self.direction
push.v self.x
pushi.e 40
add.i.v
pop.v.v self.x
b [30]

:[26]
pushi.e 68
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [28]

:[27]
pushi.e 90
pop.v.i self.direction
push.v self.y
pushi.e 40
sub.i.v
pop.v.v self.y
b [30]

:[28]
pushi.e 68
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [30]

:[29]
pushi.e 270
pop.v.i self.direction
push.v self.y
pushi.e 40
add.i.v
pop.v.v self.y

:[30]
pushi.e 0
pop.v.i self.movex
pushi.e 0
pop.v.i self.movey
pushi.e 0
pop.v.i self.timer

:[31]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[32]
push.v self.depth
pushi.e 1
add.i.v
pop.v.v self.depth
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y
push.v self.image_alpha
push.d 0.25
sub.d.v
pop.v.v self.image_alpha
push.v self.deathtimer
push.e 1
add.i.v
pop.v.v self.deathtimer
push.v self.deathtimer
pushi.e 3
cmp.i.v GTE
bf [end]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[end]