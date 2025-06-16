.localvar 2 arguments
.localvar 25732 spouncer 12909
.localvar 25733 centerpoint 12910

:[0]
push.v self.playercrush
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v 872.depth
pop.v.v self.depth
pushi.e 0
pop.v.i 872.image_alpha
pushi.e 3
pop.v.i 358.image_xscale
pushi.e 3
pop.v.i 358.image_yscale
pushi.e 1
pop.v.i self.init

:[4]
pushglb.v global.turntimer
pushi.e 30
cmp.i.v LTE
bf [7]

:[5]
pushglb.v global.turntimer
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v GTE
bf [7]

:[6]
pushi.e 675
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [11]

:[9]
push.v self.destroytimer
push.e 1
sub.i.v
pop.v.v self.destroytimer
push.v self.destroytimer
pushi.e 0
cmp.i.v LTE
bf [11]

:[10]
pushi.e 0
conv.i.v
pushi.e 675
conv.i.v
call.i instance_find(argc=2)
pop.v.v local.spouncer
pushi.e 459
conv.i.v
pushloc.v local.spouncer
pushi.e -9
push.v [stacktop]self.y
pushloc.v local.spouncer
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 2071
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.spouncer
pushi.e -9
push.v [stacktop]self.size
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushloc.v local.spouncer
pushi.e -9
push.v [stacktop]self.size
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushloc.v local.spouncer
pushi.e -9
push.v [stacktop]self.size
pop.v.v self.destroytimer
pushloc.v local.spouncer
call.i instance_destroy(argc=1)
popz.v

:[11]
push.v self.sizeup
pushi.e 0
cmp.i.v GT
bf [21]

:[12]
push.v self.top
pushi.e 2
sub.i.v
pop.v.v self.top
push.v self.top
push.v self.maxtop
cmp.v.v LT
bf [14]

:[13]
push.v self.maxtop
pop.v.v self.top

:[14]
push.v self.bottom
pushi.e 2
add.i.v
pop.v.v self.bottom
push.v self.bottom
push.v self.maxbottom
cmp.v.v GT
bf [16]

:[15]
push.v self.maxbottom
pop.v.v self.bottom

:[16]
push.v self.left
pushi.e 2
sub.i.v
pop.v.v self.left
push.v self.left
push.v self.maxleft
cmp.v.v LT
bf [18]

:[17]
push.v self.maxleft
pop.v.v self.left

:[18]
push.v self.right
pushi.e 2
add.i.v
pop.v.v self.right
push.v self.right
push.v self.maxright
cmp.v.v GT
bf [20]

:[19]
push.v self.maxright
pop.v.v self.right

:[20]
push.v self.sizeup
pushi.e 2
sub.i.v
pop.v.v self.sizeup

:[21]
push.v self.bottom
push.v self.top
sub.v.v
pushi.e 10
cmp.i.v LT
bt [23]

:[22]
push.v self.right
push.v self.left
sub.v.v
pushi.e 10
cmp.i.v LT
b [24]

:[23]
push.e 1

:[24]
bf [end]

:[25]
push.v self.bottom
push.v self.top
sub.v.v
pushi.e 10
cmp.i.v LT
bf [27]

:[26]
push.v self.top
push.v self.bottom
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v local.centerpoint
pushloc.v local.centerpoint
pushi.e 2
sub.i.v
pop.v.v self.top
pushloc.v local.centerpoint
pushi.e 2
add.i.v
pop.v.v self.bottom
pushloc.v local.centerpoint
pushi.e 4
sub.i.v
pop.v.v 631.y
b [28]

:[27]
push.v self.left
push.v self.right
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v local.centerpoint
pushloc.v local.centerpoint
pushi.e 2
sub.i.v
pop.v.v self.left
pushloc.v local.centerpoint
pushi.e 2
add.i.v
pop.v.v self.right
pushloc.v local.centerpoint
pushi.e 4
sub.i.v
pop.v.v 631.x

:[28]
pushi.e 1
pop.v.i self.playercrush
pushi.e 0
pop.v.i self.damage
pushi.e 0
pop.v.i self.i

:[29]
push.v self.i
pushi.e 675
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [31]

:[30]
push.v self.i
pushi.e 675
conv.i.v
call.i instance_find(argc=2)
pop.v.v self.d
push.v self.damage
pushi.e 3
conv.i.v
push.v self.d
pushi.e -9
push.v [stacktop]self.size
call.i power(argc=2)
add.v.v
pop.v.v self.damage
pushi.e 459
conv.i.v
push.v self.d
pushi.e -9
push.v [stacktop]self.y
push.v self.d
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dm
pushi.e 2275
push.v self.dm
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.d
pushi.e -9
push.v [stacktop]self.size
pushi.e 3
conv.i.d
div.d.v
push.v self.dm
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.d
pushi.e -9
push.v [stacktop]self.size
pushi.e 3
conv.i.d
div.d.v
push.v self.dm
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [29]

:[31]
push.v self.target
pushi.e 3
cmp.i.v NEQ
bf [33]

:[32]
call.i gml_Script_scr_damage(argc=0)
popz.v
b [35]

:[33]
push.v self.target
pushi.e 3
cmp.i.v EQ
bf [35]

:[34]
push.v self.damage
pushi.e 3
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.damage
call.i gml_Script_scr_damage_all(argc=0)
popz.v

:[35]
pushi.e 189
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 675
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushglb.v global.turntimer
pushi.e 30
cmp.i.v GT
bf [end]

:[36]
pushi.e 30
pop.v.i global.turntimer

:[end]