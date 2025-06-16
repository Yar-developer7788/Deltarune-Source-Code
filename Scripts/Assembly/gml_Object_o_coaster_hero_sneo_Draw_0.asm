.localvar 2 arguments
.localvar 25836 kriscoaster_x 13241
.localvar 25837 kriscoaster_y 13242
.localvar 25838 susiecoaster_x 13243
.localvar 25839 susiecoaster_y 13244
.localvar 25840 ralseicoaster_x 13245
.localvar 25841 ralseicoaster_y 13246

:[0]
push.v 999.coaster_kris
pushi.e -9
push.v [stacktop]self.x
push.v 999.coaster_kris
pushi.e -9
push.v [stacktop]self.sinerx
add.v.v
push.v 999.coaster_kris
pushi.e -9
push.v [stacktop]self.coaster_offset_x
add.v.v
push.v 999.coaster_kris
pushi.e -9
push.v [stacktop]self.target_x_end
add.v.v
pop.v.v local.kriscoaster_x
push.v 999.coaster_kris
pushi.e -9
push.v [stacktop]self.y
push.v 999.coaster_kris
pushi.e -9
push.v [stacktop]self.sinery
add.v.v
push.v 999.coaster_kris
pushi.e -9
push.v [stacktop]self.coaster_offset_y
add.v.v
pop.v.v local.kriscoaster_y
push.v 999.coaster_susie
pushi.e -9
push.v [stacktop]self.x
push.v 999.coaster_susie
pushi.e -9
push.v [stacktop]self.sinerx
add.v.v
push.v 999.coaster_susie
pushi.e -9
push.v [stacktop]self.coaster_offset_x
add.v.v
push.v 999.coaster_susie
pushi.e -9
push.v [stacktop]self.target_x_end
add.v.v
pop.v.v local.susiecoaster_x
push.v 999.coaster_susie
pushi.e -9
push.v [stacktop]self.y
push.v 999.coaster_susie
pushi.e -9
push.v [stacktop]self.sinery
add.v.v
push.v 999.coaster_susie
pushi.e -9
push.v [stacktop]self.coaster_offset_y
add.v.v
pop.v.v local.susiecoaster_y
push.v 999.coaster_ralsei
pushi.e -9
push.v [stacktop]self.x
push.v 999.coaster_ralsei
pushi.e -9
push.v [stacktop]self.sinerx
add.v.v
push.v 999.coaster_ralsei
pushi.e -9
push.v [stacktop]self.coaster_offset_x
add.v.v
push.v 999.coaster_ralsei
pushi.e -9
push.v [stacktop]self.target_x_end
add.v.v
pop.v.v local.ralseicoaster_x
push.v 999.coaster_ralsei
pushi.e -9
push.v [stacktop]self.y
push.v 999.coaster_ralsei
pushi.e -9
push.v [stacktop]self.sinery
add.v.v
push.v 999.coaster_ralsei
pushi.e -9
push.v [stacktop]self.coaster_offset_y
add.v.v
pop.v.v local.ralseicoaster_y
push.v self.lerpstate
pushi.e 0
cmp.i.v EQ
bf [14]

:[1]
push.v self.lerptimer
pushi.e 10
cmp.i.v LT
bf [3]

:[2]
push.v self.lerptimer
push.e 1
add.i.v
pop.v.v self.lerptimer

:[3]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.lerptimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 1705
conv.i.v
pushloc.v local.kriscoaster_x
call.i lerp(argc=3)
pop.v.v self.x
push.v self.lerptimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 101
conv.i.v
pushloc.v local.kriscoaster_y
call.i lerp(argc=3)
pop.v.v self.y
b [9]

:[5]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.lerptimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 1715
conv.i.v
pushloc.v local.susiecoaster_x
call.i lerp(argc=3)
pop.v.v self.x
push.v self.lerptimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 182
conv.i.v
pushloc.v local.susiecoaster_y
call.i lerp(argc=3)
pop.v.v self.y
b [9]

:[7]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.v self.lerptimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 1710
conv.i.v
pushloc.v local.ralseicoaster_x
call.i lerp(argc=3)
pop.v.v self.x
push.v self.lerptimer
pushi.e 10
conv.i.d
div.d.v
pushi.e 260
conv.i.v
pushloc.v local.ralseicoaster_y
call.i lerp(argc=3)
pop.v.v self.y

:[9]
push.v self.lerptimer
pushi.e 9
cmp.i.v GT
bf [11]

:[10]
pushi.e 372
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 0
pop.v.i self.lerptimer
pushi.e 1
pop.v.i self.lerpstate

:[14]
push.v self.lerpstate
pushi.e 1
cmp.i.v EQ
bf [30]

:[15]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 372
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.v 372.x
pushi.e 15
sub.i.v
pop.v.v self.x
b [30]

:[20]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.v 373.x
pushi.e 5
sub.i.v
pop.v.v self.x
b [30]

