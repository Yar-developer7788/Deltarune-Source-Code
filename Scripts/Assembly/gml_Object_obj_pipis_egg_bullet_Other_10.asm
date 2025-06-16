.localvar 2 arguments

:[0]
pushi.e 658
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fx
push.d 1.5
push.v self.fx
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 1.5
push.v self.fx
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.v 697.difficulty
pushi.e 4
cmp.i.v NEQ
bf [12]

:[1]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [6]

:[2]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [5]

:[4]
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hed
push.v 631.y
pushi.e 10
add.i.v
push.v 631.x
pushi.e 10
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 25
sub.i.v
pushi.e 50
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.hed
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 15
pushi.e 5
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.hed
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.depth
pushi.e 100
sub.i.v
push.v self.hed
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 2033
push.v self.hed
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.5
push.v self.hed
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 0.5
push.v self.hed
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.v self.target
push.v self.hed
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.hed
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 0
push.v self.hed
pushi.e -9
pop.v.i [stacktop]self.grazed
pushi.e 6
push.v self.hed
pushi.e -9
pop.v.i [stacktop]self.element
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [3]

:[5]
b [12]

:[6]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [11]

:[7]
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [10]

:[9]
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hed
push.v 631.y
pushi.e 10
add.i.v
push.v 631.x
pushi.e 10
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 20
sub.i.v
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.hed
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 15
pushi.e 5
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.hed
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.depth
pushi.e 100
sub.i.v
push.v self.hed
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.target
push.v self.hed
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.hed
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 0
push.v self.hed
pushi.e -9
pop.v.i [stacktop]self.grazed
pushi.e 6
push.v self.hed
pushi.e -9
pop.v.i [stacktop]self.element
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [8]

:[10]
b [12]

:[11]
pushi.e 657
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.center
push.v self.target
push.v self.center
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.center
pushi.e -9
pop.v.v [stacktop]self.damage

:[12]
push.v 697.difficulty
pushi.e 4
cmp.i.v EQ
bf [25]

:[13]
pushi.e 0
pop.v.i self.i

:[14]
push.v self.i
pushi.e 15
cmp.i.v LT
bf [18]

:[15]
pushi.e 611
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.radialshot
push.v self.radialshot
pushi.e -9
pushenv [17]

:[16]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v

:[17]
popenv [16]
pushi.e 1377
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.i
pushi.e 24
mul.i.v
pushi.e 14
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 7
sub.i.v
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.dir
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.active
push.v self.depth
pushi.e 100
sub.i.v
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.target
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 0
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.grazed
pushi.e 6
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.element
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [14]

:[18]
pushi.e 611
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.radialshot
push.v self.radialshot
pushi.e -9
pushenv [20]

:[19]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v

:[20]
popenv [19]
pushi.e 1377
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 631.y
pushi.e 10
add.i.v
push.v 631.x
pushi.e 10
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.dir
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.active
push.v self.depth
pushi.e 100
sub.i.v
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.target
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 0
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.grazed
pushi.e 6
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.element
pushi.e 611
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.radialshot
push.v self.radialshot
pushi.e -9
pushenv [22]

:[21]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v

:[22]
popenv [21]
pushi.e 1377
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 631.y
pushi.e 10
add.i.v
pushi.e 40
sub.i.v
push.v 631.x
pushi.e 10
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.dir
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.active
push.v self.depth
pushi.e 100
sub.i.v
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.target
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 0
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.grazed
pushi.e 6
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.element
pushi.e 611
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.radialshot
push.v self.radialshot
pushi.e -9
pushenv [24]

:[23]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v

:[24]
popenv [23]
pushi.e 1377
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v 631.y
pushi.e 10
add.i.v
pushi.e 40
add.i.v
push.v 631.x
pushi.e 10
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.dir
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.active
push.v self.depth
pushi.e 100
sub.i.v
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.target
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 0
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.grazed
pushi.e 6
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.element

:[25]
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [27]

:[26]
pushi.e 656
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fx
pushi.e 3
conv.i.v
call.i random(argc=1)
push.v self.fx
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e 2
push.v self.fx
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.fx
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 45
pushi.e 90
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.fx
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [26]

:[27]
popz.i
call.i instance_destroy(argc=0)
popz.v

:[end]