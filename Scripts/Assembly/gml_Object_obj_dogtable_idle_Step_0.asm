.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 1196
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e 1
pop.v.i 1196.dogcon

:[6]
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[7]
push.v self.icon
pushi.e 0
cmp.i.v EQ
bf [12]

:[8]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 100
sub.i.v
cmp.v.v GT
bf [12]

:[9]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
cmp.v.v LT
bf [12]

:[10]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 94
sub.i.v
cmp.v.v GT
bf [12]

:[11]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
cmp.v.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.icon

:[15]
push.v self.icon
pushi.e 1
cmp.i.v EQ
bf [18]

:[16]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 2
pop.v.i self.hspeed
push.v self.timer
pushi.e 12
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i self.hspeed
push.v self.icon
push.e 1
add.i.v
pop.v.v self.icon

:[18]
push.v self.icon
pushi.e 2
cmp.i.v EQ
bf [21]

:[19]
pushi.e 0
pop.v.i self.dogIndex
push.v self.raise
pushi.e 2
sub.i.v
pop.v.v self.raise
pushi.e 18
conv.i.v
pushi.e 0
conv.i.v
push.v self.raise
call.i clamp(argc=3)
pop.v.v self.raise
push.v self.raise
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.v self.icon
push.e 1
add.i.v
pop.v.v self.icon

:[21]
push.v self.toss
pushi.e 1
cmp.i.v EQ
bf [26]

:[22]
pushi.e 129
conv.i.v
push.v self.y
pushi.e 18
add.i.v
push.v self.x
pushi.e 24
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.lid
pushi.e 2318
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.tossdir
push.s "left"@5994
cmp.s.v EQ
bf [24]

:[23]
pushi.e 120
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.direction
b [25]

:[24]
pushi.e 60
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.direction

:[25]
pushi.e 16
push.v self.lid
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 2
pop.v.i self.toss
pushi.e 0
pop.v.i self.lidtimer

:[26]
push.v self.toss
pushi.e 2
cmp.i.v EQ
bf [end]

:[27]
push.v self.lidtimer
push.e 1
add.i.v
pop.v.v self.lidtimer
push.v self.tossdir
push.s "left"@5994
cmp.s.v EQ
bf [29]

:[28]
push.v self.lid
pushi.e -9
dup.i 4
push.v [stacktop]self.image_angle
pushi.e 16
add.i.v
pop.i.v [stacktop]self.image_angle
b [30]

:[29]
push.v self.lid
pushi.e -9
dup.i 4
push.v [stacktop]self.image_angle
pushi.e 16
sub.i.v
pop.i.v [stacktop]self.image_angle

:[30]
push.v self.lid
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.9
mul.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.lidtimer
pushi.e 60
cmp.i.v EQ
bf [end]

:[31]
push.v self.lid
pushi.e -9
pushenv [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
popenv [32]
pushi.e 3
pop.v.i self.toss

:[end]