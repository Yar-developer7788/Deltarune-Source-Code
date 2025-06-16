.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[1]
push.v 82.x
pushi.e 320
cmp.i.v GTE
bf [5]

:[2]
pushi.e -5
pushi.e 354
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
push.v self.spawnedGates
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.spawnedViro
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.i self.spawnedGates
pushi.e 1
pop.v.i self.spawnedViro
pushi.e 287
conv.i.v
pushi.e 240
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.leftgate
pushi.e 2
push.v self.leftgate
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 8
push.v self.leftgate
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 287
conv.i.v
pushi.e 240
conv.i.v
pushi.e 2080
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rightgate
pushi.e 2
push.v self.rightgate
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 8
push.v self.rightgate
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1244
conv.i.v
pushi.e -128
conv.i.v
pushi.e 380
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.viro

:[8]
pushi.e -5
pushi.e 354
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.spawnedViro
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [17]

:[12]
push.v self.startside
push.s "Left"@9464
cmp.s.v EQ
bf [14]

:[13]
pushi.e 1244
conv.i.v
pushi.e -128
conv.i.v
pushi.e 380
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.viro

:[14]
push.v self.startside
push.s "Right"@9468
cmp.s.v EQ
bf [16]

:[15]
pushi.e 1244
conv.i.v
pushi.e -128
conv.i.v
pushbltn.v builtin.room_width
pushi.e 380
sub.i.v
push.v self.sprite_width
pushi.e 2
mul.i.v
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.viro

:[16]
pushi.e 1
pop.v.i self.spawnedViro

:[17]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [23]

:[18]
push.v 82.x
pushi.e 200
cmp.i.v GT
bf [20]

:[19]
push.v self.viro
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 1
pop.v.i 82.battlemode

:[23]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [29]

:[24]
push.v 82.battlemode
pushi.e 1
cmp.i.v EQ
bf [29]

:[25]
pushi.e 268
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [29]

:[26]
pushi.e 268
pushenv [28]

:[27]
pushi.e 1
pop.v.b self.visible

:[28]
popenv [27]

:[29]
push.v self.spawnedViro
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.v self.viro
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [32]

:[31]
push.e 0

:[32]
bf [37]

:[33]
pushi.e 0
pop.v.i 82.battlemode
pushi.e 268
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [37]

:[34]
pushi.e 268
pushenv [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [35]

:[37]
pushi.e -5
pushi.e 354
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[38]
pushi.e 287
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[39]
pushi.e 287
pushenv [41]

:[40]
call.i instance_destroy(argc=0)
popz.v

:[41]
popenv [40]

:[end]