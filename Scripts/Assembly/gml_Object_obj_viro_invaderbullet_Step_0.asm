.localvar 2 arguments
.localvar 23100 _inst 10307

:[0]
call.i event_inherited(argc=0)
popz.v
push.v self.active
conv.v.b
bf [2]

:[1]
push.v self.y
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 16
sub.i.v
cmp.v.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.active
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 16
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.image_index
pushi.e 1808
pop.v.i self.sprite_index

:[5]
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushi.e 412
conv.i.v
push.v self.y
pushi.e 13
add.i.v
push.v self.x
pushi.e 5
add.i.v
push.v self.y
pushi.e 3
sub.i.v
push.v self.x
pushi.e 5
sub.i.v
call.i collision_rectangle(argc=7)
pop.v.v local._inst
pushloc.v local._inst
pushi.e -4
cmp.i.v NEQ
bf [end]

:[6]
pushi.e 417
conv.i.v
push.v other.y
push.v other.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 90
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction
pushloc.v local._inst
pushi.e -9
push.v [stacktop]self.speed
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.speed
pushloc.v local._inst
call.i instance_destroy(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]