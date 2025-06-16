.localvar 2 arguments
.localvar 19828 layersprites 7826
.localvar 107 i 7827
.localvar 19829 bglayer 7828

:[0]
pushi.e 82
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.bg

:[2]
popenv [1]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.bg_hspeed
pushi.e 0
pop.v.i self.xpos
pushi.e 0
pop.v.i self.ypos
pushbltn.v builtin.room
pushi.e 203
cmp.i.v EQ
bf [4]

:[3]
pushi.e 260
pop.v.i self.ypos

:[4]
pushbltn.v builtin.room
pushi.e 139
cmp.i.v EQ
bf [6]

:[5]
push.v self.x
pop.v.v self.xpos

:[6]
push.i 168631
setowner.e
pushi.e 3144
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v local.layersprites
pushi.e 0
pop.v.i local.i

:[7]
pushloc.v local.i
pushloc.v local.layersprites
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [end]

:[8]
pushi.e 195
conv.i.v
push.v self.ypos
push.v self.xpos
call.i gml_Script_instance_create(argc=3)
pop.v.v local.bglayer
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.layersprites
pushloc.v local.bglayer
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.i 1000500
pushloc.v local.i
pushi.e 100
mul.i.v
sub.v.i
pushloc.v local.bglayer
pushi.e -9
pop.v.v [stacktop]self.depth
push.d 0.05
pushloc.v local.bglayer
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [7]

:[end]