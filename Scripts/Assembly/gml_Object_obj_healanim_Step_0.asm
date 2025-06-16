.localvar 2 arguments

:[0]
push.v self.t
pushi.e 1
add.i.v
pop.v.v self.t
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [52]

:[1]
push.v self.t
pushi.e 1
cmp.i.v EQ
bf [24]

:[2]
push.v self.target
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
push.v self.target
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y
push.v self.target
pushi.e -9
push.v [stacktop]self.image_xscale
pop.v.v self.image_xscale
push.v self.target
pushi.e -9
push.v [stacktop]self.image_yscale
pop.v.v self.image_yscale
push.v self.target
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v self.sprite_index
push.v self.sprite_width
pop.v.v self.sw
push.v self.sprite_height
pop.v.v self.sh
pushi.e 0
pop.v.i self.herocheck
push.v self.target
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 372
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.herocheck

:[4]
push.v self.target
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 373
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.herocheck

:[6]
push.v self.target
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 374
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.herocheck

:[8]
push.v self.herocheck
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.target
pushi.e -9
push.v [stacktop]self.mywidth
pop.v.v self.sw
push.v self.target
pushi.e -9
push.v [stacktop]self.myheight
pop.v.v self.sh

:[10]
push.v self.target
pushi.e -9
pushenv [12]

:[11]
call.i gml_Script_scr_oflash(argc=0)
popz.v

:[12]
popenv [11]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
push.v self.target
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 714
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [19]

:[16]
pushi.e 859
pushenv [18]

:[17]
push.v self.x
pushi.e 18
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 18
add.i.v
pop.v.v self.y

:[18]
popenv [17]

:[19]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
push.v self.target
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 777
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e -2
pop.v.i 859.image_xscale
pushi.e 859
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self._oflash
pushi.e 0
push.v self._oflash
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v 777.image_index
push.v self._oflash
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e -2
push.v self._oflash
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self._oflash
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v 777.headsprite
push.v self._oflash
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
sub.i.v
push.v self._oflash
pushi.e -9
pop.v.v [stacktop]self.depth

:[24]
push.v self.t
pushi.e 1
cmp.i.v GTE
bf [26]

:[25]
push.v self.t
pushi.e 5
cmp.i.v LTE
b [27]

:[26]
push.e 0

:[27]
bf [39]

:[28]
pushi.e 0
pop.v.i self.i

:[29]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [39]

:[30]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [32]

:[31]
push.v self.target
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 777
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
push.i 165924
setowner.e
pushi.e 129
conv.i.v
push.v self.y
push.v self.sh
call.i random(argc=1)
sub.v.v
push.v self.x
push.v self.sw
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.sw
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.starcount
conv.v.i
pop.v.v [array]self.star
b [36]

:[35]
push.i 165924
setowner.e
pushi.e 129
conv.i.v
push.v self.y
push.v self.sh
call.i random(argc=1)
add.v.v
push.v self.x
push.v self.sw
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.starcount
conv.v.i
pop.v.v [array]self.star

:[36]
pushi.e -1
push.v self.starcount
conv.v.i
push.v [array]self.star
pushi.e -9
pushenv [38]

:[37]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
pushi.e -10
pop.v.i self.depth
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 2
pop.v.i self.image_alpha
push.d 0.25
pop.v.d self.image_speed
pushi.e 2
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.hspeed
pushi.e -3
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.vspeed
push.d 0.2
pop.v.d self.friction

:[38]
popenv [37]
push.i 133642
setowner.e
push.v self.particlesprite
pushi.e -1
push.v self.starcount
conv.v.i
push.v [array]self.star
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.i 133654
setowner.e
push.v self.particlecolor
pushi.e -1
push.v self.starcount
conv.v.i
push.v [array]self.star
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.starcount
pushi.e 1
add.i.v
pop.v.v self.starcount
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [29]

:[39]
push.v self.t
pushi.e 5
cmp.i.v GTE
bf [41]

:[40]
push.v self.t
pushi.e 30
cmp.i.v LTE
b [42]

:[41]
push.e 0

:[42]
bf [51]

:[43]
pushi.e 0
pop.v.i self.i

:[44]
push.v self.i
push.v self.starcount
cmp.v.v LT
bf [49]

:[45]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.star
pushi.e -9
pushenv [48]

:[46]
push.v self.image_angle
pushi.e 10
sub.i.v
pop.v.v self.image_angle
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [48]

:[47]
call.i instance_destroy(argc=0)
popz.v

:[48]
popenv [46]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [44]

:[49]
push.v self.t
pushi.e 30
cmp.i.v GTE
bf [51]

:[50]
call.i instance_destroy(argc=0)
popz.v

:[51]
b [end]

:[52]
pushi.e 0
pop.v.i self.i

:[53]
push.v self.i
push.v self.starcount
cmp.v.v LT
bf [57]

:[54]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.star
pushi.e -9
pushenv [56]

:[55]
call.i instance_destroy(argc=0)
popz.v

:[56]
popenv [55]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [53]

:[57]
call.i instance_destroy(argc=0)
popz.v

:[end]