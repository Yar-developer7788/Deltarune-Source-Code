.localvar 2 arguments
.localvar 7017 a 12524

:[0]
pushi.e 0
pop.v.i local.a
pushi.e 0
pop.v.i self.b
pushi.e 19
dup.i 0
push.i 0
cmp.i.i LTE
bt [12]

:[1]
pushi.e 614
conv.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
pushi.e 80
sub.i.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
push.v self.b
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hand
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
push.v self.hand
pushi.e -9
pop.v.v [stacktop]self.y
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 20
push.v self.hand
pushi.e -9
pop.v.i [stacktop]self.siner

:[3]
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 26
push.v self.hand
pushi.e -9
pop.v.i [stacktop]self.siner

:[5]
pushloc.v local.a
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 32
push.v self.hand
pushi.e -9
pop.v.i [stacktop]self.siner

:[7]
pushloc.v local.a
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 26
push.v self.hand
pushi.e -9
pop.v.i [stacktop]self.siner

:[9]
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
pushloc.v local.a
pushi.e 3
cmp.i.v GT
bf [11]

:[10]
pushi.e 0
pop.v.i local.a

:[11]
push.v self.b
pushi.e 35
add.i.v
pop.v.v self.b
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[12]
popz.i
pushi.e 0
pop.v.i local.a
pushi.e 0
pop.v.i self.b
pushi.e 19
dup.i 0
push.i 0
cmp.i.i LTE
bt [24]

:[13]
pushi.e 614
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 80
sub.i.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
push.v self.b
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hand
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
push.v self.hand
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e -1
push.v self.hand
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 20
push.v self.hand
pushi.e -9
pop.v.i [stacktop]self.siner

:[15]
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 26
push.v self.hand
pushi.e -9
pop.v.i [stacktop]self.siner

:[17]
pushloc.v local.a
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
pushi.e 32
push.v self.hand
pushi.e -9
pop.v.i [stacktop]self.siner

:[19]
pushloc.v local.a
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
pushi.e 26
push.v self.hand
pushi.e -9
pop.v.i [stacktop]self.siner

:[21]
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
pushloc.v local.a
pushi.e 3
cmp.i.v GT
bf [23]

:[22]
pushi.e 0
pop.v.i local.a

:[23]
push.v self.b
pushi.e 35
add.i.v
pop.v.v self.b
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [13]

:[24]
popz.i

:[end]