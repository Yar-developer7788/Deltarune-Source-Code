.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.oo
push.v self.spec
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
push.v self.blocktimer
pushi.e 1
add.i.v
pop.v.v self.blocktimer

:[2]
push.v self.blocktimer
pushi.e 20
cmp.i.v EQ
bf [9]

:[3]
push.v self.x
push.v self.sprite_width
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
call.i random(argc=1)
add.v.v
pop.v.v self.xv
push.v self.y
push.v self.sprite_height
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.sprite_height
pushi.e 4
conv.i.d
div.d.v
call.i random(argc=1)
add.v.v
pop.v.v self.yv
pushi.e 2297
conv.i.v
push.v self.yv
push.v self.xv
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.block
push.v self.block
pushi.e -9
pushenv [5]

:[4]
push.d 0.4
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.d
pop.v.v self.hspeed
push.d 0.7
push.d 1.5
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.vspeed
pushi.e 0
pop.v.i self.gravity_direction
push.d 0.1
pop.v.d self.gravity
pushi.e 0
pop.v.i self.image_alpha
push.d -0.1
pop.v.d self.friction

:[5]
popenv [4]
push.v self.depth
pushi.e 1
sub.i.v
push.v self.block
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.oo
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
push.v self.block
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.oo
push.d 0.8
cmp.d.v GTE
bf [9]

:[6]
push.v self.block
pushi.e -9
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]

:[9]
push.v self.blocktimer
pushi.e 20
cmp.i.v GTE
bf [11]

:[10]
push.v self.blocktimer
pushi.e 30
cmp.i.v LTE
b [12]

:[11]
push.e 0

:[12]
bf [17]

:[13]
push.v self.block
pushi.e -9
pushenv [16]

:[14]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [16]

:[15]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha

:[16]
popenv [14]

:[17]
push.v self.blocktimer
pushi.e 38
cmp.i.v GTE
bf [21]

:[18]
push.v self.block
pushi.e -9
pushenv [20]

:[19]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[20]
popenv [19]

:[21]
push.v self.blocktimer
pushi.e 48
cmp.i.v GTE
bf [end]

:[22]
pushi.e 0
pop.v.i self.blocktimer
push.v self.block
pushi.e -9
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]

:[end]