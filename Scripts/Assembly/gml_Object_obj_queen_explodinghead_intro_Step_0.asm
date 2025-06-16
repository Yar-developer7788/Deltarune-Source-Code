.localvar 2 arguments
.localvar 7017 a 11628

:[0]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.xstart
push.v self.place
push.v self.length
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.ystart
push.v self.place
push.v self.length
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
pushi.e 1
pop.v.i local.a
push.v self.first
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 3
pop.v.i local.a

:[4]
pushloc.v local.a
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [6]

:[5]
push.v self.place
pushi.e 10
add.i.v
pop.v.v self.place
push.v self.place2
pushi.e 10
add.i.v
pop.v.v self.place2
push.v self.length
pushi.e 2
sub.i.v
pop.v.v self.length
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [5]

:[6]
popz.i
push.v self.length
pushi.e 0
cmp.i.v LTE
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v
pushi.e 528
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.bufferattack
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.buffer
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.ultimate
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.ultimate
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.laugh

:[end]