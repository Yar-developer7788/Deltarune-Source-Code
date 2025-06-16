.localvar 2 arguments

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
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.init
pushi.e 627
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.b1
pushi.e 60
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.b1
pushi.e -9
pop.v.v [stacktop]self.place
push.v self.id
push.v self.b1
pushi.e -9
pop.v.v [stacktop]self.parent
push.v self.damage
push.v self.b1
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.b1
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 627
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.b2
pushi.e 120
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.b2
pushi.e -9
pop.v.v [stacktop]self.place
push.v self.id
push.v self.b2
pushi.e -9
pop.v.v [stacktop]self.parent
push.v self.damage
push.v self.b2
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.b2
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 627
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.b3
pushi.e 180
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.b3
pushi.e -9
pop.v.v [stacktop]self.place
push.v self.id
push.v self.b3
pushi.e -9
pop.v.v [stacktop]self.parent
push.v self.damage
push.v self.b3
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.b3
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 627
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.b4
pushi.e 240
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.b4
pushi.e -9
pop.v.v [stacktop]self.place
push.v self.id
push.v self.b4
pushi.e -9
pop.v.v [stacktop]self.parent
push.v self.damage
push.v self.b4
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.b4
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 627
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.b5
pushi.e 300
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.b5
pushi.e -9
pop.v.v [stacktop]self.place
push.v self.id
push.v self.b5
pushi.e -9
pop.v.v [stacktop]self.parent
push.v self.damage
push.v self.b5
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.b5
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 627
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.b6
pushi.e 360
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.b6
pushi.e -9
pop.v.v [stacktop]self.place
push.v self.id
push.v self.b6
pushi.e -9
pop.v.v [stacktop]self.parent
push.v self.damage
push.v self.b6
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.b6
pushi.e -9
pop.v.v [stacktop]self.target

:[4]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [7]

:[5]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bt [12]

:[8]
push.v self.con
pushi.e 1
cmp.i.v GT
bf [10]

:[9]
push.v self.con
pushi.e 6
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
b [13]

:[12]
push.e 1

:[13]
bf [16]

:[14]
pushi.e 13
conv.i.v
push.v 631.y
push.v 631.x
call.i move_towards_point(argc=3)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con
pushi.e 631
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 30
cmp.i.v LT
bf [16]

:[15]
pushi.e 6
pop.v.i self.con

:[16]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 50
sub.i.v
cmp.v.v LT
bf [end]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[end]