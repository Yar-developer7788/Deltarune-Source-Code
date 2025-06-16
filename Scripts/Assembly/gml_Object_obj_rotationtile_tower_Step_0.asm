.localvar 2 arguments

:[0]
push.v self.x
pop.v.v self.drawx
push.v self.y
pop.v.v self.drawy
push.v self.y
pushi.e 240
sub.i.v
pushi.e 240
conv.i.d
div.d.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [53]

:[1]
push.v self.starter
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 4
pop.v.i self.pattern
b [4]

:[3]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.pattern

:[4]
push.v self.pattern
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.i 174780
setowner.e
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.tiletype
pushi.e 1174
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.tiletype
pushi.e 1172
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.tiletype
pushi.e 1174
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.tiletype
pushi.e 0
pop.v.i self.rottype
pushi.e 220
pushi.e 40
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.i
add.v.i
pop.v.v self.patidealy
pushi.e 1192
conv.i.v
push.v self.y
push.v self.patidealy
add.v.v
pushi.e 220
sub.i.v
pushi.e 40
add.i.v
push.v self.x
pushi.e 120
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.puzSwitch
pushi.e 1167
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hole
push.i 174776
setowner.e
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 0
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 160
add.i.v
push.v self.x
pushi.e 0
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 160
add.i.v
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 160
add.i.v
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.staticTile

:[6]
push.v self.pattern
pushi.e 1
cmp.i.v EQ
bf [12]

:[7]
push.i 174780
setowner.e
pushi.e 1174
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.tiletype
pushi.e 1174
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.tiletype
pushi.e 1
pop.v.i self.rottype
push.i 174776
setowner.e
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 0
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 160
add.i.v
push.v self.x
pushi.e 0
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 160
add.i.v
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 160
add.i.v
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.staticTile
pushi.e 1167
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hole
pushi.e 220
pushi.e 40
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
mul.v.i
add.v.i
pop.v.v self.patidealy
pushi.e 1183
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[8]
push.v 1183.noelle
pushi.e -9
pushenv [10]

:[9]
push.v other.patidealy
pop.v.v self.idealy

:[10]
popenv [9]

:[11]
pushi.e 1192
conv.i.v
push.v self.y
push.v self.patidealy
add.v.v
pushi.e 220
sub.i.v
pushi.e 40
add.i.v
push.v self.x
pushi.e 120
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.puzSwitch

:[12]
push.v self.pattern
pushi.e 2
cmp.i.v EQ
bf [18]

:[13]
push.i 174780
setowner.e
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.tiletype
pushi.e 1172
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.tiletype
pushi.e 1172
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.tiletype
pushi.e 1174
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.tiletype
pushi.e 0
pop.v.i self.rottype
pushi.e 220
pushi.e 40
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.i
add.v.i
pop.v.v self.patidealy
pushi.e 1183
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [17]

:[14]
push.v 1183.noelle
pushi.e -9
pushenv [16]

:[15]
push.v other.patidealy
pop.v.v self.idealy

:[16]
popenv [15]

:[17]
pushi.e 1192
conv.i.v
push.v self.y
push.v self.patidealy
add.v.v
pushi.e 220
sub.i.v
pushi.e 40
add.i.v
push.v self.x
pushi.e 120
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.puzSwitch
pushi.e 1167
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 0
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hole
push.i 174776
setowner.e
pushi.e 1176
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.staticTile
pushi.e 1176
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 160
add.i.v
push.v self.x
pushi.e 0
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 160
add.i.v
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 160
add.i.v
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.staticTile

:[18]
push.v self.pattern
pushi.e 3
cmp.i.v EQ
bf [24]

:[19]
push.i 174780
setowner.e
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.tiletype
pushi.e 1172
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.tiletype
pushi.e 1174
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.tiletype
pushi.e 0
pop.v.i self.rottype
pushi.e 220
pushi.e 40
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
mul.v.i
add.v.i
pop.v.v self.patidealy
pushi.e 1183
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [23]

:[20]
push.v 1183.noelle
pushi.e -9
pushenv [22]

:[21]
push.v other.patidealy
pop.v.v self.idealy

:[22]
popenv [21]

