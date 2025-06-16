.localvar 2 arguments
.localvar 21718 dist 12696

:[0]
pushi.e 1
pop.v.i self.image_index
push.i 65535
pop.v.i self.image_blend
push.d 0.5
pop.v.d self.image_alpha
push.d 0.4
pop.v.d self.image_xscale
push.d 0.4
pop.v.d self.image_yscale
pushi.e 697
pop.v.i self.target
pushi.e 9999
pop.v.i local.dist
pushi.e 627
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[1]
pushi.e 627
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [3]

:[2]
pushi.e 627
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[3]
pushi.e 626
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[4]
pushi.e 626
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [6]

:[5]
pushi.e 626
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[6]
pushi.e 609
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[7]
pushi.e 609
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [9]

:[8]
pushi.e 609
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[9]
pushi.e 611
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[10]
pushi.e 611
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [12]

:[11]
pushi.e 611
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[12]
pushi.e 603
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[13]
pushi.e 603
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [15]

:[14]
pushi.e 603
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[15]
pushi.e 618
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [18]

:[16]
pushi.e 618
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [18]

:[17]
pushi.e 618
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[18]
pushi.e 635
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [21]

:[19]
pushi.e 635
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [21]

:[20]
pushi.e 635
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[21]
pushi.e 670
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [24]

:[22]
pushi.e 670
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [24]

:[23]
pushi.e 670
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[24]
pushi.e 369
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[25]
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [end]

:[26]
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[end]