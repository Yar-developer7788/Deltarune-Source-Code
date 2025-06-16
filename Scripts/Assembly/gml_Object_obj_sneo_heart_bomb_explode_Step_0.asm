.localvar 2 arguments
.localvar 7017 a 12812

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.timer
b [10]

:[5]
push.v self.timer
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.timer

:[10]
push.v self.siner
pushi.e 4
add.i.v
pop.v.v self.siner
pushi.e 2
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.5
mul.d.v
add.v.i
pop.v.v self.image_xscale
pushi.e 2
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.5
mul.d.v
add.v.i
pop.v.v self.image_yscale
push.v self.siner
pushi.e 96
cmp.i.v EQ
bf [end]

:[11]
pushi.e 221
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 44
conv.i.v
call.i random(argc=1)
pop.v.v local.a
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [17]

:[12]
pushi.e 611
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.radialshot
push.v self.radialshot
pushi.e -9
pushenv [14]

:[13]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v

:[14]
popenv [13]
pushi.e 1377
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.a
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.direction
pushloc.v local.a
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.active
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.speed
push.d -0.34
push.v self.radialshot
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.depth
pushi.e 1
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
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.newtype
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
pushenv [16]

:[15]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 1377
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.a
pushi.e 10
add.i.v
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.direction
pushloc.v local.a
pushi.e 10
add.i.v
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.active
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.speed
push.d -0.1
push.v self.radialshot
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.depth
pushi.e 1
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
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.newtype
pushi.e 6
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.element
push.v local.a
pushi.e 45
add.i.v
pop.v.v local.a
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [12]

:[17]
popz.i
call.i instance_destroy(argc=0)
popz.v

:[end]