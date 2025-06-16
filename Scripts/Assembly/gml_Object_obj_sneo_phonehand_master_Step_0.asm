.localvar 2 arguments

:[0]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.bluesiner
push.e 1
add.i.v
pop.v.v self.bluesiner
push.d 0.25
push.v self.bluesiner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.25
mul.d.v
add.v.d
push.i 16776960
conv.i.v
push.i 15245824
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 480
add.i.v
cmp.v.v GTE
bf [2]

:[1]
call.i gml_Script_camerax(argc=0)
pushi.e 480
add.i.v
pop.v.v self.x

:[2]
push.v self.grazed
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
push.v self.grazetimer
pushi.e 1
add.i.v
pop.v.v self.grazetimer
push.v self.grazetimer
pushi.e 3
cmp.i.v GTE
bf [5]

:[4]
pushi.e 0
pop.v.i self.grazetimer
pushi.e 0
pop.v.i self.grazed

:[5]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[6]
push.v 631.x
push.v 648.x
pushi.e 36
sub.i.v
cmp.v.v GT
bf [8]

:[7]
push.v 648.x
pushi.e 36
sub.i.v
pop.v.v 631.x

:[8]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [14]

:[9]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [13]

:[10]
pushi.e 650
pushenv [12]

:[11]
pushi.e 1
pop.v.i self.alt

:[12]
popenv [11]

:[13]
push.v self.target
push.v self.phonehand_top
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.target
push.v self.phonehand_bottom
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1
pop.v.i self.init

:[14]
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v self.ystart
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
add.v.v
pop.v.v self.y

:[16]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bt [18]

:[17]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
push.v self.ystart
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 60
mul.i.v
add.v.v
pop.v.v self.y

:[21]
push.v self.phonehand_top
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [25]

:[22]
push.v self.difficulty
pushi.e 2
cmp.i.v LT
bf [24]

:[23]
push.d 0.2
conv.d.v
push.v self.phonehand_top
pushi.e -9
push.v [stacktop]self.x
push.v self.xdist
add.v.v
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x
b [25]

:[24]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x

:[25]
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bt [28]

:[26]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bt [28]

:[27]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
b [29]

:[28]
push.e 1

:[29]
bf [end]

:[30]
push.v self.btimer
push.e 1
add.i.v
pop.v.v self.btimer
pushi.e 20
pop.v.i self.threshold
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
pushi.e 15
pop.v.i self.threshold

:[32]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [34]

:[33]
pushi.e 30
pop.v.i self.threshold

:[34]
push.v self.btimer
push.v self.threshold
cmp.v.v GTE
bf [36]

:[35]
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
b [37]

:[36]
push.e 0

:[37]
bf [end]

:[38]
pushi.e 0
pop.v.i self.btimer
push.v self.difficulty
pushi.e 2
cmp.i.v LT
bf [40]

:[39]
pushi.e 651
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shot
b [41]

:[40]
pushi.e 593
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shot

:[41]
pushi.e 12
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 3
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.difficulty
pushi.e 2
cmp.i.v LT
bf [43]

:[42]
pushi.e 1
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.friction
b [44]

:[43]
pushi.e 10
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.speed

:[44]
push.i 133633
setowner.e
pushi.e 25
conv.i.v
push.v self.shot
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 180
pushi.e 5
conv.i.v
pushi.e -5
conv.i.v
call.i random_range(argc=2)
add.v.i
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.depth
pushi.e 1
sub.i.v
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.target
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1985
pop.v.i self.sprite_index
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]