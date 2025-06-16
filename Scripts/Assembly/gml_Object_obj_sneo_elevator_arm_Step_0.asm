.localvar 2 arguments
.localvar 6482 xx 13061

:[0]
pushi.e 698
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
pushi.e 270
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
add.v.i
pop.v.v self.image_angle
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
pop.v.v local.xx
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
push.v self.movetimer
push.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
pushi.e 10
conv.i.d
div.d.v
pushloc.v local.xx
pushi.e 10
add.i.v
pushloc.v local.xx
pushi.e 100
add.i.v
call.i lerp(argc=3)
pop.v.v self.x
push.v self.movetimer
pushi.e 10
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i self.movetimer
pushi.e 1
pop.v.i self.con

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushloc.v local.xx
pushi.e 10
add.i.v
pop.v.v self.x

:[7]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [10]

:[8]
push.v self.movetimer
push.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
pushi.e 10
conv.i.d
div.d.v
pushloc.v local.xx
pushi.e 100
add.i.v
pushloc.v local.xx
pushi.e 10
add.i.v
call.i lerp(argc=3)
pop.v.v self.x
push.v self.movetimer
pushi.e 10
cmp.i.v EQ
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 20
cmp.i.v EQ
bf [12]

:[11]
push.v 698.difficulty
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bt [18]

:[14]
push.v self.timer
pushi.e 6
cmp.i.v EQ
bf [16]

:[15]
push.v 698.difficulty
pushi.e 0
cmp.i.v NEQ
b [17]

:[16]
push.e 0

:[17]
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
pushi.e 665
conv.i.v
push.v self.y
push.v self.x
pushi.e 90
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e -180
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e -180
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_angle
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.depth
push.v self.id
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.parent

:[21]
push.v self.timer
pushi.e 39
cmp.i.v EQ
bf [23]

:[22]
push.v 698.difficulty
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bt [29]

:[25]
push.v self.timer
pushi.e 25
cmp.i.v EQ
bf [27]

:[26]
push.v 698.difficulty
pushi.e 0
cmp.i.v NEQ
b [28]

:[27]
push.e 0

:[28]
b [30]

:[29]
push.e 1

:[30]
bf [end]

:[31]
pushi.e 2
pop.v.i self.con
push.v self.lastType
pushi.e -1
cmp.i.v EQ
bf [33]

:[32]
pushi.e -1
pop.v.i 698.arm1

:[33]
push.v self.lastType
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
pushi.e -1
pop.v.i 698.arm2

:[35]
push.v self.lastType
pushi.e 1
cmp.i.v EQ
bf [end]

:[36]
pushi.e -1
pop.v.i 698.arm3

:[end]