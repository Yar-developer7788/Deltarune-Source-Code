.localvar 2 arguments
.localvar 107 i 17551

:[0]
pushi.e -5
pushi.e 346
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.key
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [5]

:[2]
push.v self.key
pushi.e -9
pushenv [4]

:[3]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[4]
popenv [3]
push.v self.key
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
add.i.v
push.v self.bookcase
pushi.e -9
pop.v.v [stacktop]self.depth

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 2314
conv.i.v
push.v self.keyYPos
push.v self.keyXPos
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.key
pushi.e 1
pop.v.b self.fadeplatters

:[7]
push.v self.fadeplatters
conv.v.b
bf [13]

:[8]
pushi.e 260
pushenv [12]

:[9]
push.v self.x
pushi.e 520
cmp.i.v LT
bf [12]

:[10]
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.d 0.2
conv.d.v
pushi.e 0
conv.i.v
push.v self.image_alpha
call.i lerp(argc=3)
pop.v.v self.image_alpha

:[12]
popenv [9]

:[13]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
push.v self.keyfloat
conv.v.b
not.b
b [16]

:[15]
push.e 0

:[16]
bf [23]

:[17]
pushi.e 1
pop.v.b self.keysparkle
push.v self.key
pushi.e -9
push.v [stacktop]self.y
push.v self.keyYPos
pushi.e 20
sub.i.v
cmp.v.v NEQ
bf [21]

:[18]
push.d 0.1
conv.d.v
push.v self.keyYPos
pushi.e 20
sub.i.v
push.v self.key
pushi.e -9
push.v [stacktop]self.y
call.i lerp(argc=3)
push.v self.key
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.key
pushi.e -9
push.v [stacktop]self.y
push.v self.keyYPos
pushi.e 18
sub.i.v
cmp.v.v LT
bf [20]

:[19]
push.v self.keyYPos
pushi.e 20
sub.i.v
push.v self.key
pushi.e -9
pop.v.v [stacktop]self.y

:[20]
b [23]

:[21]
push.v self.floattimer
push.e 1
add.i.v
pop.v.v self.floattimer
push.v self.floattimer
pushi.e 30
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.i self.floattimer
pushi.e 1
pop.v.b self.keyfloat

:[23]
push.v self.keysparkle
conv.v.b
bf [28]

:[24]
push.v self.sparkletimer
push.e 1
add.i.v
pop.v.v self.sparkletimer
push.v self.sparkletimer
pushi.e 4
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [28]

:[25]
pushi.e 0
pop.v.i local.i

:[26]
pushloc.v local.i
pushi.e 1
cmp.i.v LT
bf [28]

:[27]
push.i 168175
setowner.e
pushi.e 2475
conv.i.v
push.v self.key
pushi.e -9
push.v [stacktop]self.y
pushi.e 30
add.i.v
push.v self.key
pushi.e -9
push.v [stacktop]self.x
pushi.e 50
add.i.v
call.i gml_Script_scr_marker(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.sparkle
push.i 133655
setowner.e
push.d 0.5
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133623
setowner.e
pushi.e 3
conv.i.v
pushi.e -3
conv.i.v
call.i random_range(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.i 133627
setowner.e
push.d 0.05
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.friction
push.i 133628
setowner.e
push.d 0.1
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.gravity
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [26]

:[28]
push.v self.keyfloat
conv.v.b
bf [34]

:[29]
push.d 0.1
conv.d.v
push.v self.bookcase
pushi.e -9
push.v [stacktop]self.x
push.v self.key
pushi.e -9
push.v [stacktop]self.x
call.i lerp(argc=3)
push.v self.key
pushi.e -9
pop.v.v [stacktop]self.x
push.d 0.1
conv.d.v
push.v self.bookcase
pushi.e -9
push.v [stacktop]self.y
pushi.e 50
add.i.v
push.v self.key
pushi.e -9
push.v [stacktop]self.y
call.i lerp(argc=3)
push.v self.key
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.key
pushi.e -9
push.v [stacktop]self.x
push.v self.bookcase
pushi.e -9
push.v [stacktop]self.x
pushi.e 1
add.i.v
cmp.v.v LTE
bf [31]

:[30]
push.v self.key
pushi.e -9
push.v [stacktop]self.y
push.v self.bookcase
pushi.e -9
push.v [stacktop]self.y
pushi.e 51
add.i.v
cmp.v.v LTE
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.b self.keysparkle

:[34]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [46]

:[35]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 346
pop.v.v [array]self.flag
pushi.e 128
conv.i.v
push.v self.bookcase
pushi.e -9
push.v [stacktop]self.y
pushi.e 30
add.i.v
push.v self.bookcase
pushi.e -9
push.v [stacktop]self.x
pushi.e 50
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.explosion
pushi.e 2275
push.v self.explosion
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.explosion
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.explosion
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.b self.fadeplatters
pushi.e 189
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.key
call.i gml_Script_safe_delete(argc=1)
popz.v
push.v self.bookcase
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[36]
pushloc.v local.i
push.v self.sparkle
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [40]

:[37]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pushenv [39]

:[38]
call.i instance_destroy(argc=0)
popz.v

:[39]
popenv [38]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [36]

:[40]
pushi.e 261
pushenv [42]

:[41]
call.i instance_destroy(argc=0)
popz.v

:[42]
popenv [41]
pushi.e 260
pushenv [45]

:[43]
push.v self.x
pushi.e 520
cmp.i.v LT
bf [45]

:[44]
push.v self.collider
call.i instance_destroy(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[45]
popenv [43]
push.v self.forcefield_right
call.i gml_Script_safe_delete(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[46]
push.v self.make_forcefield
conv.v.b
bf [end]

:[47]
pushi.e 287
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [49]

:[48]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 2
conv.i.v
pushi.e 240
conv.i.v
pushi.e 520
conv.i.v
call.i gml_Script_scr_forcefield(argc=6)
pop.v.v self.forcefield_right
push.i 80000
push.v self.forcefield_right
pushi.e -9
pop.v.i [stacktop]self.depth

:[49]
pushi.e 0
pop.v.b self.make_forcefield

:[end]