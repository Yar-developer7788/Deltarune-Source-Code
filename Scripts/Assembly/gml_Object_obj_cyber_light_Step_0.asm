.localvar 2 arguments

:[0]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [8]

:[1]
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.wd
push.v self.bosscheck
pushi.e 0
cmp.i.v EQ
bf [7]

:[2]
pushi.e 228
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.bosscheck

:[4]
popenv [3]
pushi.e 1
pop.v.i self.boss
push.v self.depth
pushi.e 1
add.i.v
pop.v.v self.depth
push.v self.object_index
call.i instance_number(argc=1)
pop.v.v self.total
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
push.v self.total
cmp.v.v LT
bf [7]

:[6]
push.i 165783
setowner.e
push.v self.i
push.v self.object_index
call.i instance_find(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.which
push.i 231492
setowner.e
push.v self.i
pushi.e 4
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.which
pushi.e -9
pop.v.v [stacktop]self.siner
push.i 168121
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.which
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.wx
push.i 168122
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.which
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.wy
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [5]

:[7]
pushi.e 1
pop.v.i self.init

:[8]
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
push.d 0.8
add.d.v
pop.v.v self.image_alpha

:[end]