:[23]
pushi.e 1192
conv.i.v
push.v self.y
push.v self.patidealy
add.v.v
pushi.e 220
sub.i.v
pushi.e 40
add.i.v
push.v self.x
pushi.e 120
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.puzSwitch
pushi.e 1167
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 0
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hole
push.i 174776
setowner.e
pushi.e 1176
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.staticTile
pushi.e 1176
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 160
add.i.v
push.v self.x
pushi.e 0
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 160
add.i.v
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 160
add.i.v
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.staticTile
pushi.e 1174
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 5
pop.v.v [array]self.staticTile

:[24]
push.v self.pattern
pushi.e 4
cmp.i.v EQ
bf [30]

:[25]
push.i 174780
setowner.e
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.tiletype
pushi.e 1174
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.tiletype
pushi.e 1174
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.tiletype
pushi.e 129
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.tiletype
pushi.e 0
pop.v.i self.rottype
pushi.e 260
pop.v.i self.patidealy
pushi.e 1183
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [29]

:[26]
push.v 1183.noelle
pushi.e -9
pushenv [28]

:[27]
push.v other.patidealy
pop.v.v self.idealy

:[28]
popenv [27]

:[29]
pushi.e 1192
conv.i.v
push.v self.y
push.v self.patidealy
add.v.v
pushi.e 220
sub.i.v
pushi.e 40
add.i.v
push.v self.x
pushi.e 120
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.puzSwitch
pushi.e 1167
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hole
push.i 174776
setowner.e
pushi.e 1176
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 0
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.staticTile
pushi.e 1176
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 160
add.i.v
push.v self.x
pushi.e 0
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 160
add.i.v
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.staticTile
pushi.e 1175
conv.i.v
push.v self.y
pushi.e 160
add.i.v
push.v self.x
pushi.e 80
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.staticTile

:[30]
push.v self.rottype
pushi.e 0
cmp.i.v EQ
bf [39]

:[31]
pushi.e 7
pop.v.i self.tilemax
push.v self.tilemax
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.randomseed
pushi.e 0
pop.v.i self.i

:[32]
push.v self.i
push.v self.tilemax
cmp.v.v LTE
bf [38]

:[33]
push.i 174782
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ishole
push.i 170052
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tiletype
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.tile
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
pushenv [35]

:[34]
call.i gml_Script_scr_mouse_tile_rotation_init(argc=0)
popz.v

:[35]
popenv [34]
push.v self.i
push.v self.randomseed
add.v.v
pop.v.v self.randompos
push.v self.randompos
push.v self.tilemax
cmp.v.v GT
bf [37]

:[36]
push.v self.randompos
push.v self.tilemax
pushi.e 1
add.i.v
sub.v.v
pop.v.v self.randompos

:[37]
push.i 232555
setowner.e
push.v self.randompos
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
pop.v.v [stacktop]self.__currentposition
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [32]

:[38]
push.v self.tilemax
push.e 1
add.i.v
pop.v.v self.tilemax
push.i 170052
setowner.e
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.tilemax
conv.v.i
pop.v.v [array]self.tile
push.i 174782
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.tilemax
conv.v.i
pop.v.v [array]self.ishole

:[39]
push.v self.rottype
pushi.e 1
cmp.i.v EQ
bf [50]

:[40]
pushi.e 5
pop.v.i self.tilemax
push.v self.tilemax
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.randomseed
pushi.e 0
pop.v.i self.i

:[41]
push.v self.i
push.v self.tilemax
cmp.v.v LTE
bf [49]

:[42]
push.i 170052
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tiletype
push.v self.y
pushi.e 80
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.tile
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
pushenv [44]

:[43]
call.i gml_Script_scr_mouse_tile_rotation_init(argc=0)
popz.v

:[44]
popenv [43]
push.v self.i
push.v self.randomseed
add.v.v
pop.v.v self.randompos
push.v self.randompos
push.v self.tilemax
cmp.v.v GT
bf [46]

:[45]
push.v self.randompos
push.v self.tilemax
pushi.e 1
add.i.v
sub.v.v
pop.v.v self.randompos

