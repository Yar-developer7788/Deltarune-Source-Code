.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [3]

:[2]
push.i 170810
setowner.e
pushi.e 352
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.after
push.i 133655
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.after
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.i 133642
setowner.e
pushi.e 1901
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.after
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133650
setowner.e
push.v self.image_xscale
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.after
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.i 133651
setowner.e
push.v self.image_yscale
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.after
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.i 133643
setowner.e
push.v self.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.after
pushi.e -9
pop.v.v [stacktop]self.image_index
push.i 133626
setowner.e
pushi.e 8
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.after
pushi.e -9
pop.v.i [stacktop]self.speed
push.i 133627
setowner.e
push.d 0.4
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.after
pushi.e -9
pop.v.d [stacktop]self.friction
push.i 133637
setowner.e
push.v 574.depth
pushi.e 10
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.after
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.i 133625
setowner.e
pushi.e 110
pushi.e -1
pushi.e 0
push.v [array]self.after
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 70
pushi.e -1
pushi.e 1
push.v [array]self.after
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 90
pushi.e -1
pushi.e 2
push.v [array]self.after
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 0
pushi.e -1
pushi.e 3
push.v [array]self.after
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 180
pushi.e -1
pushi.e 4
push.v [array]self.after
pushi.e -9
pop.v.i [stacktop]self.direction
push.i 133626
setowner.e
pushi.e 0
pushi.e -1
pushi.e 5
push.v [array]self.after
pushi.e -9
pop.v.i [stacktop]self.speed
push.i 133627
setowner.e
pushi.e 0
pushi.e -1
pushi.e 5
push.v [array]self.after
pushi.e -9
pop.v.i [stacktop]self.friction
push.i 133625
setowner.e
pushi.e 225
pushi.e -1
pushi.e 6
push.v [array]self.after
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 270
pushi.e -1
pushi.e 7
push.v [array]self.after
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 315
pushi.e -1
pushi.e 8
push.v [array]self.after
pushi.e -9
pop.v.i [stacktop]self.direction

:[end]