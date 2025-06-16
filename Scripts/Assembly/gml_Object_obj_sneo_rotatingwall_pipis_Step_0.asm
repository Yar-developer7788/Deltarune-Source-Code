.localvar 2 arguments

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.x
pushi.e 3
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.i
add.v.v
pop.v.v self.x
push.v self.y
pushi.e 3
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.i
add.v.v
pop.v.v self.y
b [6]

:[4]
pushi.e 52
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [6]

:[5]
push.v self.x
pushi.e 52
push.v self.wallnumber
conv.v.i
push.v [array]self.wallspeed
add.v.v
pop.v.v self.x

:[6]
push.v self.timer
pushi.e 8
cmp.i.v EQ
bf [end]

:[7]
pushi.e 142
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v
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
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [12]

:[9]
pushi.e 611
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.radialshot
push.v self.radialshot
pushi.e -9
pushenv [11]

:[10]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v

:[11]
popenv [10]
pushi.e 1377
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.i
pushi.e 30
mul.i.v
pushi.e 28
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 14
sub.i.v
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.dir
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.active
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
pushi.e 6
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.element
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [8]

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
push.v 631.y
pushi.e 10
add.i.v
push.v 631.x
pushi.e 10
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 5
sub.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.radialshot
pushi.e -9
pop.v.v [stacktop]self.dir
pushi.e 1
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.active
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
pushi.e 6
push.v self.radialshot
pushi.e -9
pop.v.i [stacktop]self.element

:[end]