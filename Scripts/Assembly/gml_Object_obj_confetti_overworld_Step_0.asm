.localvar 2 arguments
.localvar 24813 shadowScale 11840

:[0]
push.v self.y
push.v self.height
sub.v.v
call.i gml_Script_cameray(argc=0)
pushi.e 500
add.i.v
cmp.v.v GT
bt [7]

:[1]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 100
sub.i.v
cmp.v.v LT
bt [7]

:[2]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 740
add.i.v
cmp.v.v GT
bt [7]

:[3]
push.v self.airborne
conv.v.b
not.b
bf [5]

:[4]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 100
sub.i.v
cmp.v.v LT
b [6]

:[5]
push.e 0

:[6]
b [8]

:[7]
push.e 1

:[8]
bf [12]

:[9]
push.v self.shadow
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [11]

:[10]
push.v self.shadow
call.i instance_destroy(argc=1)
popz.v

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
push.v self.init
conv.v.b
not.b
bf [15]

:[13]
pushi.e 1
pop.v.b self.init
push.v self.shadow
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [15]

:[14]
push.v self.maxDepth
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.depth

:[15]
push.v self.falltime
push.e 1
add.i.v
pop.v.v self.falltime
push.v self.airborne
conv.v.b
not.b
bf [23]

:[16]
push.v self.destroyOnLand
conv.v.b
not.b
bf [18]

:[17]
exit.i

:[18]
push.v self.siner
push.d 0.1
sub.d.v
pop.v.v self.siner
pushi.e 1
conv.i.v
push.v self.siner
call.i min(argc=2)
pop.v.v self.image_alpha
push.v self.siner
pushi.e 0
cmp.i.v LTE
bf [22]

:[19]
push.v self.shadow
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [21]

:[20]
push.v self.shadow
call.i instance_destroy(argc=1)
popz.v

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
exit.i

:[23]
push.v self.fallspeed
pushi.e 0
cmp.i.v LT
bf [25]

:[24]
push.v self.fallspeed
push.v self.fallFriction
add.v.v
pop.v.v self.fallspeed

:[25]
push.v self.fallspeed
pushi.e -5
cmp.i.v GT
bf [27]

:[26]
push.d 0.4
pop.v.d self.fallFriction

:[27]
push.v self.speed
pushi.e 5
cmp.i.v LT
bf [29]

:[28]
push.d 0.4
pop.v.d self.friction

:[29]
push.v self.fallspeed
pushi.e 2
cmp.i.v LT
bf [31]

:[30]
push.d 0.1
conv.d.v
pushi.e 2
conv.i.v
push.v self.fallspeed
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.fallspeed

:[31]
push.v self.height
push.v self.fallspeed
sub.v.v
pop.v.v self.height
push.v self.airborne
conv.v.b
bf [34]

:[32]
push.v self.height
pushi.e 0
cmp.i.v LTE
bf [34]

:[33]
push.v self.y
push.v self.maxy
cmp.v.v LT
b [35]

:[34]
push.e 0

:[35]
bf [40]

:[36]
push.v self.shadow
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
pop.v.i self.fallspeed
pushi.e 0
pop.v.i self.height
pushi.e 0
pop.v.b self.airborne
push.v self.image_index
pushi.e 4
cmp.i.v LT
bf [38]

:[37]
pushi.e 3
conv.i.v
b [39]

:[38]
pushi.e 7
conv.i.v

:[39]
pop.v.v self.image_index
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.image_speed
push.v self.x
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.v.v self.x
push.v self.maxDepth
push.v self.falltime
sub.v.v
pop.v.v self.depth
pushi.e 3
pop.v.i self.siner
exit.i

:[40]
push.v self.x
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.fallspeed
pushi.e 2
conv.i.d
div.d.v
mul.v.v
add.v.v
pop.v.v self.x
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
push.v self.speed
pushi.e 15
conv.i.d
div.d.v
add.v.i
pop.v.v self.image_speed
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.shadow
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[41]
push.v self.y
push.v self.maxy
cmp.v.v GT
bf [43]

:[42]
pushi.e 0
conv.i.v
b [44]

:[43]
pushi.e 1
conv.i.v

:[44]
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.image_index
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.x
push.v self.sprite_width
push.v self.shadow
pushi.e -9
push.v [stacktop]self.sprite_width
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.sprite_height
push.v self.shadow
pushi.e -9
push.v [stacktop]self.sprite_height
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 40
push.v self.height
pushi.e 2
conv.i.d
div.d.v
sub.v.i
pushi.e 20
conv.i.d
div.d.v
call.i clamp(argc=3)
pop.v.v local.shadowScale
pushloc.v local.shadowScale
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushloc.v local.shadowScale
push.v self.shadow
pushi.e -9
pop.v.v [stacktop]self.image_yscale

:[end]