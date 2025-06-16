.localvar 2 arguments

:[0]
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [28]

:[1]
push.v self.target
pushi.e -9
push.v [stacktop]self.image_index
pop.v.v self.image_index
push.v self.target
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v self.sprite_index
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
push.v self.target
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 761
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v self.target
pushi.e -9
push.v [stacktop]self.idlesprite
pop.v.v self.sprite_index

:[6]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.v self.target
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 484
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v self.target
pushi.e -9
push.v [stacktop]self.hurtsprite
pop.v.v self.sprite_index

:[11]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.v self.target
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 697
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [28]

:[15]
push.v self.siner
push.v self.flashspeed
add.v.v
pop.v.v self.siner
push.v self.siner
pushi.e 4
cmp.i.v GT
bf [17]

:[16]
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 0
cmp.i.v LT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
call.i instance_destroy(argc=0)
popz.v
pushi.e 0
pop.v.i 697.state
exit.i

:[20]
push.v self.siner
push.v self.flashspeed
cmp.v.v EQ
bf [24]

:[21]
pushi.e 697
pushenv [23]

:[22]
pushi.e 40
pop.v.i self.partmode
pushi.e 15
pop.v.i self.shockthreshold
pushi.e 9999
pop.v.i self.shocktimer
pushi.e 10
pop.v.i self.hurttimer2

:[23]
popenv [22]

:[24]
pushi.e 0
pop.v.i self.i

:[25]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [27]

:[26]
pushi.e 1
pop.v.i 697.flash
pushi.e 697
push.v self.i
conv.v.i
push.v [array]self.partsiner
pushi.e 8
conv.i.d
div.d.v
pop.v.v 697.fsiner
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [25]

:[27]
exit.i

:[28]
push.v self.siner
push.v self.flashspeed
add.v.v
pop.v.v self.siner
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.flashcolor
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.image_blend
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
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.siner
pushi.e 4
cmp.i.v GT
bf [30]

:[29]
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 0
cmp.i.v LT
b [31]

:[30]
push.e 0

:[31]
bf [end]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[end]