:[25]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.v 374.x
pushi.e 10
sub.i.v
pop.v.v self.x

:[30]
push.v self.lerpstate
pushi.e 2
cmp.i.v EQ
bf [58]

:[31]
push.v self.lerptimer
pushi.e 1
add.i.v
pop.v.v self.lerptimer
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [34]

:[32]
push.v self.lerptimer
pushi.e 5
conv.i.d
div.d.v
pushloc.v local.kriscoaster_x
pushi.e 1705
conv.i.v
call.i lerp(argc=3)
pop.v.v self.x
push.v self.lerptimer
pushi.e 5
conv.i.d
div.d.v
pushloc.v local.kriscoaster_y
pushi.e 101
conv.i.v
call.i lerp(argc=3)
pop.v.v self.y
pushi.e 372
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [34]

:[33]
push.v self.lerptimer
pushi.e 5
conv.i.d
div.d.v
push.v 999.coaster_kris
pushi.e -9
push.v [stacktop]self.x
push.v 999.coaster_kris
pushi.e -9
push.v [stacktop]self.sinerx
add.v.v
push.v 999.coaster_kris
pushi.e -9
push.v [stacktop]self.character_offset_x
add.v.v
push.v 999.coaster_kris
pushi.e -9
push.v [stacktop]self.target_x_end
add.v.v
pushi.e 1710
conv.i.v
call.i lerp(argc=3)
pop.v.v 372.x

:[34]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [37]

:[35]
push.v self.lerptimer
pushi.e 5
conv.i.d
div.d.v
pushloc.v local.susiecoaster_x
pushi.e 1715
conv.i.v
call.i lerp(argc=3)
pop.v.v self.x
push.v self.lerptimer
pushi.e 5
conv.i.d
div.d.v
pushloc.v local.susiecoaster_y
pushi.e 182
conv.i.v
call.i lerp(argc=3)
pop.v.v self.y
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [37]

:[36]
push.v self.lerptimer
pushi.e 5
conv.i.d
div.d.v
push.v 999.coaster_susie
pushi.e -9
push.v [stacktop]self.x
push.v 999.coaster_susie
pushi.e -9
push.v [stacktop]self.sinerx
add.v.v
push.v 999.coaster_susie
pushi.e -9
push.v [stacktop]self.character_offset_x
add.v.v
push.v 999.coaster_susie
pushi.e -9
push.v [stacktop]self.target_x_end
add.v.v
pushi.e 1717
conv.i.v
call.i lerp(argc=3)
pop.v.v 373.x

:[37]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [42]

:[38]
push.v self.lerptimer
pushi.e 5
conv.i.d
div.d.v
pushloc.v local.ralseicoaster_x
pushi.e 1710
conv.i.v
call.i lerp(argc=3)
pop.v.v self.x
push.v self.lerptimer
pushi.e 5
conv.i.d
div.d.v
pushloc.v local.ralseicoaster_y
pushi.e 260
conv.i.v
call.i lerp(argc=3)
pop.v.v self.y
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [40]

:[39]
push.v self.lerptimer
pushi.e 5
conv.i.d
div.d.v
push.v 999.coaster_ralsei
pushi.e -9
push.v [stacktop]self.x
push.v 999.coaster_ralsei
pushi.e -9
push.v [stacktop]self.sinerx
add.v.v
push.v 999.coaster_ralsei
pushi.e -9
push.v [stacktop]self.character_offset_x
add.v.v
push.v 999.coaster_ralsei
pushi.e -9
push.v [stacktop]self.target_x_end
add.v.v
pushi.e 1712
conv.i.v
call.i lerp(argc=3)
pop.v.v 374.x

:[40]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [42]

:[41]
push.v 374.y
push.d 0.5
add.d.v
pop.v.v 374.y

:[42]
push.v self.lerptimer
pushi.e 4
cmp.i.v EQ
bf [46]

:[43]
pushi.e 1121
pushenv [45]

:[44]
pushi.e 1
pop.v.i self.visible

:[45]
popenv [44]

:[46]
push.v self.lerptimer
pushi.e 4
cmp.i.v GT
bf [58]

:[47]
pushi.e 1121
pushenv [49]

:[48]
pushi.e 1
pop.v.i self.visible

:[49]
popenv [48]
pushi.e 371
pushenv [51]

:[50]
call.i instance_destroy(argc=0)
popz.v

:[51]
popenv [50]
pushi.e 694
pushenv [53]

:[52]
call.i instance_destroy(argc=0)
popz.v

:[53]
popenv [52]
pushi.e 696
pushenv [55]

:[54]
call.i instance_destroy(argc=0)
popz.v

:[55]
popenv [54]
pushi.e 693
pushenv [57]

:[56]
call.i instance_destroy(argc=0)
popz.v

:[57]
popenv [56]
exit.i

:[58]
push.v self.x
pushi.e 1
add.i.v
push.v self.back
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.back
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]