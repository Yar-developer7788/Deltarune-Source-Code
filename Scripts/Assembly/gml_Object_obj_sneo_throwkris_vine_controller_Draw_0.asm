.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [3]

:[2]
push.i 166973
setowner.e
push.v 697.x
pushi.e 697
push.v self.i
conv.v.i
push.v [array]self.partx
add.v.v
pushi.e 697
push.v self.i
conv.v.i
push.v [array]self.partxoff
push.d 1.2
div.d.v
add.v.v
push.v self.i
pushi.e 5
mul.i.v
add.v.v
pushi.e 697
push.v self.i
conv.v.i
push.v [array]self.partsiner
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.x1
push.i 166974
setowner.e
push.v 697.y
pushi.e 697
push.v self.i
conv.v.i
push.v [array]self.party
add.v.v
pushi.e 10
sub.i.v
pushi.e 697
push.v self.i
conv.v.i
push.v [array]self.partyoff
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.y1
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [19]

:[4]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [7]

:[6]
push.i 166975
setowner.e
push.v self.timer
pushi.e 20
conv.i.d
div.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x2_target
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x2
call.i lerp(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.x2
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[7]
push.v self.timer
pushi.e 20
cmp.i.v EQ
bf [19]

:[8]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [18]

:[10]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.weakened
pushi.e 0
cmp.i.v NEQ
bf [12]

:[11]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.visiblevine
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [17]

:[14]
pushi.e 686
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.target
push.v self.id
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.maker
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x1
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.x1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x2
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.x2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.y1
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.y1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.y2
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.y2
push.v self.i
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.vineid
push.v self.target
pushi.e -9
pushenv [16]

:[15]
call.i path_add(argc=0)
pop.v.v self.path
pushi.e 0
conv.i.v
push.v self.path
call.i path_set_kind(argc=2)
popz.v
pushi.e 0
conv.b.v
push.v self.path
call.i path_set_closed(argc=2)
popz.v
pushi.e 100
conv.i.v
push.v self.y1
push.v self.x1
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
push.v self.y2
push.v self.x2
pushi.e 3
sub.i.v
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
push.v self.path
call.i path_start(argc=4)
popz.v

:[16]
popenv [15]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.y2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.y1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x1
call.i point_direction(argc=4)
pushi.e 282
add.i.v
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.image_angle

:[17]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [9]

:[18]
pushi.e 0
pop.v.i self.timer

:[19]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[20]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 11
cmp.i.v LT
bf [24]

:[21]
pushi.e 0
pop.v.i self.i

:[22]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [24]

:[23]
push.i 166975
setowner.e
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x2_origin
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x2
call.i lerp(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.x2
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [22]

:[24]
push.v self.timer
pushi.e 20
cmp.i.v EQ
bf [end]

:[25]
pushi.e 0
pop.v.i self.i

:[26]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [30]

:[27]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.visiblevine
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.i 237044
setowner.e
pushi.e 1
conv.i.v
pushi.e 697
push.v self.i
conv.v.i
pop.v.v [array]self.partvisible

:[29]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [26]

:[30]
call.i instance_destroy(argc=0)
popz.v
push.v 697.vinebgcount
pushi.e 0
cmp.i.v GT
bf [end]

:[31]
pushi.e 0
pop.v.i self.i

:[32]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [end]

:[33]
pushi.e 697
push.v self.i
conv.v.i
push.v [array]self.partvisible
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
push.v self.i
pop.v.v 697.vineid
pushi.e 689
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.vine

:[35]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [32]

:[end]