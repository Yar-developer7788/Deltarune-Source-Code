.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [13]

:[1]
push.i 174780
setowner.e
pushi.e 129
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
pushi.e 129
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
pushi.e 129
conv.i.v
push.v self.y
pushi.e 0
add.i.v
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hole
pushi.e 7
pop.v.i self.tilemax
push.v self.tilemax
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.randomseed
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.tilemax
cmp.v.v LTE
bf [10]

:[3]
push.i 170052
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tiletype
push.v self.y
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
pushenv [5]

:[4]
call.i gml_Script_scr_mouse_tile_rotation_init(argc=0)
popz.v

:[5]
popenv [4]
push.v self.i
push.v self.randomseed
add.v.v
pop.v.v self.randompos
push.v self.randompos
push.v self.tilemax
cmp.v.v GT
bf [7]

:[6]
push.v self.randompos
push.v self.tilemax
pushi.e 1
add.i.v
sub.v.v
pop.v.v self.randompos

:[7]
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
pushi.e 7
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
pushenv [9]

:[8]
push.i 167030
setowner.e
pushi.e 40
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
pushi.e 80
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
pushi.e 40
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
pushi.e 80
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
pushi.e 80
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
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.__positiony
push.i 167030
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.__positionx
push.i 167031
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.__positiony
push.i 167030
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.__positionx
push.i 167031
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.__positiony

:[9]
popenv [8]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[10]
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
pushi.e 129
pushenv [12]

:[11]
pushi.e 0
pop.v.i self.visible

:[12]
popenv [11]
pushi.e 1
pop.v.i self.visible
pushi.e 1
pop.v.i self.init

:[13]
pushi.e 0
pop.v.i self.i

:[14]
push.v self.i
push.v self.tilemax
cmp.v.v LTE
bf [20]

:[15]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ishole
pushi.e 0
cmp.i.v EQ
bf [19]

:[16]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
pushenv [18]

:[17]
call.i gml_Script_scr_mouse_tile_rotation_step(argc=0)
popz.v

:[18]
popenv [17]

:[19]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [14]

:[20]
push.v self.phase
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.i self.phase

:[22]
push.v self.phase
pushi.e 1
cmp.i.v EQ
bf [23]

:[23]
push.v self.phase
pushi.e 2
cmp.i.v EQ
bf [27]

:[24]
push.v self.x
push.v self.lx
cmp.v.v GT
bf [26]

:[25]
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
b [27]

:[26]
push.v self.lx
pop.v.v self.x
pushi.e 3
pop.v.i self.phase

:[27]
push.v self.phase
pushi.e 3
cmp.i.v EQ
bf [31]

:[28]
pushi.e 1169
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [31]

:[29]
push.v 1169.waiting
pushi.e 1
cmp.b.v EQ
bf [31]

:[30]
push.v self.falltimer
push.e 1
add.i.v
pop.v.v self.falltimer

:[31]
pushi.e 0
pop.v.i self.i

:[32]
push.v self.i
push.v self.tilemax
cmp.v.v LTE
bf [43]

:[33]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ishole
pushi.e 0
cmp.i.v EQ
bf [42]

:[34]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [36]

:[35]
push.i 232559
setowner.e
push.v self.move
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
pop.v.v [stacktop]self.__move

:[36]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [40]

:[37]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
pushenv [39]

:[38]
call.i gml_Script_scr_mouse_tile_rotation_step(argc=0)
popz.v

:[39]
popenv [38]

:[40]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [42]

:[41]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
push.v [stacktop]self.__con
pop.v.v self.tilecon

:[42]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [32]

:[43]
pushi.e -1
pushi.e 0
push.v [array]self.tile
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[44]
pushi.e -1
pushi.e 0
push.v [array]self.tile
pushi.e -9
push.v [stacktop]self.__con
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
pushi.e 0
pop.v.b self.moving
b [end]

:[46]
pushi.e 1
pop.v.b self.moving

:[end]