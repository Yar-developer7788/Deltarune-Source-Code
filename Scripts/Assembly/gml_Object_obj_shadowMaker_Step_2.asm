.localvar 2 arguments
.localvar 107 i 19534

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [24]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [16]

:[2]
pushi.e 0
pop.v.i self.instancemax
pushi.e 0
pop.v.i local.i

:[3]
pushloc.v local.i
pushbltn.v builtin.instance_count
cmp.v.v LT
bf [13]

:[4]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.instance_id
pushi.e -4
cmp.i.v NEQ
bf [9]

:[5]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.instance_id
pushi.e -9
push.v [stacktop]self.depth
pushi.e 5000
cmp.i.v GTE
bf [9]

:[6]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.instance_id
pushi.e -9
push.v [stacktop]self.depth
push.i 100000
cmp.i.v LTE
bf [9]

:[7]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.instance_id
pushi.e -9
push.v [stacktop]self.visible
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.instance_id
pushi.e -9
push.v [stacktop]self.sprite_index
pushi.e 1
cmp.i.v GTE
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.i 175038
setowner.e
pushi.e -6
pushloc.v local.i
conv.v.i
push.v [array]self.instance_id
pushi.e -1
push.v self.instancemax
conv.v.i
pop.v.v [array]self.listinstance
push.v self.instancemax
push.e 1
add.i.v
pop.v.v self.instancemax

:[12]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [3]

:[13]
pushi.e 0
pop.v.i local.i

:[14]
pushloc.v local.i
push.v self.instancemax
cmp.v.v LT
bf [16]

:[15]
push.i 168292
setowner.e
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.shadow
push.i 175039
setowner.e
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.frontshadow
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [14]

:[16]
push.v self.timer
pushi.e 1
cmp.i.v GTE
bf [24]

:[17]
pushi.e 0
pop.v.i local.i

:[18]
pushloc.v local.i
push.v self.instancemax
cmp.v.v LT
bf [24]

:[19]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.shadow
pushi.e -9
pushenv [21]

:[20]
call.i @@Other@@(argc=0)
pushi.e -9
push.v other.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v self.sprite_index
call.i @@Other@@(argc=0)
pushi.e -9
push.v other.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.image_index
pop.v.v self.image_index
call.i @@Other@@(argc=0)
pushi.e -9
push.v other.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.image_xscale
pop.v.v self.image_xscale
call.i @@Other@@(argc=0)
pushi.e -9
push.v other.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.image_yscale
pushi.e -1
mul.i.v
push.v other.shadLength
mul.v.v
pop.v.v self.image_yscale
call.i @@Other@@(argc=0)
pushi.e -9
push.v other.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
call.i @@Other@@(argc=0)
pushi.e -9
push.v other.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.y
push.v self.sprite_height
push.v self.image_yscale
mul.v.v
add.v.v
pushi.e 4
sub.i.v
pop.v.v self.y
push.v other.floorShadowColor
pop.v.v self.image_blend
push.v other.floorshadOpacity
pop.v.v self.image_alpha
push.i 900000
pop.v.i self.depth

:[21]
popenv [20]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.frontshadow
pushi.e -9
pushenv [23]

:[22]
call.i @@Other@@(argc=0)
pushi.e -9
push.v other.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v self.sprite_index
call.i @@Other@@(argc=0)
pushi.e -9
push.v other.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.image_xscale
pop.v.v self.image_xscale
call.i @@Other@@(argc=0)
pushi.e -9
push.v other.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.image_yscale
pop.v.v self.image_yscale
call.i @@Other@@(argc=0)
pushi.e -9
push.v other.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
call.i @@Other@@(argc=0)
pushi.e -9
push.v other.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e 4
add.i.v
pop.v.v self.y
push.v other.frontShadowColor
pop.v.v self.image_blend
push.v other.frontshadOpacity
pop.v.v self.image_alpha
call.i @@Other@@(argc=0)
pushi.e -9
push.v other.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.image_index
pop.v.v self.image_index
call.i @@Other@@(argc=0)
pushi.e -9
push.v other.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[23]
popenv [22]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [18]

:[24]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [end]

:[25]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [33]

:[26]
pushi.e 0
pop.v.i self.instancemax
pushi.e 82
pushenv [28]

:[27]
push.i 240574
setowner.e
push.v self.id
call.i @@Other@@(argc=0)
pushi.e -9
push.v other.instancemax
conv.v.i
pop.v.v [array]self.listinstance
push.v other.instancemax
push.e 1
add.i.v
pop.v.v other.instancemax

:[28]
popenv [27]
pushi.e 109
pushenv [30]

:[29]
push.i 240574
setowner.e
push.v self.id
call.i @@Other@@(argc=0)
pushi.e -9
push.v other.instancemax
conv.v.i
pop.v.v [array]self.listinstance
push.v other.instancemax
push.e 1
add.i.v
pop.v.v other.instancemax

:[30]
popenv [29]
pushi.e 276
pushenv [32]

:[31]
push.i 240574
setowner.e
push.v self.id
call.i @@Other@@(argc=0)
pushi.e -9
push.v other.instancemax
conv.v.i
pop.v.v [array]self.listinstance
push.v other.instancemax
push.e 1
add.i.v
pop.v.v other.instancemax

:[32]
popenv [31]
pushi.e 1
pop.v.i self.init

:[33]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [38]

:[34]
pushi.e 0
pop.v.i local.i

:[35]
pushloc.v local.i
push.v self.instancemax
cmp.v.v LT
bf [37]

:[36]
push.i 168292
setowner.e
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.shadow
push.i 175039
setowner.e
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.frontshadow
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [35]

:[37]
pushi.e 2
pop.v.i self.init

:[38]
push.v self.init
pushi.e 2
cmp.i.v EQ
bf [end]

:[39]
pushi.e 0
pop.v.i local.i

:[40]
pushloc.v local.i
push.v self.instancemax
cmp.v.v LT
bf [end]

:[41]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.shadow
pushi.e -9
pushenv [43]

:[42]
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v self.sprite_index
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.image_index
pop.v.v self.image_index
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.image_xscale
pop.v.v self.image_xscale
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.image_yscale
pushi.e -1
mul.i.v
push.v other.shadLength
mul.v.v
pop.v.v self.image_yscale
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.y
push.v self.sprite_height
push.v self.image_yscale
mul.v.v
add.v.v
pushi.e 4
sub.i.v
pop.v.v self.y
push.v other.floorShadowColor
pop.v.v self.image_blend
push.v other.floorshadOpacity
pop.v.v self.image_alpha
push.i 900000
pop.v.i self.depth

:[43]
popenv [42]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.frontshadow
pushi.e -9
pushenv [45]

:[44]
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v self.sprite_index
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.image_xscale
pop.v.v self.image_xscale
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.image_yscale
pop.v.v self.image_yscale
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e 4
add.i.v
pop.v.v self.y
push.v other.frontShadowColor
pop.v.v self.image_blend
push.v other.frontshadOpacity
pop.v.v self.image_alpha
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.image_index
pop.v.v self.image_index
call.i @@Other@@(argc=0)
pushi.e -9
pushloc.v local.i
conv.v.i
push.v [array]self.listinstance
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[45]
popenv [44]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [40]

:[end]