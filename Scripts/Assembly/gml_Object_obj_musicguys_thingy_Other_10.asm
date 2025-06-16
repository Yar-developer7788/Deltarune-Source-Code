.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.j

:[1]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [end]

:[2]
push.i 169962
setowner.e
pushi.e 361
conv.i.v
pushi.e 480
conv.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.j
conv.v.i
pop.v.v [array]self.bul
push.i 133642
setowner.e
pushi.e 1792
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.bul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133617
setowner.e
push.v 872.x
pushi.e 30
sub.i.v
push.v self.j
pushi.e 30
mul.i.v
add.v.v
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.bul
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133628
setowner.e
push.d -0.1
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.bul
pushi.e -9
pop.v.d [stacktop]self.gravity
push.i 133624
setowner.e
pushi.e -4
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.bul
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.i 133651
setowner.e
push.d 0.5
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.bul
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.i 232295
setowner.e
pushi.e 1
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.bul
pushi.e -9
pop.v.i [stacktop]self.active
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [1]

:[end]