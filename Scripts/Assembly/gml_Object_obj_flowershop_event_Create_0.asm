.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.tcon
push.d 0.05
pop.v.d self.image_speed
call.i gml_Script_scr_depth(argc=0)
popz.v
pushbltn.v builtin.room
pushi.e 50
cmp.i.v EQ
bf [8]

:[1]
pushi.e 1055
conv.i.v
pushi.e 103
conv.i.v
pushi.e 20
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.counter
push.v self.counter
pushi.e -9
pushenv [3]

:[2]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 1056
conv.i.v
pushi.e 136
conv.i.v
pushi.e 177
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.flowera
pushi.e 1056
conv.i.v
pushi.e 82
conv.i.v
pushi.e 177
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.flowerb
push.v self.flowera
pushi.e -9
pushenv [5]

:[4]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[5]
popenv [4]
push.v self.flowerb
pushi.e -9
pushenv [7]

:[6]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 1
pop.v.i self.con
pushi.e 135
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[8]
pushbltn.v builtin.room
pushi.e 50
cmp.i.v EQ
bf [13]

:[9]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [13]

:[10]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.entrance
pushi.e 82
pushenv [12]

:[11]
pushi.e -5
pushi.e 264
push.v [array]self.flag
pop.v.v self.x

:[12]
popenv [11]

:[13]
pushbltn.v builtin.room
pushi.e 51
cmp.i.v EQ
bf [22]

:[14]
pushi.e 0
pop.v.i self.visible
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [22]

:[15]
pushi.e 0
pop.v.i global.entrance
pushi.e 0
pop.v.i global.interact
pushi.e 82
pushenv [17]

:[16]
pushi.e -5
pushi.e 264
push.v [array]self.flag
pop.v.v self.x

:[17]
popenv [16]
push.v 82.x
pushi.e 160
cmp.i.v LT
bf [19]

:[18]
pushi.e 255
pop.v.i self.x

:[19]
push.v 82.x
pushi.e 160
cmp.i.v GT
bf [21]

:[20]
pushi.e 15
pop.v.i self.x

:[21]
pushi.e 135
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e -1
pop.v.i self.con

:[22]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
pushi.e 135
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
b [end]

:[24]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [28]

:[25]
pushbltn.v builtin.room
pushi.e 50
cmp.i.v EQ
bf [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
b [end]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[end]