:[46]
push.i 232555
setowner.e
push.v self.randompos
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
pop.v.v [stacktop]self.__currentposition
push.i 232552
setowner.e
pushi.e 5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
pop.v.i [stacktop]self.__positionmax
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
pushenv [48]

:[47]
push.i 167030
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.__positionx
push.i 167031
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.__positiony
push.i 167030
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.__positionx
push.i 167031
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.__positiony
push.i 167030
setowner.e
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.__positionx
push.i 167031
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.__positiony
push.i 167030
setowner.e
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.__positionx
push.i 167031
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.__positiony
push.i 167030
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.__positionx
push.i 167031
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.__positiony
push.i 167030
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.__positionx
push.i 167031
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.__positiony

:[48]
popenv [47]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [41]

:[49]
push.v self.tilemax
push.e 1
add.i.v
pop.v.v self.tilemax
push.i 170052
setowner.e
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.tilemax
conv.v.i
pop.v.v [array]self.tile
push.i 174782
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.tilemax
conv.v.i
pop.v.v [array]self.ishole

:[50]
pushi.e 129
pushenv [52]

:[51]
pushi.e 0
pop.v.i self.visible

:[52]
popenv [51]
pushi.e 1
pop.v.i self.visible
pushi.e 1
pop.v.i self.init

:[53]
pushi.e 0
pop.v.i self.i

:[54]
push.v self.i
push.v self.tilemax
cmp.v.v LTE
bf [60]

:[55]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ishole
pushi.e 0
cmp.i.v EQ
bf [59]

:[56]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
pushenv [58]

:[57]
call.i gml_Script_scr_mouse_tile_rotation_step(argc=0)
popz.v

:[58]
popenv [57]

:[59]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [54]

:[60]
push.v self.phase
pushi.e 0
cmp.i.v EQ
bf [74]

:[61]
push.v self.freeze
pushi.e 0
cmp.i.v EQ
bf [74]

:[62]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.x
push.v self.rx
cmp.v.v GT
bt [64]

:[63]
push.v self.y
push.v self.ry
cmp.v.v GT
b [65]

:[64]
push.e 1

:[65]
bf [73]

:[66]
push.v self.x
push.v self.rx
cmp.v.v GT
bf [68]

:[67]
push.v self.x
pushi.e 20
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
sub.v.i
pushi.e 4
conv.i.v
call.i max(argc=2)
sub.v.v
pop.v.v self.x
b [69]

:[68]
push.v self.rx
pop.v.v self.x

:[69]
push.v self.y
push.v self.ry
pushi.e 2
add.i.v
cmp.v.v GT
bf [71]

:[70]
push.d 0.25
conv.d.v
push.v self.ry
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y
b [72]

:[71]
push.v self.ry
pop.v.v self.y

:[72]
b [74]

:[73]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.phase
push.v self.rx
pop.v.v self.x
push.v self.ry
pop.v.v self.y

:[74]
push.v self.phase
pushi.e 1
cmp.i.v EQ
bf [75]

:[75]
push.v self.phase
pushi.e 2
cmp.i.v EQ
bf [79]

:[76]
push.v self.x
push.v self.lx
cmp.v.v GT
bf [78]

:[77]
push.v self.x
pushi.e 10
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
sub.v.i
pushi.e 4
conv.i.v
call.i max(argc=2)
sub.v.v
pop.v.v self.x
b [79]

:[78]
push.v self.lx
pop.v.v self.x
pushi.e 3
pop.v.i self.phase

:[79]
push.v self.phase
pushi.e 3
cmp.i.v EQ
bf [88]

:[80]
push.v self.freeze
pushi.e 0
cmp.i.v EQ
bf [82]

:[81]
push.v self.falltimer
push.e 1
add.i.v
pop.v.v self.falltimer

:[82]
push.v self.falltimer
push.v self.fallthreshhold
pushi.e 90
sub.i.v
cmp.v.v GTE
bf [84]

:[83]
push.v self.lx
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.x

:[84]
push.v self.falltimer
push.v self.fallthreshhold
cmp.v.v GTE
bf [88]

:[85]
pushi.e 1183
pushenv [87]

:[86]
pushi.e 1
pop.v.i self.failure

