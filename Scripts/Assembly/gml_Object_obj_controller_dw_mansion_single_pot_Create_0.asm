.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.drawtimer
pushi.e 1
pop.v.b self.visible
pushi.e 2880
conv.i.v
pushi.e 80
conv.i.v
pushi.e 142
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.queen_monitor_frame
push.v self.queen_monitor_frame
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 288
conv.i.v
push.v self.queen_monitor_frame
pushi.e -9
push.v [stacktop]self.y
pushi.e 60
add.i.v
push.v self.queen_monitor_frame
pushi.e -9
push.v [stacktop]self.x
pushi.e 175
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.queen_monitor
push.v self.queen_monitor_frame
pushi.e 100
add.i.v
push.v self.queen_monitor
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e -5
pushi.e 400
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.con

:[4]
pushi.e -5
pushi.e 400
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 3
pop.v.i self.con

:[6]
pushi.e -5
pushi.e 400
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [end]

:[7]
pushi.e 5
pop.v.i self.con
pushi.e 1257
pushenv [9]

:[8]
push.v self.sprite_index
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.brokenpot
pushi.e 1
push.v self.brokenpot
pushi.e -9
pop.v.i [stacktop]self.image_index
push.i 800000
push.v self.brokenpot
pushi.e -9
pop.v.i [stacktop]self.depth
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [8]
pushi.e -5
pushi.e 540
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [end]

:[10]
pushi.e 240
conv.i.v
pushi.e 200
conv.i.v
pushi.e -146
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.enemy1
push.v self.enemy1
pushi.e -9
pushenv [12]

:[11]
pushi.e 64
pop.v.i self.myencounter
pushi.e 1253
pop.v.i self.sprite_index
pushi.e 1812
pop.v.i self.touchsprite
pushi.e 10000
pop.v.i self.radius
pushi.e 1
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.alertcon
pushi.e 1
pop.v.i self.alertskip
pushi.e 1
pop.v.i self.eraser
pushi.e 1
pop.v.i self.facing
pushi.e 7
pop.v.i self.chasetype

:[12]
popenv [11]

:[end]