.localvar 2 arguments
.localvar 21718 dist 12699

:[0]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [4]

:[3]
pushi.e 22
conv.i.v
push.v self.y
push.v self.x
pushi.e 150
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.direction
pop.v.v self.image_angle
exit.i

:[4]
push.v self.target
pushi.e 697
cmp.i.v EQ
bf [6]

:[5]
pushi.e 22
conv.i.v
push.v self.y
push.v self.x
pushi.e 150
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.direction
pop.v.v self.image_angle
exit.i

:[6]
pushi.e 22
conv.i.v
push.v self.target
pushi.e -9
push.v [stacktop]self.y
push.v self.target
pushi.e -9
push.v [stacktop]self.x
call.i move_towards_point(argc=3)
popz.v
push.v self.direction
pop.v.v self.image_angle
pushi.e 697
pop.v.i self.target
pushi.e 9999
pop.v.i local.dist
pushi.e 627
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[7]
pushi.e 627
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [9]

:[8]
pushi.e 627
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[9]
pushi.e 626
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[10]
pushi.e 626
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [12]

:[11]
pushi.e 626
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[12]
pushi.e 609
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[13]
pushi.e 609
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [15]

:[14]
pushi.e 609
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[15]
pushi.e 611
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [18]

:[16]
pushi.e 611
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [18]

:[17]
pushi.e 611
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[18]
pushi.e 603
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [21]

:[19]
pushi.e 603
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [21]

:[20]
pushi.e 603
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[21]
pushi.e 618
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [24]

:[22]
pushi.e 618
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [24]

:[23]
pushi.e 618
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[24]
pushi.e 635
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [27]

:[25]
pushi.e 635
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [27]

:[26]
pushi.e 635
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[27]
pushi.e 670
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [30]

:[28]
pushi.e 670
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
call.i distance_to_object(argc=1)
pushloc.v local.dist
cmp.v.v LT
bf [30]

:[29]
pushi.e 670
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.target

:[30]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 500
add.i.v
cmp.v.v GTE
bf [34]

:[31]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 530
add.i.v
cmp.v.v LT
bf [34]

:[32]
pushi.e 629
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [34]

:[33]
push.v 629.init
pushi.e 1
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [end]

:[36]
call.i instance_destroy(argc=0)
popz.v

:[end]