:[87]
popenv [86]
push.d 3.5
pop.v.d self.phase

:[88]
pushi.e 70
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [90]

:[89]
push.v self.fallthreshhold
pushi.e 15
sub.i.v
pop.v.v self.falltimer

:[90]
push.v self.phase
push.d 3.5
cmp.d.v EQ
bf [100]

:[91]
pushi.e 1
pop.v.i self.failure
pushi.e 1
push.v self.hole
pushi.e -9
pop.v.b [stacktop]self.closed
pushi.e 1168
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [93]

:[92]
pushi.e 177
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[93]
pushi.e 1168
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [99]

:[94]
pushi.e 1168
pushenv [98]

:[95]
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.jumper
push.v self.jumper
pushi.e -9
pushenv [97]

:[96]
pushi.e 16
conv.i.v
pushi.e 20
conv.i.v
pushbltn.v builtin.room_height
push.v self.sprite_height
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 40
conv.i.v
pushi.e -40
conv.i.v
call.i random_range(argc=2)
add.v.v
call.i gml_Script_scr_jump_to_point(argc=4)
popz.v

:[97]
popenv [96]
pushi.e 2691
push.v self.jumper
pushi.e -9
pop.v.i [stacktop]self.sprite_index
call.i instance_destroy(argc=0)
popz.v

:[98]
popenv [95]

:[99]
pushi.e 4
pop.v.i self.phase

:[100]
push.v self.phase
pushi.e 4
cmp.i.v EQ
bf [106]

:[101]
push.d 1.5
pop.v.d self.gravity
pushi.e 1
push.v self.hole
pushi.e -9
pop.v.b [stacktop]self.closed
push.v self.failure
pushi.e 1
cmp.i.v EQ
bf [105]

:[102]
push.v self.lx
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
pushi.e 600
cmp.i.v GTE
bf [104]

:[103]
pushi.e 1
pop.v.i 1183.makenewplatform
call.i instance_destroy(argc=0)
popz.v

:[104]
b [106]

:[105]
pushi.e -8
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.phase

:[106]
push.v self.phase
pushi.e 5
cmp.i.v EQ
bf [109]

:[107]
push.v self.y
pushi.e 600
cmp.i.v GTE
bf [109]

:[108]
call.i instance_destroy(argc=0)
popz.v

:[109]
push.v self.hole
pushi.e -9
push.v [stacktop]self.mousecreate
pushi.e 1
cmp.i.v EQ
bt [117]

:[110]
pushi.e 1168
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [117]

:[111]
push.v self.phase
pushi.e 3
cmp.i.v LT
bt [117]

:[112]
push.v self.failure
pushi.e 1
cmp.i.v EQ
bt [117]

:[113]
pushi.e 1181
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [115]

:[114]
push.v 1181.blocked
pushi.e 1
cmp.i.v EQ
b [116]

:[115]
push.e 0

:[116]
b [118]

:[117]
push.e 1

:[118]
bf [120]

:[119]
pushi.e 0
pop.v.i self.move

:[120]
pushi.e 0
pop.v.i self.i

:[121]
push.v self.i
push.v self.tilemax
cmp.v.v LTE
bf [132]

:[122]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ishole
pushi.e 0
cmp.i.v EQ
bf [131]

:[123]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [125]

:[124]
push.i 232559
setowner.e
push.v self.move
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
pop.v.v [stacktop]self.__move

:[125]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [129]

:[126]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
pushenv [128]

:[127]
call.i gml_Script_scr_mouse_tile_rotation_step(argc=0)
popz.v

:[128]
popenv [127]

:[129]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [131]

:[130]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
push.v [stacktop]self.__con
pop.v.v self.tilecon

:[131]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [121]

:[132]
pushi.e -1
pushi.e 0
push.v [array]self.tile
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[133]
pushi.e -1
pushi.e 0
push.v [array]self.tile
pushi.e -9
push.v [stacktop]self.__con
pushi.e 0
cmp.i.v EQ
bf [135]

:[134]
pushi.e 0
pop.v.b self.moving
b [end]

:[135]
pushi.e 1
pop.v.b self.moving

:[end]