.localvar 2 arguments
.localvar 14250 distance 10314

:[0]
pushi.e 421
conv.i.v
push.v self.y
push.v self.x
call.i instance_nearest(argc=3)
pop.v.v self.d
push.v self.d
pushi.e -4
cmp.i.v NEQ
bf [3]

:[1]
push.v self.d
pushi.e -9
push.v [stacktop]self.active
conv.v.b
bf [3]

:[2]
push.v self.x
push.v self.d
pushi.e -9
push.v [stacktop]self.x
cmp.v.v LT
b [4]

:[3]
push.e 0

:[4]
bf [7]

:[5]
push.v self.d
pushi.e -9
push.v [stacktop]self.y
push.v self.d
pushi.e -9
push.v [stacktop]self.x
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pop.v.v local.distance
pushloc.v local.distance
pushi.e 80
cmp.i.v LTE
bf [7]

:[6]
pushi.e 80
pushloc.v local.distance
sub.v.i
pushi.e 5
conv.i.d
div.d.v
push.v self.d
pushi.e -9
push.v [stacktop]self.y
push.v self.y
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.y

:[7]
push.v self.x
push.v 872.x
cmp.v.v GT
bf [9]

:[8]
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[end]