.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.smashed
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [3]

:[2]
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 2257
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.updateimageangle
push.d 0.75
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.gravity
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 90
push.v self.flip
pushi.e -25
push.v self.i
pushi.e 10
mul.i.v
add.v.i
pushi.e 10
conv.i.v
call.i irandom(argc=1)
add.v.v
mul.v.v
add.v.i
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 10
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 1
pop.v.i 536.hitstun
call.i instance_destroy(argc=0)
popz.v

:[end]