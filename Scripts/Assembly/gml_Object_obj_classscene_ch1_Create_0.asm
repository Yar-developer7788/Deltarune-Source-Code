.localvar 2 arguments

:[0]
pushi.e 3484
conv.i.v
pushi.e 26
conv.i.v
pushi.e 236
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.door
push.v self.door
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.facing
pushglb.v global.plot
pushi.e 2
cmp.i.v LT
bf [8]

:[3]
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.i self.con
pushi.e 1351
pushenv [5]

:[4]
pushi.e 240
pop.v.i self.x
pushi.e 30
pop.v.i self.y
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[5]
popenv [4]
pushi.e 3485
conv.i.v
pushi.e 50
conv.i.v
pushi.e 50
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.alphys
push.v self.alphys
pushi.e -9
pushenv [7]

:[6]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 1
pop.v.i global.interact

:[8]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [end]

:[9]
pushi.e 1421
conv.i.v
pushi.e 48
conv.i.v
pushi.e 242
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.doorb
push.v self.door
pushi.e -9
pushenv [11]

:[10]
push.i 900000
pop.v.i self.depth

:[11]
popenv [10]
pushi.e 1411
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 1340
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]
pushi.e 3471
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.sunset
push.v self.sunset
pushi.e -9
pushenv [17]

:[16]
push.d 0.4
pop.v.d self.image_alpha
pushi.e 2000
pop.v.i self.depth

:[17]
popenv [16]
call.i instance_destroy(argc=0)
popz.v

:[end]