.localvar 2 arguments

:[0]
push.v self.enemy1
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [4]

:[1]
push.v self.enemy1
pushi.e -9
pushenv [3]

:[2]
push.d 0.25
pop.v.d self.image_speed

:[3]
popenv [2]

:[4]
push.v self.enemy2
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [8]

:[5]
push.v self.enemy2
pushi.e -9
pushenv [7]

:[6]
push.d 0.25
pop.v.d self.image_speed

:[7]
popenv [6]

:[8]
push.v self.enemy2
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [12]

:[9]
push.v self.enemy3
pushi.e -9
pushenv [11]

:[10]
push.d 0.25
pop.v.d self.image_speed

:[11]
popenv [10]

:[12]
push.v self.enemy2
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [25]

:[13]
push.v self.enemy2
pushi.e -9
pushenv [24]

:[14]
push.v self.direction
pushi.e 0
cmp.i.v EQ
bt [16]

:[15]
push.v self.direction
pushi.e 270
cmp.i.v EQ
b [17]

:[16]
push.e 1

:[17]
bf [19]

:[18]
pushi.e 1
pop.v.i self.facing

:[19]
push.v self.direction
pushi.e 180
cmp.i.v EQ
bt [21]

:[20]
push.v self.direction
pushi.e 90
cmp.i.v EQ
b [22]

:[21]
push.e 1

:[22]
bf [24]

:[23]
pushi.e 0
pop.v.i self.facing

:[24]
popenv [14]

:[25]
push.v self.triggered
pushi.e 1
cmp.i.v EQ
bf [34]

:[26]
push.v 1259.topleftspawned
pushi.e 0
cmp.i.v EQ
bf [34]

:[27]
pushi.e 1
pop.v.i 1259.topleftspawned
pushi.e 240
conv.i.v
pushi.e 136
conv.i.v
pushi.e -140
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v 1259.enemy1
push.v 1259.enemy1
pushi.e -9
pushenv [29]

:[28]
pushi.e 64
pop.v.i self.myencounter
pushi.e 1253
pop.v.i self.sprite_index
pushi.e 1812
pop.v.i self.touchsprite
pushi.e 10000
pop.v.i self.radius
pushi.e 1
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.alertcon
pushi.e 1
pop.v.i self.eraser

:[29]
popenv [28]
pushi.e 240
conv.i.v
pushi.e 550
conv.i.v
pushi.e 1441
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v 1259.enemy3
push.v 1259.enemy3
pushi.e -9
pushenv [31]

:[30]
pushi.e 64
pop.v.i self.myencounter
pushi.e 1253
pop.v.i self.sprite_index
pushi.e 1812
pop.v.i self.touchsprite
pushi.e 10000
pop.v.i self.radius
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.alertcon
pushi.e 1
pop.v.i self.eraser

:[31]
popenv [30]
push.v 1259.enemy2
pushi.e -9
pushenv [33]

:[32]
call.i path_end(argc=0)
popz.v
pushi.e 64
pop.v.i self.myencounter
pushi.e 1253
pop.v.i self.sprite_index
pushi.e 1812
pop.v.i self.touchsprite
pushi.e 10000
pop.v.i self.radius
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.alertcon

:[33]
popenv [32]

:[34]
pushi.e 868
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [37]

:[35]
pushi.e 1
pop.v.i self.topleftspawned
pushi.e 1
pop.v.i self.botRightspawned
push.v self.susiebreak
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
pushi.e 297
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.susiebreak
pushi.e 1
push.v self.susiebreak
pushi.e -9
pop.v.i [stacktop]self.susiestart

:[37]
push.v self.enemy1
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [43]

:[38]
push.v self.enemy1
pushi.e -9
pushenv [42]

:[39]
push.v self.x
pushi.e 220
cmp.i.v LT
bf [41]

:[40]
pushi.e 1
pop.v.i self.ignoresolid
b [42]

:[41]
pushi.e 0
pop.v.i self.ignoresolid

:[42]
popenv [39]

:[43]
push.v self.enemy3
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[44]
push.v self.enemy3
pushi.e -9
pushenv [48]

:[45]
push.v self.x
pushi.e 1240
cmp.i.v GT
bf [47]

:[46]
pushi.e 1
pop.v.i self.ignoresolid
b [48]

:[47]
pushi.e 0
pop.v.i self.ignoresolid

:[48]
popenv [45]

:[end]