.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.tasque
pushi.e -9
pushenv [3]

:[2]
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 200
conv.i.v
pushi.e 12
conv.i.v
call.i path_start(argc=4)
popz.v

:[3]
popenv [2]
push.v self.swatch
pushi.e -9
pushenv [5]

:[4]
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 200
conv.i.v
pushi.e 13
conv.i.v
call.i path_start(argc=4)
popz.v

:[5]
popenv [4]
pushi.e 1
pop.v.i self.init

:[6]
push.v self.tasque
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [8]

:[7]
push.v self.swatch
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [9]

:[8]
push.e 0

:[9]
bf [end]

:[10]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.v self.pathProg
push.d 0.6
add.d.v
pop.v.v self.pathProg
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[12]
push.v self.pathProg
pushi.e 100
cmp.i.v GT
bf [14]

:[13]
push.v self.pathProg
pushi.e 100
sub.i.v
pop.v.v self.pathProg

:[14]
push.v self.pathProg
pushi.e 50
add.i.v
pop.v.v self.pathProg2
push.v self.pathProg2
pushi.e 100
cmp.i.v GT
bf [16]

:[15]
push.v self.pathProg2
pushi.e 100
sub.i.v
pop.v.v self.pathProg2

:[16]
push.v self.pathProg
pushi.e 100
conv.i.d
div.d.v
push.v self.tasque
pushi.e -9
pop.v.v [stacktop]self.path_position
push.v self.pathProg2
pushi.e 100
conv.i.d
div.d.v
push.v self.swatch
pushi.e -9
pop.v.v [stacktop]self.path_position
push.v self.swatch
pushi.e -9
pushenv [27]

:[17]
push.v self.direction
pushi.e 90
cmp.i.v EQ
bt [19]

:[18]
push.v self.direction
pushi.e 180
cmp.i.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
pushi.e 0
pop.v.i self.facing

:[22]
push.v self.direction
pushi.e 270
cmp.i.v EQ
bt [24]

:[23]
push.v self.direction
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 1

:[25]
bf [27]

:[26]
pushi.e 1
pop.v.i self.facing

:[27]
popenv [17]
push.v self.tasque
pushi.e -9
pushenv [38]

:[28]
push.v self.direction
pushi.e 90
cmp.i.v EQ
bt [30]

:[29]
push.v self.direction
pushi.e 180
cmp.i.v EQ
b [31]

:[30]
push.e 1

:[31]
bf [33]

:[32]
pushi.e 1669
pop.v.i self.sprite_index

:[33]
push.v self.direction
pushi.e 270
cmp.i.v EQ
bt [35]

:[34]
push.v self.direction
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 1

:[36]
bf [38]

:[37]
pushi.e 1670
pop.v.i self.sprite_index

:[38]
popenv [28]
push.v self.timer
pushi.e 8
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [end]

:[39]
push.v self.tasque
pushi.e -9
pushenv [55]

:[40]
push.v self.direction
pushi.e 270
cmp.i.v EQ
bf [42]

:[41]
pushi.e 360
pushi.e 10
conv.i.v
call.i random(argc=1)
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.i
pop.v.v self.printx
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 8
sub.i.v
pop.v.v self.printy

:[42]
push.v self.direction
pushi.e 90
cmp.i.v EQ
bf [44]

:[43]
pushi.e 720
pushi.e 10
conv.i.v
call.i random(argc=1)
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.i
pop.v.v self.printx
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 8
sub.i.v
pop.v.v self.printy

:[44]
push.v self.direction
pushi.e 180
cmp.i.v EQ
bf [46]

:[45]
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.printx
pushi.e 480
pushi.e 10
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.i
pop.v.v self.printy

:[46]
push.v self.direction
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.printx
pushi.e 840
pushi.e 10
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.i
pop.v.v self.printy

:[48]
push.v self.direction
pushi.e 180
cmp.i.v EQ
bt [52]

:[49]
push.v self.direction
pushi.e 90
cmp.i.v EQ
bt [52]

:[50]
push.v self.direction
pushi.e 270
cmp.i.v EQ
bt [52]

:[51]
push.v self.direction
pushi.e 0
cmp.i.v EQ
b [53]

:[52]
push.e 1

:[53]
bf [55]

:[54]
pushi.e 1227
conv.i.v
push.v self.printy
push.v self.printx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pawprint
push.v self.direction
pushi.e 90
sub.i.v
push.v self.pawprint
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.i 800000
push.v self.pawprint
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.pawprint
call.i gml_Script_scr_darksize(argc=1)
popz.v

:[55]
popenv [40]

:[end]