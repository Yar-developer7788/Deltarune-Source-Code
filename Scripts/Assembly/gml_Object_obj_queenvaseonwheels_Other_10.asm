.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 194
cmp.i.v NEQ
bf [15]

:[1]
pushi.e 1259
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 1
pop.v.i 1259.triggered

:[3]
pushi.e 1
pop.v.i self.image_index
pushi.e 166
conv.i.v
pushi.e 165
conv.i.v
call.i choose(argc=2)
call.i gml_Script_snd_play(argc=1)
popz.v
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
pushbltn.v builtin.room
pushi.e 194
cmp.i.v EQ
bf [14]

:[4]
pushi.e 105
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[5]
pushi.e 105
pushenv [11]

:[6]
pushi.e 240
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.newenem
push.v self.newenem
pushi.e -9
pushenv [10]

:[7]
push.v self.image_xscale
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
push.v self.x
push.v self.sprite_width
sub.v.v
pop.v.v self.x

:[9]
pushi.e 56
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
pop.v.i self.eraser

:[10]
popenv [7]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [6]

:[12]
pushi.e 1261
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[13]
pushi.e 1
pop.v.i 1261.triggered

:[14]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[15]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 999
pop.v.i self.con

:[20]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [end]

:[24]
pushi.e 9999
pop.v.i self.con

:[end]