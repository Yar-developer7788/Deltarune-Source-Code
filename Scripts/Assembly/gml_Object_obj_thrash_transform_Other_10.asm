.localvar 2 arguments
.localvar 36326 _sparkdir 17749
.localvar 36327 _sparks 17750

:[0]
push.v self.transformstate
push.e 1
add.i.v
pop.v.v self.transformstate
push.v self.transformstate
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
pushi.e 255
pop.v.i local._sparkdir
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [3]

:[2]
pushi.e 1085
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local._sparks
pushloc.v local._sparkdir
pushi.e 15
conv.i.v
pushi.e -15
conv.i.v
call.i random_range(argc=2)
add.v.v
pushloc.v local._sparks
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [2]

:[3]
popz.i
pushi.e 315
pop.v.i local._sparkdir
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [5]

:[4]
pushi.e 1085
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local._sparks
pushloc.v local._sparkdir
pushi.e 15
conv.i.v
pushi.e -15
conv.i.v
call.i random_range(argc=2)
add.v.v
pushloc.v local._sparks
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [4]

:[5]
popz.i
b [20]

:[6]
push.v self.transformstate
pushi.e 2
cmp.i.v EQ
bf [12]

:[7]
pushi.e 10
pop.v.i local._sparkdir
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [9]

:[8]
pushi.e 1085
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local._sparks
pushloc.v local._sparkdir
pushi.e 15
conv.i.v
pushi.e -15
conv.i.v
call.i random_range(argc=2)
add.v.v
pushloc.v local._sparks
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [8]

:[9]
popz.i
pushi.e 170
pop.v.i local._sparkdir
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [11]

:[10]
pushi.e 1085
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local._sparks
pushloc.v local._sparkdir
pushi.e 15
conv.i.v
pushi.e -15
conv.i.v
call.i random_range(argc=2)
add.v.v
pushloc.v local._sparks
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [10]

:[11]
popz.i
b [20]

:[12]
push.v self.transformstate
pushi.e 3
cmp.i.v EQ
bf [16]

:[13]
pushi.e 170
pop.v.i local._sparkdir
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [15]

:[14]
pushi.e 1085
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local._sparks
pushloc.v local._sparkdir
pushi.e 20
conv.i.v
pushi.e -20
conv.i.v
call.i random_range(argc=2)
add.v.v
pushloc.v local._sparks
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [14]

:[15]
popz.i
b [20]

:[16]
push.v self.transformstate
pushi.e 4
cmp.i.v EQ
bf [18]

:[17]
pushi.e 20
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
b [20]

:[18]
push.v self.transformstate
pushi.e 5
cmp.i.v EQ
bf [20]

:[19]
pushi.e 20
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 40
sub.i.v
push.v self.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[20]
push.v self.image_index
push.e 1
add.i.v
pop.v.v self.image_index

:[end]