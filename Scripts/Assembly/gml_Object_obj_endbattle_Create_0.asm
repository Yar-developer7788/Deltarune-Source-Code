.localvar 2 arguments

:[0]
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.con
pushi.e 868
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.destroy

:[2]
popenv [1]
pushi.e 0
pop.v.i self.count
pushi.e 0
pop.v.i global.tension
pushglb.v global.specialbattle
pushi.e 0
cmp.i.v EQ
bt [4]

:[3]
pushglb.v global.specialbattle
pushi.e 3
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [21]

:[6]
push.i 166199
setowner.e
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.heromakey
pushi.e -5
pushi.e 0
push.v [array]self.heromakex
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.c
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [8]

:[7]
push.v self.count
pushi.e 1
add.i.v
pop.v.v self.count
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.rsprite
pushi.e -5
pushi.e 1
push.v [array]self.heromakey
pushi.e -5
pushi.e 1
push.v [array]self.heromakex
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.c

:[8]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [10]

:[9]
push.v self.count
pushi.e 1
add.i.v
pop.v.v self.count
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.rsprite
pushi.e -5
pushi.e 2
push.v [array]self.heromakey
pushi.e -5
pushi.e 2
push.v [array]self.heromakex
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.c

:[10]
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [20]

:[12]
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.i 133625
setowner.e
push.v 82.y
push.v 82.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 133626
setowner.e
push.v 82.y
push.v 82.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
push.v [stacktop]self.x
call.i point_distance(argc=4)
pushi.e 10
conv.i.d
div.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.v [stacktop]self.speed
push.i 133637
setowner.e
pushi.e 200
push.v self.i
pushi.e 20
mul.i.v
sub.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.v [stacktop]self.depth

:[14]
push.v self.i
pushi.e 1
cmp.i.v EQ
bt [16]

:[15]
push.v self.i
pushi.e 2
cmp.i.v EQ
b [17]

:[16]
push.e 1

:[17]
bf [19]

:[18]
push.i 133625
setowner.e
pushi.e -5
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 133626
setowner.e
pushi.e -5
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
push.v [stacktop]self.x
call.i point_distance(argc=4)
pushi.e 10
conv.i.d
div.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.v [stacktop]self.speed
push.i 133637
setowner.e
pushi.e 200
push.v self.i
pushi.e 20
mul.i.v
sub.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.v [stacktop]self.depth

:[19]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[20]
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[21]
pushi.e -5
pushi.e 9
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[22]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i gml_Script_snd_volume(argc=3)
popz.v

:[end]