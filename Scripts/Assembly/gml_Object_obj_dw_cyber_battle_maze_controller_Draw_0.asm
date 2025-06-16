.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.triggered
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
pushi.e 503
conv.i.v
pushi.e 672
conv.i.v
pushi.e 423
conv.i.v
pushi.e 592
conv.i.v
push.v 82.y
pushi.e 18
add.i.v
push.v 82.x
pushi.e 9
add.i.v
call.i point_in_rectangle(argc=6)
conv.v.b
bf [6]

:[5]
pushi.e 1
pop.v.i self.triggered

:[6]
push.v self.triggered
pushi.e 1
cmp.i.v EQ
bf [10]

:[7]
pushi.e 240
conv.i.v
pushi.e 420
conv.i.v
pushi.e 1000
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.enem
push.v self.enem
pushi.e -9
pushenv [9]

:[8]
pushi.e 53
pop.v.i self.myencounter
pushi.e 1716
pop.v.i self.sprite_index
push.v self.sprite_index
pop.v.v self.touchsprite
pushi.e 0
pop.v.i self.radius
pushi.e 12
pop.v.i self.pacetype
pushi.e 5
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.alertskip
pushi.e 1
pop.v.i self.eraser
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 160
pop.v.i self.moveradius

:[9]
popenv [8]
pushi.e 2
pop.v.i self.triggered

:[10]
push.v self.triggered
pushi.e 2
cmp.i.v EQ
bf [18]

:[11]
pushi.e 240
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[12]
pushi.e 670
conv.i.v
pushi.e 320
conv.i.v
pushi.e 640
conv.i.v
pushi.e 240
conv.i.v
push.v 82.y
pushi.e 18
add.i.v
push.v 82.x
pushi.e 9
add.i.v
call.i point_in_rectangle(argc=6)
conv.v.b
b [14]

:[13]
push.e 0

:[14]
bf [18]

:[15]
pushi.e 240
conv.i.v
pushi.e 620
conv.i.v
pushi.e 720
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.enem2
push.v self.enem2
pushi.e -9
pushenv [17]

:[16]
pushi.e 53
pop.v.i self.myencounter
pushi.e 1716
pop.v.i self.sprite_index
push.v self.sprite_index
pop.v.v self.touchsprite
pushi.e 0
pop.v.i self.radius
pushi.e 12
pop.v.i self.pacetype
pushi.e 5
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.eraser
pushi.e 1
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 160
pop.v.i self.moveradius

:[17]
popenv [16]
pushi.e 3
pop.v.i self.triggered

:[18]
push.v self.triggered
pushi.e 3
cmp.i.v EQ
bf [end]

:[19]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[20]
push.v self.enem
pushi.e -9
pushenv [25]

:[21]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x
push.v self.x
pushbltn.v builtin.room_width
cmp.v.v GT
bf [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
push.v self.id
call.i gml_Script_scr_onscreen(argc=1)
conv.v.b
not.b
bf [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [21]

:[end]