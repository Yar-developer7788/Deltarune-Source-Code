.localvar 2 arguments
.localvar 7017 a 13013

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v
pushi.e 658
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fx
pushi.e 2
push.v self.fx
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.fx
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 236805
setowner.e
pushi.e 1983
conv.i.v
pushi.e 697
pushi.e 5
pop.v.v [array]self.partsprite
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [3]

:[2]
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
bt [2]

:[3]
popz.i
pushi.e 45
conv.i.v
call.i random(argc=1)
pop.v.v local.a
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [5]

:[4]
pushi.e 660
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.part
pushloc.v local.a
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.part
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 8
conv.i.v
call.i random(argc=1)
push.v self.part
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.part
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushloc.v local.a
pushi.e 25
conv.i.v
call.i random(argc=1)
call.i lengthdir_x(argc=2)
add.v.v
pop.i.v [stacktop]self.x
push.v self.part
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushloc.v local.a
pushi.e 25
conv.i.v
call.i random(argc=1)
call.i lengthdir_y(argc=2)
add.v.v
pop.i.v [stacktop]self.y
push.v local.a
pushi.e 45
add.i.v
pop.v.v local.a
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [4]

:[5]
popz.i

:[end]